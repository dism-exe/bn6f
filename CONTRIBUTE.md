# Reverse Engineering
- Document functions, files, or data by adding comments or changing symbol names in the asm and header files. (Make sure to refactor the symbol names so that all files remain in sync).
- Update the game file ranges found in the environment script in the tools folder. Extract asm modules out of the code chunk files, or uncover specific data files, and add them to the game files.
- Document, or reverse engineer more structs, constants, or enums.
- All of these changes could be done manually. IDA May help with syncing symbol names and comments automatically, but manual changes included in pull requests are more than welcome.
- Every asm file is associated with a header file in the inc folder, which defines its public symbols, and all external symbols it uses.
- Reverse engineer a memory map for WRAM. Similar to `_rom.s`, a `_wram.s` should be set to define the layout of WRAM.
- Any new files created must be included in `_rom.s` at the appropriate place relative to the other includes.

# Validity Checking
All changes must produce an identical ROM. run `make checksum` after `make rom` to ensure that the output ROM is identical to the source.
