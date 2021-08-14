
	# subsystem local structure to store available config: format [odd==Config even==value] \
	# e.g ss_router param list is 		   [list CONFIG.NUM_SI <> CONFIG.NUM_MI <>]
	variable ss_xgui_varlist [list]
	
	# GLOBAL VAR DECLARATION AND ASSIGNMENT
	variable var_c_placeholder         [list]
		
	# CONSOLE DEBUG MESSAGE PRINTING ENABLEMENT
	variable var_debug_en [list]
	set var_debug_en      0
	
	# EXDES PORTS INFORMATION CONTAINER
	variable vary_attr_pinlist [list]
	variable pin_cmd
	array set pin_cmd {
		ACLK                 {-dir I -type CLK}
		ARESETN              {-dir I -type RST}
		S_AXI                {-mode slave -vlnv xilinx.com:interface:aximm_rtl:1.0}
		axis_audio_in        {-mode slave -vlnv xilinx.com:interface:axis_rtl:1.0}
		aud_acr_cts_in       {-dir I -from 19 -to 0}
		aud_acr_n_in         {-dir I -from 19 -to 0}
		aud_acr_valid_in     {-dir I}
		hdmi_clk             {-dir I -type CLK}
		axis_audio_out       {-mode master -vlnv xilinx.com:interface:axis_rtl:1.0}
		aud_acr_cts_out      {-dir O -from 19 -to 0}
		aud_acr_n_out        {-dir O -from 19 -to 0}
		aud_acr_valid_out    {-dir O}
        aud_rstn             {-dir O -type RST}
		audio_clk            {-dir O -type CLK}
	}

	# FOR PORT CONFIGURABILITY 
	# example declaration
	# variable config_port_s_axi_cpu_aclk
	# array set config_port_s_axi_cpu_aclk {
	# 	CONFIG.ASSOCIATED_BUSIF			{S_AXI_CPU_IN}
	# 	CONFIG.ASSOCIATED_RESET			{s_axi_cpu_aresetn}
	# }
	# ** not applicable for hier 
	

	## VAR TO KEEP BLOCK NAME WITH GENERATION CMD \
		new (HIP): when define block_cmd's block name, do exclude any numbering for permutated blocks \
		example: for xlslice_<1/2/3/...>, define it as xlslice_
		
	## bmak: rtl ref module gen flow is required for rtl - NEW
	## bmak: hier gen flow is required for wrapper - NEW
	
	variable block_cmd 
	array set block_cmd {
		axi_interconnect        {-type ip -vlnv xilinx.com:ip:axi_interconnect}
		axi_smartconnect        {-type ip -vlnv xilinx.com:ip:smartconnect:1.0}
		clk_wiz                 {-type ip -vlnv xilinx.com:ip:clk_wiz}
		clk_wizard              {-type ip -vlnv xilinx.com:ip:clk_wizard}
		aud_pat_gen             {-type module -reference aud_pat_gen}
		hdmi_acr_ctrl           {-type module -reference hdmi_acr_ctrl}
	}                                   
	
	# FOR BLOCK CONFIGURABILITY 
	# example coding 
	# variable config_util_vector_logic	
	# array set config_util_vector_logic {
	# 	CONFIG.C_SIZE		{1}
	# 	CONFIG.C_OPERATION	{$C_OPERATION}
	# }
	
	variable config_axi_interconnect
	variable config_clk_wiz
	variable config_clk_wizard
	variable config_axi_smartconnect

	if {[array exist config_axi_interconnect]} {
		array unset config_axi_interconnect
	}
	array set config_axi_interconnect {
		CONFIG.NUM_MI              {3}
	}
    array set config_axi_smartconnect {
        CONFIG.NUM_MI              {3}
        CONFIG.NUM_SI              {1}
    }

	if {[array exist config_clk_wiz]} {
		array unset config_clk_wiz
	}
	array set config_clk_wiz {
		CONFIG.USE_DYN_RECONFIG    {true}
		CONFIG.PRIM_SOURCE         {No_buffer}
	}

	if {[array exist config_clk_wizard]} {
		array unset config_clk_wizard
	}
	array set config_clk_wizard {
		CONFIG.CLKFBOUT_MULT                    {30}
		CONFIG.CLKOUT1_DIVIDE                   {30}
		CONFIG.CLKOUT1_DUTY_CYCLE               {0.500}
		CONFIG.CLKOUT2_DIVIDE                   {12}
		CONFIG.CLKOUT_DRIVES                    {BUFG,BUFG,BUFG,BUFG,BUFG,BUFG,BUFG}
		CONFIG.CLKOUT_DYN_PS                    {None,None,None,None,None,None,None}
		CONFIG.CLKOUT_MATCHED_ROUTING           {false,false,false,false,false,false,false}
		CONFIG.CLKOUT_PORT                      {clk_out1,clk_out2,clk_out3,clk_out4,clk_out5,clk_out6,clk_out7}
		CONFIG.CLKOUT_REQUESTED_DUTY_CYCLE      {50.000,50.000,50.000,50.000,50.000,50.000,50.000}
		CONFIG.CLKOUT_REQUESTED_OUT_FREQUENCY   {100.000,300.000,100.000,100.000,100.000,100.000,100.000}
		CONFIG.CLKOUT_REQUESTED_PHASE           {0.000,0.000,0.000,0.000,0.000,0.000,0.000}
		CONFIG.CLKOUT_USED                      {true,false,false,false,false,false,false}
		CONFIG.DIVCLK_DIVIDE                    {1}
		CONFIG.OVERRIDE_PRIMITIVE               {false}
		CONFIG.PRIM_SOURCE                      {No_buffer}
		CONFIG.SECONDARY_IN_FREQ                {100.000}
		CONFIG.USE_DYN_RECONFIG                 {true}
		CONFIG.USE_LOCKED                       {true}
		CONFIG.USE_PHASE_ALIGNMENT              {true}
		CONFIG.USE_RESET                        {true}
	}

	## UPDATE_BD - NEW 25Nov2014 - needed for HIP 
	## VARS TO CONFIGURE THE AXI-LITE ADDR MAPPING 
	## assumption: top has only 1 axi-lite interconnect to control all the axi-lite traffic within the HIP	
	## pending development: multilevel HIP use case that involve child HIP
	variable top_addr_axi_lite_space NA
	variable top_addr_axi_mm_space NA
	variable cur_addr_space NA
	variable addr_reg_index 0
	variable addr_reg_index_axi_mm 20
	variable config_addr_mapping_axi_lite
	variable config_addr_mapping_axi_mm
		
