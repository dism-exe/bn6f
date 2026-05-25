#include "types.h"

/* Shared tail of object_setAttack{2,3,4,5}.  r5 = ambient
 * BattleObject*; r2 (passed as `kind`) is set per-entry by the four
 * entry stubs (which remain in asm — only the shared body is
 * trampolined here).
 *
 * Behaviour mirrors the original loc_8011698 tail + sub_801011A +
 * sub_80E1662 inlined:
 *
 *   BO[0x09] = action
 *   BO[0x0a..0x0b] = 0                  (CurPhaseAndPhaseInitialized)
 *   ai = BO[0x58] + 0xa0
 *   ai[0x00..0x01] = 0                  (AIAttackVars.Unk_00)
 *   ai[0x1c]      = kind                (AIAttackVars.Unk_1c)
 *   ai[0x1d]      = 0                   (Unk_1d; from sub_801011A)
 *   ai[0x1e..0x1f] = 0                  (Unk_1e; from sub_801011A)
 *   ai2 = AIData.Unk_40 = (BO[0x58])[0x40]
 *   *(u32 *)(ai2 + 0x64) = 0            (from sub_80E1662)
 *   ai2[0x10]     = 0                   (from sub_80E1662)
 *
 * Inlining the two callees keeps r5 in scope only on the C side; we
 * avoid having to bind r5 to bo across a C-to-asm BL.
 */
void object_setAttack_common_c(u32 action, u32 dummy_r1, u32 kind)
{
    register u8 *r5p asm("r5");
    u8 *bo;
    u8 *ai;
    u8 *ai2;

    (void)dummy_r1;

    asm volatile("" : "=r"(r5p));
    bo = r5p;

    bo[0x09] = (u8)action;
    *(u16 *)(bo + 0x0a) = 0;

    ai = *(u8 **)(bo + 0x58) + 0xa0u;
    *(u16 *)(ai + 0x00) = 0;
    ai[0x1c] = (u8)kind;
    ai[0x1d] = 0;
    *(u16 *)(ai + 0x1e) = 0;

    ai2 = *(u8 **)((*(u8 **)(bo + 0x58)) + 0x40u);
    *(u32 *)(ai2 + 0x64) = 0;
    ai2[0x10] = 0;
}
