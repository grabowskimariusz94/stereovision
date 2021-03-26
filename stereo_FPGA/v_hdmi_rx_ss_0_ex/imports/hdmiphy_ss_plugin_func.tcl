
# Sourcing helper functions
# set srcFile [get_files ss_plugin_util.tcl]
# source $srcFile

# source ./ss_plugin_util.tcl
source ${srcIpDir}/exdes/bd/framework/ss_plugin_util.tcl

# BELOW ARE ALL SD SPECIFIC FUNCTIONS

    # NOT APPLICABLE FOR EXDES. Just for HIP generation
    # proc to remap params, manipulate params and return post generation param [optional] list that required for data structures generation
    proc ss_param_assignment {varlist} {

        # fix and do not change
        variable ss_xgui_varlist
        variable var_c_include_hdcp_1_4
        variable var_c_include_hdcp_2_2
        variable var_BOARD_SYS_CLK_NAME
        variable var_BOARD_SYS_CLK_FREQ
        variable var_BOARD_AXILITE_FREQ
        variable var_BOARD_SYS_RESET_NAME
        variable var_include_val
        variable var_has_frame_crc
        variable var_board_name
        variable var_exdes_topology
        variable var_C_TX_PLL_SELECTION
        variable var_C_RX_PLL_SELECTION
        variable var_C_TX_REFCLK_SEL
        variable var_C_RX_REFCLK_SEL
        variable var_C_NIDRU_REFCLK_SEL
        variable var_GT_CHANNEL_SITE
        variable var_PROCESSOR_TYPE
        variable var_GT_TYPE
        variable var_c_nidru
        variable var_c_exdes_axilite_freq
        variable var_tx_protocol
        variable var_rx_protocol

        set ss_xgui_varlist $varlist

        ############################## Developer define start here ############################

        # internal use variable
        variable var_c_placeholder
        variable var_debug_en

        # remapping the ss_xgui_varlist into usable variable within this proc
        set var_c_include_hdcp_1_4 [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_INCLUDE_HDCP_1_4] + 1]]
        set var_c_include_hdcp_2_2 [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_INCLUDE_HDCP_2_2] + 1]]
        set var_c_max_bits_per_component [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_MAX_BITS_PER_COMPONENT] + 1]]
        set var_c_input_pixels_per_clock [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_INPUT_PIXELS_PER_CLOCK] + 1]]
        set var_c_addr_width [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_ADDR_WIDTH] + 1]]
        set var_c_hysteresis [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_HYSTERESIS_LEVEL] + 1]]
        set var_c_vid_interface [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_VID_INTERFACE] + 1]]
        set var_c_include_low_reso_vid [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_INCLUDE_LOW_RESO_VID] + 1]]
        set var_c_include_yuv420_sup [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_INCLUDE_YUV420_SUP] + 1]]

        # enable debug mode (Developer define required value: 0 - disable; 1 - enable)
        set var_debug_en 0

        # initialize and assign internal use variables - NA

        # print debug msg -  variable with its value
        if {$var_debug_en == 1} {
            puts "DBG_MSG - data structure - ss_param_assignment:"
            puts "include_hdcp_1_4           =  $var_c_include_hdcp_1_4"
            puts "include_hdcp_2_2           =  $var_c_include_hdcp_2_2"
            puts "max_bits_per_component     =  $var_c_max_bits_per_component"
            puts "input_pixels_per_clock     =  $var_c_input_pixels_per_clock"
            puts "addr_width                 =  $var_c_addr_width"
            puts "hysteresis                 =  $var_c_hysteresis"
            puts "vid_interface              =  $var_c_vid_interface"
            puts "include_low_reso_vid       =  $var_c_include_low_reso_vid"
            puts "include_yuv420_sup         =  $var_c_include_yuv420_sup"
            puts ""
        }

        ############################## Developer define end here ############################

    }

    # FOR UPDATE_BOUNDARY USAGE
    # proc to generate the bdry pins data struc that will be used for subsystem generation
    proc get_bdry_pinlist {var_connect var_topology {upvar_num 1}} {
        upvar $upvar_num $var_connect var_con
        upvar $upvar_num $var_topology var_topo

        # only define variables that needed in this proc
        variable ss_connect
        variable ss_topology
        variable var_c_max_bits_per_component
        variable var_c_input_pixels_per_clock
        variable var_c_include_hdcp_1_4
        variable var_c_include_hdcp_2_2
        variable var_BOARD_SYS_CLK_NAME
        variable var_BOARD_SYS_CLK_FREQ
        variable var_BOARD_AXILITE_FREQ
        variable var_BOARD_SYS_RESET_NAME
        variable var_include_val
        variable var_has_frame_crc
        variable var_board_name
        variable var_exdes_topology
        variable var_C_TX_PLL_SELECTION
        variable var_C_RX_PLL_SELECTION
        variable var_C_TX_REFCLK_SEL
        variable var_C_RX_REFCLK_SEL
        variable var_C_NIDRU_REFCLK_SEL
        variable var_GT_CHANNEL_SITE
        variable var_PROCESSOR_TYPE
        variable var_GT_TYPE
        variable var_c_nidru
        variable var_c_exdes_axilite_freq
        variable var_tx_protocol
        variable var_rx_protocol


        ############################## Developer define start here ############################

        # insert required variable to be used in this proc
        variable var_c_placeholder
        variable var_debug_en

        variable pin_cmd

        # reset the data structure and assign topology
        rst_data_struc ss_connect 1
        set ss_topology hdmiphy_ss_topo

        # ss_connect(<topology>,bdry,pinlist) [<all boundary pins for one topology>]
        set ss_connect($ss_topology,bdry,pinlist) [list tx_ref_clk_in tx_ref_clk_odiv2_in rx_ref_clk_in rx_ref_clk_odiv2_in \
                                                        phy_data \
                                                        vid_phy_rx_axi4s_ch0 vid_phy_rx_axi4s_ch1 vid_phy_rx_axi4s_ch2 \
                                                        vid_phy_tx_axi4s_ch0 vid_phy_tx_axi4s_ch1 vid_phy_tx_axi4s_ch2 \
                                                        tx_refclk_rdy \
                                                        vid_phy_axi4lite_aclk vid_phy_axi4lite_aresetn vid_phy_axi4lite \
                                                        drpclk vid_phy_sb_aclk \
                                                        vid_phy_sb_aresetn vid_phy_rx_axi4s_aresetn vid_phy_tx_axi4s_aresetn \
                                                        vid_phy_status_sb_rx vid_phy_status_sb_tx \
                                                        tx_tmds_clk tx_video_clk \
                                                        rx_tmds_clk rx_tmds_clk_p rx_tmds_clk_n rx_video_clk \
                                                        txoutclk rxoutclk \
                                                        irq ]

        if {[string match -nocase $var_c_nidru true]} {
            set ss_connect($ss_topology,bdry,pinlist)    [concat [set ss_connect($ss_topology,bdry,pinlist)] \
                                                                     dru_ref_clk_in]
            set ss_connect($ss_topology,bdry,pinlist)    [concat [set ss_connect($ss_topology,bdry,pinlist)] \
                                                                     dru_ref_clk_odiv2_in]
        }

        # display debug msg
        if {$var_debug_en == 1} {
            puts "DBG_MSG - data structure - get_bdry_pinlist: [set ss_connect($ss_topology,bdry,pinlist)]"
            puts ""
        }

        ############################## Developer define end here #############################

        # transfer the result from local namespace var into common namespace var
        array set var_con  [array get ss_connect]
        set var_topo $ss_topology

    }

    # NOT APPLICABLE FOR EXDES. Just for HIP generation
    # proc to manipulate the config port table for all configurable boundary ports
    proc config_obj_port_property {tobe_config_obj_port tobe_config_obj_port_path} {

        variable ss_xgui_varlist

        ############################## Developer define start here ############################
        variable var_c_placeholder
        variable var_debug_en
        variable var_c_include_hdcp_1_4
        variable var_c_include_hdcp_2_2
        variable var_BOARD_SYS_CLK_NAME
        variable var_BOARD_SYS_CLK_FREQ
        variable var_BOARD_AXILITE_FREQ
        variable var_BOARD_SYS_RESET_NAME
        variable var_include_val
        variable var_has_frame_crc
        variable var_board_name
        variable var_exdes_topology
        variable var_C_TX_PLL_SELECTION
        variable var_C_RX_PLL_SELECTION
        variable var_C_TX_REFCLK_SEL
        variable var_C_RX_REFCLK_SEL
        variable var_C_NIDRU_REFCLK_SEL
        variable var_GT_CHANNEL_SITE
        variable var_PROCESSOR_TYPE
        variable var_GT_TYPE
        variable var_c_nidru
        variable var_c_exdes_axilite_freq
        variable var_tx_protocol
        variable var_rx_protocol

        ## ** not applicable for hier

    }

    # FOR UPDATE_BD USAGE
    # proc to generate the leaf objs data struc that will be used for subsystem generation
    proc get_leaf_blocks {var_connect var_topology {upvar_num 1} {shadow_copy 1}} {
        upvar $upvar_num $var_connect var_con
        upvar $upvar_num $var_topology var_topo

        ############################## Developer define start here ############################
        # only define variables that needed in this proc
        variable var_c_placeholder
        variable var_debug_en
        variable ss_topology
        variable var_c_max_bits_per_component
        variable var_c_input_pixels_per_clock
        variable var_c_include_hdcp_1_4
        variable var_c_include_hdcp_2_2
        variable var_BOARD_SYS_CLK_NAME
        variable var_BOARD_SYS_CLK_FREQ
        variable var_BOARD_AXILITE_FREQ
        variable var_BOARD_SYS_RESET_NAME
        variable var_include_val
        variable var_has_frame_crc
        variable var_board_name
        variable var_exdes_topology
        variable var_C_TX_PLL_SELECTION
        variable var_C_RX_PLL_SELECTION
        variable var_C_TX_REFCLK_SEL
        variable var_C_RX_REFCLK_SEL
        variable var_C_NIDRU_REFCLK_SEL
        variable var_GT_CHANNEL_SITE
        variable var_PROCESSOR_TYPE
        variable var_GT_TYPE
        variable var_c_nidru
        variable var_c_exdes_axilite_freq
        variable var_tx_protocol
        variable var_rx_protocol

        # reset the data structure and assign topology
        # rst_data_struc ss_connect 1
        set ss_topology hdmiphy_ss_topo


        set ss_connect($ss_topology,leaf) [list hdmi_gt_controller urlp xlcp\
                                                bufg_gt_rx bufg_gt_tx \
                                                gt_quad_base]

        # display debug msg
        if {$var_debug_en == 1} {
            puts "DBG_MSG - data structure - get_leaf_blocks: [set ss_connect($ss_topology,leaf)]"
            puts ""
        }

        ############################## Developer define end here #############################

        # transfer the result from local namespace var into common namespace var
        array set var_con  [array get ss_connect]
        set var_topo $ss_topology

    }

    # proc to generate the source2target and net data strucs that will be used for subsystem generation
    proc get_ss_connectivity {var_connect var_topology {upvar_num 1}} {
        upvar $upvar_num $var_connect var_con
        upvar $upvar_num $var_topology var_topo
        variable ss_connect

        ############################## Developer define start here ############################

        # only define variables that needed in this proc
        variable var_c_placeholder
        variable var_debug_en
        variable ss_topology
        variable var_c_max_bits_per_component
        variable var_c_input_pixels_per_clock
        variable var_c_include_hdcp_1_4
        variable var_c_include_hdcp_2_2
        variable var_BOARD_SYS_CLK_NAME
        variable var_BOARD_SYS_CLK_FREQ
        variable var_BOARD_AXILITE_FREQ
        variable var_BOARD_SYS_RESET_NAME
        variable var_include_val
        variable var_has_frame_crc
        variable var_board_name
        variable var_exdes_topology
        variable var_C_TX_PLL_SELECTION
        variable var_C_RX_PLL_SELECTION
        variable var_C_TX_REFCLK_SEL
        variable var_C_RX_REFCLK_SEL
        variable var_C_NIDRU_REFCLK_SEL
        variable var_GT_CHANNEL_SITE
        variable var_PROCESSOR_TYPE
        variable var_GT_TYPE
        variable var_c_nidru
        variable var_c_exdes_axilite_freq
        variable var_tx_protocol
        variable var_rx_protocol

        # reset the data structure and assign topology
        # rst_data_struc ss_connect 1
        set ss_topology hdmiphy_ss_topo
        set source_objs [list]
        set ss_connect($ss_topology,sourceIsInterfacePin) [list]

        lappend source_objs bdry_in
        set ss_connect($ss_topology,source2target,bdry_in,vid_phy_tx_axi4s_ch0)                [list hdmi_gt_controller   tx_axi4s_ch0]
        set ss_connect($ss_topology,source2target,bdry_in,vid_phy_tx_axi4s_ch1)                [list hdmi_gt_controller   tx_axi4s_ch1]
        set ss_connect($ss_topology,source2target,bdry_in,vid_phy_tx_axi4s_ch2)                [list hdmi_gt_controller   tx_axi4s_ch2]
        set ss_connect($ss_topology,source2target,bdry_in,vid_phy_axi4lite)                    [list hdmi_gt_controller   axi4lite]
        if { $var_C_TX_PLL_SELECTION == 8 } {
        set ss_connect($ss_topology,source2target,bdry_in,rx_ref_clk_in)                       [list gt_quad_base         GT_REFCLK0]
        set ss_connect($ss_topology,source2target,bdry_in,tx_ref_clk_in)                       [list gt_quad_base         GT_REFCLK2]
        if {[string match -nocase $var_c_nidru true]} {
            set ss_connect($ss_topology,source2target,bdry_in,dru_ref_clk_odiv2_in)                [list hdmi_gt_controller   gt_refclk2_odiv2]
            set ss_connect($ss_topology,source2target,bdry_in,dru_ref_clk_in)                      [list gt_quad_base         GT_REFCLK1]
        }
        } else {
        set ss_connect($ss_topology,source2target,bdry_in,rx_ref_clk_in)                       [list gt_quad_base         GT_REFCLK1]
        set ss_connect($ss_topology,source2target,bdry_in,tx_ref_clk_in)                       [list gt_quad_base         GT_REFCLK0]
        if {[string match -nocase $var_c_nidru true]} {
            set ss_connect($ss_topology,source2target,bdry_in,dru_ref_clk_odiv2_in)                [list hdmi_gt_controller   gt_refclk2_odiv2]
            set ss_connect($ss_topology,source2target,bdry_in,dru_ref_clk_in)                      [list gt_quad_base         GT_REFCLK2]
        }
        }
        set ss_connect($ss_topology,source2target,bdry_in,tx_ref_clk_odiv2_in)                 [list hdmi_gt_controller   gt_refclk1_odiv2]
        set ss_connect($ss_topology,source2target,bdry_in,rx_ref_clk_odiv2_in)                 [list hdmi_gt_controller   gt_refclk0_odiv2]

        set ss_connect($ss_topology,source2target,bdry_in,tx_refclk_rdy)                       [list hdmi_gt_controller   tx_refclk_rdy]
        set ss_connect($ss_topology,source2target,bdry_in,vid_phy_axi4lite_aclk)               [list hdmi_gt_controller   axi4lite_aclk]
        set ss_connect($ss_topology,source2target,bdry_in,vid_phy_axi4lite_aresetn)            [list hdmi_gt_controller   axi4lite_aresetn]
        set ss_connect($ss_topology,source2target,bdry_in,drpclk)                              [list hdmi_gt_controller   apb_clk \
                                                                                                     gt_quad_base         apb3clk \
                                                                                                     gt_quad_base         altclk]
        set ss_connect($ss_topology,source2target,bdry_in,vid_phy_sb_aclk)                     [list hdmi_gt_controller   sb_aclk]
        set ss_connect($ss_topology,source2target,bdry_in,vid_phy_sb_aresetn)                  [list hdmi_gt_controller   sb_aresetn]
        set ss_connect($ss_topology,source2target,bdry_in,vid_phy_rx_axi4s_aresetn)            [list hdmi_gt_controller   rx_axi4s_aresetn]
        set ss_connect($ss_topology,source2target,bdry_in,vid_phy_tx_axi4s_aresetn)            [list hdmi_gt_controller   tx_axi4s_aresetn]

        lappend source_objs xlcp
        set ss_connect($ss_topology,source2target,xlcp,dout)                                   [list urlp                 Op1]

        lappend source_objs urlp
        set ss_connect($ss_topology,source2target,urlp,Res)                                    [list hdmi_gt_controller   gtpowergood]

        lappend source_objs bufg_gt_tx
        set ss_connect($ss_topology,source2target,bufg_gt_tx,usrclk)                           [list bdry_out             txoutclk \
                                                                                                     gt_quad_base         ch0_txusrclk \
                                                                                                     gt_quad_base         ch1_txusrclk \
                                                                                                     gt_quad_base         ch2_txusrclk \
                                                                                                     gt_quad_base         ch3_txusrclk \
                                                                                                     hdmi_gt_controller   tx_axi4s_aclk \
                                                                                                     hdmi_gt_controller   gt_txusrclk]

        lappend source_objs bufg_gt_rx
        set ss_connect($ss_topology,source2target,bufg_gt_rx,usrclk)                           [list bdry_out             rxoutclk \
                                                                                                     gt_quad_base         ch0_rxusrclk \
                                                                                                     gt_quad_base         ch1_rxusrclk \
                                                                                                     gt_quad_base         ch2_rxusrclk \
                                                                                                     hdmi_gt_controller   rx_axi4s_aclk \
                                                                                                     hdmi_gt_controller   gt_rxusrclk]

        lappend source_objs hdmi_gt_controller
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,rx_axi4s_ch0)             [list bdry_out             vid_phy_rx_axi4s_ch0]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,rx_axi4s_ch1)             [list bdry_out             vid_phy_rx_axi4s_ch1]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,rx_axi4s_ch2)             [list bdry_out             vid_phy_rx_axi4s_ch2]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,status_sb_tx)             [list bdry_out             vid_phy_status_sb_tx]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,status_sb_rx)             [list bdry_out             vid_phy_status_sb_rx]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,tx_tmds_clk)              [list bdry_out             tx_tmds_clk]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,tx_video_clk)             [list bdry_out             tx_video_clk]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,rx_video_clk)             [list bdry_out             rx_video_clk]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,rx_tmds_clk)              [list bdry_out             rx_tmds_clk]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,rx_tmds_clk_p)            [list bdry_out             rx_tmds_clk_p]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,rx_tmds_clk_n)            [list bdry_out             rx_tmds_clk_n]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,irq)                      [list bdry_out             irq]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,gt_debug)                 [list gt_quad_base         GT_DEBUG]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,gt_tx0)                   [list gt_quad_base         TX0_GT_IP_Interface]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,gt_tx1)                   [list gt_quad_base         TX1_GT_IP_Interface]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,gt_tx2)                   [list gt_quad_base         TX2_GT_IP_Interface]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,gt_tx3)                   [list gt_quad_base         TX3_GT_IP_Interface]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,gt_rx0)                   [list gt_quad_base         RX0_GT_IP_Interface]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,gt_rx1)                   [list gt_quad_base         RX1_GT_IP_Interface]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,gt_rx2)                   [list gt_quad_base         RX2_GT_IP_Interface]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,ch0_debug)                [list gt_quad_base         CH0_DEBUG]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,ch1_debug)                [list gt_quad_base         CH1_DEBUG]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,ch2_debug)                [list gt_quad_base         CH2_DEBUG]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,ch3_debug)                [list gt_quad_base         CH3_DEBUG]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,gt_lcpll0_reset)          [list gt_quad_base         hsclk0_lcpllreset]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,gt_lcpll1_reset)          [list gt_quad_base         hsclk1_lcpllreset]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,gt_rpll0_reset)           [list gt_quad_base         hsclk0_rpllreset]
        set ss_connect($ss_topology,source2target,hdmi_gt_controller,gt_rpll1_reset)           [list gt_quad_base         hsclk1_rpllreset]

        lappend source_objs gt_quad_base
        set ss_connect($ss_topology,source2target,gt_quad_base,ch0_txoutclk)                   [list bufg_gt_tx           outclk]
        set ss_connect($ss_topology,source2target,gt_quad_base,ch0_rxoutclk)                   [list bufg_gt_rx           outclk]
        set ss_connect($ss_topology,source2target,gt_quad_base,hsclk0_lcplllock)               [list hdmi_gt_controller   gt_lcpll0_lock]
        set ss_connect($ss_topology,source2target,gt_quad_base,hsclk1_lcplllock)               [list hdmi_gt_controller   gt_lcpll1_lock]
        set ss_connect($ss_topology,source2target,gt_quad_base,hsclk0_rplllock)                [list hdmi_gt_controller   gt_rpll0_lock]
        set ss_connect($ss_topology,source2target,gt_quad_base,hsclk1_rplllock)                [list hdmi_gt_controller   gt_rpll1_lock]
        set ss_connect($ss_topology,source2target,gt_quad_base,ch0_iloresetdone)               [list hdmi_gt_controller   gt_ch0_ilo_resetdone]
        set ss_connect($ss_topology,source2target,gt_quad_base,ch1_iloresetdone)               [list hdmi_gt_controller   gt_ch1_ilo_resetdone]
        set ss_connect($ss_topology,source2target,gt_quad_base,ch2_iloresetdone)               [list hdmi_gt_controller   gt_ch2_ilo_resetdone]
        set ss_connect($ss_topology,source2target,gt_quad_base,ch3_iloresetdone)               [list hdmi_gt_controller   gt_ch3_ilo_resetdone]
        set ss_connect($ss_topology,source2target,gt_quad_base,gtpowergood)                    [list xlcp                 In0]
        set ss_connect($ss_topology,source2target,gt_quad_base,GT_Serial)                      [list bdry_out             phy_data]
#        set ss_connect($ss_topology,source2target,gt_quad_base,GT_Serial_TX)                  [list bdry_out             phy_tx_out]

        ## remove any numbering exist in the interface signal name for the source list e,g S01_AXI, S02_AXI,...S0*_AXI will be tagged as S_AXI
        set ss_connect($ss_topology,sourceIsInterfacePin) [list vid_phy_tx_axis_ch rx_axis_ch status_sb_tx status_sb_rx gt_debug gt_tx gt_rx ch_debug vid_phy_axilite GT_Serial]

        set ss_connect($ss_topology,source) $source_objs
        generate_net_list $var_debug_en $source_objs
        ############################## Developer define end here ############################

        # transfer the result from local namespace var into common namespace var
        array set var_con  [array get ss_connect]
        set var_topo $ss_topology

    }

    # proc to manipulate the config table for all leaf objects - DEFINE BY SUBSYSTEM DEVELOPER \
        - before going this proc, make sure the set_ss_param_varlist proc ocmpleted
    proc config_obj_property {tobe_config_obj tobe_config_obj_path} {

        variable ss_xgui_varlist

        ############################## Developer define start here ############################
        # only define variables that needed in this proc
        variable var_c_placeholder
        variable var_debug_en
        variable ss_topology
        variable var_c_max_bits_per_component
        variable var_c_input_pixels_per_clock
        variable var_c_include_hdcp_1_4
        variable var_c_include_hdcp_2_2
        variable var_BOARD_SYS_CLK_NAME
        variable var_BOARD_SYS_CLK_FREQ
        variable var_BOARD_AXILITE_FREQ
        variable var_BOARD_SYS_RESET_NAME
        variable var_include_val
        variable var_has_frame_crc
        variable var_board_name
        variable var_exdes_topology
        variable var_C_TX_PLL_SELECTION
        variable var_C_RX_PLL_SELECTION
        variable var_C_TX_REFCLK_SEL
        variable var_C_RX_REFCLK_SEL
        variable var_C_NIDRU_REFCLK_SEL
        variable var_GT_CHANNEL_SITE
        variable var_PROCESSOR_TYPE
        variable var_GT_TYPE
        variable var_c_nidru
        variable var_c_exdes_axilite_freq
        variable var_tx_protocol
        variable var_rx_protocol

        variable config_hdmi_gt_controller
        variable config_gt_quad_base
        variable config_urlp
        variable config_xlcp
        variable config_bufg_gt_rx
        variable config_bufg_gt_tx

        switch -regexp -matchvar varlist -- $tobe_config_obj {
                hdmi_gt_controller    {
                                      set config_hdmi_gt_controller(CONFIG.C_Tx_Protocol)            $var_tx_protocol
                                      set config_hdmi_gt_controller(CONFIG.C_TX_PLL_SELECTION)       $var_C_TX_PLL_SELECTION
                                      set config_hdmi_gt_controller(CONFIG.C_TX_REFCLK_SEL)          $var_C_TX_REFCLK_SEL
                                      set config_hdmi_gt_controller(CONFIG.C_Rx_Protocol)            $var_rx_protocol
                                      set config_hdmi_gt_controller(CONFIG.C_RX_PLL_SELECTION)       $var_C_RX_PLL_SELECTION
                                      set config_hdmi_gt_controller(CONFIG.C_RX_REFCLK_SEL)          $var_C_RX_REFCLK_SEL
                                      set config_hdmi_gt_controller(CONFIG.C_NIDRU)                  $var_c_nidru
                                      if {[string match -nocase $var_c_nidru true]} {
                                        set config_hdmi_gt_controller(CONFIG.C_NIDRU_REFCLK_SEL)       $var_C_NIDRU_REFCLK_SEL
                                      }
                                      set config_hdmi_gt_controller(CONFIG.C_INPUT_PIXELS_PER_CLOCK) $var_c_input_pixels_per_clock
                                      set config_hdmi_gt_controller(CONFIG.Transceiver_Width)        $var_c_input_pixels_per_clock
                                      ::ss_common::go_config $tobe_config_obj_path config_hdmi_gt_controller
                                    }
                gt_quad_base    {
                                      if {$var_C_TX_PLL_SELECTION == 7} {
                                          set tx_pll {LCPLL}
                                      } else {
                                          set tx_pll {RPLL}
                                      }

                                      if {$var_C_RX_PLL_SELECTION == 7} {
                                          set rx_pll {LCPLL}
                                      } else {
                                          set rx_pll {RPLL}
                                      }
                                      if {[string match -nocase $var_c_nidru false]} {
                                          set config_gt_quad_base(CONFIG.REFCLK_STRING) {{HSCLK0_${tx_pll}GTREFCLK1 refclk_PROT1_R1_multiple_ext_freq HSCLK0_${rx_pll}GTREFCLK0 refclk_PROT0_R0_multiple_ext_freq HSCLK1_${tx_pll}GTREFCLK1 refclk_PROT1_R1_multiple_ext_freq HSCLK1_${rx_pll}GTREFCLK0 refclk_PROT0_R0_multiple_ext_freq}}
                                      } else {
                                          set config_gt_quad_base(CONFIG.REFCLK_STRING) {{HSCLK0_${tx_pll}GTREFCLK1 refclk_PROT1_R1_multiple_ext_freq HSCLK0_${rx_pll}GTREFCLK0 refclk_PROT0_R0_multiple_ext_freq HSCLK0_${rx_pll}NORTHREFCLK0 refclk_PROT0_R2_400.000000_MHz_unique1 HSCLK1_${tx_pll}GTREFCLK1 refclk_PROT1_R1_multiple_ext_freq HSCLK1_${rx_pll}GTREFCLK0 refclk_PROT0_R0_multiple_ext_freq HSCLK1_${rx_pll}NORTHREFCLK0 refclk_PROT0_R2_400.000000_MHz_unique1}}
                                      }
                                      ::ss_common::go_config $tobe_config_obj_path config_gt_quad_base
                                    }
                urlp             {
                                      ::ss_common::go_config $tobe_config_obj_path config_urlp
                                    }
                xlcp          {
                                      ::ss_common::go_config $tobe_config_obj_path config_xlcp
                                    }
                bufg_gt_rx    {
                                      ::ss_common::go_config $tobe_config_obj_path config_bufg_gt_rx
                                    }
                bufg_gt_tx    {
                                      ::ss_common::go_config $tobe_config_obj_path config_bufg_gt_tx
                                    }
        }

        ############################## Developer define end here ############################

    }

    # NOT APPLICABLE FOR EXDES. Just for HIP generation
    proc config_pin_property {ss_pin_name} {

        # placeholder

    }

    # TBD for EXDEES
    # new for HIP - 25Nov2014 - proc to configure the axi-lite address mapping
    # 16 Dec 2015 - Obsolete and use tool auto address assignment
    proc assign_address_properties {} {

        ############################## Developer define start here ############################
        variable var_c_placeholder
        variable var_debug_en
        variable ss_topology
        variable var_c_max_bits_per_component
        variable var_c_input_pixels_per_clock
        variable var_c_include_hdcp_1_4
        variable var_c_include_hdcp_2_2
        variable var_BOARD_SYS_CLK_NAME
        variable var_BOARD_SYS_CLK_FREQ
        variable var_BOARD_AXILITE_FREQ
        variable var_BOARD_SYS_RESET_NAME
        variable var_include_val
        variable var_has_frame_crc
        variable var_board_name
        variable var_exdes_topology
        variable var_C_TX_PLL_SELECTION
        variable var_C_RX_PLL_SELECTION
        variable var_C_TX_REFCLK_SEL
        variable var_C_RX_REFCLK_SEL
        variable var_C_NIDRU_REFCLK_SEL
        variable var_GT_CHANNEL_SITE
        variable var_PROCESSOR_TYPE
        variable var_GT_TYPE
        variable var_c_nidru
        variable var_c_exdes_axilite_freq
        variable var_tx_protocol
        variable var_rx_protocol

        variable top_addr_axi_lite_space
        variable top_addr_axi_mm_space
        variable cur_addr_space
        variable addr_reg_index
        variable addr_reg_index_axi_mm

        variable config_addr_mapping_axi_lite
        variable config_addr_mapping_axi_mm


        ## format listing per line: leaf_object<space>AXILITE_PORT<space>addr_range<space>addr_base
        set config_addr_mapping_axi_lite [list  v_hdmi_tx   S_AXI   64k 0x10000 \
                                                v_tc        ctrl    64k 0x20000]


            # set config_addr_mapping_axi_mm [list \
            #   axi_vdma    Data_S2MM       1G  0x80000000 \
            #   axi_vdma    Data_MM2S       1G  0x80000000 \
            #   v_deinterlacer  Data_m_axi_gmem     1G  0x80000000 \
            # ]

            ## axi-mm address mapping - only needed in full-fledged
            ## ::ss_common::get_top_addr_space_axi_mm top_addr_axi_mm_space cur_addr_space
            ## ::ss_common::go_assign_address_axi_mm top_addr_axi_mm_space cur_addr_space config_addr_mapping_axi_mm addr_reg_index_axi_mm

        ## axi-lite address space mapping - needed in both topologies
        ::ss_common::get_top_addr_space top_addr_axi_lite_space cur_addr_space
        ::ss_common::go_assign_address top_addr_axi_lite_space cur_addr_space config_addr_mapping_axi_lite addr_reg_index

        ############################## Developer define end here ############################

    }

