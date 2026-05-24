#include "types.h"

extern u8 eStruct2000aa0[];

// Writes three bytes (HorizontalCompress, VerticalCompress, Rotation)
// at offsets 0, 1, 2 of eStruct2000aa0. Called via two entries:
//   _with0x40_0x40_0x0_respectively_809e2c2: prelude sets r0=0x40,
//                                            r1=0x40, r2=0, falls through.
//   _809e2c8 (this entry): caller-provided r0, r1, r2.
void owPlayer_setS2000aa0_param0x0to0x2_809e2c8_c(u32 a0, u32 a1, u32 a2)
{
    eStruct2000aa0[0] = (u8)a0;
    eStruct2000aa0[1] = (u8)a1;
    eStruct2000aa0[2] = (u8)a2;
}
