#include "types.h"

extern u8 eStruct203F7D8[];
extern u32 IsCurSubsystemInUse_c(void);   // flag-wrapped; r0 is the return value

// Returns 1 if cur subsystem in use AND eStruct203F7D8[1] & 2 == 0.
u32 isSameSubsystem_800A732_impl(void)
{
    if (IsCurSubsystemInUse_c() == 0u) {
        return 0u;
    }
    if ((eStruct203F7D8[1] & 2u) != 0u) {
        return 0u;
    }
    return 1u;
}

DECOMP_FLAG_WRAPPER(isSameSubsystem_800A732_c, isSameSubsystem_800A732_impl)
