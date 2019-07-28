/* Linker script for STM32H750 */
ENTRY(Boot)

MEMORY {
  ITCM (xrw)       : ORIGIN = 0x00000000, LENGTH = 64K
  FLASH_ISR (rx)   : ORIGIN = 0x08000000, LENGTH = 664
  FLASH (rx)       : ORIGIN = 0x080000C0, LENGTH = 2048K - 664
  DTCM (rw)        : ORIGIN = 0x20000000, LENGTH = 128K
  RAM (xrw)        : ORIGIN = 0x24000000, LENGTH = 512K
  SRAM1 (xrw)      : ORIGIN = 0x30000000, LENGTH = 128K
  SRAM2 (xrw)      : ORIGIN = 0x30020000, LENGTH = 128K
  SRAM3 (xrw)      : ORIGIN = 0x30040000, LENGTH = 32K
  SRAM4 (xrw)      : ORIGIN = 0x38000000, LENGTH = 64K
  BACKUPSRAM (xrw) : ORIGIN = 0x38800000, LENGTH = 4K
}

_stack_end = ORIGIN(RAM) + LENGTH(RAM);

SECTIONS {
  .vector_table : {
    . = ALIGN(4);
    KEEP(*(.vector_table))
    . = ALIGN(4);
  } >FLASH_ISR

  .text : {
    . = ALIGN(4);
    *(.text)
    . = ALIGN(4);
  } >FLASH

  .data : {
    . = ALIGN(4);
    _data_start = .;
    *(.data)
    . = ALIGN(4);
    _data_end = .;
  } >RAM AT> FLASH
}
