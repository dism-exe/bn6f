#ifndef TYPES_H
#define TYPES_H

typedef unsigned char  u8;
typedef unsigned short u16;
typedef unsigned int   u32;
typedef unsigned long long u64;
typedef signed char    s8;
typedef signed short   s16;
typedef signed int     s32;
typedef u8             bool8;

// Flag-preserving wrapper: emits a naked function `WRAPPER_NAME`
// that calls IMPL_NAME and then issues `tst r0, r0` so the Z flag
// reflects the return value on exit. Used for ASM functions whose
// callers do `bl X; beq/bne ...` and depend on flag semantics that
// the regular C calling convention doesn't preserve.
//
// Both WRAPPER_NAME and IMPL_NAME land in .c_code, so the `bl` is
// in range (no need for an ldr+bx detour).
#define DECOMP_FLAG_WRAPPER(WRAPPER_NAME, IMPL_NAME)               \
    __attribute__((naked)) void WRAPPER_NAME(void)                 \
    {                                                              \
        asm volatile(                                              \
            "push {lr}\n\t"                                        \
            "bl " #IMPL_NAME "\n\t"                                \
            "tst r0, r0\n\t"                                       \
            "pop {pc}\n\t"                                         \
        );                                                        \
    }

#endif
