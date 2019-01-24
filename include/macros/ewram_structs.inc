	.include "structs/Toolkit.inc"
	.include "structs/GameState.inc"
	.include "structs/ObjectHeader.inc"
	.include "structs/ObjectSprite.inc"
	.include "structs/BattleObject.inc"
	.include "structs/OverworldPlayerObject.inc"
	.include "structs/OverworldNPCObject.inc"
	.include "structs/OverworldMapObject.inc"
	.include "structs/UnkMapScriptState_2011e60.inc"

/*
rough notes for now
not incorpating into source yet until I have more time + I can come up with names

width * (y/8 + height/2) + x/8 + width/2
height * (y/8 + width/2) + x/8 + height/2

unk06 * (y/8 + unk07/2) + x/8 + unk06/2

0xfe * (b + 0x7f) + a + 0x7f
b = {-0xfe,0xfe}
a = {-0xfe,0xfe}
-0xfe -> -0x7f

void __fastcall sub_8030B1E(int a1, int a2)
{
  int v2; // r5
  int lowerBound; // r2
  signed int upperBound; // r3
  unsigned int index; // r4
  unsigned __int16 *elemPtr; // r6
  int canonicalPosition; // r7

  if ( *(v2 + 4) )
  {
    lowerBound = 0;
    upperBound = *(v2 + 4);
    do
    {
      index = (lowerBound + upperBound) / 2;
      elemPtr = (*tileData + sizeof(tileData) * index);
      canonicalPosition = *elemPtr;
      if (a2 == canonicalPosition)
        break;
      if (a2 <= canonicalPosition)
        upperBound = index;
      else
        lowerBound = index + 1;
    }
    while ( lowerBound < upperBound );
    if ( a2 == canonicalPosition )
    {
      do
        elemPtr -= 2;
      while ( elemPtr >= *tileData && a2 == *elemPtr );
    }
  }
}

at 2027a00
u16 canonicalPosition
u16 offsetToBlockData

at 02028336 (for judge room)
s8 zRangeLower
u8 unk_01
u8 zRangeOffsetToUpper
u8 tilePropertyIndex

loc_8031AB8 = try next collision?


return value of collision > 14, don't test event flag

ex2011a20 struct:
00, 4 - ptr to tile effect ordered table data
04, 2 - size in # of elements
06, 1 - width? always 0xfe, purpose in canonicalize formula is to set the lowest possible coords to zero
07, 1 - height? always 0xfe, same purpose as above
08, 2 - canonical position
0c, 4 - truncated x (x & ~7)
10, 4 - truncated y (x & ~7)
14, 4 - pointer to tile effect data if a tile effect was triggered
known structs:
dword_2011D10 -> sub_8030B6A (06-07 and 08 are swapped)
dword_2011A20 -> sub_8031612
dword_2013940 -> sub_80318B0
dword_2013920 -> sub_8031A7A

important function: sub_8030AA4
can find all the struct labels of collision/tile data there through the calls after the decompression

todo figure out what to call this (collision, tile effects?)

*/
	// ex = example of address that uses this struct
	.macro unk_ex_2011a20_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin \label
	\struct_entry \label\()_UnkPtr_00, 4 // loc=0x0
	\struct_entry \label\()_Unk_04, 2 // loc=0x4
	\struct_entry \label\()_Unk_06, 1 // loc=0x6
	\struct_entry \label\()_Unk_07, 1 // loc=0x7
	\struct_entry \label\()_Unk_08, 2 // loc=0x8
	.space 0x2
	\struct_entry \label\()_Unk_0c, 4 // loc=0xc
	\struct_entry \label\()_Unk_10, 4 // loc=0x10
	\struct_entry \label\()_Unk_14, 4 // loc=0x14
	.endm

	def_struct_offsets unk_ex_2011a20_struct, oUnk_Ex2011a20

	
// .macro overworld_npc_object_struct, struct_entry=label_struct_entry, struct_begin=struct_begin
