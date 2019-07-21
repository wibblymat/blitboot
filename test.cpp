#include "stm32g0.h"

#define LED_PIN 5

int main(void) {
  *RCC_IOPENR = 0x1;

  uint32_t mode;
  mode = *GPIOA_MODER;
  mode &= ~(0x3 << (2 * LED_PIN));
  mode |= 0x1 << (2 * LED_PIN);
  *GPIOA_MODER = mode;

  uint32_t n;

  while(1) {
    *GPIOA_BSSR |= 0x1 << LED_PIN;
    n = 1000000;
    while (n > 0) n--;
    *GPIOA_BSSR |= 0x1 << (16 + LED_PIN);
    n = 1000000;
    while (n > 0) n--;
  }
}
