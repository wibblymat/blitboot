arm-none-eabi-g++ startup.s test.cpp -o build/test.elf -specs=nosys.specs -nostartfiles -mthumb -mcpu=cortex-m0plus -Wl,-Tlinker.ld
arm-none-eabi-objcopy -O binary build/test.elf build/test.bin
