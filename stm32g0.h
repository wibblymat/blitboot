#include <stdint.h>

#define REG32(n) ((volatile uint32_t*)n)

#define RCC_BASE 0x40021000
#define GPIO_BASE 0x50000000
#define GPIOA_BASE GPIO_BASE + 0x0000
#define GPIOB_BASE GPIO_BASE + 0x0400
#define GPIOC_BASE GPIO_BASE + 0x0800
#define GPIOD_BASE GPIO_BASE + 0x0C00
#define GPIOF_BASE GPIO_BASE + 0x1400

#define RCC_CR REG32(RCC_BASE + 0x00)
#define RCC_ICSCR REG32(RCC_BASE + 0x04)
#define RCC_CFGR REG32(RCC_BASE + 0x08)
#define RCC_PLLCFGR REG32(RCC_BASE + 0x0C)
#define RCC_RCC_CIER REG32(RCC_BASE + 0x18)
#define RCC_RCC_CIFR REG32(RCC_BASE + 0x1C)
#define RCC_RCC_CICR REG32(RCC_BASE + 0x20)
#define RCC_IOPRSTR REG32(RCC_BASE + 0x24)
#define RCC_AHBRSTR REG32(RCC_BASE + 0x28)
#define RCC_APBRSTR1 REG32(RCC_BASE + 0x2C)
#define RCC_APBRSTR2 REG32(RCC_BASE + 0x30)
#define RCC_IOPENR REG32(RCC_BASE + 0x34)
#define RCC_AHBENR REG32(RCC_BASE + 0x38)
#define RCC_APBENR1 REG32(RCC_BASE + 0x3C)
#define RCC_APBENR2 REG32(RCC_BASE + 0x40)
#define RCC_IOPSMENR REG32(RCC_BASE + 0x44)
#define RCC_AHBSMENR REG32(RCC_BASE + 0x48)
#define RCC_APBSMENR1 REG32(RCC_BASE + 0x4C)
#define RCC_APBSMENR2 REG32(RCC_BASE + 0x50)
#define RCC_CCIPR REG32(RCC_BASE + 0x54)
#define RCC_BDCR REG32(RCC_BASE + 0x5C)
#define RCC_CSR REG32(RCC_BASE + 0x60)

#define GPIOA_MODER REG32(GPIOA_BASE + 0x00)
#define GPIOA_OTYPER REG32(GPIOA_BASE + 0x04)
#define GPIOA_OSPEEDR REG32(GPIOA_BASE + 0x08)
#define GPIOA_PUPDR REG32(GPIOA_BASE + 0x0C)
#define GPIOA_IDR REG32(GPIOA_BASE + 0x10)
#define GPIOA_ODR REG32(GPIOA_BASE + 0x14)
#define GPIOA_BSSR REG32(GPIOA_BASE + 0x18)
#define GPIOA_LCKR REG32(GPIOA_BASE + 0x1C)
#define GPIOA_AFRL REG32(GPIOA_BASE + 0x20)
#define GPIOA_AFRH REG32(GPIOA_BASE + 0x24)
#define GPIOA_BRR REG32(GPIOA_BASE + 0x28)

#define GPIOB_MODER REG32(GPIOB_BASE + 0x00)
#define GPIOB_OTYPER REG32(GPIOB_BASE + 0x04)
#define GPIOB_OSPEEDR REG32(GPIOB_BASE + 0x08)
#define GPIOB_PUPDR REG32(GPIOB_BASE + 0x0C)
#define GPIOB_IDR REG32(GPIOB_BASE + 0x10)
#define GPIOB_ODR REG32(GPIOB_BASE + 0x14)
#define GPIOB_BSSR REG32(GPIOB_BASE + 0x18)
#define GPIOB_LCKR REG32(GPIOB_BASE + 0x1C)
#define GPIOB_AFRL REG32(GPIOB_BASE + 0x20)
#define GPIOB_AFRH REG32(GPIOB_BASE + 0x24)
#define GPIOB_BRR REG32(GPIOB_BASE + 0x28)

#define GPIOC_MODER REG32(GPIOC_BASE + 0x00)
#define GPIOC_OTYPER REG32(GPIOC_BASE + 0x04)
#define GPIOC_OSPEEDR REG32(GPIOC_BASE + 0x08)
#define GPIOC_PUPDR REG32(GPIOC_BASE + 0x0C)
#define GPIOC_IDR REG32(GPIOC_BASE + 0x10)
#define GPIOC_ODR REG32(GPIOC_BASE + 0x14)
#define GPIOC_BSSR REG32(GPIOC_BASE + 0x18)
#define GPIOC_LCKR REG32(GPIOC_BASE + 0x1C)
#define GPIOC_AFRL REG32(GPIOC_BASE + 0x20)
#define GPIOC_AFRH REG32(GPIOC_BASE + 0x24)
#define GPIOC_BRR REG32(GPIOC_BASE + 0x28)

#define GPIOD_MODER REG32(GPIOD_BASE + 0x00)
#define GPIOD_OTYPER REG32(GPIOD_BASE + 0x04)
#define GPIOD_OSPEEDR REG32(GPIOD_BASE + 0x08)
#define GPIOD_PUPDR REG32(GPIOD_BASE + 0x0C)
#define GPIOD_IDR REG32(GPIOD_BASE + 0x10)
#define GPIOD_ODR REG32(GPIOD_BASE + 0x14)
#define GPIOD_BSSR REG32(GPIOD_BASE + 0x18)
#define GPIOD_LCKR REG32(GPIOD_BASE + 0x1C)
#define GPIOD_AFRL REG32(GPIOD_BASE + 0x20)
#define GPIOD_AFRH REG32(GPIOD_BASE + 0x24)
#define GPIOD_BRR REG32(GPIOD_BASE + 0x28)

#define GPIOF_MODER REG32(GPIOF_BASE + 0x00)
#define GPIOF_OTYPER REG32(GPIOF_BASE + 0x04)
#define GPIOF_OSPEEDR REG32(GPIOF_BASE + 0x08)
#define GPIOF_PUPDR REG32(GPIOF_BASE + 0x0C)
#define GPIOF_IDR REG32(GPIOF_BASE + 0x10)
#define GPIOF_ODR REG32(GPIOF_BASE + 0x14)
#define GPIOF_BSSR REG32(GPIOF_BASE + 0x18)
#define GPIOF_LCKR REG32(GPIOF_BASE + 0x1C)
#define GPIOF_AFRL REG32(GPIOF_BASE + 0x20)
#define GPIOF_AFRH REG32(GPIOF_BASE + 0x24)
#define GPIOF_BRR REG32(GPIOF_BASE + 0x28)
