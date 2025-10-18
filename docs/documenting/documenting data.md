# Documenting Data Types

Document types for data using `tools/doc_scripts/replacesig_data.sh`. 

Note that the data label `{LABEL}:` or `{LABEL}::` must have nothing after the colons for the type comment to be put in.

Types are largely similar to what is allowed for functions. 

Note that ROM data pointers should be typed `*const T` while EWRAM/IWRAM pointers are typed `*mut T`. 

Notice the indexing patterns use, and see if you can infer the sizes. 

For example: `[*const [*const SomeROMStruct; 2]; NUM_OBJECTS]` would index by object id into a pair of 2 pointers, then into `SomeROMStruct`.
