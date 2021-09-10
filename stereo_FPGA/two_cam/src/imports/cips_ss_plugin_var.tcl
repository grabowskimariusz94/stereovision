
    # subsystem local structure to store available config: format [odd==Config even==value] \
    # e.g ss_router param list is          [list CONFIG.NUM_SI <> CONFIG.NUM_MI <>]
    variable ss_xgui_varlist [list]

    # GLOBAL VAR DECLARATION AND ASSIGNMENT
    variable var_c_include_hdcp_1_4   [list]
    variable var_c_include_hdcp_2_2   [list]
    variable var_BOARD_SYS_CLK_NAME   [list]
    variable var_BOARD_SYS_CLK_FREQ   [list]
    variable var_BOARD_AXILITE_FREQ   [list]
    variable var_BOARD_SYS_RESET_NAME [list]

    variable var_include_val          [list]
    variable var_has_frame_crc        [list]
    variable var_board_name           [list]

    variable var_exdes_topology       [list]

    # CONSOLE DEBUG MESSAGE PRINTING ENABLEMENT
    variable var_debug_en [list]
    set var_debug_en      0

    # EXDES PORTS INFORMATION CONTAINER
    variable vary_attr_pinlist [list]
    variable pin_cmd
    array set pin_cmd {
        CLK_IN_D             {-mode slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0}
        hdmi_rx_irq          {-dir I}
        hdmi_tx_irq          {-dir I}
        vphy_irq             {-dir I}
        vfbwr_irq            {-dir I}
        vfbrd_irq            {-dir I}
        i2s_rx_irq           {-dir I}
        i2s_tx_irq           {-dir I}
        vfbwr_arstn          {-dir O}
        vfbrd_arstn          {-dir O}
        In                   {-dir I}
        IIC                  {-mode master -vlnv xilinx.com:interface:iic_rtl:1.0}
        clk_out              {-dir O -type CLK}
        dcm_locked           {-dir O}
        peripheral_aresetn   {-dir O -type RST}
        s_axi_aclk           {-dir O -type CLK}
        CH_DDR               {-mode master -vlnv xilinx.com:interface:ddr4_rtl:1.0}
        M_AXI                {-mode master -vlnv xilinx.com:interface:aximm_rtl:1.0}
        S_AXI                {-mode slave -vlnv xilinx.com:interface:aximm_rtl:1.0}
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
    ## bmak: use latest core version

    variable block_cmd
    array set block_cmd {
        axi_interconnect_       {-type ip -vlnv xilinx.com:ip:axi_interconnect}
        axi_smartconnect_       {-type ip -vlnv xilinx.com:ip:smartconnect}
        xlconcat                {-type ip -vlnv xilinx.com:ip:xlconcat}
        xlslice                 {-type ip -vlnv xilinx.com:ip:xlslice}
        rst_processor__M        {-type ip -vlnv xilinx.com:ip:proc_sys_reset}
        fmch_axi_iic            {-type ip -vlnv xilinx.com:ip:axi_iic}
        zynq_us                 {-type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e}
        versal_cips             {-type ip -vlnv xilinx.com:ip:versal_cips}
        axi_noc_                {-type ip -vlnv xilinx.com:ip:axi_noc}
    }

    # FOR BLOCK CONFIGURABILITY
    # example coding
    # variable config_util_vector_logic
    # array set config_util_vector_logic {
    #   CONFIG.C_SIZE       {1}
    #   CONFIG.C_OPERATION  {$C_OPERATION}
    # }

    variable config_fmch_axi_iic
    variable config_axi_interconnect_0
    variable config_axi_smartconnect_0
    variable config_axi_noc_0
    variable config_axi_interconnect_1
    variable config_rst_processor_1_100M
    variable config_rst_processor_1_300M
    variable config_xlconcat0
    variable config_xlconcat1
    variable config_xlslice0
    variable config_xlslice1
    variable config_zynq_us
    variable config_versal_cips

    if {[array exist config_fmch_axi_iic]} {
        array unset config_fmch_axi_iic
    }
    array set config_fmch_axi_iic {
        CONFIG.IIC_BOARD_INTERFACE       {Custom}
        CONFIG.USE_BOARD_FLOW            {true}
    }

    if {[array exist config_axi_interconnect_0]} {
        array unset config_axi_interconnect_0
    }
    array set config_axi_interconnect_0 {
        CONFIG.NUM_MI         {11}
    }

    if {[array exist config_axi_smartconnect_0]} {
        array unset config_axi_smartconnect_0
    }
    array set config_axi_smartconnect_0 {
        CONFIG.NUM_CLKS              {2}
        CONFIG.NUM_MI                {13}
        CONFIG.NUM_SI                {1}
    }

    if {[array exist config_axi_noc_0]} {
        array unset config_axi_noc_0
    }
    array set config_axi_noc_0 {
        CONFIG.CH0_DDR4_0_BOARD_INTERFACE   {ddr4_dimm1}
        CONFIG.CONTROLLERTYPE               {DDR4_SDRAM}
        CONFIG.MC_COMPONENT_WIDTH           {x8}
        CONFIG.MC_DATAWIDTH                 {64}
        CONFIG.MC_INPUTCLK0_PERIOD          {5000}
        CONFIG.MC_INTERLEAVE_SIZE           {128}
        CONFIG.MC_MEMORY_DEVICETYPE         {UDIMMs}
        CONFIG.MC_MEMORY_SPEEDGRADE         {DDR4-3200AA(22-22-22)}
        CONFIG.MC_NO_CHANNELS               {Single}
        CONFIG.MC_RANK                      {1}
        CONFIG.MC_ROWADDRESSWIDTH           {16}
        CONFIG.MC_STACKHEIGHT               {1}
        CONFIG.MC_SYSTEM_CLOCK              {Differential}
        CONFIG.NUM_CLKS                     {5}
        CONFIG.NUM_MC                       {1}
        CONFIG.NUM_MI                       {0}
        CONFIG.NUM_SI                       {5}
        CONFIG.sys_clk0_BOARD_INTERFACE     {ddr4_dimm1_sma_clk}
    }

    if {[array exist config_axi_interconnect_1]} {
        array unset config_axi_interconnect_1
    }
    array set config_axi_interconnect_1 {
        CONFIG.NUM_SI         {2}
        CONFIG.NUM_MI         {1}
    }

    if {[array exist config_rst_processor_1_100M]} {
        array unset config_rst_processor_1_100M
    }
    array set config_rst_processor_1_100M {
        CONFIG.C_NUM_INTERCONNECT_ARESETN {1}
    }

    if {[array exist config_rst_processor_1_300M]} {
        array unset config_rst_processor_1_300M
    }
    array set config_rst_processor_1_300M {
        CONFIG.C_NUM_INTERCONNECT_ARESETN {1}
    }

    if {[array exist config_xlconcat0]} {
        array unset config_xlconcat0
    }
    array set config_xlconcat0 {
        CONFIG.NUM_PORTS       {3}
    }
    if {[array exist config_xlconcat1]} {
        array unset config_xlconcat1
    }
    array set config_xlconcat1 {
        CONFIG.NUM_PORTS       {8}
    }

    if {[array exist config_xlslice0]} {
        array unset config_xlslice0
    }
    array set config_xlslice0 {
	    CONFIG.DIN_FROM {0}
        CONFIG.DIN_TO {0}
        CONFIG.DIN_WIDTH {95}
        CONFIG.DOUT_WIDTH {1}
    }

    if {[array exist config_xlslice1]} {
        array unset config_xlslice1
    }
    array set config_xlslice1 {
	    CONFIG.DIN_FROM {1}
        CONFIG.DIN_TO {1}
        CONFIG.DIN_WIDTH {95}
        CONFIG.DOUT_WIDTH {1}
    }

    if {[array exist config_zynq_us]} {
        array unset config_zynq_us
    }
    array set config_zynq_us {
        CONFIG.PSU__GPIO0_MIO__PERIPHERAL__ENABLE {1}
        CONFIG.PSU__GPIO1_MIO__PERIPHERAL__ENABLE {1}
        CONFIG.PSU__I2C0__PERIPHERAL__ENABLE      {1}
        CONFIG.PSU__I2C0__PERIPHERAL__IO          {{MIO 14 .. 15}}
        CONFIG.PSU__I2C1__PERIPHERAL__ENABLE      {1}
        CONFIG.PSU__I2C1__PERIPHERAL__IO          {{MIO 16 .. 17}}
        CONFIG.PSU__USE__IRQ0                     {1}
        CONFIG.PSU__USE__IRQ1                     {1}
        CONFIG.PSU__UART0__PERIPHERAL__ENABLE     {1}
        CONFIG.PSU__UART0__PERIPHERAL__IO         {{MIO 18 .. 19}}
        CONFIG.PSU__UART1__PERIPHERAL__ENABLE     {1}
        CONFIG.PSU__UART1__PERIPHERAL__IO         {{MIO 20 .. 21}}
        CONFIG.PSU__DDRC__ROW_ADDR_COUNT          {15}
        CONFIG.PSU__DDRC__DEVICE_CAPACITY         {{4096 MBits}}
        CONFIG.PSU__DDRC__MEMORY_TYPE             {{DDR 4}}
        CONFIG.PSU__PL_CLK0_BUF                   {TRUE}
        CONFIG.PSU__PL_CLK1_BUF                   {TRUE}
        CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {$NULL}
        CONFIG.PSU__FPGA_PL1_ENABLE                {1}
        CONFIG.PSU__CRL_APB__CPU_R5_CTRL__SRCSEL   {RPLL}
        CONFIG.PSU__CRL_APB__PL1_REF_CTRL__FREQMHZ {300}
        CONFIG.PSU__CRL_APB__CPU_R5_CTRL__FREQMHZ  {500}
        CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL  {RPLL}
        CONFIG.PSU__USE__M_AXI_GP0                 {0}
        CONFIG.PSU__USE__M_AXI_GP1                 {0}
        CONFIG.PSU__USE__M_AXI_GP2                 {1}
        CONFIG.PSU__GPIO_EMIO__PERIPHERAL__ENABLE  {1}
    }

    if {[array exist config_versal_cips]} {
        array unset config_versal_cips
    }
    array set config_versal_cips {
        CONFIG.PMC_CRP_PL0_REF_CTRL_FREQMHZ                   {100}
        CONFIG.PMC_CRP_PL1_REF_CTRL_FREQMHZ                   {300}
        CONFIG.PMC_GPIO0_MIO_PERIPHERAL_ENABLE                {1}
        CONFIG.PMC_GPIO1_MIO_PERIPHERAL_ENABLE                {1}
        CONFIG.PMC_I2CPMC_PERIPHERAL_ENABLE                   {1}
        CONFIG.PMC_I2CPMC_PERIPHERAL_IO                       {{PMC_MIO 46 .. 47}}
        CONFIG.PMC_MIO_37_DIRECTION                           {out}
        CONFIG.PMC_MIO_37_OUTPUT_DATA                         {high}
        CONFIG.PMC_MIO_37_USAGE                               {GPIO}
        CONFIG.PMC_OSPI_PERIPHERAL_ENABLE                     {0}
        CONFIG.PMC_QSPI_GRP_FBCLK_ENABLE                      {1}
        CONFIG.PMC_QSPI_PERIPHERAL_DATA_MODE                  {x4}
        CONFIG.PMC_QSPI_PERIPHERAL_ENABLE                     {1}
        CONFIG.PMC_QSPI_PERIPHERAL_MODE                       {{Dual Parallel}}
        CONFIG.PMC_SD1_GRP_CD_ENABLE                          {1}
        CONFIG.PMC_SD1_GRP_POW_ENABLE                         {0}
        CONFIG.PMC_SD1_GRP_WP_ENABLE                          {0}
        CONFIG.PMC_SD1_PERIPHERAL_ENABLE                      {1}
        CONFIG.PMC_SD1_PERIPHERAL_IO                          {{PMC_MIO 26 .. 36}}
        CONFIG.PMC_SD1_SLOT_TYPE                              {{SD 3.0}}
        CONFIG.PMC_USE_PMC_NOC_AXI0                           {1}
        CONFIG.PS_CAN1_PERIPHERAL_ENABLE                      {1}
        CONFIG.PS_CAN1_PERIPHERAL_IO                          {{PMC_MIO 40 .. 41}}
        CONFIG.PS_ENET0_GRP_MDIO_ENABLE                       {1}
        CONFIG.PS_ENET0_GRP_MDIO_IO                           {{PS_MIO 24 .. 25}}
        CONFIG.PS_ENET0_PERIPHERAL_ENABLE                     {1}
        CONFIG.PS_ENET0_PERIPHERAL_IO                         {{PS_MIO 0 .. 11}}
        CONFIG.PS_ENET1_PERIPHERAL_ENABLE                     {1}
        CONFIG.PS_ENET1_PERIPHERAL_IO                         {{PS_MIO 12 .. 23}}
        CONFIG.PS_GEN_IPI_0_ENABLE                            {1}
        CONFIG.PS_GEN_IPI_1_ENABLE                            {1}
        CONFIG.PS_GEN_IPI_2_ENABLE                            {1}
        CONFIG.PS_GEN_IPI_3_ENABLE                            {1}
        CONFIG.PS_GEN_IPI_4_ENABLE                            {1}
        CONFIG.PS_GEN_IPI_5_ENABLE                            {1}
        CONFIG.PS_GEN_IPI_6_ENABLE                            {1}
        CONFIG.PS_GEN_IPI_PMCNOBUF_ENABLE                     {1}
        CONFIG.PS_GEN_IPI_PMC_ENABLE                          {1}
        CONFIG.PS_GEN_IPI_PSM_ENABLE                          {1}
        CONFIG.PS_GPIO2_MIO_PERIPHERAL_ENABLE                 {0}
        CONFIG.PS_I2C1_PERIPHERAL_ENABLE                      {1}
        CONFIG.PS_I2C1_PERIPHERAL_IO                          {{PMC_MIO 44 .. 45}}
        CONFIG.PS_M_AXI_GP0_DATA_WIDTH                        {32}
        CONFIG.PS_NUM_FABRIC_RESETS                           {1}
        CONFIG.PS_PCIE_RESET_ENABLE                           {1}
        CONFIG.PS_PCIE_RESET_IO                               {{PS_MIO 18 .. 19}}
        CONFIG.PS_TTC0_PERIPHERAL_ENABLE                      {1}
        CONFIG.PS_TTC3_PERIPHERAL_ENABLE                      {0}
        CONFIG.PS_UART0_PERIPHERAL_ENABLE                     {1}
        CONFIG.PS_UART0_PERIPHERAL_IO                         {{PMC_MIO 42 .. 43}}
        CONFIG.PS_USB3_PERIPHERAL_ENABLE                      {1}
        CONFIG.PS_USE_IRQ_0                                   {1}
        CONFIG.PS_USE_IRQ_1                                   {1}
        CONFIG.PS_USE_IRQ_2                                   {1}
        CONFIG.PS_USE_IRQ_3                                   {0}
        CONFIG.PS_USE_IRQ_4                                   {0}
        CONFIG.PS_USE_IRQ_5                                   {0}
        CONFIG.PS_USE_IRQ_6                                   {0}
        CONFIG.PS_USE_IRQ_7                                   {0}
        CONFIG.PS_USE_IRQ_8                                   {0}
        CONFIG.PS_USE_IRQ_9                                   {0}
        CONFIG.PS_USE_IRQ_10                                  {0}
        CONFIG.PS_USE_IRQ_11                                  {0}
        CONFIG.PS_USE_IRQ_12                                  {0}
        CONFIG.PS_USE_IRQ_13                                  {0}
        CONFIG.PS_USE_IRQ_14                                  {0}
        CONFIG.PS_USE_IRQ_15                                  {0}
        CONFIG.PS_USE_M_AXI_GP0                               {1}
        CONFIG.PS_USE_M_AXI_GP2                               {0}
        CONFIG.PS_USE_PMCPL_CLK0                              {1}
        CONFIG.PS_USE_PMCPL_CLK1                              {1}
        CONFIG.PS_USE_PS_NOC_CCI                              {1}
        CONFIG.PS_USE_S_AXI_GP0                               {0}
        CONFIG.PS_USE_S_AXI_GP2                               {0}
        CONFIG.PS_USE_S_AXI_GP4                               {0}
        CONFIG.PS_GPIO_EMIO_PERIPHERAL_ENABLE                 {1}
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

