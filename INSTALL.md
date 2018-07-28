Install DevkitARM and make the bin folder containing arm-none-eabi binaries available in the path.

# Building
Use the following make rules to build the ROM:
- **make rom**: Builds the output ROM `bn6f.gba` by compiling rom.s, which includes all disassembled asm files, and data files.
- **make checksum**: displays the sha1 checksum of both `bin/bn6f.bin` and `bn6f.gba`. They must always be identical for `bn6f.gba` to be considered valid
- **make clean**: removes intermediate build files
- **make tail**: In case the tail label changes locations in `_rom.s`, Run this to recompute `tail.bin`. the tail label is the very last label in `_rom.s`, so it only has content if the rom has not been completely disassembled.
- **make fdiff**: Runs a python script to quickly report back all content differences detected in the ROM.

# Setting up and syncing IDA with the project
This is not necessary for contribution, but could prove very useful. In order to sync this project with IDA, The PseudoTerminal tool chain is needed: https://github.com/LanHikari22/GBA-IDA-Pseudo-Terminal. In the tools folder, there is an environment script, a game loader idc script, and an IDB fix script.
- Initialize the IDA database for bn6f as a binary.
- Choose ARM little endian as the processor type.
- Make sure to set the following kernal and processor settings: (Empty box = untick)
  - (Kernal 1)
  - [ ] Create function tails
  - [ ] Create stack variables
  - (Kernal 2)
  - (ARM Specific Settings)
  - [ ] Enable macros
  - (Edit ARM Architecture options)
  - Base architecture: ARMv7-A&R
  - Advanced SIMD (NEON): No
  - VFP instructions: None
- Set the ROM segment and input file loading address to 0x08000000.
- Once the database is initialized, run the game loader idc script.
- Once that is finished, run `pt.py` from the PseudoTerminal tool chain and then run the IDB fix script.
- Open the PseudoTerminal environment script and modify the project path.
- Run the script in IDA and then execute `pt.dis.push()` to disassemble and export all code files.
- Run `pt.dis.extract()` to extract all binary files from the database.
