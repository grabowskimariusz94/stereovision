//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Sat Dec  5 21:11:44 2020
//Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   ();

  wire [31:0]Inter_col_v1_0_0_m_axis_l_tdata;
  wire Inter_col_v1_0_0_m_axis_l_tlast;
  wire Inter_col_v1_0_0_m_axis_l_tuser;
  wire Inter_col_v1_0_0_m_axis_l_tvalid;
  wire [31:0]Inter_col_v1_0_0_m_axis_r_tdata;
  wire Inter_col_v1_0_0_m_axis_r_tlast;
  wire Inter_col_v1_0_0_m_axis_r_tuser;
  wire Inter_col_v1_0_0_m_axis_r_tvalid;
  wire [31:0]RGB_to_Grayscale_v1_0_0_m_axis_gray_tdata;
  wire RGB_to_Grayscale_v1_0_0_m_axis_gray_tlast;
  wire RGB_to_Grayscale_v1_0_0_m_axis_gray_tuser;
  wire RGB_to_Grayscale_v1_0_0_m_axis_gray_tvalid;
  wire [31:0]SAD_0_M_AXIS_R_TDATA;
  wire SAD_0_M_AXIS_R_TLAST;
  wire SAD_0_M_AXIS_R_TUSER;
  wire SAD_0_M_AXIS_R_TVALID;
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
        .m_axis_l_tdata(Inter_col_v1_0_0_m_axis_l_tdata),
        .m_axis_l_tlast(Inter_col_v1_0_0_m_axis_l_tlast),
        .m_axis_l_tready(1'b1),
        .m_axis_l_tuser(Inter_col_v1_0_0_m_axis_l_tuser),
        .m_axis_l_tvalid(Inter_col_v1_0_0_m_axis_l_tvalid),
        .m_axis_r_tdata(Inter_col_v1_0_0_m_axis_r_tdata),
        .m_axis_r_tlast(Inter_col_v1_0_0_m_axis_r_tlast),
        .m_axis_r_tready(1'b1),
        .m_axis_r_tuser(Inter_col_v1_0_0_m_axis_r_tuser),
        .m_axis_r_tvalid(Inter_col_v1_0_0_m_axis_r_tvalid),
        .s_axis_lr_tdata(RGB_to_Grayscale_v1_0_0_m_axis_gray_tdata),
        .s_axis_lr_tlast(RGB_to_Grayscale_v1_0_0_m_axis_gray_tlast),
        .s_axis_lr_tuser(RGB_to_Grayscale_v1_0_0_m_axis_gray_tuser),
        .s_axis_lr_tvalid(RGB_to_Grayscale_v1_0_0_m_axis_gray_tvalid));
  design_1_RGB_to_Grayscale_v1_0_0_0 RGB_to_Grayscale_v1_0_0
       (.aclk(hdmi_in_uhd_4_0_s_axis_video_aclk),
        .aresetn(hdmi_in_uhd_4_0_s_axis_video_aresetn),
        .m_axis_gray_tdata(RGB_to_Grayscale_v1_0_0_m_axis_gray_tdata),
        .m_axis_gray_tlast(RGB_to_Grayscale_v1_0_0_m_axis_gray_tlast),
        .m_axis_gray_tready(1'b1),
        .m_axis_gray_tuser(RGB_to_Grayscale_v1_0_0_m_axis_gray_tuser),
        .m_axis_gray_tvalid(RGB_to_Grayscale_v1_0_0_m_axis_gray_tvalid),
        .s_axis_rgb_tdata(hdmi_in_uhd_4_0_VIDEO_IN_TDATA),
        .s_axis_rgb_tlast(hdmi_in_uhd_4_0_VIDEO_IN_TLAST),
        .s_axis_rgb_tready(hdmi_in_uhd_4_0_VIDEO_IN_TREADY),
        .s_axis_rgb_tuser(hdmi_in_uhd_4_0_VIDEO_IN_TUSER),
        .s_axis_rgb_tvalid(hdmi_in_uhd_4_0_VIDEO_IN_TVALID));
  design_1_SAD_0_0 SAD_0
       (.aclk(hdmi_in_uhd_4_0_s_axis_video_aclk),
        .aresetn(hdmi_in_uhd_4_0_s_axis_video_aresetn),
        .m_axis_r_tdata(SAD_0_M_AXIS_R_TDATA),
        .m_axis_r_tlast(SAD_0_M_AXIS_R_TLAST),
        .m_axis_r_tuser(SAD_0_M_AXIS_R_TUSER),
        .m_axis_r_tvalid(SAD_0_M_AXIS_R_TVALID),
        .s_axis_l_tdata(Inter_col_v1_0_0_m_axis_l_tdata),
        .s_axis_l_tlast(Inter_col_v1_0_0_m_axis_l_tlast),
        .s_axis_l_tuser(Inter_col_v1_0_0_m_axis_l_tuser),
        .s_axis_l_tvalid(Inter_col_v1_0_0_m_axis_l_tvalid),
        .s_axis_r_tdata(Inter_col_v1_0_0_m_axis_r_tdata),
        .s_axis_r_tlast(Inter_col_v1_0_0_m_axis_r_tlast),
        .s_axis_r_tuser(Inter_col_v1_0_0_m_axis_r_tuser),
        .s_axis_r_tvalid(Inter_col_v1_0_0_m_axis_r_tvalid));
  design_1_hdmi_in_uhd_4_0_0 hdmi_in_uhd_4_0
       (.VIDEO_IN_tdata(hdmi_in_uhd_4_0_VIDEO_IN_TDATA),
        .VIDEO_IN_tlast(hdmi_in_uhd_4_0_VIDEO_IN_TLAST),
        .VIDEO_IN_tready(hdmi_in_uhd_4_0_VIDEO_IN_TREADY),
        .VIDEO_IN_tuser(hdmi_in_uhd_4_0_VIDEO_IN_TUSER),
        .VIDEO_IN_tvalid(hdmi_in_uhd_4_0_VIDEO_IN_TVALID),
        .s_axis_video_aclk(hdmi_in_uhd_4_0_s_axis_video_aclk),
        .s_axis_video_aresetn(hdmi_in_uhd_4_0_s_axis_video_aresetn));
  design_1_hdmi_out_uhd_4_0_0 hdmi_out_uhd_4_0
       (.VIDEO_OUT_tdata(Inter_col_v1_0_0_m_axis_l_tdata),
        .VIDEO_OUT_tlast(Inter_col_v1_0_0_m_axis_l_tlast),
        .VIDEO_OUT_tuser(Inter_col_v1_0_0_m_axis_l_tuser),
        .VIDEO_OUT_tvalid(Inter_col_v1_0_0_m_axis_l_tvalid),
        .s_axis_video_aclk(hdmi_in_uhd_4_0_s_axis_video_aclk));
  design_1_hdmi_out_uhd_4_0_1 hdmi_out_uhd_4_1
       (.VIDEO_OUT_tdata(Inter_col_v1_0_0_m_axis_r_tdata),
        .VIDEO_OUT_tlast(Inter_col_v1_0_0_m_axis_r_tlast),
        .VIDEO_OUT_tuser(Inter_col_v1_0_0_m_axis_r_tuser),
        .VIDEO_OUT_tvalid(Inter_col_v1_0_0_m_axis_r_tvalid),
        .s_axis_video_aclk(hdmi_in_uhd_4_0_s_axis_video_aclk));
  design_1_hdmi_out_uhd_4_0_2 hdmi_out_uhd_4_2
       (.VIDEO_OUT_tdata(RGB_to_Grayscale_v1_0_0_m_axis_gray_tdata),
        .VIDEO_OUT_tlast(RGB_to_Grayscale_v1_0_0_m_axis_gray_tlast),
        .VIDEO_OUT_tuser(RGB_to_Grayscale_v1_0_0_m_axis_gray_tuser),
        .VIDEO_OUT_tvalid(RGB_to_Grayscale_v1_0_0_m_axis_gray_tvalid),
        .s_axis_video_aclk(hdmi_in_uhd_4_0_s_axis_video_aclk));
  design_1_hdmi_out_uhd_4_3_0 hdmi_out_uhd_4_3
       (.VIDEO_OUT_tdata(SAD_0_M_AXIS_R_TDATA),
        .VIDEO_OUT_tlast(SAD_0_M_AXIS_R_TLAST),
        .VIDEO_OUT_tuser(SAD_0_M_AXIS_R_TUSER),
        .VIDEO_OUT_tvalid(SAD_0_M_AXIS_R_TVALID),
        .s_axis_video_aclk(hdmi_in_uhd_4_0_s_axis_video_aclk));
endmodule
