# Function Signatures

In the assembly, use the tool under `tools/doc_scripts/replacesig.sh` to change signatures of functions.

Valid data types include:
- `()` (preferred over void),
- `i8`, `i16`, `i32`, `u8`, `u16`, `u32`,
- `bool`
  - We also have `zf` and `!zf` for functions that just set the zero flag as a return. Name of the function should reflect when the zero flag is set (`zf`) or cleared (`!zf`).
- If it's addressing-related, use `usize`. 
- Pointers can be marked with `*` as in `* i32`. 
    - You can document whether it's a mutable pointer as in `*mut i32` or constant pointer as in `*const i32`. Not including `const` or `mut` would be taken as unsure.
    - If the pointer is generic, use `* ()` 
    - If there is indication the pointer may be null, use `* nullable T`
- For unknowns, use ?. So i8? i32?, etc. If nothing is known, you can use just ?. 
- Names of structs as found in the filenames in `include/structs/` and `include/rom_structs/`,
- Names of enums as found in the filenames in `constants/enums/`,

A function signature string looks like `(PARAM) -> RET`, and each parameter is specified as:

```
param_name: type [$rN]
```

where rN is a register (which could also be $sp, $lr, $pc).

Prefer to use `///` with function comment lines. 

Note that some function signatures may not follow this format if they had been written prior to this document.

# Function Metadata

Functions may have metadata comments. Comment lines with only `key: value` will be registered as such.

Some metadata include:
- tags: "#tag1, #tag2, ..."
- effects: "symbol1, symbol2, ..."

Use `effects` to document what symbols are affected by the function. 

Some tags including `mod_{name}` document a module a function belongs to, if the filename or current module block doesn't make it obvious.

# Function naming conventions

Functions with high degree of confidence are named in PascalCase. 

Functions with lower degree of confidence are writen in camelCase.

Functions may have `_{addr8}` without leading 0.

You may also add a module name preceding the function name: `module_FunctionName`.
