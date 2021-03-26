
    # subsystem local structure to store available config: format [odd==Config even==value] \
    # e.g ss_router param list is          [list CONFIG.NUM_SI <> CONFIG.NUM_MI <>]
    variable ss_xgui_varlist [list]

    # GLOBAL VAR DECLARATION AND ASSIGNMENT
    variable var_c_placeholder             [list]
    variable var_c_max_bits_per_component  [list]
    variable var_c_input_pixels_per_clock  [list]
    variable var_c_include_hdcp_1_4        [list]
    variable var_c_include_hdcp_2_2        [list]
    variable var_BOARD_SYS_CLK_NAME        [list]
    variable var_BOARD_SYS_CLK_FREQ        [list]
    variable var_BOARD_AXILITE_FREQ        [list]
    variable var_BOARD_SYS_RESET_NAME      [list]
    variable var_include_val               [list]
    variable var_has_frame_crc             [list]
    variable var_board_name                [list]
    variable var_exdes_topology            [list]
    variable var_C_TX_PLL_SELECTION        [list]
    variable var_C_RX_PLL_SELECTION        [list]
    variable var_C_TX_REFCLK_SEL           [list]
    variable var_C_RX_REFCLK_SEL           [list]
    variable var_C_NIDRU_REFCLK_SEL        [list]
    variable var_GT_CHANNEL_SITE           [list]
    variable var_PROCESSOR_TYPE            [list]
    variable var_GT_TYPE                   [list]
    variable var_c_nidru                   [list]
    variable var_c_exdes_axilite_freq      [list]
    variable var_tx_protocol               [list]
    variable var_rx_protocol               [list]

    # CONSOLE DEBUG MESSAGE PRINTING ENABLEMENT
    variable var_debug_en [list]
    set var_debug_en      0

    # EXDES PORTS INFORMATION CONTAINER
    variable vary_attr_pinlist [list]
    variable pin_cmd
    array set pin_cmd {
        dru_ref_clk_in              {-dir I -type CLK}
        dru_ref_clk_odiv2_in        {-dir I -type CLK}
        tx_ref_clk_in               {-dir I -type CLK}
        tx_ref_clk_odiv2_in         {-dir I -type CLK}
        rx_ref_clk_in               {-dir I -type CLK}
        rx_ref_clk_odiv2_in         {-dir I -type CLK}
        vid_phy_rx_axi4s_ch0        {-mode master -vlnv xilinx.com:interface:axis_rtl:1.0}
        vid_phy_rx_axi4s_ch1        {-mode master -vlnv xilinx.com:interface:axis_rtl:1.0}
        vid_phy_rx_axi4s_ch2        {-mode master -vlnv xilinx.com:interface:axis_rtl:1.0}
        vid_phy_tx_axi4s_ch0        {-mode slave -vlnv xilinx.com:interface:axis_rtl:1.0}
        vid_phy_tx_axi4s_ch1        {-mode slave -vlnv xilinx.com:interface:axis_rtl:1.0}
        vid_phy_tx_axi4s_ch2        {-mode slave -vlnv xilinx.com:interface:axis_rtl:1.0}
        tx_refclk_rdy               {-dir I}
        phy_data                    {-mode master -vlnv xilinx.com:interface:gt_rtl:1.0}
        vid_phy_axi4lite_aclk       {-dir I -type CLK}
        vid_phy_axi4lite_aresetn    {-dir I -type RST}
        vid_phy_axi4lite            {-mode slave -vlnv xilinx.com:interface:aximm_rtl:1.0}
        vid_phy_status_sb_rx        {-mode master -vlnv xilinx.com:interface:axis_rtl:1.0}
        vid_phy_status_sb_tx        {-mode master -vlnv xilinx.com:interface:axis_rtl:1.0}
        tx_tmds_clk                 {-dir O -type CLK}
        tx_video_clk                {-dir O -type CLK}
        rx_tmds_clk                 {-dir O -type CLK}
        rx_tmds_clk_p               {-dir O -type CLK}
        rx_tmds_clk_n               {-dir O -type CLK}
        rx_video_clk                {-dir O -type CLK}
        txoutclk                    {-dir O -type gt_usrclk}
        rxoutclk                    {-dir O -type gt_usrclk}
        drpclk                      {-dir I -type CLK}
        vid_phy_sb_aclk             {-dir I -type CLK}
        vid_phy_sb_aresetn          {-dir I -type RST}
        vid_phy_rx_axi4s_aresetn    {-dir I -type RST}
        vid_phy_tx_axi4s_aresetn    {-dir I -type RST}
        irq                         {-dir O}
    }

    # FOR PORT CONFIGURABILITY
    # example declaration
    # variable config_port_s_axi_cpu_aclk
    # array set config_port_s_axi_cpu_aclk {
    #   CONFIG.ASSOCIATED_BUSIF         {S_AXI_CPU_IN}
    #   CONFIG.ASSOCIATED_RESET         {s_axi_cpu_aresetn}
    # }
    # ** not applicable for hier


    ## VAR TO KEEP BLOCK NAME WITH GENERATION CMD \
        new (HIP): when define block_cmd's block name, do exclude any numbering for permutated blocks \
        example: for xlslice_<1/2/3/...>, define it as xlslice_

    ## bmak: rtl ref module gen flow is required for rtl - NEW
    ## bmak: hier gen flow is required for wrapper - NEW

    variable block_cmd
    array set block_cmd {
        gt_quad_base               {-type ip -vlnv xilinx.com:ip:gt_quad_base}
        bufg_gt_tx                 {-type ip -vlnv xilinx.com:ip:bufg_gt}
        bufg_gt_rx                 {-type ip -vlnv xilinx.com:ip:bufg_gt}
        urlp                       {-type ip -vlnv xilinx.com:ip:util_reduced_logic}
        xlcp                       {-type ip -vlnv xilinx.com:ip:xlconcat}
        hdmi_gt_controller         {-type ip -vlnv xilinx.com:ip:hdmi_gt_controller}
    }

    # FOR BLOCK CONFIGURABILITY
    # example coding
    # variable config_util_vector_logic
    # array set config_util_vector_logic {
    #   CONFIG.C_SIZE       {1}
    #   CONFIG.C_OPERATION  {$C_OPERATION}
    # }

    variable config_hdmi_gt_controller
    variable config_gt_quad_base
    variable config_urlp
    variable config_xlcp
    variable config_bufg_gt_rx
    variable config_bufg_gt_tx

    if {[array exist config_hdmi_gt_controller]} {
        array unset config_hdmi_gt_controller
    }
    array set config_hdmi_gt_controller {
        CONFIG.C_GT_DEBUG_PORT_EN             {true}
        CONFIG.C_INPUT_PIXELS_PER_CLOCK       {$C_INPUT_PIXELS_PER_CLOCK}
        CONFIG.C_NIDRU                        {true}
        CONFIG.C_NIDRU_REFCLK_SEL             {2}
        CONFIG.C_RX_REFCLK_SEL                {0}
        CONFIG.C_Rx_Protocol                  {HDMI}
        CONFIG.C_Tx_Protocol                  {HDMI}
        CONFIG.C_TX_REFCLK_SEL                {1}
        CONFIG.C_TX_PLL_SELECTION             {7}
        CONFIG.C_RX_PLL_SELECTION             {8}
        CONFIG.C_Txrefclk_Rdy_Invert          {true}
        CONFIG.C_Use_GT_CH4_HDMI              {true}
        CONFIG.Transceiver_Width              {2}
        CONFIG.check_refclk_selection         {0}
    }

    if {[array exist config_urlp]} {
        array unset config_urlp
    }
    array set config_urlp {
        CONFIG.C_SIZE                         {1}
    }

    if {[array exist config_xlcp]} {
        array unset config_xlcp
    }
    array set config_xlcp {
        CONFIG.NUM_PORTS                      {1}
    }

    if {[array exist config_bufg_gt_rx]} {
        array unset config_bufg_gt_rx
    }
    array set config_bufg_gt_rx {
        CONFIG.FREQ_HZ                        {297000000.0}
    }

    if {[array exist config_bufg_gt_tx]} {
        array unset config_bufg_gt_tx
    }

    array set config_bufg_gt_tx {
        CONFIG.FREQ_HZ                        {297000000.0}
    }

    if {[array exist config_gt_quad_base]} {
        array unset config_gt_quad_base
    }

    array set config_gt_quad_base {
        CONFIG.PROT0_ENABLE {true}
        CONFIG.PROT0_GT_DIRECTION {SIMPLEX_RX}
        CONFIG.PROT0_NO_OF_RX_LANES {3}
        CONFIG.PROT0_RX_MASTERCLK_SRC {{RX0}}
        CONFIG.PROT0_TX_MASTERCLK_SRC {{None}}
        CONFIG.PROT1_ENABLE {true}
        CONFIG.PROT1_GT_DIRECTION {SIMPLEX_TX}
        CONFIG.PROT1_NO_OF_TX_LANES {4}
        CONFIG.PROT1_RX_MASTERCLK_SRC {{None}}
        CONFIG.PROT1_TX_MASTERCLK_SRC {{TX0}}
        CONFIG.RX0_LANE_SEL {{PROT0}}
        CONFIG.RX1_LANE_SEL {{PROT0}}
        CONFIG.RX2_LANE_SEL {{PROT0}}
        CONFIG.RX3_LANE_SEL {{unconnected}}
        CONFIG.TX0_LANE_SEL {{PROT1}}
        CONFIG.TX1_LANE_SEL {{PROT1}}
        CONFIG.TX2_LANE_SEL {{PROT1}}
        CONFIG.TX3_LANE_SEL {{PROT1}}
        CONFIG.REFCLK_STRING {{HSCLK0_LCPLLGTREFCLK1 refclk_PROT1_R1_multiple_ext_freq HSCLK0_LCPLLNORTHREFCLK0 refclk_PROT1_R2_400.000000_MHz_unique1 HSCLK0_RPLLGTREFCLK0 refclk_PROT0_R0_multiple_ext_freq HSCLK0_RPLLNORTHREFCLK0 refclk_PROT0_R2_400.000000_MHz_unique1 HSCLK1_LCPLLGTREFCLK1 refclk_PROT1_R1_multiple_ext_freq HSCLK1_LCPLLNORTHREFCLK0 refclk_PROT1_R2_400.000000_MHz_unique1 HSCLK1_RPLLGTREFCLK0 refclk_PROT0_R0_multiple_ext_freq HSCLK1_RPLLNORTHREFCLK0 refclk_PROT0_R2_400.000000_MHz_unique1}}
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

