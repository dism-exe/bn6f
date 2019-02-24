#ifndef STRUCTS_s_rendering_0200AC40_H
#define STRUCTS_s_rendering_0200AC40_H

#include "../inttypes.h"

typedef struct {
	/*
	States (?):
		0x1740 - Default (Overworld)

		0x0001 - Disable BG2
		0x0002 - Disable BG1 and BG0
		0x0003 - Whole Screen goes black, little more than disabling BG0, BG1, and BG2
		0x0004 - Background color still in, but otherwise like 0x0003
		0x0005 - Like 0x0003?
		0x0006 - Rendering of objects is disabled
		0x0007 - same as 0x0006?
		0x0008 - ?
		0x0009 - Disable BG2
		...

	State that is responsible with the sprite renderings somehow
	*/
	u16 renderingState;     // loc=0x0
	u16 unk_02;             // loc=0x2
	/*
	0x[ABXD]
	A: ODD: No glitchy graphics layer. EVEN: Glitchy graphics layer over all
	B: ??? Default value for OW is C, everything else is weird graphics glitching
	X: Don't care
	D: Involved with layering objects and background. Map graphics data is not present until 8.
	*/
	u16 unk_04;             // loc=0x4
	u16 unk_06;             // loc=0x6
	u16 unk_08;             // loc=0x8
	u16 unk_0A;             // loc=0xA
	u16 unk_0C;             // loc=0xC
	u16 unk_0E;             // loc=0xE
	u16 unk_10;             // loc=0x10
	u16 unk_12;             // loc=0x12
	u16 unk_14;             // loc=0x14
	u16 unk_16;             // loc=0x16
	u16 unk_18;             // loc=0x18
	u16 unk_1A;             // loc=0x1A
	// size=0x1C
}s_rendering_0200AC40;

#endif // STRUCTS_s_rendering_0200AC40_H
