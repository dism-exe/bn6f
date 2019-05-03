	.ifndef INC_ASM_ASM06
	.equ INC_ASM_ASM06, 0

/* Public Symbols */
	.global sub_80595B8
	.global sub_8059664
	.global sub_80596C8


/* External Symbols */
	.include "asm/asm00_0.inc"
// .global sub_8002354

	.include "asm/sprite.inc"
// .global sub_80028D4
// .global uncompSprite_8002906

	.include "asm/asm00_1.inc"
// .global SpawnObjectsFromList

	.include "asm/asm03_0.inc"
// .global camera_802FF4C
// .global sub_803037C
// .global sub_8030472
// .global sub_8030AA4

	.include "asm/chatbox.inc"
// .global chatbox_uncompBasedOnMap_803FD08 // () -> int

	.include "data/dat05.inc"
// .global off_8059294
// .global off_8059378
// .global byte_80593B8
// .global byte_80593F8
// .global byte_8059438
// .global byte_8059468
// .global byte_80594A8
// .global byte_80594E8
// .global byte_8059528
// .global byte_8059558
// .global byte_8059588

	.include "data/dat06.inc"
// .global byte_80596F4
// .global byte_805975C
// .global byte_8059A58
// .global byte_8059C00
// .global byte_8059D30
// .global off_8059DE8


/* Undeclared Symbols */
// .equ unk_2037800, 0x2037800

	.endif // INC_ASM_ASM06
