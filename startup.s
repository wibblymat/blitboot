.thumb

.global vectors

.section .vector_table
.type vectors, %object
vectors:
/*
  The vector table is used to look up handlers for interrupts. The very first
  entry is actually the initial value of the stack pointer. The next entry is
  the Reset interrupt handler, which is essentially the boot code location.

  TODO: implement the rest of these
*/

  .word _stack_end         /* 0 - Initial stack pointer */
  .word Boot               /* 1 - Reset */
  .word DefaultInterrupt   /* 2 - NMI */
  .word DefaultInterrupt   /* 3 - Hard fault */
  .word 0                  /* 4 - (none) */
  .word 0                  /* 5 - (none) */
  .word 0                  /* 6 - (none) */
  .word 0                  /* 7 - (none) */
  .word 0                  /* 8 - (none) */
  .word 0                  /* 9 - (none) */
  .word 0                  /* 10 - (none) */
  .word DefaultInterrupt   /* 11 - SVC */
  .word 0                  /* 12 - (none) */
  .word 0                  /* 13 - (none) */
  .word DefaultInterrupt   /* 14 - Pend SV */
  .word DefaultInterrupt   /* 15 - Sys Tick */
  .word DefaultInterrupt   /* 16 - WWDG */
  .word DefaultInterrupt   /* 17 - IRQ 0 - WWDG Window watchdog interrupt */
  .word 0                  /* 18 - IRQ 1 - Reserved */
  .word DefaultInterrupt   /* 19 - IRQ 2 - RTC / TAMP */
  .word DefaultInterrupt   /* 20 - IRQ 3 - FLASH */
  .word DefaultInterrupt   /* 21 - IRQ 4 - RCC */
  .word DefaultInterrupt   /* 22 - IRQ 5 - EXTI0_1 */
  .word DefaultInterrupt   /* 23 - IRQ 6 - EXTI2_3 */
  .word DefaultInterrupt   /* 24 - IRQ 7 - EXTI4_15 */
  .word 0                  /* 25 - IRQ 8 - Reserved */
  .word DefaultInterrupt   /* 26 - IRQ 9 - DMA_Channel1 */
  .word DefaultInterrupt   /* 27 - IRQ 10 - DMA_Channel2_3 */
  .word DefaultInterrupt   /* 28 - IRQ 11 - DMA_Channel4_5_6_7 / DMAMUX */
  .word DefaultInterrupt   /* 29 - IRQ 12 - ADC */
  .word DefaultInterrupt   /* 30 - IRQ 13 - TIM1_BRK_UP_TRG_COM */
  .word DefaultInterrupt   /* 31 - IRQ 14 - TIM1_CC */
  .word 0                  /* 32 - IRQ 15 - Reserved */
  .word DefaultInterrupt   /* 33 - IRQ 16 - TIM3 */
  .word DefaultInterrupt   /* 34 - IRQ 17 - TIM6 */
  .word DefaultInterrupt   /* 35 - IRQ 18 - TIM7 */
  .word DefaultInterrupt   /* 36 - IRQ 19 - TIM14 */
  .word DefaultInterrupt   /* 37 - IRQ 20 - TIM15 */
  .word DefaultInterrupt   /* 38 - IRQ 21 - TIM16 */
  .word DefaultInterrupt   /* 39 - IRQ 22 - TIM17 */
  .word DefaultInterrupt   /* 40 - IRQ 23 - I2C1 */
  .word DefaultInterrupt   /* 41 - IRQ 24 - I2C2 */
  .word DefaultInterrupt   /* 42 - IRQ 25 - SPI1 */
  .word DefaultInterrupt   /* 43 - IRQ 26 - SPI2 */
  .word DefaultInterrupt   /* 44 - IRQ 27 - USART1 */
  .word DefaultInterrupt   /* 45 - IRQ 28 - USART2 */
  .word DefaultInterrupt   /* 46 - IRQ 29 - USART3 / USART4 */
  .word 0                  /* 47 - IRQ 30 - Reserved */
  .word 0                  /* 48 - IRQ 31 - Reserved */

.weak DefaultInterrupt
.thumb_set DefaultInterrupt,DefaultInterruptHandler

.section .text
.weak Boot
.type Boot, %function
Boot:
  ldr   r0, =_stack_end
  mov   sp, r0

  bl main

.section .text
.weak DefaultInterruptHandler
.type DefaultInterruptHandler, %function
DefaultInterruptHandler:
  b DefaultInterruptHandler
