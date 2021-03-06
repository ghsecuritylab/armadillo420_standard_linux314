#ifndef _HERMIT_TARGET_SUZAKU_BOARD_H_
#define _HERMIT_TARGET_SUZAKU_BOARD_H_

#include <arch/ioregs.h>

#define FLASH_START		(XPAR_SYSTEM_MEMCON_MEM1_BASEADDR)
#define FLASH_SIZE		(XPAR_SYSTEM_MEMCON_MEM1_HIGHADDR - \
				 XPAR_SYSTEM_MEMCON_MEM1_BASEADDR + 1)

#define DRAM_START		(XPAR_SDRAM_CONTROLLER_BASEADDR)
#define DRAM_SIZE		(XPAR_SDRAM_CONTROLLER_HIGHADDR - \
				 XPAR_SDRAM_CONTROLLER_BASEADDR + 1)
#define DRAM_END		(DRAM_START + DRAM_SIZE)

#define DRAM_HERMIT_START	(DRAM_END - 0x00100000)
#define STACK_START		(DRAM_END)

#endif
