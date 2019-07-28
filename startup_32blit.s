.thumb

.global vectors

.section .text
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
  .word DefaultInterrupt   /* 4 - Mem manage */
  .word DefaultInterrupt   /* 5 - Bus fault */
  .word DefaultInterrupt   /* 6 - Usage fault */
  .word 0                  /* 7 - (none) */
  .word 0                  /* 8 - (none) */
  .word 0                  /* 9 - (none) */
  .word 0                  /* 10 - (none) */
  .word DefaultInterrupt   /* 11 - SVC */
  .word DefaultInterrupt   /* 12 - Debug monitor */
  .word 0                  /* 13 - (none) */
  .word DefaultInterrupt   /* 14 - Pend SV */
  .word DefaultInterrupt   /* 15 - Sys Tick */
  .word DefaultInterrupt   /* 16 - WWDG1 */
  .word DefaultInterrupt   /* 17 - PVD_PVM */
  .word DefaultInterrupt   /* 18 - RTC_TAMP_STAMP_CSS_LSE */
  .word DefaultInterrupt   /* 19 - TODO: Fill in */
  .word DefaultInterrupt   /* 20 - TODO: Fill in */
  .word DefaultInterrupt   /* 21 - TODO: Fill in */
  .word DefaultInterrupt   /* 22 - TODO: Fill in */
  .word DefaultInterrupt   /* 23 - TODO: Fill in */
  .word DefaultInterrupt   /* 24 - TODO: Fill in */
  .word DefaultInterrupt   /* 25 - TODO: Fill in */
  .word DefaultInterrupt   /* 26 - TODO: Fill in */
  .word DefaultInterrupt   /* 27 - TODO: Fill in */
  .word DefaultInterrupt   /* 28 - TODO: Fill in */
  .word DefaultInterrupt   /* 29 - TODO: Fill in */
  .word DefaultInterrupt   /* 30 - TODO: Fill in */
  .word DefaultInterrupt   /* 31 - TODO: Fill in */
  .word DefaultInterrupt   /* 32 - TODO: Fill in */
  .word DefaultInterrupt   /* 33 - TODO: Fill in */
  .word DefaultInterrupt   /* 34 - TODO: Fill in */
  .word DefaultInterrupt   /* 35 - TODO: Fill in */
  .word DefaultInterrupt   /* 36 - TODO: Fill in */
  .word DefaultInterrupt   /* 37 - TODO: Fill in */
  .word DefaultInterrupt   /* 38 - TODO: Fill in */
  .word DefaultInterrupt   /* 39 - TODO: Fill in */
  .word DefaultInterrupt   /* 40 - TODO: Fill in */
  .word DefaultInterrupt   /* 41 - TODO: Fill in */
  .word DefaultInterrupt   /* 42 - TODO: Fill in */
  .word DefaultInterrupt   /* 43 - TODO: Fill in */
  .word DefaultInterrupt   /* 44 - TODO: Fill in */
  .word DefaultInterrupt   /* 45 - TODO: Fill in */
  .word DefaultInterrupt   /* 46 - TODO: Fill in */
  .word DefaultInterrupt   /* 47 - TODO: Fill in */
  .word DefaultInterrupt   /* 48 - TODO: Fill in */
  .word DefaultInterrupt   /* 49 - TODO: Fill in */
  .word DefaultInterrupt   /* 50 - TODO: Fill in */
  .word DefaultInterrupt   /* 51 - TODO: Fill in */
  .word DefaultInterrupt   /* 52 - TODO: Fill in */
  .word DefaultInterrupt   /* 53 - TODO: Fill in */
  .word DefaultInterrupt   /* 54 - TODO: Fill in */
  .word DefaultInterrupt   /* 55 - TODO: Fill in */
  .word DefaultInterrupt   /* 56 - TODO: Fill in */
  .word DefaultInterrupt   /* 57 - TODO: Fill in */
  .word DefaultInterrupt   /* 58 - TODO: Fill in */
  .word DefaultInterrupt   /* 59 - TODO: Fill in */
  .word DefaultInterrupt   /* 60 - TODO: Fill in */
  .word DefaultInterrupt   /* 61 - TODO: Fill in */
  .word DefaultInterrupt   /* 62 - TODO: Fill in */
  .word DefaultInterrupt   /* 63 - TODO: Fill in */
  .word DefaultInterrupt   /* 64 - TODO: Fill in */
  .word DefaultInterrupt   /* 65 - TODO: Fill in */
  .word DefaultInterrupt   /* 66 - TODO: Fill in */
  .word DefaultInterrupt   /* 67 - TODO: Fill in */
  .word DefaultInterrupt   /* 68 - TODO: Fill in */
  .word DefaultInterrupt   /* 69 - TODO: Fill in */
  .word DefaultInterrupt   /* 70 - TODO: Fill in */
  .word DefaultInterrupt   /* 71 - TODO: Fill in */
  .word DefaultInterrupt   /* 72 - TODO: Fill in */
  .word DefaultInterrupt   /* 73 - TODO: Fill in */
  .word DefaultInterrupt   /* 74 - TODO: Fill in */
  .word DefaultInterrupt   /* 75 - TODO: Fill in */
  .word DefaultInterrupt   /* 76 - TODO: Fill in */
  .word DefaultInterrupt   /* 77 - TODO: Fill in */
  .word DefaultInterrupt   /* 78 - TODO: Fill in */
  .word DefaultInterrupt   /* 79 - TODO: Fill in */
  .word DefaultInterrupt   /* 80 - TODO: Fill in */
  .word DefaultInterrupt   /* 81 - TODO: Fill in */
  .word DefaultInterrupt   /* 82 - TODO: Fill in */
  .word DefaultInterrupt   /* 83 - TODO: Fill in */
  .word DefaultInterrupt   /* 84 - TODO: Fill in */
  .word DefaultInterrupt   /* 85 - TODO: Fill in */
  .word DefaultInterrupt   /* 86 - TODO: Fill in */
  .word DefaultInterrupt   /* 87 - TODO: Fill in */
  .word DefaultInterrupt   /* 88 - TODO: Fill in */
  .word DefaultInterrupt   /* 89 - TODO: Fill in */
  .word DefaultInterrupt   /* 90 - TODO: Fill in */
  .word DefaultInterrupt   /* 91 - TODO: Fill in */
  .word DefaultInterrupt   /* 92 - TODO: Fill in */
  .word DefaultInterrupt   /* 93 - TODO: Fill in */
  .word DefaultInterrupt   /* 94 - TODO: Fill in */
  .word DefaultInterrupt   /* 95 - TODO: Fill in */
  .word DefaultInterrupt   /* 96 - TODO: Fill in */
  .word DefaultInterrupt   /* 97 - TODO: Fill in */
  .word DefaultInterrupt   /* 98 - TODO: Fill in */
  .word DefaultInterrupt   /* 99 - TODO: Fill in */
  .word DefaultInterrupt   /* 100 - TODO: Fill in */
  .word DefaultInterrupt   /* 101 - TODO: Fill in */
  .word DefaultInterrupt   /* 102 - TODO: Fill in */
  .word DefaultInterrupt   /* 103 - TODO: Fill in */
  .word DefaultInterrupt   /* 104 - TODO: Fill in */
  .word DefaultInterrupt   /* 105 - TODO: Fill in */
  .word DefaultInterrupt   /* 106 - TODO: Fill in */
  .word DefaultInterrupt   /* 107 - TODO: Fill in */
  .word DefaultInterrupt   /* 108 - TODO: Fill in */
  .word DefaultInterrupt   /* 109 - TODO: Fill in */
  .word DefaultInterrupt   /* 110 - TODO: Fill in */
  .word DefaultInterrupt   /* 111 - TODO: Fill in */
  .word DefaultInterrupt   /* 112 - TODO: Fill in */
  .word DefaultInterrupt   /* 113 - TODO: Fill in */
  .word DefaultInterrupt   /* 114 - TODO: Fill in */
  .word DefaultInterrupt   /* 115 - TODO: Fill in */
  .word DefaultInterrupt   /* 116 - TODO: Fill in */
  .word DefaultInterrupt   /* 117 - TODO: Fill in */
  .word DefaultInterrupt   /* 118 - TODO: Fill in */
  .word DefaultInterrupt   /* 119 - TODO: Fill in */
  .word DefaultInterrupt   /* 120 - TODO: Fill in */
  .word DefaultInterrupt   /* 121 - TODO: Fill in */
  .word DefaultInterrupt   /* 122 - TODO: Fill in */
  .word DefaultInterrupt   /* 123 - TODO: Fill in */
  .word DefaultInterrupt   /* 124 - TODO: Fill in */
  .word DefaultInterrupt   /* 125 - TODO: Fill in */
  .word DefaultInterrupt   /* 126 - TODO: Fill in */
  .word DefaultInterrupt   /* 127 - TODO: Fill in */
  .word DefaultInterrupt   /* 128 - TODO: Fill in */
  .word DefaultInterrupt   /* 129 - TODO: Fill in */
  .word DefaultInterrupt   /* 130 - TODO: Fill in */
  .word DefaultInterrupt   /* 131 - TODO: Fill in */
  .word DefaultInterrupt   /* 132 - TODO: Fill in */
  .word DefaultInterrupt   /* 133 - TODO: Fill in */
  .word DefaultInterrupt   /* 134 - TODO: Fill in */
  .word DefaultInterrupt   /* 135 - TODO: Fill in */
  .word DefaultInterrupt   /* 136 - TODO: Fill in */
  .word DefaultInterrupt   /* 137 - TODO: Fill in */
  .word DefaultInterrupt   /* 138 - TODO: Fill in */
  .word DefaultInterrupt   /* 139 - TODO: Fill in */
  .word DefaultInterrupt   /* 140 - TODO: Fill in */
  .word DefaultInterrupt   /* 141 - TODO: Fill in */
  .word DefaultInterrupt   /* 142 - TODO: Fill in */
  .word DefaultInterrupt   /* 143 - TODO: Fill in */
  .word DefaultInterrupt   /* 144 - TODO: Fill in */
  .word DefaultInterrupt   /* 145 - TODO: Fill in */
  .word DefaultInterrupt   /* 146 - TODO: Fill in */
  .word DefaultInterrupt   /* 147 - TODO: Fill in */
  .word DefaultInterrupt   /* 148 - TODO: Fill in */
  .word DefaultInterrupt   /* 149 - TODO: Fill in */
  .word DefaultInterrupt   /* 150 - TODO: Fill in */
  .word DefaultInterrupt   /* 151 - TODO: Fill in */
  .word DefaultInterrupt   /* 152 - TODO: Fill in */
  .word DefaultInterrupt   /* 153 - TODO: Fill in */
  .word DefaultInterrupt   /* 154 - TODO: Fill in */
  .word DefaultInterrupt   /* 155 - TODO: Fill in */
  .word DefaultInterrupt   /* 156 - TODO: Fill in */
  .word DefaultInterrupt   /* 157 - TODO: Fill in */
  .word DefaultInterrupt   /* 158 - TODO: Fill in */
  .word DefaultInterrupt   /* 159 - TODO: Fill in */
  .word DefaultInterrupt   /* 160 - TODO: Fill in */
  .word DefaultInterrupt   /* 161 - TODO: Fill in */
  .word DefaultInterrupt   /* 162 - TODO: Fill in */
  .word DefaultInterrupt   /* 163 - TODO: Fill in */
  .word DefaultInterrupt   /* 164 - TODO: Fill in */
  .word DefaultInterrupt   /* 165 - TODO: Fill in */

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
