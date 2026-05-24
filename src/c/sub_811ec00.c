#include "types.h"

extern u32 ePETMenuData;
extern void ZeroFillByWord_c(u32 *dst, u32 byte_count);

// Real work, normal C.
static void sub_811EC00_impl(void)
{
    ZeroFillByWord_c(&ePETMenuData, 0x18);
}

// The ASM version leaks r4 = &ePETMenuData on return (it does
// `mov r4, r0` without ever saving r4, so r4 is clobbered with the
// pointer value and never restored). Callers don't *seem* to depend
// on this, but the harness's must-match policy on r4 catches the
// divergence, so we mirror the leak via a naked wrapper that loads
// r4 explicitly and skips the usual r4 save/restore.
__attribute__((naked)) void sub_811EC00_c(void)
{
    asm volatile(
        "push {lr}\n\t"
        "ldr r4, =ePETMenuData\n\t"
        "bl sub_811EC00_impl\n\t"
        "pop {pc}\n\t"
    );
}
