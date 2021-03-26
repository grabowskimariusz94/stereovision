################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name sys_diff_clock_clk_p -period 5 [get_ports sys_diff_clock_clk_p]
create_clock -name zynq_ss_0_zynq_FCLK_CLK0 -period 20 [get_pins zynq_ss_0/zynq/FCLK_CLK0]

################################################################################