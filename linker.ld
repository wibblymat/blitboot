/* Linker script for STM32G070 */
ENTRY(Boot)

_stack_end = 0x20009000;

MEMORY {
  FLASH_ISR (rx) : ORIGIN = 0x08000000, LENGTH = 192
  FLASH (rx)     : ORIGIN = 0x080000C0, LENGTH = 128K - 192
  RAM (xrw)      : ORIGIN = 0x20000000, LENGTH = 36K
}

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
