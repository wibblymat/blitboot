# Project goal

The ultimate aim of this project is to create an open-source firmware for the 32-Blit handheld games console.

The software will be accompanied by documentation of how it was created.

## Milestones

### Version 0
This version will not be useful in itself, but will be a stepping stone that demonstrates that we have achieved basic control of the device.

- Display text on the screen
- Show status of buttons/joypad

### Version 1
Minimum viable product. This firmware will load the first file on the SD card, load it into memory, and jump to it. There will be no way to choose the file, or any other interaction.

### Version 2
Implement a file explorer, so that the user can choose a file from the SD card to load.

- Use D-pad and buttons to navigate on screen file list
- Support for entering and exiting folders
- Store last choice in flash for easy resume of previously played game.

### After...
Feature backlog, for future prioritisation:
- Common format for executables, so that we can show name/icon/etc for game to be loaded, as well as being able to specify things like entry point
- Use the SVC interrupt to implement BIOS routines for SD card reading/writing
- Expand BIOS as more functions become apparent.
