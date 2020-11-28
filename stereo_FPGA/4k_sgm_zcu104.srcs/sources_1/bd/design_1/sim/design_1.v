//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Sat Nov 28 13:21:24 2020
//Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   ();

  wire [31:0]Inter_col_v1_0_0_m_axis_l_TDATA;
  wire Inter_col_v1_0_0_m_axis_l_TLAST;
  wire Inter_col_v1_0_0_m_axis_l_TREADY;
  wire Inter_col_v1_0_0_m_axis_l_TUSER;
  wire Inter_col_v1_0_0_m_axis_l_TVALID;
  wire [31:0]Inter_col_v1_0_0_m_axis_r_TDATA;
  wire Inter_col_v1_0_0_m_axis_r_TLAST;
  wire Inter_col_v1_0_0_m_axis_r_TREADY;
  wire Inter_col_v1_0_0_m_axis_r_TUSER;
  wire Inter_col_v1_0_0_m_axis_r_TVALID;
  wire [31:0]RGB_to_Grayscale_v1_0_0_m_axis_gray_TDATA;
  wire RGB_to_Grayscale_v1_0_0_m_axis_gray_TLAST;
  wire RGB_to_Grayscale_v1_0_0_m_axis_gray_TREADY;
  wire RGB_to_Grayscale_v1_0_0_m_axis_gray_TUSER;
  wire RGB_to_Grayscale_v1_0_0_m_axis_gray_TVALID;
  wire [95:0]hdmi_in_uhd_4_0_VIDEO_IN_TDATA;
  wire hdmi_in_uhd_4_0_VIDEO_IN_TLAST;
  wire hdmi_in_uhd_4_0_VIDEO_IN_TREADY;
  wire hdmi_in_uhd_4_0_VIDEO_IN_TUSER;
  wire hdmi_in_uhd_4_0_VIDEO_IN_TVALID;
  wire hdmi_in_uhd_4_0_s_axis_video_aclk;
  wire hdmi_in_uhd_4_0_s_axis_video_aresetn;

  design_1_Inter_col_v1_0_0_0 Inter_col_v1_0_0
       (.aclk(hdmi_in_uhd_4_0_s_axis_video_aclk),
        .aresetn(hdmi_in_uhd_4_0_s_axis_video_aresetn),
        .m_axis_l_tdata(Inter_col_v1_0_0_m_axis_l_TDATA),
        .m_axis_l_tlast(Inter_col_v1_0_0_m_axis_l_TLAST),
        .m_axis_l_tready(Inter_col_v1_0_0_m_axis_l_TREADY),
        .m_axis_l_tuser(Inter_col_v1_0_0_m_axis_l_TUSER),
        .m_axis_l_tvalid(Inter_col_v1_0_0_m_axis_l_TVALID),
        .m_axis_r_tdata(Inter_col_v1_0_0_m_axis_r_TDATA),
        .m_axis_r_tlast(Inter_col_v1_0_0_m_axis_r_TLAST),
        .m_axis_r_tready(Inter_col_v1_0_0_m_axis_r_TREADY),
        .m_axis_r_tuser(Inter_col_v1_0_0_m_axis_r_TUSER),
        .m_axis_r_tvalid(Inter_col_v1_0_0_m_axis_r_TVALID),
        .s_axis_lr_tdata(RGB_to_Grayscale_v1_0_0_m_axis_gray_TDATA),
        .s_axis_lr_tlast(RGB_to_Grayscale_v1_0_0_m_axis_gray_TLAST),
        .s_axis_lr_tready(RGB_to_Grayscale_v1_0_0_m_axis_gray_TREADY),
        .s_axis_lr_tuser(RGB_to_Grayscale_v1_0_0_m_axis_gray_TUSER),
        .s_axis_lr_tvalid(RGB_to_Grayscale_v1_0_0_m_axis_gray_TVALID));
  design_1_RGB_to_Grayscale_v1_0_0_0 RGB_to_Grayscale_v1_0_0
       (.aclk(hdmi_in_uhd_4_0_s_axis_video_aclk),
        .aresetn(hdmi_in_uhd_4_0_s_axis_video_aresetn),
        .m_axis_gray_tdata(RGB_to_Grayscale_v1_0_0_m_axis_gray_TDATA),
        .m_axis_gray_tlast(RGB_to_Grayscale_v1_0_0_m_axis_gray_TLAST),
        .m_axis_gray_tready(RGB_to_Grayscale_v1_0_0_m_axis_gray_TREADY),
        .m_axis_gray_tuser(RGB_to_Grayscale_v1_0_0_m_axis_gray_TUSER),
        .m_axis_gray_tvalid(RGB_to_Grayscale_v1_0_0_m_axis_gray_TVALID),
        .s_axis_rgb_tdata(hdmi_in_uhd_4_0_VIDEO_IN_TDATA),
        .s_axis_rgb_tlast(hdmi_in_uhd_4_0_VIDEO_IN_TLAST),
        .s_axis_rgb_tready(hdmi_in_uhd_4_0_VIDEO_IN_TREADY),
        .s_axis_rgb_tuser(hdmi_in_uhd_4_0_VIDEO_IN_TUSER),
        .s_axis_rgb_tvalid(hdmi_in_uhd_4_0_VIDEO_IN_TVALID));
  design_1_hdmi_in_uhd_4_0_0 hdmi_in_uhd_4_0
       (.VIDEO_IN_tdata(hdmi_in_uhd_4_0_VIDEO_IN_TDATA),
        .VIDEO_IN_tlast(hdmi_in_uhd_4_0_VIDEO_IN_TLAST),
        .VIDEO_IN_tready(hdmi_in_uhd_4_0_VIDEO_IN_TREADY),
        .VIDEO_IN_tuser(hdmi_in_uhd_4_0_VIDEO_IN_TUSER),
        .VIDEO_IN_tvalid(hdmi_in_uhd_4_0_VIDEO_IN_TVALID),
        .s_axis_video_aclk(hdmi_in_uhd_4_0_s_axis_video_aclk),
        .s_axis_video_aresetn(hdmi_in_uhd_4_0_s_axis_video_aresetn));
  design_1_hdmi_out_uhd_4_0_0 hdmi_out_uhd_4_0
       (.VIDEO_OUT_tdata(Inter_col_v1_0_0_m_axis_l_TDATA),
        .VIDEO_OUT_tlast(Inter_col_v1_0_0_m_axis_l_TLAST),
        .VIDEO_OUT_tready(Inter_col_v1_0_0_m_axis_l_TREADY),
        .VIDEO_OUT_tuser(Inter_col_v1_0_0_m_axis_l_TUSER),
        .VIDEO_OUT_tvalid(Inter_col_v1_0_0_m_axis_l_TVALID),
        .s_axis_video_aclk(hdmi_in_uhd_4_0_s_axis_video_aclk));
  design_1_hdmi_out_uhd_4_0_1 hdmi_out_uhd_4_1
       (.VIDEO_OUT_tdata(Inter_col_v1_0_0_m_axis_r_TDATA),
        .VIDEO_OUT_tlast(Inter_col_v1_0_0_m_axis_r_TLAST),
        .VIDEO_OUT_tready(Inter_col_v1_0_0_m_axis_r_TREADY),
        .VIDEO_OUT_tuser(Inter_col_v1_0_0_m_axis_r_TUSER),
        .VIDEO_OUT_tvalid(Inter_col_v1_0_0_m_axis_r_TVALID),
        .s_axis_video_aclk(hdmi_in_uhd_4_0_s_axis_video_aclk));
endmodule
