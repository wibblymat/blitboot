/* Linker script for STM32G070 */
ENTRY(Boot)

_stack_end = 0x20009000;

MEMORY {
  FLASH (rx)     : ORIGIN = 0x8000000, LENGTH = 128K
  RAM (xrw)      : ORIGIN = 0x20000000, LENGTH = 36K
}

SECTIONS {
  .vector_table : {
    . = ALIGN(4);
    KEEP(*(.vector_table))
    . = ALIGN(4);
  } >FLASH

  .text : {
    . = ALIGN(4);
    *(.text)
  } >FLASH

  .data : {
    . = ALIGN(4);
    _data_start = .;
    *(.data)
    . = ALIGN(4);
    _data_end = .;
  } >RAM AT> FLASH
}
