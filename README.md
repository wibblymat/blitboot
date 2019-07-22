# Setting up

These instructions are for Windows 10.

I didn't start from scratch at the beginning of this project. In particular I already had:
- VS Code + C/C++ extensions
- Git bash

and possibly some other things that I am relying on without realising. So you may find that the instructions don't work for you until you install or configure some other tool.

I first downloaded the [STLink utility](https://www.st.com/en/development-tools/stsw-link004.html). It came bundled with the appropriate USB drivers for communicating with the ST Link programmer board. I had to give an email address and confirm it before I could complete the download, but it can be a throwaway. I tested that it could communicate with the board, and played with the step debug and memory inspection features.

Next I downloaded the [GNU embedded toolchain for ARM](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads), remembering to tick "Add path to environment variable" in the installer.

## Notes

### STLink
STLink has worked great for me, although it is pretty limited. You can view memory, but there is no disassembler, no breakpoints, no watchpoints. You can edit registers though, including PC.

When you flash a file with the "Program..." menu item, you select the file. If you then try to flash an updated version of the file it will NOT re-read the file, and just reflash the old one. This cost me a lot of time!

### General chip stuff
A lot of stuff is not obvious if you read only the section of the reference manual that relates to what you want to do. For example, the GPIO section does not mention that the GPIO clock needs enabling before you can use it - the registers are actually read only until you do!

# Errata

## RM054 (STM32G0 reference manual)

### 3.7.1
Empty flag description says that if bit 16 is 0 then the main flash is empty, and the system memory should be booted. This is the wrong way around - a zero means that flash is NOT empty, and will be booted.

### 29.1
Base address is incomplete. It's written as 0x1FFF but should be 0x1FFF???? - probbably 0x1FFF75E0, just because it seems to be the only part of system memory with the correct value in it.


## RM0433 (STM32H750 etc. reference manual)

### Boot config
It is not mentioned anywhere the full sequence of events at reset time. The boot memory address is determined as specified in 2.6, but what is not mentioned is what happens next.

Firstly, whatever the boot memory address is will be set to VTOR. the CPU register that specifies the location of the interrupt vector table. Then the Reset interrupt handler is looked up in that table and jumped to. So if you have the boot address set as flash base, then you need to write your IVT at 0x08000000.
