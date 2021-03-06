#
# Automatically generated make config: don't edit
#
CONFIG_UCLINUX=y
CONFIG_UID16=y
CONFIG_RWSEM_GENERIC_SPINLOCK=y
# CONFIG_RWSEM_XCHGADD_ALGORITHM is not set
# CONFIG_ISA is not set
# CONFIG_ISAPNP is not set
# CONFIG_EISA is not set
# CONFIG_MCA is not set

#
# Code maturity level options
#
CONFIG_EXPERIMENTAL=y

#
# Loadable module support
#
CONFIG_MODULES=y
# CONFIG_MODVERSIONS is not set
# CONFIG_KMOD is not set
CONFIG_MICROBLAZE=y

#
# Processor type and features
#

#
# Platform
#
CONFIG_UCLINUX_AUTO=y
# CONFIG_MBVANILLA is not set
# CONFIG_EGRET01 is not set
# CONFIG_SUZAKU is not set
HZ=100
CONFIG_XILINX_ERAM_START=0x80000000
CONFIG_XILINX_ERAM_SIZE=0x02000000
CONFIG_XILINX_LMB_BASEADDR=0x00000000
CONFIG_XILINX_LMB_SIZE=0x00004000
CONFIG_XILINX_CPU_CLOCK_FREQ=66666667
CONFIG_XILINX_MICROBLAZE0_INSTANCE="microblaze0"
CONFIG_XILINX_MICROBLAZE0_FAMILY="virtex2p"
CONFIG_XILINX_MICROBLAZE0_INSTANCE="microblaze0"
CONFIG_XILINX_MICROBLAZE0_D_OPB=1
CONFIG_XILINX_MICROBLAZE0_D_LMB=1
CONFIG_XILINX_MICROBLAZE0_I_OPB=1
CONFIG_XILINX_MICROBLAZE0_I_LMB=1
CONFIG_XILINX_MICROBLAZE0_USE_BARREL=1
CONFIG_XILINX_MICROBLAZE0_USE_DIV=1
CONFIG_XILINX_MICROBLAZE0_USE_MSR_INSTR=0
CONFIG_XILINX_MICROBLAZE0_DEBUG_ENABLED=1
CONFIG_XILINX_MICROBLAZE0_NUMBER_OF_PBRK=4
CONFIG_XILINX_MICROBLAZE0_NUMBER_OF_RD_ADDR_BRK=1
CONFIG_XILINX_MICROBLAZE0_NUMBER_OF_WR_ADDR_BRK=1
CONFIG_XILINX_MICROBLAZE0_INTERRUPT_IS_EDGE=0
CONFIG_XILINX_MICROBLAZE0_EDGE_IS_POSITIVE=1
CONFIG_XILINX_MICROBLAZE0_FSL_LINKS=1
CONFIG_XILINX_MICROBLAZE0_FSL_DATA_SIZE=32
CONFIG_XILINX_MICROBLAZE0_ICACHE_BASEADDR=0x80000000
CONFIG_XILINX_MICROBLAZE0_ICACHE_HIGHADDR=0x81FFFFFF
CONFIG_XILINX_MICROBLAZE0_USE_ICACHE=1
CONFIG_XILINX_MICROBLAZE0_ALLOW_ICACHE_WR=1
CONFIG_XILINX_MICROBLAZE0_ADDR_TAG_BITS=11
CONFIG_XILINX_MICROBLAZE0_CACHE_BYTE_SIZE=16384
CONFIG_XILINX_MICROBLAZE0_DCACHE_BASEADDR=0x80000000
CONFIG_XILINX_MICROBLAZE0_DCACHE_HIGHADDR=0x81FFFFFF
CONFIG_XILINX_MICROBLAZE0_USE_DCACHE=1
CONFIG_XILINX_MICROBLAZE0_ALLOW_DCACHE_WR=1
CONFIG_XILINX_MICROBLAZE0_DCACHE_ADDR_TAG=11
CONFIG_XILINX_MICROBLAZE0_DCACHE_BYTE_SIZE=16384
CONFIG_XILINX_MICROBLAZE0_INSTANCE="microblaze0"
CONFIG_XILINX_MICROBLAZE0_HW_VER="2.10.a"
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_0_INSTANCE="dlmbcntlr"
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_0_BASEADDR=0x00000000
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_0_HIGHADDR=0x00003FFF
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_0_MASK=0x80000000
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_0_LMB_AWIDTH=32
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_0_LMB_DWIDTH=32
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_0_INSTANCE="dlmbcntlr"
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_0_HW_VER="1.00.b"
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_1_INSTANCE="ilmbcntlr"
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_1_BASEADDR=0x00000000
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_1_HIGHADDR=0x00003FFF
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_1_MASK=0x80000000
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_1_LMB_AWIDTH=32
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_1_LMB_DWIDTH=32
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_1_INSTANCE="ilmbcntlr"
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_1_HW_VER="1.00.b"
CONFIG_XILINX_LMB_BRAM_IF_CNTLR_NUM_INSTANCES=2
CONFIG_XILINX_MDM_0_INSTANCE="debugmodule"
CONFIG_XILINX_MDM_0_BASEADDR=0xFFFFC000
CONFIG_XILINX_MDM_0_HIGHADDR=0xFFFFC0FF
CONFIG_XILINX_MDM_0_OPB_DWIDTH=32
CONFIG_XILINX_MDM_0_OPB_AWIDTH=32
CONFIG_XILINX_MDM_0_FAMILY="virtex2p"
CONFIG_XILINX_MDM_0_MB_DBG_PORTS=1
CONFIG_XILINX_MDM_0_USE_UART=0
CONFIG_XILINX_MDM_0_UART_WIDTH=8
CONFIG_XILINX_MDM_0_WRITE_FSL_PORTS=1
CONFIG_XILINX_MDM_0_INSTANCE="debugmodule"
CONFIG_XILINX_MDM_0_HW_VER="2.00.a"
CONFIG_XILINX_MDM_NUM_INSTANCES=1
CONFIG_XILINX_DDR_0_INSTANCE="ddrcontroller"
CONFIG_XILINX_DDR_0_BASEADDR=0x80000000
CONFIG_XILINX_DDR_0_HIGHADDR=0x81FFFFFF
CONFIG_XILINX_DDR_0_OPB_DWIDTH=32
CONFIG_XILINX_DDR_0_OPB_AWIDTH=32
CONFIG_XILINX_DDR_0_FAMILY="virtex2p"
CONFIG_XILINX_DDR_0_OPB_CLK_PERIOD_PS=15000
CONFIG_XILINX_DDR_0_INCLUDE_BURST_SUPPORT=0
CONFIG_XILINX_DDR_0_DQS_PULLUPS=1
CONFIG_XILINX_DDR_0_REG_DIMM=0
CONFIG_XILINX_DDR_0_DDR_TMRD=15000
CONFIG_XILINX_DDR_0_DDR_TWR=15000
CONFIG_XILINX_DDR_0_DDR_TWTR=1
CONFIG_XILINX_DDR_0_DDR_TRAS=40000
CONFIG_XILINX_DDR_0_DDR_TRC=65000
CONFIG_XILINX_DDR_0_DDR_TRFC=75000
CONFIG_XILINX_DDR_0_DDR_TRCD=20000
CONFIG_XILINX_DDR_0_DDR_TRRD=15000
CONFIG_XILINX_DDR_0_DDR_TREFC=70000000
CONFIG_XILINX_DDR_0_DDR_TREFI=7800000
CONFIG_XILINX_DDR_0_DDR_TRP=20000
CONFIG_XILINX_DDR_0_DDR_CAS_LAT=2
CONFIG_XILINX_DDR_0_DDR_DWIDTH=16
CONFIG_XILINX_DDR_0_DDR_AWIDTH=13
CONFIG_XILINX_DDR_0_DDR_COL_AWIDTH=9
CONFIG_XILINX_DDR_0_DDR_BANK_AWIDTH=2
CONFIG_XILINX_DDR_0_INSTANCE="ddrcontroller"
CONFIG_XILINX_DDR_0_HW_VER="1.00.b"
CONFIG_XILINX_DDR_NUM_INSTANCES=1
CONFIG_XILINX_EMC_0_INSTANCE="sramflash"
CONFIG_XILINX_EMC_0_NUM_BANKS_MEM="2"
CONFIG_XILINX_EMC_0_INCLUDE_NEGEDGE_IOREGS="0"
CONFIG_XILINX_EMC_0_BASEADDR=0xFFFF0000
CONFIG_XILINX_EMC_0_HIGHADDR=0xFFFF01FF
CONFIG_XILINX_EMC_0_MEM0_BASEADDR=0xFFE00000
CONFIG_XILINX_EMC_0_MEM0_HIGHADDR=0xFFEFFFFF
CONFIG_XILINX_EMC_0_MEM1_BASEADDR=0xFF000000
CONFIG_XILINX_EMC_0_MEM1_HIGHADDR=0xFF7FFFFF
CONFIG_XILINX_EMC_0_MEM2_BASEADDR=0xFFFFFFFF
CONFIG_XILINX_EMC_0_MEM2_HIGHADDR=0x00000000
CONFIG_XILINX_EMC_0_MEM3_BASEADDR=0xFFFFFFFF
CONFIG_XILINX_EMC_0_MEM3_HIGHADDR=0x00000000
CONFIG_XILINX_EMC_0_MEM4_BASEADDR=0xFFFFFFFF
CONFIG_XILINX_EMC_0_MEM4_HIGHADDR=0x00000000
CONFIG_XILINX_EMC_0_MEM5_BASEADDR=0xFFFFFFFF
CONFIG_XILINX_EMC_0_MEM5_HIGHADDR=0x00000000
CONFIG_XILINX_EMC_0_MEM6_BASEADDR=0xFFFFFFFF
CONFIG_XILINX_EMC_0_MEM6_HIGHADDR=0x00000000
CONFIG_XILINX_EMC_0_MEM7_BASEADDR=0xFFFFFFFF
CONFIG_XILINX_EMC_0_MEM7_HIGHADDR=0x00000000
CONFIG_XILINX_EMC_0_MEM0_WIDTH=32
CONFIG_XILINX_EMC_0_MEM1_WIDTH=32
CONFIG_XILINX_EMC_0_MEM2_WIDTH=32
CONFIG_XILINX_EMC_0_MEM3_WIDTH=32
CONFIG_XILINX_EMC_0_MEM4_WIDTH=32
CONFIG_XILINX_EMC_0_MEM5_WIDTH=32
CONFIG_XILINX_EMC_0_MEM6_WIDTH=32
CONFIG_XILINX_EMC_0_MEM7_WIDTH=32
CONFIG_XILINX_EMC_0_MAX_MEM_WIDTH=32
CONFIG_XILINX_EMC_0_INCLUDE_DATAWIDTH_MATCHING_0=0
CONFIG_XILINX_EMC_0_INCLUDE_DATAWIDTH_MATCHING_1=0
CONFIG_XILINX_EMC_0_INCLUDE_DATAWIDTH_MATCHING_2=1
CONFIG_XILINX_EMC_0_INCLUDE_DATAWIDTH_MATCHING_3=1
CONFIG_XILINX_EMC_0_INCLUDE_DATAWIDTH_MATCHING_4=1
CONFIG_XILINX_EMC_0_INCLUDE_DATAWIDTH_MATCHING_5=1
CONFIG_XILINX_EMC_0_INCLUDE_DATAWIDTH_MATCHING_6=1
CONFIG_XILINX_EMC_0_INCLUDE_DATAWIDTH_MATCHING_7=1
CONFIG_XILINX_EMC_0_SYNCH_MEM_0=0
CONFIG_XILINX_EMC_0_SYNCH_PIPEDELAY_0=2
CONFIG_XILINX_EMC_0_READ_ADDR_TO_OUT_SLOW_PS_0=150000
CONFIG_XILINX_EMC_0_WRITE_ADDR_TO_OUT_SLOW_PS_0=55000
CONFIG_XILINX_EMC_0_WRITE_MIN_PULSE_WIDTH_PS_0=70000
CONFIG_XILINX_EMC_0_READ_ADDR_TO_OUT_FAST_PS_0=150000
CONFIG_XILINX_EMC_0_WRITE_ADDR_TO_OUT_FAST_PS_0=55000
CONFIG_XILINX_EMC_0_READ_RECOVERY_BEFORE_WRITE_PS_0=15000
CONFIG_XILINX_EMC_0_WRITE_RECOVERY_BEFORE_READ_PS_0=35000
CONFIG_XILINX_EMC_0_SYNCH_MEM_1=0
CONFIG_XILINX_EMC_0_SYNCH_PIPEDELAY_1=2
CONFIG_XILINX_EMC_0_READ_ADDR_TO_OUT_SLOW_PS_1=150000
CONFIG_XILINX_EMC_0_WRITE_ADDR_TO_OUT_SLOW_PS_1=55000
CONFIG_XILINX_EMC_0_WRITE_MIN_PULSE_WIDTH_PS_1=70000
CONFIG_XILINX_EMC_0_READ_ADDR_TO_OUT_FAST_PS_1=150000
CONFIG_XILINX_EMC_0_WRITE_ADDR_TO_OUT_FAST_PS_1=55000
CONFIG_XILINX_EMC_0_READ_RECOVERY_BEFORE_WRITE_PS_1=15000
CONFIG_XILINX_EMC_0_WRITE_RECOVERY_BEFORE_READ_PS_1=35000
CONFIG_XILINX_EMC_0_SYNCH_MEM_2=0
CONFIG_XILINX_EMC_0_SYNCH_PIPEDELAY_2=2
CONFIG_XILINX_EMC_0_READ_ADDR_TO_OUT_SLOW_PS_2=0
CONFIG_XILINX_EMC_0_WRITE_ADDR_TO_OUT_SLOW_PS_2=0
CONFIG_XILINX_EMC_0_WRITE_MIN_PULSE_WIDTH_PS_2=0
CONFIG_XILINX_EMC_0_READ_ADDR_TO_OUT_FAST_PS_2=0
CONFIG_XILINX_EMC_0_WRITE_ADDR_TO_OUT_FAST_PS_2=0
CONFIG_XILINX_EMC_0_READ_RECOVERY_BEFORE_WRITE_PS_2=0
CONFIG_XILINX_EMC_0_WRITE_RECOVERY_BEFORE_READ_PS_2=0
CONFIG_XILINX_EMC_0_SYNCH_MEM_3=0
CONFIG_XILINX_EMC_0_SYNCH_PIPEDELAY_3=2
CONFIG_XILINX_EMC_0_READ_ADDR_TO_OUT_SLOW_PS_3=0
CONFIG_XILINX_EMC_0_WRITE_ADDR_TO_OUT_SLOW_PS_3=0
CONFIG_XILINX_EMC_0_WRITE_MIN_PULSE_WIDTH_PS_3=0
CONFIG_XILINX_EMC_0_READ_ADDR_TO_OUT_FAST_PS_3=0
CONFIG_XILINX_EMC_0_WRITE_ADDR_TO_OUT_FAST_PS_3=0
CONFIG_XILINX_EMC_0_READ_RECOVERY_BEFORE_WRITE_PS_3=0
CONFIG_XILINX_EMC_0_WRITE_RECOVERY_BEFORE_READ_PS_3=0
CONFIG_XILINX_EMC_0_SYNCH_MEM_4=0
CONFIG_XILINX_EMC_0_SYNCH_PIPEDELAY_4=2
CONFIG_XILINX_EMC_0_READ_ADDR_TO_OUT_SLOW_PS_4=0
CONFIG_XILINX_EMC_0_WRITE_ADDR_TO_OUT_SLOW_PS_4=0
CONFIG_XILINX_EMC_0_WRITE_MIN_PULSE_WIDTH_PS_4=0
CONFIG_XILINX_EMC_0_READ_ADDR_TO_OUT_FAST_PS_4=0
CONFIG_XILINX_EMC_0_WRITE_ADDR_TO_OUT_FAST_PS_4=0
CONFIG_XILINX_EMC_0_READ_RECOVERY_BEFORE_WRITE_PS_4=0
CONFIG_XILINX_EMC_0_WRITE_RECOVERY_BEFORE_READ_PS_4=0
CONFIG_XILINX_EMC_0_SYNCH_MEM_5=0
CONFIG_XILINX_EMC_0_SYNCH_PIPEDELAY_5=2
CONFIG_XILINX_EMC_0_READ_ADDR_TO_OUT_SLOW_PS_5=0
CONFIG_XILINX_EMC_0_WRITE_ADDR_TO_OUT_SLOW_PS_5=0
CONFIG_XILINX_EMC_0_WRITE_MIN_PULSE_WIDTH_PS_5=0
CONFIG_XILINX_EMC_0_READ_ADDR_TO_OUT_FAST_PS_5=0
CONFIG_XILINX_EMC_0_WRITE_ADDR_TO_OUT_FAST_PS_5=0
CONFIG_XILINX_EMC_0_READ_RECOVERY_BEFORE_WRITE_PS_5=0
CONFIG_XILINX_EMC_0_WRITE_RECOVERY_BEFORE_READ_PS_5=0
CONFIG_XILINX_EMC_0_SYNCH_MEM_6=0
CONFIG_XILINX_EMC_0_SYNCH_PIPEDELAY_6=2
CONFIG_XILINX_EMC_0_READ_ADDR_TO_OUT_SLOW_PS_6=0
CONFIG_XILINX_EMC_0_WRITE_ADDR_TO_OUT_SLOW_PS_6=0
CONFIG_XILINX_EMC_0_WRITE_MIN_PULSE_WIDTH_PS_6=0
CONFIG_XILINX_EMC_0_READ_ADDR_TO_OUT_FAST_PS_6=0
CONFIG_XILINX_EMC_0_WRITE_ADDR_TO_OUT_FAST_PS_6=0
CONFIG_XILINX_EMC_0_READ_RECOVERY_BEFORE_WRITE_PS_6=0
CONFIG_XILINX_EMC_0_WRITE_RECOVERY_BEFORE_READ_PS_6=0
CONFIG_XILINX_EMC_0_SYNCH_MEM_7=0
CONFIG_XILINX_EMC_0_SYNCH_PIPEDELAY_7=2
CONFIG_XILINX_EMC_0_READ_ADDR_TO_OUT_SLOW_PS_7=0
CONFIG_XILINX_EMC_0_WRITE_ADDR_TO_OUT_SLOW_PS_7=0
CONFIG_XILINX_EMC_0_WRITE_MIN_PULSE_WIDTH_PS_7=0
CONFIG_XILINX_EMC_0_READ_ADDR_TO_OUT_FAST_PS_7=0
CONFIG_XILINX_EMC_0_WRITE_ADDR_TO_OUT_FAST_PS_7=0
CONFIG_XILINX_EMC_0_READ_RECOVERY_BEFORE_WRITE_PS_7=0
CONFIG_XILINX_EMC_0_WRITE_RECOVERY_BEFORE_READ_PS_7=0
CONFIG_XILINX_EMC_0_OPB_DWIDTH=32
CONFIG_XILINX_EMC_0_OPB_AWIDTH=32
CONFIG_XILINX_EMC_0_OPB_CLK_PERIOD_PS=15000
CONFIG_XILINX_EMC_0_DEV_BLK_ID=1
CONFIG_XILINX_EMC_0_DEV_MIR_ENABLE=1
CONFIG_XILINX_EMC_0_INSTANCE="sramflash"
CONFIG_XILINX_EMC_0_HW_VER="1.10.b"
CONFIG_XILINX_EMC_NUM_INSTANCES=1
CONFIG_XILINX_UARTLITE_0_INSTANCE="consoleuart"
CONFIG_XILINX_UARTLITE_0_BASEADDR=0xFFFF2000
CONFIG_XILINX_UARTLITE_0_HIGHADDR=0xFFFF20FF
CONFIG_XILINX_UARTLITE_0_OPB_DWIDTH=32
CONFIG_XILINX_UARTLITE_0_OPB_AWIDTH=32
CONFIG_XILINX_UARTLITE_0_DATA_BITS=8
CONFIG_XILINX_UARTLITE_0_CLK_FREQ=66666667
CONFIG_XILINX_UARTLITE_0_BAUDRATE=57600
CONFIG_XILINX_UARTLITE_0_USE_PARITY=0
CONFIG_XILINX_UARTLITE_0_ODD_PARITY=0
CONFIG_XILINX_UARTLITE_0_INSTANCE="consoleuart"
CONFIG_XILINX_UARTLITE_0_HW_VER="1.00.b"
CONFIG_XILINX_UARTLITE_0_IRQ=1
CONFIG_XILINX_UARTLITE_1_INSTANCE="debuguart"
CONFIG_XILINX_UARTLITE_1_BASEADDR=0xFFFF4000
CONFIG_XILINX_UARTLITE_1_HIGHADDR=0xFFFF40FF
CONFIG_XILINX_UARTLITE_1_OPB_DWIDTH=32
CONFIG_XILINX_UARTLITE_1_OPB_AWIDTH=32
CONFIG_XILINX_UARTLITE_1_DATA_BITS=8
CONFIG_XILINX_UARTLITE_1_CLK_FREQ=66666667
CONFIG_XILINX_UARTLITE_1_BAUDRATE=115200
CONFIG_XILINX_UARTLITE_1_USE_PARITY=0
CONFIG_XILINX_UARTLITE_1_ODD_PARITY=0
CONFIG_XILINX_UARTLITE_1_INSTANCE="debuguart"
CONFIG_XILINX_UARTLITE_1_HW_VER="1.00.b"
CONFIG_XILINX_UARTLITE_1_IRQ=2
CONFIG_XILINX_UARTLITE_NUM_INSTANCES=2
CONFIG_XILINX_INTC_0_INSTANCE="systemintc"
CONFIG_XILINX_INTC_0_FAMILY="virtex2p"
CONFIG_XILINX_INTC_0_Y=0
CONFIG_XILINX_INTC_0_X=0
CONFIG_XILINX_INTC_0_U_SET="intc"
CONFIG_XILINX_INTC_0_OPB_AWIDTH=32
CONFIG_XILINX_INTC_0_OPB_DWIDTH=32
CONFIG_XILINX_INTC_0_BASEADDR=0xFFFF3000
CONFIG_XILINX_INTC_0_HIGHADDR=0xFFFF30FF
CONFIG_XILINX_INTC_0_NUM_INTR_INPUTS=4
CONFIG_XILINX_INTC_0_KIND_OF_INTR=0x00000006
CONFIG_XILINX_INTC_0_KIND_OF_EDGE=0x00000006
CONFIG_XILINX_INTC_0_KIND_OF_LVL=0x00000009
CONFIG_XILINX_INTC_0_HAS_IPR=1
CONFIG_XILINX_INTC_0_HAS_SIE=1
CONFIG_XILINX_INTC_0_HAS_CIE=1
CONFIG_XILINX_INTC_0_HAS_IVR=1
CONFIG_XILINX_INTC_0_IRQ_IS_LEVEL=1
CONFIG_XILINX_INTC_0_IRQ_ACTIVE=1
CONFIG_XILINX_INTC_0_INSTANCE="systemintc"
CONFIG_XILINX_INTC_0_HW_VER="1.00.c"
CONFIG_XILINX_INTC_NUM_INSTANCES=1
CONFIG_XILINX_TIMER_0_INSTANCE="systemtimer"
CONFIG_XILINX_TIMER_0_FAMILY="virtex2p"
CONFIG_XILINX_TIMER_0_COUNT_WIDTH=32
CONFIG_XILINX_TIMER_0_ONE_TIMER_ONLY=0
CONFIG_XILINX_TIMER_0_TRIG0_ASSERT=1
CONFIG_XILINX_TIMER_0_TRIG1_ASSERT=1
CONFIG_XILINX_TIMER_0_GEN0_ASSERT=1
CONFIG_XILINX_TIMER_0_GEN1_ASSERT=1
CONFIG_XILINX_TIMER_0_OPB_AWIDTH=32
CONFIG_XILINX_TIMER_0_OPB_DWIDTH=32
CONFIG_XILINX_TIMER_0_BASEADDR=0xFFFF1000
CONFIG_XILINX_TIMER_0_HIGHADDR=0xFFFF10FF
CONFIG_XILINX_TIMER_0_INSTANCE="systemtimer"
CONFIG_XILINX_TIMER_0_HW_VER="1.00.b"
CONFIG_XILINX_TIMER_0_IRQ=0
CONFIG_XILINX_TIMER_NUM_INSTANCES=1
CONFIG_XILINX_GPIO_0_INSTANCE="systemgpio"
CONFIG_XILINX_GPIO_0_BASEADDR=0xFFFF5000
CONFIG_XILINX_GPIO_0_HIGHADDR=0xFFFF50FF
CONFIG_XILINX_GPIO_0_OPB_DWIDTH=32
CONFIG_XILINX_GPIO_0_OPB_AWIDTH=32
CONFIG_XILINX_GPIO_0_GPIO_WIDTH=24
CONFIG_XILINX_GPIO_0_ALL_INPUTS=0
CONFIG_XILINX_GPIO_0_INSTANCE="systemgpio"
CONFIG_XILINX_GPIO_0_HW_VER="1.00.a"
CONFIG_XILINX_GPIO_NUM_INSTANCES=1
CONFIG_XILINX_ETHERNET_0_INSTANCE="ethernet"
CONFIG_XILINX_ETHERNET_0_DEV_BLK_ID=1
CONFIG_XILINX_ETHERNET_0_DEV_MIR_ENABLE=1
CONFIG_XILINX_ETHERNET_0_BASEADDR=0xC0000000
CONFIG_XILINX_ETHERNET_0_HIGHADDR=0xC0003FFF
CONFIG_XILINX_ETHERNET_0_RESET_PRESENT=1
CONFIG_XILINX_ETHERNET_0_INCLUDE_DEV_PENCODER=1
CONFIG_XILINX_ETHERNET_0_DMA_PRESENT=1
CONFIG_XILINX_ETHERNET_0_DMA_INTR_COALESCE=1
CONFIG_XILINX_ETHERNET_0_OPB_AWIDTH=32
CONFIG_XILINX_ETHERNET_0_OPB_DWIDTH=32
CONFIG_XILINX_ETHERNET_0_OPB_CLK_PERIOD_PS=15000
CONFIG_XILINX_ETHERNET_0_FAMILY="virtex2p"
CONFIG_XILINX_ETHERNET_0_IPIF_FIFO_DEPTH=32768
CONFIG_XILINX_ETHERNET_0_SOURCE_ADDR_INSERT_EXIST=1
CONFIG_XILINX_ETHERNET_0_PAD_INSERT_EXIST=1
CONFIG_XILINX_ETHERNET_0_FCS_INSERT_EXIST=1
CONFIG_XILINX_ETHERNET_0_MAFIFO_DEPTH=16
CONFIG_XILINX_ETHERNET_0_HALF_DUPLEX_EXIST=1
CONFIG_XILINX_ETHERNET_0_ERR_COUNT_EXIST=1
CONFIG_XILINX_ETHERNET_0_MII_EXIST=1
CONFIG_XILINX_ETHERNET_0_INSTANCE="ethernet"
CONFIG_XILINX_ETHERNET_0_HW_VER="1.00.m"
CONFIG_XILINX_ETHERNET_0_IRQ=3
CONFIG_XILINX_ETHERNET_NUM_INSTANCES=1
CONFIG_XILINX_GPIO=y
CONFIG_XILINX_ENET=y
# CONFIG_XILINX_SYSACE is not set
CONFIG_MBVANILLA_CMDLINE=y
CONFIG_ZERO_BSS=y

#
# Debug Logging
#
CONFIG_MICROBLAZE_DEBUGGING=y

#
# General setup
#
CONFIG_NET=y
# CONFIG_DISK is not set
# CONFIG_HOTPLUG is not set
# CONFIG_PCMCIA is not set
# CONFIG_SYSVIPC is not set
# CONFIG_BSD_PROCESS_ACCT is not set
# CONFIG_SYSCTL is not set
CONFIG_KCORE_ELF=y
# CONFIG_KCORE_AOUT is not set
CONFIG_BINFMT_FLAT=y
CONFIG_BINFMT_ZFLAT=y
# CONFIG_CONTIGUOUS_PAGE_ALLOC is not set
# CONFIG_MEM_MAP is not set
# CONFIG_NO_MMU_LARGE_ALLOCS is not set

#
# Memory Technology Devices (MTD)
#
CONFIG_MTD=y
# CONFIG_MTD_DEBUG is not set
CONFIG_MTD_PARTITIONS=y
# CONFIG_MTD_CONCAT is not set
# CONFIG_MTD_REDBOOT_PARTS is not set
# CONFIG_MTD_CMDLINE_PARTS is not set

#
# User Modules And Translation Layers
#
CONFIG_MTD_CHAR=y
CONFIG_MTD_BLOCK=y
# CONFIG_FTL is not set
# CONFIG_NFTL is not set
# CONFIG_INFTL is not set

#
# RAM/ROM/Flash chip drivers
#
CONFIG_MTD_CFI=y
CONFIG_MTD_JEDECPROBE=y
CONFIG_MTD_GEN_PROBE=y
# CONFIG_MTD_CFI_ADV_OPTIONS is not set
# CONFIG_MTD_CFI_INTELEXT is not set
CONFIG_MTD_CFI_AMDSTD=y
# CONFIG_MTD_CFI_STAA is not set
CONFIG_MTD_RAM=y
# CONFIG_MTD_ROM is not set
# CONFIG_MTD_ABSENT is not set
# CONFIG_MTD_OBSOLETE_CHIPS is not set
# CONFIG_MTD_AMDSTD is not set
# CONFIG_MTD_SHARP is not set
# CONFIG_MTD_JEDEC is not set
# CONFIG_MTD_PSD4256G is not set

#
# Mapping drivers for chip access
#
# CONFIG_MTD_PHYSMAP is not set
# CONFIG_MTD_DRAGONIX is not set
# CONFIG_MTD_NETtel is not set
# CONFIG_MTD_SNAPGEODE is not set
# CONFIG_MTD_NETteluC is not set
CONFIG_MTD_MBVANILLA=y
# CONFIG_FLASHAUTO is not set
# CONFIG_FLASH128KB is not set
# CONFIG_FLASH1MB is not set
# CONFIG_FLASH2MB is not set
# CONFIG_FLASH4MB is not set
# CONFIG_FLASH6MB is not set
CONFIG_FLASH8MB=y
# CONFIG_MTD_SUZAKU is not set
# CONFIG_MTD_KeyTechnology is not set
# CONFIG_MTD_SED_SIOSIII is not set
# CONFIG_MTD_UCLINUX is not set
# CONFIG_MTD_PCI is not set
# CONFIG_MTD_PCMCIA is not set

#
# Self-contained MTD device drivers
#
# CONFIG_MTD_PMC551 is not set
# CONFIG_MTD_SLRAM is not set
# CONFIG_MTD_MTDRAM is not set
# CONFIG_MTD_BLKMTD is not set

#
# Disk-On-Chip Device Drivers
#
# CONFIG_MTD_DOC1000 is not set
# CONFIG_MTD_DOC2000 is not set
# CONFIG_MTD_DOC2001 is not set
# CONFIG_MTD_DOC2001PLUS is not set
# CONFIG_MTD_DOCPROBE is not set

#
# NAND Flash Device Drivers
#
# CONFIG_MTD_NAND is not set

#
# Parallel port support
#
# CONFIG_PARPORT is not set

#
# Block devices
#
# CONFIG_BLK_DEV_FD is not set
# CONFIG_BLK_DEV_XD is not set
# CONFIG_PARIDE is not set
# CONFIG_BLK_CPQ_DA is not set
# CONFIG_BLK_CPQ_CISS_DA is not set
# CONFIG_CISS_SCSI_TAPE is not set
# CONFIG_CISS_MONITOR_THREAD is not set
# CONFIG_BLK_DEV_DAC960 is not set
# CONFIG_BLK_DEV_UMEM is not set
# CONFIG_BLK_DEV_SX8 is not set
# CONFIG_BLK_DEV_LOOP is not set
# CONFIG_BLK_DEV_NBD is not set
CONFIG_BLK_DEV_RAM=y
CONFIG_BLK_DEV_RAM_SIZE=4096
# CONFIG_BLK_DEV_INITRD is not set
# CONFIG_BLK_DEV_RAMDISK_DATA is not set
# CONFIG_BLK_DEV_BLKMEM is not set
# CONFIG_BLK_STATS is not set

#
# Networking options
#
CONFIG_PACKET=y
# CONFIG_PACKET_MMAP is not set
# CONFIG_NETLINK_DEV is not set
# CONFIG_NETFILTER is not set
# CONFIG_FILTER is not set
# CONFIG_NET_NEIGH_DEBUG is not set
# CONFIG_NET_RESTRICTED_REUSE is not set
CONFIG_UNIX=y
CONFIG_INET=y
# CONFIG_IP_MULTICAST is not set
# CONFIG_IP_ADVANCED_ROUTER is not set
# CONFIG_IP_PNP is not set
# CONFIG_NET_ARP_LIMIT is not set
# CONFIG_NET_IPIP is not set
# CONFIG_NET_IPGRE is not set
# CONFIG_ARPD is not set
# CONFIG_INET_ECN is not set
# CONFIG_SYN_COOKIES is not set
# CONFIG_IPV6 is not set
# CONFIG_KHTTPD is not set

#
#    SCTP Configuration (EXPERIMENTAL)
#
# CONFIG_IP_SCTP is not set
# CONFIG_ATM is not set
# CONFIG_VLAN_8021Q is not set

#
#  
#
# CONFIG_IPX is not set
# CONFIG_ATALK is not set
# CONFIG_DECNET is not set
# CONFIG_BRIDGE is not set
# CONFIG_X25 is not set
# CONFIG_LAPB is not set
# CONFIG_LLC is not set
# CONFIG_NET_DIVERT is not set
# CONFIG_ECONET is not set
# CONFIG_WAN_ROUTER is not set
# CONFIG_NET_FASTROUTE is not set
# CONFIG_NET_HW_FLOWCONTROL is not set

#
# QoS and/or fair queueing
#
# CONFIG_NET_SCHED is not set

#
# Network testing
#
# CONFIG_NET_PKTGEN is not set

#
# Network device support
#
# CONFIG_NETDEVICES is not set

#
# Amateur Radio support
#
# CONFIG_HAMRADIO is not set

#
# IrDA (infrared) support
#
# CONFIG_IRDA is not set

#
# ISDN subsystem
#
# CONFIG_ISDN is not set

#
# Character devices
#
# CONFIG_LEDMAN is not set
# CONFIG_SNAPDOG is not set
# CONFIG_DS1302 is not set
# CONFIG_M41T11M6 is not set
# CONFIG_VT is not set
# CONFIG_SERIAL is not set
# CONFIG_SERIAL_EXTENDED is not set
# CONFIG_SERIAL_NONSTANDARD is not set

#
# Serial drivers
#
# CONFIG_SERIAL_8250 is not set
# CONFIG_SERIAL_8250_CONSOLE is not set
# CONFIG_SERIAL_8250_EXTENDED is not set
# CONFIG_SERIAL_8250_MANY_PORTS is not set
# CONFIG_SERIAL_8250_SHARE_IRQ is not set
# CONFIG_SERIAL_8250_DETECT_IRQ is not set
# CONFIG_SERIAL_8250_MULTIPORT is not set
# CONFIG_SERIAL_8250_HUB6 is not set
# CONFIG_UNIX98_PTYS is not set

#
# I2C support
#
# CONFIG_I2C is not set

#
# Mice
#
# CONFIG_BUSMOUSE is not set
# CONFIG_MOUSE is not set
# CONFIG_EDB7312_TS is not set

#
# Joysticks
#
# CONFIG_INPUT_GAMEPORT is not set
# CONFIG_INPUT_NS558 is not set
# CONFIG_INPUT_LIGHTNING is not set
# CONFIG_INPUT_PCIGAME is not set
# CONFIG_INPUT_CS461X is not set
# CONFIG_INPUT_EMU10K1 is not set
# CONFIG_INPUT_SERIO is not set
# CONFIG_INPUT_SERPORT is not set

#
# Joysticks
#
# CONFIG_INPUT_ANALOG is not set
# CONFIG_INPUT_A3D is not set
# CONFIG_INPUT_ADI is not set
# CONFIG_INPUT_COBRA is not set
# CONFIG_INPUT_GF2K is not set
# CONFIG_INPUT_GRIP is not set
# CONFIG_INPUT_INTERACT is not set
# CONFIG_INPUT_TMDC is not set
# CONFIG_INPUT_SIDEWINDER is not set
# CONFIG_INPUT_IFORCE_USB is not set
# CONFIG_INPUT_IFORCE_232 is not set
# CONFIG_INPUT_WARRIOR is not set
# CONFIG_INPUT_MAGELLAN is not set
# CONFIG_INPUT_SPACEORB is not set
# CONFIG_INPUT_SPACEBALL is not set
# CONFIG_INPUT_STINGER is not set
# CONFIG_INPUT_DB9 is not set
# CONFIG_INPUT_GAMECON is not set
# CONFIG_INPUT_TURBOGRAFX is not set
# CONFIG_QIC02_TAPE is not set
# CONFIG_IPMI_HANDLER is not set
# CONFIG_IPMI_PANIC_EVENT is not set
# CONFIG_IPMI_DEVICE_INTERFACE is not set
# CONFIG_IPMI_KCS is not set
# CONFIG_IPMI_WATCHDOG is not set

#
# Controller Area Network Cards/Chips
#
# CONFIG_CAN4LINUX is not set

#
# Watchdog Cards
#
# CONFIG_WATCHDOG is not set
# CONFIG_SCx200 is not set
# CONFIG_SCx200_GPIO is not set
# CONFIG_AMD_PM768 is not set
# CONFIG_NVRAM is not set
# CONFIG_RTC is not set
# CONFIG_DTLK is not set
# CONFIG_R3964 is not set
# CONFIG_APPLICOM is not set

#
# Ftape, the floppy tape device driver
#
# CONFIG_FTAPE is not set
# CONFIG_AGP is not set

#
# Direct Rendering Manager (XFree86 DRI support)
#
# CONFIG_DRM is not set

#
# Misc devices
#
# CONFIG_MICROBLAZE_FSLFIFO is not set

#
# File systems
#
# CONFIG_QUOTA is not set
# CONFIG_QFMT_V2 is not set
# CONFIG_AUTOFS_FS is not set
# CONFIG_AUTOFS4_FS is not set
# CONFIG_REISERFS_FS is not set
# CONFIG_REISERFS_CHECK is not set
# CONFIG_REISERFS_PROC_INFO is not set
# CONFIG_ADFS_FS is not set
# CONFIG_ADFS_FS_RW is not set
# CONFIG_AFFS_FS is not set
# CONFIG_HFS_FS is not set
# CONFIG_HFSPLUS_FS is not set
# CONFIG_BEFS_FS is not set
# CONFIG_BEFS_DEBUG is not set
# CONFIG_BFS_FS is not set
# CONFIG_EXT3_FS is not set
# CONFIG_JBD is not set
# CONFIG_JBD_DEBUG is not set
# CONFIG_FAT_FS is not set
# CONFIG_MSDOS_FS is not set
# CONFIG_UMSDOS_FS is not set
# CONFIG_VFAT_FS is not set
# CONFIG_EFS_FS is not set
# CONFIG_JFFS_FS is not set
# CONFIG_JFFS2_FS is not set
# CONFIG_CRAMFS is not set
# CONFIG_TMPFS is not set
CONFIG_RAMFS=y
# CONFIG_ISO9660_FS is not set
# CONFIG_JOLIET is not set
# CONFIG_ZISOFS is not set
# CONFIG_JFS_FS is not set
# CONFIG_JFS_DEBUG is not set
# CONFIG_JFS_STATISTICS is not set
# CONFIG_MINIX_FS is not set
# CONFIG_VXFS_FS is not set
# CONFIG_NTFS_FS is not set
# CONFIG_NTFS_RW is not set
# CONFIG_HPFS_FS is not set
CONFIG_PROC_FS=y
# CONFIG_DEVFS_FS is not set
# CONFIG_DEVFS_MOUNT is not set
# CONFIG_DEVFS_DEBUG is not set
# CONFIG_DEVPTS_FS is not set
# CONFIG_QNX4FS_FS is not set
# CONFIG_QNX4FS_RW is not set
CONFIG_ROMFS_FS=y
CONFIG_EXT2_FS=y
# CONFIG_SYSV_FS is not set
# CONFIG_UDF_FS is not set
# CONFIG_UDF_RW is not set
# CONFIG_UFS_FS is not set
# CONFIG_UFS_FS_WRITE is not set
# CONFIG_XFS_FS is not set
# CONFIG_XFS_QUOTA is not set
# CONFIG_XFS_RT is not set
# CONFIG_XFS_TRACE is not set
# CONFIG_XFS_DEBUG is not set

#
# Network File Systems
#
# CONFIG_CODA_FS is not set
# CONFIG_INTERMEZZO_FS is not set
CONFIG_NFS_FS=y
CONFIG_NFS_V3=y
# CONFIG_NFS_DIRECTIO is not set
# CONFIG_ROOT_NFS is not set
# CONFIG_NFSD is not set
# CONFIG_NFSD_V3 is not set
# CONFIG_NFSD_TCP is not set
CONFIG_SUNRPC=y
CONFIG_LOCKD=y
CONFIG_LOCKD_V4=y
# CONFIG_SMB_FS is not set
# CONFIG_NCP_FS is not set
# CONFIG_NCPFS_PACKET_SIGNING is not set
# CONFIG_NCPFS_IOCTL_LOCKING is not set
# CONFIG_NCPFS_STRONG is not set
# CONFIG_NCPFS_NFS_NS is not set
# CONFIG_NCPFS_OS2_NS is not set
# CONFIG_NCPFS_SMALLDOS is not set
# CONFIG_NCPFS_NLS is not set
# CONFIG_NCPFS_EXTRAS is not set
# CONFIG_ZISOFS_FS is not set
# CONFIG_COREDUMP_PRINTK is not set

#
# Partition Types
#
# CONFIG_PARTITION_ADVANCED is not set
# CONFIG_SMB_NLS is not set
# CONFIG_NLS is not set

#
# Sound
#
# CONFIG_SOUND is not set

#
# USB support
#
# CONFIG_USB is not set

#
# Support for USB gadgets
#
# CONFIG_USB_GADGET is not set

#
# Kernel hacking
#
CONFIG_FULLDEBUG=y
# CONFIG_MAGIC_SYSRQ is not set
# CONFIG_PROFILE is not set
# CONFIG_NO_KERNEL_MSG is not set

#
# Cryptographic options
#
# CONFIG_CRYPTO is not set

#
# Library routines
#
# CONFIG_CRC32 is not set
CONFIG_ZLIB_INFLATE=y
CONFIG_ZLIB_DEFLATE=y
