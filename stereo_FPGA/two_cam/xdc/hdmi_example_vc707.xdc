
#####
## Constraints for VC707 FMC HDMI 2.0
## Version 1.0
#####


####
# Pins
####


#SGMIICLK_Q0_P #PCIE_CLK_QO_P # AB8 - PCIE
#set_property PACKAGE_PIN AH8 [get_ports DRU_CLK_IN_clk_p] 
#create_clock -name dru_mgt_refclk -period 8.000 [get_ports DRU_CLK_IN_clk_p]

# ###################  FMC1  ######################

# HDMI RX
#FMC_HPC_GBTCLK0_M2C_C_P
set_property PACKAGE_PIN A10 [get_ports HDMI_RX_CLK_P_IN_1]
create_clock -name rx_mgt_refclk -period 3.367 [get_ports HDMI_RX_CLK_P_IN_1]

#FMC_HPC_DP0_M2C_P
set_property PACKAGE_PIN D8 [get_ports {HDMI_RX_DAT_P_IN_1[0]}]
#FMC_HPC_DP1_M2C_P
set_property PACKAGE_PIN C6 [get_ports {HDMI_RX_DAT_P_IN_1[1]}]
#FMC_HPC_DP2_M2C_P
set_property PACKAGE_PIN B8 [get_ports {HDMI_RX_DAT_P_IN_1[2]}]

#FMC_HPC_LA20_N
set_property PACKAGE_PIN Y30 [get_ports RX_HPD_OUT_1]
set_property IOSTANDARD LVCMOS18 [get_ports RX_HPD_OUT_1]

set_property IOSTANDARD LVCMOS18 [get_ports RX_DDC_OUT_1_scl_io]
set_property IOSTANDARD LVCMOS18 [get_ports RX_DDC_OUT_1_sda_io]
#FMC_HPC_LA16_P
set_property PACKAGE_PIN K37 [get_ports RX_DDC_OUT_1_scl_io]
#FMC_HPC_LA16_N
set_property PACKAGE_PIN K38 [get_ports RX_DDC_OUT_1_sda_io]

set_property IOSTANDARD LVDS [get_ports RX_REFCLK_P_OUT_1]
#FMC_HPC_LA00_CC_P
set_property PACKAGE_PIN K39 [get_ports RX_REFCLK_P_OUT_1] 

set_property IOSTANDARD LVCMOS18 [get_ports RX_DET_IN_1]
#FMC_HPC_LA03_P
set_property PACKAGE_PIN M42 [get_ports RX_DET_IN_1]

# HDMI TX
#FMC_HPC_GBTCLK1_M2C_C_P
set_property PACKAGE_PIN E10 [get_ports TX_REFCLK_P_IN_1]
create_clock -name tx_mgt_refclk -period 3.367 [get_ports TX_REFCLK_P_IN_1]

set_property IOSTANDARD LVDS [get_ports HDMI_TX_CLK_P_OUT_1]
#FMC_HPC_LA27_P
set_property PACKAGE_PIN J31 [get_ports HDMI_TX_CLK_P_OUT_1]
#FMC_HPC_DP0_C2M_P
set_property PACKAGE_PIN E2 [get_ports {HDMI_TX_DAT_P_OUT_1[0]}]
#FMC_HPC_DP1_C2M_P
set_property PACKAGE_PIN D4 [get_ports {HDMI_TX_DAT_P_OUT_1[1]}]
#FMC_HPC_DP2_C2M_P
set_property PACKAGE_PIN C2 [get_ports {HDMI_TX_DAT_P_OUT_1[2]}]

set_property IOSTANDARD LVCMOS18 [get_ports TX_HPD_IN_1]
#FMC_HPC_LA31_N
set_property PACKAGE_PIN M29 [get_ports TX_HPD_IN_1]

set_property IOSTANDARD LVCMOS18 [get_ports TX_DDC_OUT_1_scl_io]
set_property IOSTANDARD LVCMOS18 [get_ports TX_DDC_OUT_1_sda_io]
#FMC_HPC_LA29_P
set_property PACKAGE_PIN T29 [get_ports TX_DDC_OUT_1_scl_io]
#FMC_HPC_LA29_N
set_property PACKAGE_PIN T30 [get_ports TX_DDC_OUT_1_sda_io]


# I2C
set_property IOSTANDARD LVCMOS18 [get_ports fmch_iic_1_scl_io]
#FMC_HPC_LA06_P
set_property PACKAGE_PIN K42 [get_ports fmch_iic_1_scl_io]
set_property IOSTANDARD LVCMOS18 [get_ports fmch_iic_1_sda_io]
#FMC_HPC_LA06_N
set_property PACKAGE_PIN J42 [get_ports fmch_iic_1_sda_io]

## Misc
##GPIO_LED_0_LS
set_property PACKAGE_PIN AM39 [get_ports {LED0}]
##GPIO_LED_1_LS
set_property PACKAGE_PIN AN39 [get_ports {LED1}]
##GPIO_LED_2_LS
##set_property PACKAGE_PIN AC9 [get_ports {LED2}]
###GPIO_LED_3_LS
##set_property PACKAGE_PIN AB9 [get_ports {LED3}]
###GPIO_LED_4_LS
##set_property PACKAGE_PIN AE26 [get_ports {LED4}]
###GPIO_LED_5_LS
##set_property PACKAGE_PIN G19 [get_ports {LED5}]
###GPIO_LED_6_LS
##set_property PACKAGE_PIN E18 [get_ports {LED6}]
###GPIO_LED_7_LS
##set_property PACKAGE_PIN F16 [get_ports {LED7}]
## #USER_SMA_GPIO_P
## set_property PACKAGE_PIN Y23 [get_ports {SMA0}]
## #USER_SMA_GPIO_N
## set_property PACKAGE_PIN Y24 [get_ports {SMA1}]
## #USER_SMA_CLOCK_P
## set_property PACKAGE_PIN L25 [get_ports {SMA2}]
## #USER_SMA_CLOCK_N
## set_property PACKAGE_PIN K25 [get_ports {SMA3}]

set_property IOSTANDARD LVCMOS18 [get_ports {LED0}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED1}]
##set_property IOSTANDARD LVCMOS15 [get_ports {LED2}]
##set_property IOSTANDARD LVCMOS15 [get_ports {LED3}]
##set_property IOSTANDARD LVCMOS18 [get_ports {LED4}]
##set_property IOSTANDARD LVCMOS18 [get_ports {LED5}]
##set_property IOSTANDARD LVCMOS18 [get_ports {LED6}]
##set_property IOSTANDARD LVCMOS18 [get_ports {LED7}]

#set_property IOSTANDARD LVCMOS18 [get_ports {SMA0}]
#set_property IOSTANDARD LVCMOS18 [get_ports {SMA1}]
#set_property IOSTANDARD LVCMOS18 [get_ports {SMA2}]
#set_property IOSTANDARD LVCMOS18 [get_ports {SMA3}]

set_property IOSTANDARD LVCMOS18 [get_ports SI5324_RST_OUT_1]
#FMC_HPC_LA10_P
set_property PACKAGE_PIN N38 [get_ports SI5324_RST_OUT_1]

set_property IOSTANDARD LVCMOS18 [get_ports SI5324_LOL_IN_1]
#FMC_HPC_LA02_N
set_property PACKAGE_PIN N41 [get_ports SI5324_LOL_IN_1]

set_property IOSTANDARD LVCMOS18 [get_ports TX_EN_OUT_1]
#FMC_HPC_LA26_P
set_property PACKAGE_PIN J30 [get_ports TX_EN_OUT_1]

set_property IOSTANDARD LVCMOS18 [get_ports TX_CLKSEL_OUT_1]
#FMC_HPC_LA18_CC_P
set_property PACKAGE_PIN M32 [get_ports TX_CLKSEL_OUT_1]

set_property IOSTANDARD LVCMOS18 [get_ports RX_I2C_EN_N_OUT_1]
#FMC_HPC_LA22_P
set_property PACKAGE_PIN R28 [get_ports RX_I2C_EN_N_OUT_1]

######
### End
######

 ###################  FMC2  ######################

# HDMI RX
#FMC_HPC_GBTCLK0_M2C_C_P
set_property PACKAGE_PIN K8 [get_ports HDMI_RX_CLK_P_IN_2]
create_clock -name rx_mgt_refclk -period 3.367 [get_ports HDMI_RX_CLK_P_IN_2]

#FMC_HPC_DP0_M2C_P
set_property PACKAGE_PIN P8 [get_ports {HDMI_RX_DAT_P_IN_2[0]}]
#FMC_HPC_DP1_M2C_P
set_property PACKAGE_PIN N6 [get_ports {HDMI_RX_DAT_P_IN_2[1]}]
#FMC_HPC_DP2_M2C_P
set_property PACKAGE_PIN L6 [get_ports {HDMI_RX_DAT_P_IN_2[2]}]

#FMC_HPC_LA20_N
set_property PACKAGE_PIN V34 [get_ports RX_HPD_OUT_2]
set_property IOSTANDARD LVCMOS18 [get_ports RX_HPD_OUT_2]

set_property IOSTANDARD LVCMOS18 [get_ports RX_DDC_OUT_2_scl_io]
set_property IOSTANDARD LVCMOS18 [get_ports RX_DDC_OUT_2_sda_io]
#FMC_HPC_LA16_P
set_property PACKAGE_PIN AJ40 [get_ports RX_DDC_OUT_2_scl_io]
#FMC_HPC_LA16_N
set_property PACKAGE_PIN AJ41 [get_ports RX_DDC_OUT_2_sda_io]

set_property IOSTANDARD LVDS [get_ports RX_REFCLK_P_OUT_2]
#FMC_HPC_LA00_CC_P
set_property PACKAGE_PIN AD40 [get_ports RX_REFCLK_P_OUT_2] 

set_property IOSTANDARD LVCMOS18 [get_ports RX_DET_IN_2]
#FMC_HPC_LA03_P
set_property PACKAGE_PIN AJ42 [get_ports RX_DET_IN_2]

# HDMI TX
#FMC_HPC_GBTCLK1_M2C_C_P
set_property PACKAGE_PIN T8 [get_ports TX_REFCLK_P_IN_2]
create_clock -name tx_mgt_refclk -period 3.367 [get_ports TX_REFCLK_P_IN_2]

set_property IOSTANDARD LVDS [get_ports HDMI_TX_CLK_P_OUT_2]
#FMC_HPC_LA27_P
set_property PACKAGE_PIN P32 [get_ports HDMI_TX_CLK_P_OUT_2]
#FMC_HPC_DP0_C2M_P
set_property PACKAGE_PIN N2 [get_ports {HDMI_TX_DAT_P_OUT_2[0]}]
#FMC_HPC_DP1_C2M_P
set_property PACKAGE_PIN M4 [get_ports {HDMI_TX_DAT_P_OUT_2[1]}]
#FMC_HPC_DP2_C2M_P
set_property PACKAGE_PIN L2 [get_ports {HDMI_TX_DAT_P_OUT_2[2]}]

set_property IOSTANDARD LVCMOS18 [get_ports TX_HPD_IN_2]
#FMC_HPC_LA31_N
set_property PACKAGE_PIN V40 [get_ports TX_HPD_IN_2]

set_property IOSTANDARD LVCMOS18 [get_ports TX_DDC_OUT_2_scl_io]
set_property IOSTANDARD LVCMOS18 [get_ports TX_DDC_OUT_2_sda_io]
#FMC_HPC_LA29_P
set_property PACKAGE_PIN W36 [get_ports TX_DDC_OUT_2_scl_io]
#FMC_HPC_LA29_N
set_property PACKAGE_PIN W37 [get_ports TX_DDC_OUT_2_sda_io]


## UART
set_property IOSTANDARD LVCMOS18 [get_ports rs232_uart_rxd]
##USB_TX
set_property PACKAGE_PIN AU33 [get_ports rs232_uart_rxd]
set_property IOSTANDARD LVCMOS18 [get_ports rs232_uart_txd]
##USB_RX
set_property PACKAGE_PIN AU36 [get_ports rs232_uart_txd]

# I2C
set_property IOSTANDARD LVCMOS18 [get_ports fmch_iic_2_scl_io]
#FMC_HPC_LA06_P
set_property PACKAGE_PIN AD38 [get_ports fmch_iic_2_scl_io]
set_property IOSTANDARD LVCMOS18 [get_ports fmch_iic_2_sda_io]
#FMC_HPC_LA06_N
set_property PACKAGE_PIN AE38 [get_ports fmch_iic_2_sda_io]

# Misc
#GPIO_LED_0_LS
#set_property PACKAGE_PIN AM39 [get_ports {LED0}]
#Only LED 0 is used at the moment
##GPIO_LED_1_LS
#set_property PACKAGE_PIN AA8 [get_ports {LED1}]
##GPIO_LED_2_LS
#set_property PACKAGE_PIN AC9 [get_ports {LED2}]
##GPIO_LED_3_LS
#set_property PACKAGE_PIN AB9 [get_ports {LED3}]
##GPIO_LED_4_LS
#set_property PACKAGE_PIN AE26 [get_ports {LED4}]
##GPIO_LED_5_LS
#set_property PACKAGE_PIN G19 [get_ports {LED5}]
##GPIO_LED_6_LS
#set_property PACKAGE_PIN E18 [get_ports {LED6}]
##GPIO_LED_7_LS
#set_property PACKAGE_PIN F16 [get_ports {LED7}]
# #USER_SMA_GPIO_P
# set_property PACKAGE_PIN Y23 [get_ports {SMA0}]
# #USER_SMA_GPIO_N
# set_property PACKAGE_PIN Y24 [get_ports {SMA1}]
# #USER_SMA_CLOCK_P
# set_property PACKAGE_PIN L25 [get_ports {SMA2}]
# #USER_SMA_CLOCK_N
# set_property PACKAGE_PIN K25 [get_ports {SMA3}]

#set_property IOSTANDARD LVCMOS18 [get_ports {LED0}]
#set_property IOSTANDARD LVCMOS15 [get_ports {LED1}]
#set_property IOSTANDARD LVCMOS15 [get_ports {LED2}]
#set_property IOSTANDARD LVCMOS15 [get_ports {LED3}]
#set_property IOSTANDARD LVCMOS18 [get_ports {LED4}]
#set_property IOSTANDARD LVCMOS18 [get_ports {LED5}]
#set_property IOSTANDARD LVCMOS18 [get_ports {LED6}]
#set_property IOSTANDARD LVCMOS18 [get_ports {LED7}]

#set_property IOSTANDARD LVCMOS18 [get_ports {SMA0}]
#set_property IOSTANDARD LVCMOS18 [get_ports {SMA1}]
#set_property IOSTANDARD LVCMOS18 [get_ports {SMA2}]
#set_property IOSTANDARD LVCMOS18 [get_ports {SMA3}]

set_property IOSTANDARD LVCMOS18 [get_ports SI5324_RST_OUT_2]
#FMC_HPC_LA10_P
set_property PACKAGE_PIN AB41 [get_ports SI5324_RST_OUT_2]

set_property IOSTANDARD LVCMOS18 [get_ports SI5324_LOL_IN_2]
#FMC_HPC_LA02_N
set_property PACKAGE_PIN AL39 [get_ports SI5324_LOL_IN_2]

set_property IOSTANDARD LVCMOS18 [get_ports TX_EN_OUT_2]
#FMC_HPC_LA26_P
set_property PACKAGE_PIN N33 [get_ports TX_EN_OUT_2]

set_property IOSTANDARD LVCMOS18 [get_ports TX_CLKSEL_OUT_2]
#FMC_HPC_LA18_CC_P
set_property PACKAGE_PIN U36 [get_ports TX_CLKSEL_OUT_2]

set_property IOSTANDARD LVCMOS18 [get_ports RX_I2C_EN_N_OUT_2]
#FMC_HPC_LA22_P
set_property PACKAGE_PIN W32 [get_ports RX_I2C_EN_N_OUT_2]

#####
## End
#####

