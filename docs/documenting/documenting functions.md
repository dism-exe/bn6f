# Function Signatures

In the assembly, use the tool under `tools/doc_scripts/replacesig.sh` to change signatures of functions.

Valid data types include:
- `()` (preferred over void),
- i8, i16, i32, u8, u16, u32,
- int (prefer to use iN or uN),
- Pointers with *, arrays with [],
- For unknowns, use ?. So i8? i32?, etc. If nothing is known, you can use just ?. 
- Names of structs as found in the filenames in `include/structs/` and `include/rom_structs/`,
- Name of enums as found in the filenames in `constants/enums/`,

A function signature string looks like `(PARAM) -> RET`, and the parameters are specified as
`param_name: type [$rN]`

Prefer to use `///` with comment lines. 

Note that some function signatures may not follow this format if they had been written before.

# Function Metadata

Functions may have metadata comments. Comments with only  `key: value` will be registered as such.

Some metadata include:
- tags: "#tag1, #tag2, ..."

# Function naming conventions

Functions with high degree of confidence are named in PascalCase. 

Functions with lower degree of confidence are writen in camelCase and have `_{addr8}` without 0.