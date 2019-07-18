arm-none-eabi-g++ test.cpp -o build/test.elf -specs=nosys.specs -nostartfiles -mthumb -mcpu=cortex-m0plus
arm-none-eabi-objcopy -O binary build/test.elf build/test.bin
