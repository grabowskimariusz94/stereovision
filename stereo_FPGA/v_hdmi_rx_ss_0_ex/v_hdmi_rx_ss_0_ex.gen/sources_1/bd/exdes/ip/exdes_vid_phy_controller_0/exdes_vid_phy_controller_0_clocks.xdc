
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
#
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.

set_clock_groups -physically_exclusive \
		-group [get_clocks -include_generated_clocks -of [get_pins -of [get_cells -hierarchical -filter {name=~*/TXPLL_INST}] -filter {REF_PIN_NAME == CLKIN1}]] \
		-group [get_clocks -include_generated_clocks -of [get_pins -of [get_cells -hierarchical -filter {name=~*/TXPLL_INST}] -filter {REF_PIN_NAME == CLKIN2}]]


set_property CLOCK_BUFFER_TYPE NONE [get_nets -of_objects [get_pins -of [get_cells -hierarchical -filter {name=~*/*TXPLL_INST}] -filter {REF_PIN_NAME == CLKOUT0}]]
set_property CLOCK_BUFFER_TYPE NONE [get_nets -of_objects [get_pins -of [get_cells -hierarchical -filter {name=~*/*TXPLL_INST}] -filter {REF_PIN_NAME == CLKOUT1}]]
set_property CLOCK_BUFFER_TYPE NONE [get_nets -of_objects [get_pins -of [get_cells -hierarchical -filter {name=~*/*TXPLL_INST}] -filter {REF_PIN_NAME == CLKOUT2}]]
set_property CLOCK_BUFFER_TYPE NONE [get_nets -of_objects [get_pins -of [get_cells -hierarchical -filter {name=~*/*RXPLL_INST}] -filter {REF_PIN_NAME == CLKOUT2}]]

 #xpm_cdc sync paths
# set_false_path -to [get_pins -of [get_cells -hierarchical -filter {name=~*syncstages_ff_reg[0]}] -filter {REF_PIN_NAME == D}]
# set_false_path -to [get_cells -hierarchical *syncstages_ff_reg[0]*]
# set_false_path -to [get_pins -of [get_cells -hierarchical -filter {name=~*syncstages_ff_reg[*]}] -filter {REF_PIN_NAME == CLR}]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {name=~*arststages_ff_reg[*]}] -filter {REF_PIN_NAME == CLR || REF_PIN_NAME == PRE}]



set_false_path -from [get_cells -hierarchical -filter {name=~*/clock_detector_inst/clk_tx_freq_rst_reg && IS_SEQUENTIAL}]
set_false_path -from [get_cells -hierarchical -filter {name=~*/clock_detector_inst/clk_rx_freq_rst_reg && IS_SEQUENTIAL}]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {name=~*/XCVR_CH*_INST/gtxe2_i}] -filter {REF_PIN_NAME == TXELECIDLE}]
set_false_path -from [get_cells -hierarchical -filter {name=~*/rxclk_rx_clk_en_reg* && IS_SEQUENTIAL}]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {name=~*/rxclk_rx_clk_en*}] -filter {REF_PIN_NAME == CLR}]
set_false_path -from [get_cells -hierarchical -filter {name=~*/hclk_tx_clk_en* && IS_SEQUENTIAL}]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {name=~*/hclk_tx_clk_en*}] -filter {REF_PIN_NAME == CLR}]

#NI-DRU
set_false_path -through [get_nets -hierarchical -filter {name=~*/dru_ctrl_center_freq*}]
set_false_path -through [get_nets -hierarchical -filter {name=~*/dru_ctrl_reset*}]
set_false_path -through [get_nets -hierarchical -filter {name=~*/dru_ctrl_enable*}]

