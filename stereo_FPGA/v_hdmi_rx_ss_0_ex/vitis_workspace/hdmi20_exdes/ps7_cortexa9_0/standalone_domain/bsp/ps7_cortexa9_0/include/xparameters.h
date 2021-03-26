#ifndef XPARAMETERS_H   /* prevent circular inclusions */
#define XPARAMETERS_H   /* by using protection macros */

/* Definition for CPU ID */
#define XPAR_CPU_ID 0U

/* Definitions for peripheral PS7_CORTEXA9_0 */
#define XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ 666666687


/******************************************************************/

/* Canonical definitions for peripheral PS7_CORTEXA9_0 */
#define XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ 666666687


/******************************************************************/

#include "xparameters_ps.h"

#define STDIN_BASEADDRESS 0xE0001000
#define STDOUT_BASEADDRESS 0xE0001000

/******************************************************************/

/* Platform specific definitions */
#define PLATFORM_ZYNQ
 
/* Definitions for sleep timer configuration */
#define XSLEEP_TIMER_IS_DEFAULT_TIMER
 
 
/******************************************************************/
/* Definitions for driver CLK_WIZ */
#define XPAR_XCLK_WIZ_NUM_INSTANCES 1

/* Definitions for peripheral AUDIO_SS_0_CLK_WIZ */
#define XPAR_AUDIO_SS_0_CLK_WIZ_DEVICE_ID 0
#define XPAR_AUDIO_SS_0_CLK_WIZ_BASEADDR 0x43C10000
#define XPAR_AUDIO_SS_0_CLK_WIZ_HIGHADDR 0x43C1FFFF
#define XPAR_AUDIO_SS_0_CLK_WIZ_ENABLE_CLOCK_MONITOR 0
#define XPAR_AUDIO_SS_0_CLK_WIZ_ENABLE_USER_CLOCK0 0
#define XPAR_AUDIO_SS_0_CLK_WIZ_ENABLE_USER_CLOCK1 0
#define XPAR_AUDIO_SS_0_CLK_WIZ_ENABLE_USER_CLOCK2 0
#define XPAR_AUDIO_SS_0_CLK_WIZ_ENABLE_USER_CLOCK3 0
#define XPAR_AUDIO_SS_0_CLK_WIZ_REF_CLK_FREQ 100.0
#define XPAR_AUDIO_SS_0_CLK_WIZ_USER_CLK_FREQ0 100.0
#define XPAR_AUDIO_SS_0_CLK_WIZ_USER_CLK_FREQ1 100.0
#define XPAR_AUDIO_SS_0_CLK_WIZ_USER_CLK_FREQ2 100.0
#define XPAR_AUDIO_SS_0_CLK_WIZ_USER_CLK_FREQ3 100.0
#define XPAR_AUDIO_SS_0_CLK_WIZ_PRECISION 1
#define XPAR_AUDIO_SS_0_CLK_WIZ_ENABLE_PLL0 0
#define XPAR_AUDIO_SS_0_CLK_WIZ_ENABLE_PLL1 0
#define XPAR_AUDIO_SS_0_CLK_WIZ_PRIM_IN_FREQ 100.000
#define XPAR_AUDIO_SS_0_CLK_WIZ_NUM_OUT_CLKS 1


/******************************************************************/

/* Canonical definitions for peripheral AUDIO_SS_0_CLK_WIZ */
#define XPAR_CLK_WIZ_0_DEVICE_ID XPAR_AUDIO_SS_0_CLK_WIZ_DEVICE_ID
#define XPAR_CLK_WIZ_0_BASEADDR 0x43C10000
#define XPAR_CLK_WIZ_0_HIGHADDR 0x43C1FFFF
#define XPAR_CLK_WIZ_0_ENABLE_CLOCK_MONITOR 0
#define XPAR_CLK_WIZ_0_ENABLE_USER_CLOCK0 0
#define XPAR_CLK_WIZ_0_ENABLE_USER_CLOCK1 0
#define XPAR_CLK_WIZ_0_ENABLE_USER_CLOCK2 0
#define XPAR_CLK_WIZ_0_ENABLE_USER_CLOCK3 0
#define XPAR_CLK_WIZ_0_REF_CLK_FREQ 100.0
#define XPAR_CLK_WIZ_0_USER_CLK_FREQ0 100.0
#define XPAR_CLK_WIZ_0_USER_CLK_FREQ1 100.0
#define XPAR_CLK_WIZ_0_USER_CLK_FREQ2 100.0
#define XPAR_CLK_WIZ_0_USER_CLK_FREQ3 100.0
#define XPAR_CLK_WIZ_0_PRECISION 1
#define XPAR_CLK_WIZ_0_Enable_PLL0 0
#define XPAR_CLK_WIZ_0_Enable_PLL1 0
#define XPAR_CLK_WIZ_0_PRIM_IN_FREQ 100.000
#define XPAR_CLK_WIZ_0_NUM_OUT_CLKS 1


/******************************************************************/


/* Definitions for peripheral PS7_DDR_0 */
#define XPAR_PS7_DDR_0_S_AXI_BASEADDR 0x00100000
#define XPAR_PS7_DDR_0_S_AXI_HIGHADDR 0x3FFFFFFF


/******************************************************************/

/* Definitions for driver DEVCFG */
#define XPAR_XDCFG_NUM_INSTANCES 1U

/* Definitions for peripheral PS7_DEV_CFG_0 */
#define XPAR_PS7_DEV_CFG_0_DEVICE_ID 0U
#define XPAR_PS7_DEV_CFG_0_BASEADDR 0xF8007000U
#define XPAR_PS7_DEV_CFG_0_HIGHADDR 0xF80070FFU


/******************************************************************/

/* Canonical definitions for peripheral PS7_DEV_CFG_0 */
#define XPAR_XDCFG_0_DEVICE_ID XPAR_PS7_DEV_CFG_0_DEVICE_ID
#define XPAR_XDCFG_0_BASEADDR 0xF8007000U
#define XPAR_XDCFG_0_HIGHADDR 0xF80070FFU


/******************************************************************/

/* Definitions for driver DMAPS */
#define XPAR_XDMAPS_NUM_INSTANCES 2

/* Definitions for peripheral PS7_DMA_NS */
#define XPAR_PS7_DMA_NS_DEVICE_ID 0
#define XPAR_PS7_DMA_NS_BASEADDR 0xF8004000
#define XPAR_PS7_DMA_NS_HIGHADDR 0xF8004FFF


/* Definitions for peripheral PS7_DMA_S */
#define XPAR_PS7_DMA_S_DEVICE_ID 1
#define XPAR_PS7_DMA_S_BASEADDR 0xF8003000
#define XPAR_PS7_DMA_S_HIGHADDR 0xF8003FFF


/******************************************************************/

/* Canonical definitions for peripheral PS7_DMA_NS */
#define XPAR_XDMAPS_0_DEVICE_ID XPAR_PS7_DMA_NS_DEVICE_ID
#define XPAR_XDMAPS_0_BASEADDR 0xF8004000
#define XPAR_XDMAPS_0_HIGHADDR 0xF8004FFF

/* Canonical definitions for peripheral PS7_DMA_S */
#define XPAR_XDMAPS_1_DEVICE_ID XPAR_PS7_DMA_S_DEVICE_ID
#define XPAR_XDMAPS_1_BASEADDR 0xF8003000
#define XPAR_XDMAPS_1_HIGHADDR 0xF8003FFF


/******************************************************************/

/* Definitions for driver EMACPS */
#define XPAR_XEMACPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_ETHERNET_0 */
#define XPAR_PS7_ETHERNET_0_DEVICE_ID 0
#define XPAR_PS7_ETHERNET_0_BASEADDR 0xE000B000
#define XPAR_PS7_ETHERNET_0_HIGHADDR 0xE000BFFF
#define XPAR_PS7_ETHERNET_0_ENET_CLK_FREQ_HZ 25000000
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_1000MBPS_DIV0 8
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_1000MBPS_DIV1 1
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_100MBPS_DIV0 8
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_100MBPS_DIV1 5
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_10MBPS_DIV0 8
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_10MBPS_DIV1 50
#define XPAR_PS7_ETHERNET_0_ENET_TSU_CLK_FREQ_HZ 0


/******************************************************************/

#define XPAR_PS7_ETHERNET_0_IS_CACHE_COHERENT 0
#define XPAR_XEMACPS_0_IS_CACHE_COHERENT 0
/* Canonical definitions for peripheral PS7_ETHERNET_0 */
#define XPAR_XEMACPS_0_DEVICE_ID XPAR_PS7_ETHERNET_0_DEVICE_ID
#define XPAR_XEMACPS_0_BASEADDR 0xE000B000
#define XPAR_XEMACPS_0_HIGHADDR 0xE000BFFF
#define XPAR_XEMACPS_0_ENET_CLK_FREQ_HZ 25000000
#define XPAR_XEMACPS_0_ENET_SLCR_1000Mbps_DIV0 8
#define XPAR_XEMACPS_0_ENET_SLCR_1000Mbps_DIV1 1
#define XPAR_XEMACPS_0_ENET_SLCR_100Mbps_DIV0 8
#define XPAR_XEMACPS_0_ENET_SLCR_100Mbps_DIV1 5
#define XPAR_XEMACPS_0_ENET_SLCR_10Mbps_DIV0 8
#define XPAR_XEMACPS_0_ENET_SLCR_10Mbps_DIV1 50
#define XPAR_XEMACPS_0_ENET_TSU_CLK_FREQ_HZ 0


/******************************************************************/


/* Definitions for peripheral AUDIO_SS_0_HDMI_ACR_CTRL */
#define XPAR_AUDIO_SS_0_HDMI_ACR_CTRL_BASEADDR 0x50000000
#define XPAR_AUDIO_SS_0_HDMI_ACR_CTRL_HIGHADDR 0x5000FFFF


/* Definitions for peripheral PS7_AFI_0 */
#define XPAR_PS7_AFI_0_S_AXI_BASEADDR 0xF8008000
#define XPAR_PS7_AFI_0_S_AXI_HIGHADDR 0xF8008FFF


/* Definitions for peripheral PS7_AFI_1 */
#define XPAR_PS7_AFI_1_S_AXI_BASEADDR 0xF8009000
#define XPAR_PS7_AFI_1_S_AXI_HIGHADDR 0xF8009FFF


/* Definitions for peripheral PS7_AFI_2 */
#define XPAR_PS7_AFI_2_S_AXI_BASEADDR 0xF800A000
#define XPAR_PS7_AFI_2_S_AXI_HIGHADDR 0xF800AFFF


/* Definitions for peripheral PS7_AFI_3 */
#define XPAR_PS7_AFI_3_S_AXI_BASEADDR 0xF800B000
#define XPAR_PS7_AFI_3_S_AXI_HIGHADDR 0xF800BFFF


/* Definitions for peripheral PS7_DDRC_0 */
#define XPAR_PS7_DDRC_0_S_AXI_BASEADDR 0xF8006000
#define XPAR_PS7_DDRC_0_S_AXI_HIGHADDR 0xF8006FFF


/* Definitions for peripheral PS7_GLOBALTIMER_0 */
#define XPAR_PS7_GLOBALTIMER_0_S_AXI_BASEADDR 0xF8F00200
#define XPAR_PS7_GLOBALTIMER_0_S_AXI_HIGHADDR 0xF8F002FF


/* Definitions for peripheral PS7_GPV_0 */
#define XPAR_PS7_GPV_0_S_AXI_BASEADDR 0xF8900000
#define XPAR_PS7_GPV_0_S_AXI_HIGHADDR 0xF89FFFFF


/* Definitions for peripheral PS7_INTC_DIST_0 */
#define XPAR_PS7_INTC_DIST_0_S_AXI_BASEADDR 0xF8F01000
#define XPAR_PS7_INTC_DIST_0_S_AXI_HIGHADDR 0xF8F01FFF


/* Definitions for peripheral PS7_IOP_BUS_CONFIG_0 */
#define XPAR_PS7_IOP_BUS_CONFIG_0_S_AXI_BASEADDR 0xE0200000
#define XPAR_PS7_IOP_BUS_CONFIG_0_S_AXI_HIGHADDR 0xE0200FFF


/* Definitions for peripheral PS7_L2CACHEC_0 */
#define XPAR_PS7_L2CACHEC_0_S_AXI_BASEADDR 0xF8F02000
#define XPAR_PS7_L2CACHEC_0_S_AXI_HIGHADDR 0xF8F02FFF


/* Definitions for peripheral PS7_OCMC_0 */
#define XPAR_PS7_OCMC_0_S_AXI_BASEADDR 0xF800C000
#define XPAR_PS7_OCMC_0_S_AXI_HIGHADDR 0xF800CFFF


/* Definitions for peripheral PS7_PL310_0 */
#define XPAR_PS7_PL310_0_S_AXI_BASEADDR 0xF8F02000
#define XPAR_PS7_PL310_0_S_AXI_HIGHADDR 0xF8F02FFF


/* Definitions for peripheral PS7_PMU_0 */
#define XPAR_PS7_PMU_0_S_AXI_BASEADDR 0xF8891000
#define XPAR_PS7_PMU_0_S_AXI_HIGHADDR 0xF8891FFF
#define XPAR_PS7_PMU_0_PMU1_S_AXI_BASEADDR 0xF8893000
#define XPAR_PS7_PMU_0_PMU1_S_AXI_HIGHADDR 0xF8893FFF


/* Definitions for peripheral PS7_QSPI_LINEAR_0 */
#define XPAR_PS7_QSPI_LINEAR_0_S_AXI_BASEADDR 0xFC000000
#define XPAR_PS7_QSPI_LINEAR_0_S_AXI_HIGHADDR 0xFDFFFFFF


/* Definitions for peripheral PS7_RAM_0 */
#define XPAR_PS7_RAM_0_S_AXI_BASEADDR 0x00000000
#define XPAR_PS7_RAM_0_S_AXI_HIGHADDR 0x0003FFFF


/* Definitions for peripheral PS7_RAM_1 */
#define XPAR_PS7_RAM_1_S_AXI_BASEADDR 0xFFFC0000
#define XPAR_PS7_RAM_1_S_AXI_HIGHADDR 0xFFFFFFFF


/* Definitions for peripheral PS7_SCUC_0 */
#define XPAR_PS7_SCUC_0_S_AXI_BASEADDR 0xF8F00000
#define XPAR_PS7_SCUC_0_S_AXI_HIGHADDR 0xF8F000FC


/* Definitions for peripheral PS7_SLCR_0 */
#define XPAR_PS7_SLCR_0_S_AXI_BASEADDR 0xF8000000
#define XPAR_PS7_SLCR_0_S_AXI_HIGHADDR 0xF8000FFF


/* Definitions for peripheral AUDIO_SS_0_AUD_PAT_GEN */
#define XPAR_AUDIO_SS_0_AUD_PAT_GEN_BASEADDR 0x60000000
#define XPAR_AUDIO_SS_0_AUD_PAT_GEN_HIGHADDR 0x7FFFFFFF


/******************************************************************/

/* Definitions for driver GPIO */
#define XPAR_XGPIO_NUM_INSTANCES 1

/* Definitions for peripheral V_TPG_SS_0_AXI_GPIO */
#define XPAR_V_TPG_SS_0_AXI_GPIO_BASEADDR 0x41200000
#define XPAR_V_TPG_SS_0_AXI_GPIO_HIGHADDR 0x4120FFFF
#define XPAR_V_TPG_SS_0_AXI_GPIO_DEVICE_ID 0
#define XPAR_V_TPG_SS_0_AXI_GPIO_INTERRUPT_PRESENT 0
#define XPAR_V_TPG_SS_0_AXI_GPIO_IS_DUAL 0


/******************************************************************/

/* Canonical definitions for peripheral V_TPG_SS_0_AXI_GPIO */
#define XPAR_GPIO_0_BASEADDR 0x41200000
#define XPAR_GPIO_0_HIGHADDR 0x4120FFFF
#define XPAR_GPIO_0_DEVICE_ID XPAR_V_TPG_SS_0_AXI_GPIO_DEVICE_ID
#define XPAR_GPIO_0_INTERRUPT_PRESENT 0
#define XPAR_GPIO_0_IS_DUAL 0


/******************************************************************/

/* Definitions for driver GPIOPS */
#define XPAR_XGPIOPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_GPIO_0 */
#define XPAR_PS7_GPIO_0_DEVICE_ID 0
#define XPAR_PS7_GPIO_0_BASEADDR 0xE000A000
#define XPAR_PS7_GPIO_0_HIGHADDR 0xE000AFFF


/******************************************************************/

/* Canonical definitions for peripheral PS7_GPIO_0 */
#define XPAR_XGPIOPS_0_DEVICE_ID XPAR_PS7_GPIO_0_DEVICE_ID
#define XPAR_XGPIOPS_0_BASEADDR 0xE000A000
#define XPAR_XGPIOPS_0_HIGHADDR 0xE000AFFF


/******************************************************************/

/* Definitions for driver IIC */
#define XPAR_XIIC_NUM_INSTANCES 2

/* Definitions for peripheral ZYNQ_SS_0_FMCH_AXI_IIC */
#define XPAR_ZYNQ_SS_0_FMCH_AXI_IIC_DEVICE_ID 0
#define XPAR_ZYNQ_SS_0_FMCH_AXI_IIC_BASEADDR 0x41600000
#define XPAR_ZYNQ_SS_0_FMCH_AXI_IIC_HIGHADDR 0x4160FFFF
#define XPAR_ZYNQ_SS_0_FMCH_AXI_IIC_TEN_BIT_ADR 0
#define XPAR_ZYNQ_SS_0_FMCH_AXI_IIC_GPO_WIDTH 1


/* Definitions for peripheral ZYNQ_SS_0_ONBRD_AXI_IIC */
#define XPAR_ZYNQ_SS_0_ONBRD_AXI_IIC_DEVICE_ID 1
#define XPAR_ZYNQ_SS_0_ONBRD_AXI_IIC_BASEADDR 0x41610000
#define XPAR_ZYNQ_SS_0_ONBRD_AXI_IIC_HIGHADDR 0x4161FFFF
#define XPAR_ZYNQ_SS_0_ONBRD_AXI_IIC_TEN_BIT_ADR 0
#define XPAR_ZYNQ_SS_0_ONBRD_AXI_IIC_GPO_WIDTH 1


/******************************************************************/

/* Canonical definitions for peripheral ZYNQ_SS_0_FMCH_AXI_IIC */
#define XPAR_IIC_0_DEVICE_ID XPAR_ZYNQ_SS_0_FMCH_AXI_IIC_DEVICE_ID
#define XPAR_IIC_0_BASEADDR 0x41600000
#define XPAR_IIC_0_HIGHADDR 0x4160FFFF
#define XPAR_IIC_0_TEN_BIT_ADR 0
#define XPAR_IIC_0_GPO_WIDTH 1

/* Canonical definitions for peripheral ZYNQ_SS_0_ONBRD_AXI_IIC */
#define XPAR_IIC_1_DEVICE_ID XPAR_ZYNQ_SS_0_ONBRD_AXI_IIC_DEVICE_ID
#define XPAR_IIC_1_BASEADDR 0x41610000
#define XPAR_IIC_1_HIGHADDR 0x4161FFFF
#define XPAR_IIC_1_TEN_BIT_ADR 0
#define XPAR_IIC_1_GPO_WIDTH 1


/******************************************************************/

/* Definitions for driver IICPS */
#define XPAR_XIICPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_I2C_0 */
#define XPAR_PS7_I2C_0_DEVICE_ID 0
#define XPAR_PS7_I2C_0_BASEADDR 0xE0004000
#define XPAR_PS7_I2C_0_HIGHADDR 0xE0004FFF
#define XPAR_PS7_I2C_0_I2C_CLK_FREQ_HZ 111111115


/******************************************************************/

/* Canonical definitions for peripheral PS7_I2C_0 */
#define XPAR_XIICPS_0_DEVICE_ID XPAR_PS7_I2C_0_DEVICE_ID
#define XPAR_XIICPS_0_BASEADDR 0xE0004000
#define XPAR_XIICPS_0_HIGHADDR 0xE0004FFF
#define XPAR_XIICPS_0_I2C_CLK_FREQ_HZ 111111115


/******************************************************************/

/* Definition for input Clock */
/* Definitions for driver QSPIPS */
#define XPAR_XQSPIPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_QSPI_0 */
#define XPAR_PS7_QSPI_0_DEVICE_ID 0
#define XPAR_PS7_QSPI_0_BASEADDR 0xE000D000
#define XPAR_PS7_QSPI_0_HIGHADDR 0xE000DFFF
#define XPAR_PS7_QSPI_0_QSPI_CLK_FREQ_HZ 200000000
#define XPAR_PS7_QSPI_0_QSPI_MODE 2
#define XPAR_PS7_QSPI_0_QSPI_BUS_WIDTH 3


/******************************************************************/

/* Canonical definitions for peripheral PS7_QSPI_0 */
#define XPAR_XQSPIPS_0_DEVICE_ID XPAR_PS7_QSPI_0_DEVICE_ID
#define XPAR_XQSPIPS_0_BASEADDR 0xE000D000
#define XPAR_XQSPIPS_0_HIGHADDR 0xE000DFFF
#define XPAR_XQSPIPS_0_QSPI_CLK_FREQ_HZ 200000000
#define XPAR_XQSPIPS_0_QSPI_MODE 2
#define XPAR_XQSPIPS_0_QSPI_BUS_WIDTH 3


/******************************************************************/

/* Definitions for Fabric interrupts connected to ps7_scugic_0 */
#define XPAR_FABRIC_VID_PHY_CONTROLLER_IRQ_INTR 61U
#define XPAR_FABRIC_V_HDMI_RX_SS_IRQ_INTR 62U
#define XPAR_FABRIC_V_HDMI_TX_SS_IRQ_INTR 63U

/******************************************************************/

/* Canonical definitions for Fabric interrupts connected to ps7_scugic_0 */
#define XPAR_FABRIC_VPHY_0_VEC_ID XPAR_FABRIC_VID_PHY_CONTROLLER_IRQ_INTR
#define XPAR_FABRIC_V_HDMIRXSS_0_VEC_ID XPAR_FABRIC_V_HDMI_RX_SS_IRQ_INTR
#define XPAR_FABRIC_V_HDMITXSS_0_VEC_ID XPAR_FABRIC_V_HDMI_TX_SS_IRQ_INTR

/******************************************************************/

/* Definitions for driver SCUGIC */
#define XPAR_XSCUGIC_NUM_INSTANCES 1U

/* Definitions for peripheral PS7_SCUGIC_0 */
#define XPAR_PS7_SCUGIC_0_DEVICE_ID 0U
#define XPAR_PS7_SCUGIC_0_BASEADDR 0xF8F00100U
#define XPAR_PS7_SCUGIC_0_HIGHADDR 0xF8F001FFU
#define XPAR_PS7_SCUGIC_0_DIST_BASEADDR 0xF8F01000U


/******************************************************************/

/* Canonical definitions for peripheral PS7_SCUGIC_0 */
#define XPAR_SCUGIC_0_DEVICE_ID 0U
#define XPAR_SCUGIC_0_CPU_BASEADDR 0xF8F00100U
#define XPAR_SCUGIC_0_CPU_HIGHADDR 0xF8F001FFU
#define XPAR_SCUGIC_0_DIST_BASEADDR 0xF8F01000U


/******************************************************************/

/* Definitions for driver SCUTIMER */
#define XPAR_XSCUTIMER_NUM_INSTANCES 1

/* Definitions for peripheral PS7_SCUTIMER_0 */
#define XPAR_PS7_SCUTIMER_0_DEVICE_ID 0
#define XPAR_PS7_SCUTIMER_0_BASEADDR 0xF8F00600
#define XPAR_PS7_SCUTIMER_0_HIGHADDR 0xF8F0061F


/******************************************************************/

/* Canonical definitions for peripheral PS7_SCUTIMER_0 */
#define XPAR_XSCUTIMER_0_DEVICE_ID XPAR_PS7_SCUTIMER_0_DEVICE_ID
#define XPAR_XSCUTIMER_0_BASEADDR 0xF8F00600
#define XPAR_XSCUTIMER_0_HIGHADDR 0xF8F0061F


/******************************************************************/

/* Definitions for driver SCUWDT */
#define XPAR_XSCUWDT_NUM_INSTANCES 1

/* Definitions for peripheral PS7_SCUWDT_0 */
#define XPAR_PS7_SCUWDT_0_DEVICE_ID 0
#define XPAR_PS7_SCUWDT_0_BASEADDR 0xF8F00620
#define XPAR_PS7_SCUWDT_0_HIGHADDR 0xF8F006FF


/******************************************************************/

/* Canonical definitions for peripheral PS7_SCUWDT_0 */
#define XPAR_SCUWDT_0_DEVICE_ID XPAR_PS7_SCUWDT_0_DEVICE_ID
#define XPAR_SCUWDT_0_BASEADDR 0xF8F00620
#define XPAR_SCUWDT_0_HIGHADDR 0xF8F006FF


/******************************************************************/

/* Definitions for driver SDPS */
#define XPAR_XSDPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_SD_0 */
#define XPAR_PS7_SD_0_DEVICE_ID 0
#define XPAR_PS7_SD_0_BASEADDR 0xE0100000
#define XPAR_PS7_SD_0_HIGHADDR 0xE0100FFF
#define XPAR_PS7_SD_0_SDIO_CLK_FREQ_HZ 50000000
#define XPAR_PS7_SD_0_HAS_CD 1
#define XPAR_PS7_SD_0_HAS_WP 1
#define XPAR_PS7_SD_0_BUS_WIDTH 0
#define XPAR_PS7_SD_0_MIO_BANK 0
#define XPAR_PS7_SD_0_HAS_EMIO 0


/******************************************************************/

#define XPAR_PS7_SD_0_IS_CACHE_COHERENT 0
/* Canonical definitions for peripheral PS7_SD_0 */
#define XPAR_XSDPS_0_DEVICE_ID XPAR_PS7_SD_0_DEVICE_ID
#define XPAR_XSDPS_0_BASEADDR 0xE0100000
#define XPAR_XSDPS_0_HIGHADDR 0xE0100FFF
#define XPAR_XSDPS_0_SDIO_CLK_FREQ_HZ 50000000
#define XPAR_XSDPS_0_HAS_CD 1
#define XPAR_XSDPS_0_HAS_WP 1
#define XPAR_XSDPS_0_BUS_WIDTH 0
#define XPAR_XSDPS_0_MIO_BANK 0
#define XPAR_XSDPS_0_HAS_EMIO 0
#define XPAR_XSDPS_0_IS_CACHE_COHERENT 0


/******************************************************************/

/* Definitions for driver TTCPS */
#define XPAR_XTTCPS_NUM_INSTANCES 3U

/* Definitions for peripheral PS7_TTC_0 */
#define XPAR_PS7_TTC_0_DEVICE_ID 0U
#define XPAR_PS7_TTC_0_BASEADDR 0XF8001000U
#define XPAR_PS7_TTC_0_TTC_CLK_FREQ_HZ 111111115U
#define XPAR_PS7_TTC_0_TTC_CLK_CLKSRC 0U
#define XPAR_PS7_TTC_1_DEVICE_ID 1U
#define XPAR_PS7_TTC_1_BASEADDR 0XF8001004U
#define XPAR_PS7_TTC_1_TTC_CLK_FREQ_HZ 111111115U
#define XPAR_PS7_TTC_1_TTC_CLK_CLKSRC 0U
#define XPAR_PS7_TTC_2_DEVICE_ID 2U
#define XPAR_PS7_TTC_2_BASEADDR 0XF8001008U
#define XPAR_PS7_TTC_2_TTC_CLK_FREQ_HZ 111111115U
#define XPAR_PS7_TTC_2_TTC_CLK_CLKSRC 0U


/******************************************************************/

/* Canonical definitions for peripheral PS7_TTC_0 */
#define XPAR_XTTCPS_0_DEVICE_ID XPAR_PS7_TTC_0_DEVICE_ID
#define XPAR_XTTCPS_0_BASEADDR 0xF8001000U
#define XPAR_XTTCPS_0_TTC_CLK_FREQ_HZ 111111115U
#define XPAR_XTTCPS_0_TTC_CLK_CLKSRC 0U

#define XPAR_XTTCPS_1_DEVICE_ID XPAR_PS7_TTC_1_DEVICE_ID
#define XPAR_XTTCPS_1_BASEADDR 0xF8001004U
#define XPAR_XTTCPS_1_TTC_CLK_FREQ_HZ 111111115U
#define XPAR_XTTCPS_1_TTC_CLK_CLKSRC 0U

#define XPAR_XTTCPS_2_DEVICE_ID XPAR_PS7_TTC_2_DEVICE_ID
#define XPAR_XTTCPS_2_BASEADDR 0xF8001008U
#define XPAR_XTTCPS_2_TTC_CLK_FREQ_HZ 111111115U
#define XPAR_XTTCPS_2_TTC_CLK_CLKSRC 0U


/******************************************************************/

/* Definitions for driver UARTPS */
#define XPAR_XUARTPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_UART_1 */
#define XPAR_PS7_UART_1_DEVICE_ID 0
#define XPAR_PS7_UART_1_BASEADDR 0xE0001000
#define XPAR_PS7_UART_1_HIGHADDR 0xE0001FFF
#define XPAR_PS7_UART_1_UART_CLK_FREQ_HZ 50000000
#define XPAR_PS7_UART_1_HAS_MODEM 0


/******************************************************************/

/* Canonical definitions for peripheral PS7_UART_1 */
#define XPAR_XUARTPS_0_DEVICE_ID XPAR_PS7_UART_1_DEVICE_ID
#define XPAR_XUARTPS_0_BASEADDR 0xE0001000
#define XPAR_XUARTPS_0_HIGHADDR 0xE0001FFF
#define XPAR_XUARTPS_0_UART_CLK_FREQ_HZ 50000000
#define XPAR_XUARTPS_0_HAS_MODEM 0


/******************************************************************/

/* Definition for input Clock */
/* Definitions for driver USBPS */
#define XPAR_XUSBPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_USB_0 */
#define XPAR_PS7_USB_0_DEVICE_ID 0
#define XPAR_PS7_USB_0_BASEADDR 0xE0002000
#define XPAR_PS7_USB_0_HIGHADDR 0xE0002FFF


/******************************************************************/

/* Canonical definitions for peripheral PS7_USB_0 */
#define XPAR_XUSBPS_0_DEVICE_ID XPAR_PS7_USB_0_DEVICE_ID
#define XPAR_XUSBPS_0_BASEADDR 0xE0002000
#define XPAR_XUSBPS_0_HIGHADDR 0xE0002FFF


/******************************************************************/

/* Definitions for driver V_HDMIRX */
#define XPAR_XV_HDMIRX_NUM_INSTANCES 1

/* Definitions for peripheral V_HDMI_RX_SS_V_HDMI_RX */
#define XPAR_V_HDMI_RX_SS_V_HDMI_RX_DEVICE_ID 0
#define XPAR_V_HDMI_RX_SS_V_HDMI_RX_BASEADDR 0x00000000
#define XPAR_V_HDMI_RX_SS_V_HDMI_RX_HIGHADDR 0x0000FFFF
#define XPAR_V_HDMI_RX_SS_V_HDMI_RX_AXI_LITE_FREQ_HZ 100000000


/******************************************************************/

/* Canonical definitions for peripheral V_HDMI_RX_SS_V_HDMI_RX */
#define XPAR_XV_HDMIRX_0_NUM_INSTANCES 0
#define XPAR_XV_HDMIRX_0_DEVICE_ID XPAR_V_HDMI_RX_SS_V_HDMI_RX_DEVICE_ID
#define XPAR_XV_HDMIRX_0_BASEADDR 0x00000000
#define XPAR_XV_HDMIRX_0_HIGHADDR 0x0000FFFF
#define XPAR_XV_HDMIRX_0_AXI_LITE_FREQ_HZ 100000000


/******************************************************************/

/* Definitions for driver V_HDMIRXSS */
#define XPAR_XV_HDMIRXSS_NUM_INSTANCES 1

/* Definitions for peripheral V_HDMI_RX_SS */
#define XPAR_V_HDMI_RX_SS_BASEADDR 0x43C00000
#define XPAR_V_HDMI_RX_SS_HIGHADDR 0x43C0FFFF
#define XPAR_V_HDMI_RX_SS_DEVICE_ID 0
#define XPAR_V_HDMI_RX_SS_INPUT_PIXELS_PER_CLOCK 4
#define XPAR_V_HDMI_RX_SS_MAX_BITS_PER_COMPONENT 8


/******************************************************************/

/* Canonical definitions for peripheral V_HDMI_RX_SS */
#define XPAR_XV_HDMIRXSS_0_BASEADDR 0x43C00000
#define XPAR_XV_HDMIRXSS_0_HIGHADDR 0x43C0FFFF
#define XPAR_XV_HDMIRXSS_0_DEVICE_ID XPAR_V_HDMI_RX_SS_DEVICE_ID
#define XPAR_XV_HDMIRXSS_0_INPUT_PIXELS_PER_CLOCK 4
#define XPAR_XV_HDMIRXSS_0_MAX_BITS_PER_COMPONENT 8


/******************************************************************/

/* Definitions for driver V_HDMITX */
#define XPAR_XV_HDMITX_NUM_INSTANCES 1

/* Definitions for peripheral V_HDMI_TX_SS_V_HDMI_TX */
#define XPAR_V_HDMI_TX_SS_V_HDMI_TX_DEVICE_ID 0
#define XPAR_V_HDMI_TX_SS_V_HDMI_TX_BASEADDR 0x00000000
#define XPAR_V_HDMI_TX_SS_V_HDMI_TX_HIGHADDR 0x0000FFFF
#define XPAR_V_HDMI_TX_SS_V_HDMI_TX_AXI_LITE_FREQ_HZ 100000000


/******************************************************************/

/* Canonical definitions for peripheral V_HDMI_TX_SS_V_HDMI_TX */
#define XPAR_XV_HDMITX_0_NUM_INSTANCES 0
#define XPAR_XV_HDMITX_0_DEVICE_ID XPAR_V_HDMI_TX_SS_V_HDMI_TX_DEVICE_ID
#define XPAR_XV_HDMITX_0_BASEADDR 0x00000000
#define XPAR_XV_HDMITX_0_HIGHADDR 0x0000FFFF
#define XPAR_XV_HDMITX_0_AXI_LITE_FREQ_HZ 100000000


/******************************************************************/

/* Definitions for driver V_HDMITXSS */
#define XPAR_XV_HDMITXSS_NUM_INSTANCES 1

/* Definitions for peripheral V_HDMI_TX_SS */
#define XPAR_V_HDMI_TX_SS_BASEADDR 0x43C20000
#define XPAR_V_HDMI_TX_SS_HIGHADDR 0x43C3FFFF
#define XPAR_V_HDMI_TX_SS_DEVICE_ID 0
#define XPAR_V_HDMI_TX_SS_INPUT_PIXELS_PER_CLOCK 4
#define XPAR_V_HDMI_TX_SS_MAX_BITS_PER_COMPONENT 8
#define XPAR_V_HDMI_TX_SS_INCLUDE_LOW_RESO_VID 0
#define XPAR_V_HDMI_TX_SS_INCLUDE_YUV420_SUP 0
#define XPAR_V_HDMI_TX_SS_AXI_LITE_FREQ_HZ 100000000


/******************************************************************/

/* Canonical definitions for peripheral V_HDMI_TX_SS */
#define XPAR_XV_HDMITXSS_0_BASEADDR 0x43C20000
#define XPAR_XV_HDMITXSS_0_HIGHADDR 0x43C3FFFF
#define XPAR_XV_HDMITXSS_0_DEVICE_ID 0
#define XPAR_XV_HDMITXSS_0_INPUT_PIXELS_PER_CLOCK 4
#define XPAR_XV_HDMITXSS_0_MAX_BITS_PER_COMPONENT 8
#define XPAR_XV_HDMITXSS_0_INCLUDE_LOW_RESO_VID 0
#define XPAR_XV_HDMITXSS_0_INCLUDE_YUV420_SUP 0
#define XPAR_XV_HDMITXSS_0_AXI_LITE_FREQ_HZ 100000000

/******************************************************************/

/* Definitions for driver V_TPG */
#define XPAR_XV_TPG_NUM_INSTANCES 1

/* Definitions for peripheral V_TPG_SS_0_V_TPG */
#define XPAR_V_TPG_SS_0_V_TPG_DEVICE_ID 0
#define XPAR_V_TPG_SS_0_V_TPG_S_AXI_CTRL_BASEADDR 0x43C40000
#define XPAR_V_TPG_SS_0_V_TPG_S_AXI_CTRL_HIGHADDR 0x43C4FFFF
#define XPAR_V_TPG_SS_0_V_TPG_HAS_AXI4S_SLAVE 1
#define XPAR_V_TPG_SS_0_V_TPG_SAMPLES_PER_CLOCK 4
#define XPAR_V_TPG_SS_0_V_TPG_NUM_VIDEO_COMPONENTS 3
#define XPAR_V_TPG_SS_0_V_TPG_MAX_COLS 4096
#define XPAR_V_TPG_SS_0_V_TPG_MAX_ROWS 2160
#define XPAR_V_TPG_SS_0_V_TPG_MAX_DATA_WIDTH 8
#define XPAR_V_TPG_SS_0_V_TPG_SOLID_COLOR 0
#define XPAR_V_TPG_SS_0_V_TPG_RAMP 0
#define XPAR_V_TPG_SS_0_V_TPG_COLOR_BAR 1
#define XPAR_V_TPG_SS_0_V_TPG_DISPLAY_PORT 0
#define XPAR_V_TPG_SS_0_V_TPG_COLOR_SWEEP 0
#define XPAR_V_TPG_SS_0_V_TPG_ZONE_PLATE 0
#define XPAR_V_TPG_SS_0_V_TPG_FOREGROUND 0


/******************************************************************/

/* Canonical definitions for peripheral V_TPG_SS_0_V_TPG */
#define XPAR_XV_TPG_0_DEVICE_ID XPAR_V_TPG_SS_0_V_TPG_DEVICE_ID
#define XPAR_XV_TPG_0_S_AXI_CTRL_BASEADDR 0x43C40000
#define XPAR_XV_TPG_0_S_AXI_CTRL_HIGHADDR 0x43C4FFFF
#define XPAR_XV_TPG_0_HAS_AXI4S_SLAVE 1
#define XPAR_XV_TPG_0_SAMPLES_PER_CLOCK 4
#define XPAR_XV_TPG_0_NUM_VIDEO_COMPONENTS 3
#define XPAR_XV_TPG_0_MAX_COLS 4096
#define XPAR_XV_TPG_0_MAX_ROWS 2160
#define XPAR_XV_TPG_0_MAX_DATA_WIDTH 8
#define XPAR_XV_TPG_0_SOLID_COLOR 0
#define XPAR_XV_TPG_0_RAMP 0
#define XPAR_XV_TPG_0_COLOR_BAR 1
#define XPAR_XV_TPG_0_DISPLAY_PORT 0
#define XPAR_XV_TPG_0_COLOR_SWEEP 0
#define XPAR_XV_TPG_0_ZONE_PLATE 0
#define XPAR_XV_TPG_0_FOREGROUND 0


/******************************************************************/

/* Definitions for driver VPHY */
#define XPAR_XVPHY_NUM_INSTANCES 1

/* Definitions for peripheral VID_PHY_CONTROLLER */
#define XPAR_VID_PHY_CONTROLLER_DEVICE_ID 0
#define XPAR_VID_PHY_CONTROLLER_BASEADDR 0x43C50000
#define XPAR_VID_PHY_CONTROLLER_TRANSCEIVER_STR "GTXE2"
#define XPAR_VID_PHY_CONTROLLER_TRANSCEIVER 1
#define XPAR_VID_PHY_CONTROLLER_TX_NO_OF_CHANNELS 3
#define XPAR_VID_PHY_CONTROLLER_RX_NO_OF_CHANNELS 3
#define XPAR_VID_PHY_CONTROLLER_TX_PROTOCOL 1
#define XPAR_VID_PHY_CONTROLLER_RX_PROTOCOL 1
#define XPAR_VID_PHY_CONTROLLER_TX_REFCLK_SEL 4
#define XPAR_VID_PHY_CONTROLLER_RX_REFCLK_SEL 0
#define XPAR_VID_PHY_CONTROLLER_TX_PLL_SELECTION 3
#define XPAR_VID_PHY_CONTROLLER_RX_PLL_SELECTION 0
#define XPAR_VID_PHY_CONTROLLER_NIDRU 1
#define XPAR_VID_PHY_CONTROLLER_NIDRU_REFCLK_SEL 5
#define XPAR_VID_PHY_CONTROLLER_INPUT_PIXELS_PER_CLOCK 4
#define XPAR_VID_PHY_CONTROLLER_TX_BUFFER_BYPASS 1
#define XPAR_VID_PHY_CONTROLLER_HDMI_FAST_SWITCH 1
#define XPAR_VID_PHY_CONTROLLER_TRANSCEIVER_WIDTH 4
#define XPAR_VID_PHY_CONTROLLER_ERR_IRQ_EN 0
#define XPAR_VID_PHY_CONTROLLER_AXI_LITE_FREQ_HZ 100000000
#define XPAR_VID_PHY_CONTROLLER_DRPCLK_FREQ 100000000
#define XPAR_VID_PHY_CONTROLLER_USE_GT_CH4_HDMI 0


/******************************************************************/

/* Canonical definitions for peripheral VID_PHY_CONTROLLER */
#define XPAR_VPHY_0_DEVICE_ID XPAR_VID_PHY_CONTROLLER_DEVICE_ID
#define XPAR_VPHY_0_BASEADDR 0x43C50000
#define XPAR_VPHY_0_TRANSCEIVER_STR "GTXE2"
#define XPAR_VPHY_0_TRANSCEIVER 1
#define XPAR_VPHY_0_TX_NO_OF_CHANNELS 3
#define XPAR_VPHY_0_RX_NO_OF_CHANNELS 3
#define XPAR_VPHY_0_TX_PROTOCOL 1
#define XPAR_VPHY_0_RX_PROTOCOL 1
#define XPAR_VPHY_0_TX_REFCLK_SEL 4
#define XPAR_VPHY_0_RX_REFCLK_SEL 0
#define XPAR_VPHY_0_TX_PLL_SELECTION 3
#define XPAR_VPHY_0_RX_PLL_SELECTION 0
#define XPAR_VPHY_0_NIDRU 1
#define XPAR_VPHY_0_NIDRU_REFCLK_SEL 5
#define XPAR_VPHY_0_INPUT_PIXELS_PER_CLOCK 4
#define XPAR_VPHY_0_TX_BUFFER_BYPASS 1
#define XPAR_VPHY_0_HDMI_FAST_SWITCH 1
#define XPAR_VPHY_0_TRANSCEIVER_WIDTH 4
#define XPAR_VPHY_0_ERR_IRQ_EN 0
#define XPAR_VPHY_0_AXI_LITE_FREQ_HZ 100000000
#define XPAR_VPHY_0_DRPCLK_FREQ 100000000
#define XPAR_VPHY_0_USE_GT_CH4_HDMI 0


/******************************************************************/

/* Definitions for driver VTC */
#define XPAR_XVTC_NUM_INSTANCES 1

/* Definitions for peripheral V_HDMI_TX_SS_V_TC */
#define XPAR_V_HDMI_TX_SS_V_TC_DEVICE_ID 0
#define XPAR_V_HDMI_TX_SS_V_TC_BASEADDR 0x00010000
#define XPAR_V_HDMI_TX_SS_V_TC_HIGHADDR 0x0001FFFF
#define XPAR_V_HDMI_TX_SS_V_TC_GENERATE_EN 1
#define XPAR_V_HDMI_TX_SS_V_TC_DETECT_EN 0
#define XPAR_V_HDMI_TX_SS_V_TC_DET_HSYNC_EN 1
#define XPAR_V_HDMI_TX_SS_V_TC_DET_VSYNC_EN 1
#define XPAR_V_HDMI_TX_SS_V_TC_DET_HBLANK_EN 1
#define XPAR_V_HDMI_TX_SS_V_TC_DET_VBLANK_EN 1
#define XPAR_V_HDMI_TX_SS_V_TC_DET_AVIDEO_EN 1
#define XPAR_V_HDMI_TX_SS_V_TC_DET_ACHROMA_EN 0


/******************************************************************/

/* Canonical definitions for peripheral V_HDMI_TX_SS_V_TC */
#define XPAR_VTC_0_DEVICE_ID XPAR_V_HDMI_TX_SS_V_TC_DEVICE_ID
#define XPAR_VTC_0_BASEADDR 0x00010000
#define XPAR_VTC_0_HIGHADDR 0x0001FFFF
#define XPAR_VTC_0_GENERATE_EN 1
#define XPAR_VTC_0_DETECT_EN 0
#define XPAR_VTC_0_DET_HSYNC_EN 1
#define XPAR_VTC_0_DET_VSYNC_EN 1
#define XPAR_VTC_0_DET_HBLANK_EN 1
#define XPAR_VTC_0_DET_VBLANK_EN 1
#define XPAR_VTC_0_DET_AVIDEO_EN 1
#define XPAR_VTC_0_DET_ACHROMA_EN 0


/******************************************************************/

/* Definitions for driver XADCPS */
#define XPAR_XADCPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_XADC_0 */
#define XPAR_PS7_XADC_0_DEVICE_ID 0
#define XPAR_PS7_XADC_0_BASEADDR 0xF8007100
#define XPAR_PS7_XADC_0_HIGHADDR 0xF8007120


/******************************************************************/

/* Canonical definitions for peripheral PS7_XADC_0 */
#define XPAR_XADCPS_0_DEVICE_ID XPAR_PS7_XADC_0_DEVICE_ID
#define XPAR_XADCPS_0_BASEADDR 0xF8007100
#define XPAR_XADCPS_0_HIGHADDR 0xF8007120


/******************************************************************/

#endif  /* end of protection macro */
