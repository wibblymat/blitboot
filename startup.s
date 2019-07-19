.thumb

.section .text
.weak Boot
.type Boot, %function
Boot:
  ldr   r0, =_stack_end
  mov   sp, r0

  bl main

Terminated:
  b Terminated
