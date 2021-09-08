`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2018 10:39:05
// Design Name: 
// Module Name: axi_mem_ctrl_TK
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module axi_mem_ctrl #
(
  // dla 32 ma by� 4, a dla 64 chyba 8 , dla 128 ma byc 16 
    parameter img_size=(960*2160*16),   // Rozdzielczo�� obrazu (dlaczego taki - bo jeden zapis to 4 bajty)
    parameter BURST_SIZE=16*8,          // Rozmiar "burstu" 8 x 128 bitow
    
    parameter integer SAMPLES_PER_CLOCK = 4, // Number of samples per clock
    parameter integer BITS_PER_PIXEL    = 24, // Width of component data
    parameter integer TDATA_WIDTH       = SAMPLES_PER_CLOCK*BITS_PER_PIXEL, // Width of TDATA
    
    parameter integer C_M_AXI_ADDR_WIDTH = 49,  // wartosc zwiazna z US+
    parameter integer C_M_AXI_DATA_WIDTH = 128  // tu zmiana szeroko�ci danych
)
(
  input clk,
  input rst,
  //axi interface
  output [0:0]s_axi_awid,
  output reg [C_M_AXI_ADDR_WIDTH-1:0]s_axi_awaddr = 49'b0, // tu zmiana szerokosci danych
  output [7:0]s_axi_awlen,
  output [2:0]s_axi_awsize,
  output [1:0]s_axi_awburst,
  output [0:0]s_axi_awlock,
  output [3:0]s_axi_awcache,
  output [2:0]s_axi_awprot,
  output [3:0]s_axi_awqos,
  output reg s_axi_awvalid = 1'b0,
  input s_axi_awready,
  // Slave Interface Write Data Ports
//  output [0:0]s_axi_wid,
  output [C_M_AXI_DATA_WIDTH-1:0]s_axi_wdata,  // tu zmiana szerokosci danych
  output [15:0]s_axi_wstrb,   // tu zmiana szerokosci danych
  output reg s_axi_wlast = 1'b0,
  output reg s_axi_wvalid = 1'b0,
  input s_axi_wready,
  // Slave Interface Write Response Ports
  output s_axi_bready,
  input [0:0]s_axi_bid,
  input [1:0]s_axi_bresp,
  input s_axi_bvalid,
  // Slave Interface Read Address Ports
  output [0:0]s_axi_arid,
  output reg [C_M_AXI_ADDR_WIDTH-1:0]s_axi_araddr = 49'b0,    // tu zmiana szerokosci danych
  output [7:0]s_axi_arlen,
  output [2:0]s_axi_arsize,
  output [1:0]s_axi_arburst,
  output [0:0]s_axi_arlock,
  output [3:0]s_axi_arcache,
  output [2:0]s_axi_arprot,
  output [3:0]s_axi_arqos,
  output reg s_axi_arvalid = 1'b0,
  input s_axi_arready,
  // Slave Interface Read Data Ports
  output s_axi_rready,
  input [0:0]s_axi_rid,
  input [C_M_AXI_DATA_WIDTH-1:0]s_axi_rdata,  // UWAGA to teraz jest 64_2014
  input [1:0]s_axi_rresp,
  input s_axi_rlast,
  input s_axi_rvalid,

  //fifo clock
  input fifo_clk,
  //write fifo
  input [C_M_AXI_DATA_WIDTH-1:0]fifo_wr_data, // UWAGA to teraz jest 64_2014
  input fifo_wr_en, // tvalid_pixel_in_d
  //read fifo
  output [C_M_AXI_DATA_WIDTH-1:0]fifo_rd_data, // UWAGA to teraz jest 64_2014
  input fifo_rd_en, //tvalid_pixel_in
  //control intreface
  input frame_valid_rd, //tuser
  input frame_valid_wr, //tuser_1d
  input tlast_wr, //tlast_1d
  input tlast_rd, //tlast
    
  input init_done,
  output [3:0] status,
  output [11:0] fifo_rd_wr_data_count,
  output [11:0] fifo_rd_rd_data_count
);
//-----------------------------------------------
//reg [31:0]s_axi_awaddr=32'b0;
//reg s_axi_awvalid=1'b0; 
//reg s_axi_wlast=1'b0;
//reg s_axi_wvalid=1'b0; 
//reg [31:0]s_axi_araddr=32'b0;
//reg s_axi_arvalid=1'b0;
//reg s_axi_rready=1'b1;
//-----------------------------------------------
parameter ST_IDLE_WR=5'b0100;


parameter ST_IDLE_RD=5'b0100;
parameter ST_READ0_RD=5'b0101;
parameter ST_READ1_RD=5'b0110;
parameter ST_SYNC0_RD=5'b0011;
parameter ST_SYNC1_RD=5'b10011;

parameter ST_INIT0_RD=5'b0000;
parameter ST_INIT1_RD=5'b0001;
parameter ST_INIT2_RD=5'b0010;

parameter ST_SYNC0_WR=5'b0011;
parameter ST_SYNC1_WR=5'b10011;


parameter ST_WRITE0=5'b0111;
parameter ST_WRITE1=5'b1000;
parameter ST_WRITE2=5'b1001;
parameter ST_WRITE3=5'b1010;
parameter ST_WRITE4=5'b1011;
parameter ST_WRITE5=5'b1100;
parameter ST_WRITE6=5'b1101;
parameter ST_WRITE7=5'b1110;
parameter ST_WRITE8=5'b1111;
parameter ST_WRITE9=5'b10000;
//-----------------------------------------------
reg [5:0]state_rd=ST_INIT0_RD;
reg [5:0]state_wr=ST_SYNC0_WR;
//-----------------------------------------------
wire fifo_wr_empty;
wire fifo_wr_full;
wire fifo_rd_empty;
wire fifo_rd_full;
//-----------------------------------------------
reg [31:0]tx_cnt=32'b0;
reg [31:0]rx_cnt=32'b0;
reg [15:0]preload_cnt=16'b0;
//-----------------------------------------------
reg [31:0]wr_addr=32'b0;    // adres do zapisu
reg [31:0]rd_addr=32'b0;    // adres do odczytu 
//-----------------------------------------------
reg axi_frame_valid0_rd=1'b0;  // opozniony fv
reg axi_frame_valid1_rd=1'b0;  // opozniony fv

reg tlast_wr_0 = 0;
reg tlast_wr_1 = 0;

reg tlast_rd_0 = 0;
reg tlast_rd_1 = 0;




reg axi_frame_valid0_wr=1'b0;  // opozniony fv
reg axi_frame_valid1_wr=1'b0;  // opozniony fv

reg axi_ready_wr=1'b0;
reg axi_ready_rd=1'b0;


reg ready=1'b0;
//-----------------------------------------------
wire [C_M_AXI_DATA_WIDTH-1:0]tfifo_data;  // tu zmiana szeroko�ci danych
wire tfifo_full;
wire tfifo_rd_en;
//-----------------------------------------------
// UWAGA to teraz jest 64_2014

reg [3 : 0] state_number = 4'b0;


fifo_128_1024 fifo_wr
//fifo_32_64_2048 fifo_wr
(
  .wr_clk(fifo_clk),
  .rd_clk(clk),
  .din(fifo_wr_data),
  .wr_en(fifo_wr_en&axi_ready_wr),          // zapis mo�liwy: sterowanie z zewnatrz + sterownik gotowy (wykryto poczatek ramki)
  .rd_en((~fifo_wr_empty)&(~tfifo_full)),   // odczyt mo�liwy: jak fifo_wr nie jest puste oraz tfifo nie pelne
  .dout(tfifo_data),                        // dane do fifo tymaczasowego
  .full(fifo_wr_full),                      // fifo pelne   
  .empty(fifo_wr_empty)                     // fifo puste
);

//-----------------------------------------------
// Bufor posredni (tu na 32 x 8)

wire [C_M_AXI_DATA_WIDTH-1:0] s_axi_wdata_twr;

fifo_128_xxx #
(
  .buff_len(8)
)
fifo_twr
(
  .clk(clk),                                // dziala z zegarem AXI
  .din(tfifo_data),                         // wej�cie: dane wej�ciowe z fifo_wr 
  .wr_en((~fifo_wr_empty)&(~tfifo_full)),   // zapis mo�liwy, jak fifo_wr nie jest puste oraz tfifo nie pelne
  .rd_en(s_axi_wvalid&s_axi_wready),        // odczyt dane do zapisu wa�ne i zapis gotowy   
  .dout(s_axi_wdata_twr),                   // dane do zapisu do AXI 
  .full(tfifo_full),                        // fifo pelne
  .empty()
);


assign s_axi_wdata [C_M_AXI_DATA_WIDTH-1 -: TDATA_WIDTH] = s_axi_wdata_twr[TDATA_WIDTH-1 : 0];
assign s_axi_wdata[27 : 0] = s_axi_awaddr[27:0];
assign s_axi_wdata[31 : 28] = state_number;

//-----------------------------------------------
//fifo_256_32_512 fifo_rd
//fifo_64_32_1024 fifo_rd
wire [C_M_AXI_DATA_WIDTH-1:0]fifo_rd_data_temp;  // tu zmiana szerokosci danych
//wire [10:0] fifo_rd_wr_data_count;
// UWAGA to teraz jest 64_2014
fifo_128_1024 fifo_rd
(
  .wr_clk(clk),
  .rd_clk(fifo_clk),
  .din(s_axi_rdata),
  .wr_en(s_axi_rvalid),//todo [to jest flaga waznosci danych do odczytu]
  .rd_en(fifo_rd_en&axi_ready_rd),
  .dout(fifo_rd_data_temp),
  .wr_data_count(fifo_rd_wr_data_count),
  .rd_data_count(fifo_rd_rd_data_count),
  .full(fifo_rd_full),
  .empty(fifo_rd_empty)
);




assign fifo_rd_data=((fifo_rd_empty)? 128'hff00ff00ff00ff00ff00ff00ff00ff00:fifo_rd_data_temp); // tu zmiana szerokosci danych

//-----------------------------------------------
always @(posedge fifo_clk)
begin
  ready<=axi_ready_wr && axi_ready_rd;     // dioda statusu
end
//-----------------------------------------------
//stream fsm
// Uwaga to dziala z CLK glownym

//-------------------------------------------------------------------------------------------------------------------------
// MASZYNA STANU DO ODCZYTU

reg [15:0] line_counter_rd = 0;

always @(posedge clk)
begin

    axi_frame_valid0_rd<=frame_valid_rd;
    axi_frame_valid1_rd<=axi_frame_valid0_rd;
    
    tlast_rd_0 <= tlast_rd;
    tlast_rd_1 <= tlast_rd_0;

    if(rst==1'b0)
    begin
        // Reset ?  
    end
    else
    begin
    case(state_rd) 
        // Inicjalizacja kontrolera pamieci - tu chyba nie wystepuje (w przypadku AXI)
        ST_INIT0_RD:
        begin
            if(init_done) 
                state_rd<=ST_INIT1_RD; 
        end    
        // Odczyt w ramach inizjalizacji
        ST_INIT1_RD:
        begin
            s_axi_arvalid<=1'b1;                 // Ustawienie adresu do odczytu
            s_axi_araddr<={21'h1,rd_addr[27:0]};  //
// Naprawienie błędu związengo z brakiem jednego odczytu z pamięci.
//            rd_addr<=rd_addr+BURST_SIZE;         // Inkrementacja o burst 
            state_rd<=ST_INIT2_RD;                  // Przejscie do kolejnego stanu
            preload_cnt<=preload_cnt+1;
        end
        // Odczyt - dopoki mozna ?
        ST_INIT2_RD:
        begin
            if(s_axi_arready)                    // Jesli adready - adres zaakceptowany
            begin
                preload_cnt<=preload_cnt+1;
                s_axi_araddr<={21'h1,rd_addr[27:0]};
                rd_addr<=rd_addr+BURST_SIZE;      // Inkrementacja o burst  
                if(preload_cnt==128)              // Z czego wynika 512 ? // by�o 128 // 64 => powoli w prawo |44 powpli w prawo  32=szybko w prawo |
                begin
                    s_axi_arvalid<=1'b0;
                    rd_addr<=rd_addr;//TODO dirty hack
                    state_rd<=ST_SYNC0_RD;
                end
            end
        end      
        // Oczekiwania na bit startu
       ST_SYNC0_RD:
       begin
       // Wykrywanie narastajacego zbocza na sygnale tuser
            if((frame_valid_rd==1'b1)&&(axi_frame_valid0_rd==1'b0)) 
            begin
                line_counter_rd <=0; 
                state_rd<=ST_SYNC1_RD;              
            end
       end   
       ST_SYNC1_RD:
       begin
            if ( (tlast_rd_0 == 1'b1) && (tlast_rd_1 == 1'b0) )  // narastajace zbocze tlast
            begin
                line_counter_rd <=  line_counter_rd + 1;
                if ( line_counter_rd == 2159) // moze 720
                begin
                    state_rd<=ST_IDLE_RD;  // przejscie do stanu bezczynnosci
                    axi_ready_rd<=1'b1; // flaga statusu o gotowsci
                end
            end
        end        
        
        
        ST_IDLE_RD:
        begin
            if (fifo_rd_wr_data_count < 12'd1024)  // ew. zmiana tego paramteru
            begin
                state_rd <= ST_READ0_RD;
            end
        end
    
        // Odczyt (podanie adresu)
        ST_READ0_RD:
        begin
            s_axi_arvalid<=1'b1;       
            s_axi_araddr<={21'h1,rd_addr[27:0]};
            rd_addr<=rd_addr+BURST_SIZE;
            state_rd<=ST_READ1_RD;
        end
        // Odczyt  (potwierdzenie przyjecia adresu)
        ST_READ1_RD:
        begin
            if(s_axi_arready)
            begin
                s_axi_arvalid<=1'b0;
                if(rd_addr==img_size) 
                    rd_addr<=32'b0;
                state_rd<=ST_IDLE_RD;
            end
        end           
  endcase  
end

end

reg [15:0] line_counter_wr = 0;

// ------------------------------------------------------------------------------------------------
// MASZYNA DO ZAPISU
always @(posedge clk)
begin

  axi_frame_valid0_wr<=frame_valid_wr;
  tlast_wr_0 <= tlast_wr;
  tlast_wr_1 <= tlast_wr_0;
  //axi_frame_valid1_wr<=axi_frame_valid0_wr;
  
  if(rst==1'b0)
  begin
  
  end
  else
  begin
    case(state_wr) 
    // Oczekiwania na bit startu
        ST_SYNC0_WR:
        begin
            // Wykrywanie opadajacego zbocza na sygnale fvalid
            // A moze ma byc narastajace...
            if((frame_valid_wr==1'b1)&&(axi_frame_valid0_wr==1'b0)) 
            begin
                line_counter_wr <=0; 
                state_wr<=ST_SYNC1_WR;
                axi_ready_wr<=1'b1;
                state_wr<=ST_IDLE_WR;              
            end
        end   
        ST_SYNC1_WR:
        begin
            if ( (tlast_wr_0 == 1'b1) && (tlast_wr_1 == 1'b0) )  // narastajace zbocze tlast
            begin
                line_counter_wr <=  line_counter_wr + 1;
                if ( line_counter_wr == 2159) // moze 720
                begin
                     state_wr<=ST_IDLE_WR;  // przejscie do stanu bezczynnosci
                     axi_ready_wr<=1'b1; // flaga statusu o gotowsci
                end
            end
        end
        // Oczekiwanie (tu na zape�nienie si� kolejki wej�ciowej)   
        ST_IDLE_WR:
        begin
            if(tfifo_full) state_wr<=ST_WRITE0;   // przejscie do zapisu
        end
        // Zapis 0
        ST_WRITE0:
        begin
            s_axi_awaddr<={21'h1,wr_addr[27:0]};  // ustalenie adresu do zapisu
            wr_addr<=wr_addr+BURST_SIZE;         // inkrementacja adresu do zapisu    
            s_axi_awvalid<=1'b1;                 // ustalenie ze adres jest valid 
            state_wr<=ST_WRITE1;                    // przejscie do kolejnego stanu 
        end
        // Zapis 1
        ST_WRITE1:
          begin
             if(s_axi_awready)                     // jesli potwierdzenie odebrania adresu
              begin
                s_axi_awvalid<=1'b0;               // usuniecie valid adresu
                if(wr_addr==img_size)              // reset adresu  
                    wr_addr<=32'b0;                
                state_wr<=ST_WRITE2;                  // [rzekscoe do WRITE 2
                s_axi_wlast<=1'b0;                 // nie jest to ostatni ?
                s_axi_wvalid<=1'b1;//0             // dana valid
                state_number <= 4'd0;
              end
          end
          // Zapis 2 i dalej - zapisy kolejnych s��w...
          ST_WRITE2:
          begin
             if(s_axi_wready)
             begin
               state_wr<=ST_WRITE3;
               s_axi_wlast<=1'b0;//TODO
               s_axi_wvalid<=1'b1;//1
                state_number <= 4'd1;
             end    
          end  
          ST_WRITE3:
          begin
             if(s_axi_wready)
             begin
               state_wr<=ST_WRITE4;
               s_axi_wlast<=1'b0;//TODO
               s_axi_wvalid<=1'b1;//2
                state_number <= 4'd2;
             end    
          end  
          ST_WRITE4:
          begin
             if(s_axi_wready)
             begin
               state_wr<=ST_WRITE5;
               s_axi_wlast<=1'b0;//TODO
               s_axi_wvalid<=1'b1;//3
                state_number <= 4'd3;
             end    
          end  
          ST_WRITE5:
          begin
             if(s_axi_wready)
             begin
               state_wr<=ST_WRITE6;
               s_axi_wlast<=1'b0;//TODO
               s_axi_wvalid<=1'b1;//4
                state_number <= 4'd4;
             end    
          end    
          ST_WRITE6:
          begin
             if(s_axi_wready)
             begin
               state_wr<=ST_WRITE7;
               s_axi_wlast<=1'b0;//TODO
               s_axi_wvalid<=1'b1;//5
                state_number <= 4'd5;
             end    
          end  
          ST_WRITE7:
          begin
             if(s_axi_wready)
             begin
               state_wr<=ST_WRITE8;
               s_axi_wlast<=1'b0;//TODO
               s_axi_wvalid<=1'b1;//6
                state_number <= 4'd6;
             end    
          end  
         
          // Zapis ostatniego s�owa                            
          ST_WRITE8:
          begin
             if(s_axi_wready)
             begin
               state_wr<=ST_WRITE9;
               s_axi_wlast<=1'b1;//TODO
               s_axi_wvalid<=1'b1;//7
                state_number <= 4'd7;
             end    
          end       
          // Konczenie zapisu
          ST_WRITE9:
          begin
             if(s_axi_wready)
              begin
                s_axi_wlast<=1'b0;
                s_axi_wvalid<=1'b0;   // ustawienie na 0
                state_wr<=ST_IDLE_WR;      // przejscie do odczytu
                tx_cnt<=tx_cnt+1;     // licznik wys�anych danych 
                //end
              end
          end      
    endcase  
  end
  
end
//-----------------------------------------------
// Parametry (moze do analizy)
assign s_axi_awid=1'b0;
assign s_axi_awlen=8'b00000111;
assign s_axi_awsize=3'b100;  // tu zmiana szeroko�ci danych 2^4 tj 16 bajtow
assign s_axi_awburst=2'b01;
assign s_axi_awlock=1'b0;
assign s_axi_awcache=4'b0011;
assign s_axi_awprot=3'b000;
assign s_axi_awqos=4'b0;//todo

assign s_axi_wstrb=16'b1111111111111111; // tu zmiana szeroko�ci danych
//assign s_axi_wid=1'b0;

assign s_axi_bready=1'b1;
assign s_axi_rready=1'b1;

assign s_axi_arid=1'b0;
assign s_axi_arlen=8'b00000111;//((s_axi_rdata==32'b0)?8'b00000000:8'b00000001);
assign s_axi_arsize=3'b100;    // tu zmiana szeroko�ci danych 2^4 tj 16 bajtow
assign s_axi_arburst=2'b01;
assign s_axi_arlock=1'b0;
assign s_axi_arcache=4'b0011;
assign s_axi_arprot=3'b000;
assign s_axi_arqos=4'b0;//todo

//assign s_axi_wdata=tx_cnt;
//-----------------------------------------------
assign status={fifo_wr_full,fifo_rd_empty,ready,init_done};
//-----------------------------------------------
endmodule
//-----------------------------------------------
