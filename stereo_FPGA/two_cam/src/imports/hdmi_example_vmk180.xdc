#####
## Constraints for HDMI 2.0 on VMK180
## Version 1.0
#####


#####
## Pins
#####

##
## External Reset (CPU_RESET)
##
set_property PACKAGE_PIN F41 [get_ports HDMI_DATA_gtx_p[0]]
set_property PACKAGE_PIN D41 [get_ports HDMI_DATA_gtx_p[1]]
set_property PACKAGE_PIN B41 [get_ports HDMI_DATA_gtx_p[2]]
set_property PACKAGE_PIN A43 [get_ports HDMI_DATA_gtx_p[3]]

set_property PACKAGE_PIN F46 [get_ports HDMI_DATA_grx_p[0]]
set_property PACKAGE_PIN E44 [get_ports HDMI_DATA_grx_p[1]]
set_property PACKAGE_PIN D46 [get_ports HDMI_DATA_grx_p[2]]
set_property PACKAGE_PIN C44 [get_ports HDMI_DATA_grx_p[3]]

# HDMI RX
#HDMI_RX_CLK_C_P
set_property PACKAGE_PIN G39 [get_ports HDMI_RX_CLK_IN_clk_p]
create_clock -period 3.367 [get_ports HDMI_RX_CLK_IN_clk_p]
#HSDP_SI570_CLK_C_P
set_property PACKAGE_PIN J39 [get_ports {DRU_CLK_IN_clk_p}]
create_clock -period 2.500 [get_ports DRU_CLK_IN_clk_p]
#HDMI_RX_HPD
set_property PACKAGE_PIN J20 [get_ports {RX_HPD_OUT}]
set_property IOSTANDARD LVCMOS33 [get_ports {RX_HPD_OUT}]
#HDMI_RX_SNK_SCL
set_property PACKAGE_PIN H17 [get_ports RX_DDC_OUT_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports RX_DDC_OUT_scl_io]
#HDMI_RX_SNK_SDA
set_property PACKAGE_PIN J19 [get_ports RX_DDC_OUT_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports RX_DDC_OUT_sda_io]
#HDMI_REC_CLK_OUT
set_property PACKAGE_PIN L19 [get_ports RX_REFCLK_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports RX_REFCLK_OUT]
#HDMI_RX_PWR_DET
set_property PACKAGE_PIN H18 [get_ports RX_DET_IN]
set_property IOSTANDARD LVCMOS33 [get_ports RX_DET_IN]

# HDMI TX
#HDMI_8T49N241_OUT_C_P
set_property PACKAGE_PIN E39 [get_ports TX_REFCLK_IN_clk_p]
create_clock -period 3.367 [get_ports TX_REFCLK_IN_clk_p]
#HDMI_TX_HPD
set_property PACKAGE_PIN K18 [get_ports TX_HPD_IN]
set_property IOSTANDARD LVCMOS33 [get_ports TX_HPD_IN]
#HDMI_TX_SRC_SCL
set_property PACKAGE_PIN K21 [get_ports TX_DDC_OUT_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports TX_DDC_OUT_scl_io]
#HDMI_TX_SRC_SDA
set_property PACKAGE_PIN L20 [get_ports TX_DDC_OUT_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports TX_DDC_OUT_sda_io]

# I2C
#HDMI_CTL_SCL
set_property IOSTANDARD LVCMOS33 [get_ports fmch_iic_scl_io]
set_property PACKAGE_PIN K17 [get_ports fmch_iic_scl_io]
#HDMI_CTL_SDA
set_property IOSTANDARD LVCMOS33 [get_ports fmch_iic_sda_io]
set_property PACKAGE_PIN L18 [get_ports fmch_iic_sda_io]

# Misc
#GPIO_LED_0_LS
set_property PACKAGE_PIN H34 [get_ports LED0]
set_property IOSTANDARD LVCMOS33 [get_ports {LED0}]
##GPIO_LED_1_LS
#set_property PACKAGE_PIN J33 [get_ports LED1]
#set_property IOSTANDARD LVCMOS33 [get_ports {LED1}]
##GPIO_LED_2_LS
#set_property PACKAGE_PIN K36 [get_ports LED2]
#set_property IOSTANDARD LVCMOS33 [get_ports {LED2}]
##GPIO_LED_3_LS
#set_property PACKAGE_PIN L35 [get_ports LED3]
#set_property IOSTANDARD LVCMOS33 [get_ports {LED3}]
#HDMI_8T49N241_LOL
set_property PACKAGE_PIN G20 [get_ports IDT_8T49N241_LOL_IN]
set_property IOSTANDARD LVCMOS33 [get_ports IDT_8T49N241_LOL_IN]
#HDMI_TX_EN
set_property PACKAGE_PIN K20 [get_ports TX_EN_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports TX_EN_OUT]


#####
## End
#####
