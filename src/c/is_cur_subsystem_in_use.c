#include "types.h"

extern u32 flags32_20093A4;

// Real implementation. Returns 1 if FLAGS_20093A4_CUR_SUBSYSTEM_IN_USE
// (= 1) is set in flags32_20093A4, else 0.
static u32 IsCurSubsystemInUse_impl(void)
{
    return (flags32_20093A4 & 1u) ? 1u : 0u;
}

// ASM callers do `bl IsCurSubsystemInUse; beq/bne <label>` — they
// rely on the Z flag reflecting r0 on return. The naked wrapper
// guarantees that contract: bl impl; tst r0, r0; pop {pc}.
__attribute__((naked)) void IsCurSubsystemInUse_c(void)
{
    asm volatile(
        "push {lr}\n\t"
        "bl IsCurSubsystemInUse_impl\n\t"
        "tst r0, r0\n\t"
        "pop {pc}\n\t"
    );
}
