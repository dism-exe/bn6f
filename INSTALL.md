## Installation

Run the following commands (first, see [this](#macos) if you are on **macOS** or [this](#old-windows) if you are on **old Windows**):

	git clone https://github.com/dism-exe/bn6f
	git clone https://github.com/luckytyphlosion/agbcc -b new_layout_with_libs

	cd agbcc
	make
	make install prefix=../bn6f

	cd ../bn6f

To build **bn6f.gba**:

	make -j$(nproc)

## macOS

Run `xcode-select --install` in Terminal, then proceed by executing the commands.


## Old Windows

*For Windows 8.1 and earlier*

Download and run the [Cygwin](https://www.cygwin.com/install.html) setup, leaving the default settings intact. At "Select Packages", set the view to "Full" and choose to install the following:

- `make`
- `git`
- `gcc-core`
- `gcc-g++`
- `libpng-devel`

Additionally, there are extra optional tools which require installing the following packages, although they are not necessary to build:

- `python-3`

In the Cygwin command prompt, enter the commands.

If the command for building bn6f.gba does not work, run `nproc` and use that value instead of `$(nproc)` for `make`.


## Windows 10

Install the [Windows Subsystem for Linux](https://docs.microsoft.com/windows/wsl/install-win10), and run the commands.

## Building
Use the following make rules to build the ROM:
- **make**: Builds the output ROM `bn6f.gba` by compiling rom.s, which includes all disassembled asm files, and data files.
- **make compare**: validates that the checksum of `bn6f.gba` is correct.
- **make clean**: removes intermediate build files
- **make tail**: In case the tail label changes locations in `_rom.s`, Run this to recompute `tail.bin`. the tail label is the very last label in `_rom.s`, so it only has content if the rom has not been completely disassembled.
- **make fdiff**: Runs a python script to quickly report back all content differences detected in the ROM.

## Setting up and syncing IDA with the project
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
