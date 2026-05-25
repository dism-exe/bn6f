## Installation

Run the following commands (first, see [this](#macos) if you are on **macOS** or [this](#old-windows) if you are on **old Windows**):

	git clone --recurse-submodules https://github.com/dism-exe/bn6f
	cd bn6f

	# One-time. Builds agbcc (pinned via submodule at tools/agbcc-src),
	# installs the GBA toolchain into tools/binutils and tools/agbcc,
	# and builds tools/gbagfx. Idempotent.
	make setup-toolchain

If you already cloned without `--recurse-submodules`, run
`git submodule update --init --recursive` first — or just run
`make setup-toolchain`, which will fetch the submodule on demand.

Build bn6f assets initially (and after each `make clean`):

	make assets

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
- **make assets**: Builds asset files. Currently this builds Textscript assets that must be included before a successful ROM Build.
- **make compare**: validates that the checksum of `bn6f.gba` is correct.
- **make clean**: removes intermediate build files
- **make tail**: In case the tail label changes locations in `_rom.s`, Run this to recompute `tail.bin`. the tail label is the very last label in `_rom.s`, so it only has content if the rom has not been completely disassembled.
- **make fdiff**: Runs a python script to quickly report back all content differences detected in the ROM.
