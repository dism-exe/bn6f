# Reverse Engineering
- Document functions, files, or data by adding comments or changing symbol names in the asm and header files. (Make sure to refactor the symbol names so that all files remain in sync).
- Document or identify structs, enums, etc. Check out `include/structs` and `constants/` as well as `structs/` for C structs. (used in `docs/decomps`)
- Every asm file is associated with a header file in the inc folder, which defines its public symbols, and all external symbols it uses.
- Make use of git grep or similar utilities as you parse through the repository
- Make use of docs/decomps for some pseudocode, but take it with a grain of salt.
- Label EWRAM and IWRAM symbols in `ewram.s` and `iwram.s`

# Validity Checking
All changes must produce an identical ROM. make will give an error otherwise.
