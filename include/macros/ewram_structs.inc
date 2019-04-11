	.include "structs/Toolkit.inc"
	.include "structs/Joypad.inc"
	.include "structs/AIData.inc"
	.include "structs/CollisionData.inc"
	.include "structs/BattleState.inc"
	.include "structs/GameState.inc"
	.include "structs/ObjectHeader.inc"
	.include "structs/ObjectSprite.inc"
	.include "structs/BattleObject.inc"
	.include "structs/OverworldPlayerObject.inc"
	.include "structs/OverworldNPCObject.inc"
	.include "structs/OverworldMapObject.inc"
	.include "structs/UnkMapScriptState_2011e60.inc"
	.include "structs/PlayerBattleVars.inc"

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
coordinates that trigger an event 
what do these coordinates do? they 
CoordEventEntriesPtr
CoordEventTotalEntries
// it's a list of coordinate
u16 canonicalPosition
u16 offsetToProperties

at 02028336 (for judge room)
CoordinateProperties 
s8 zRangeLower
u8 param
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
- collision
dword_2011D10 -> sub_8030B6A (06-07 and 08 are swapped)
- z coordinate modifiers
dword_2011A20 -> sub_8031612
- layer priority
dword_2013940 -> sub_80318B0
- coordinate triggers (warps, cutscenes, jack-in region, map object)
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

	.macro ow_collision_state_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin \label
	\struct_entry \label\()_CoordEventPositionDataPtr, 4 // loc=0x0
	\struct_entry \label\()_CoordEventPositionDataSize, 2 // loc=0x4
	\struct_entry \label\()_Unk_06, 2 // loc=0x6
	\struct_entry \label\()_Width, 1 // loc=0x8
	\struct_entry \label\()_Height, 1 // loc=0x9
	\struct_entry \label\()_Unk_0a, 1 // loc=0xa
	\struct_entry \label\()_UnkLoopCounter_0b, 1 // loc=0xb
	\struct_entry \label\()_Unk_0c, 4 // loc=0xc
	\struct_entry \label\()_Unk_10, 4 // loc=0x10
	\struct_entry \label\()_Unk_14, 4 // loc=0x14
	\struct_entry \label\()_Size // loc=0x18
	.endm

/*
S2034880 is likely battle state struct
known offsets from https://pastebin.com/grDF80Vp

0x40 - battle time
0x1b - multi delete count
0x3c - battle bits(?)

byte_203EAE0 - another battle struct
two entries of size 0x10, one for each alliance
0x20 bytes total
known offsets from https://pastebin.com/grDF80Vp

0x3 - times hit
0x4 - times moved
0x8 - num counter hits
0xb - was cross used

what is ePlayerBattleVars? field 0e is karma

sub_801BCF4 = animate battle sprite?
*/

/*
ePETMenuData = pet menu struct
0x0 - jumptable word index
0x1 - ???
0x2 - undetected
0x3 - saved cursor pos when moving cursor to exit
0x4 - cursor pos
0x5 - is PET menu or submenu open
0x6, 0x7 - does the following cycle when cursor is on exit:
	0x6 == 1: 0x7 cycles from 0x8 to 0x1
	0x7 == 2 or 3: 0x7 cycles from 0x6 to 0x1
0x8 - loaded with 0x1 when opened, temporarily 0x0 when returning from a submenu
0x9 - cycles 0x3 to 0x0 when moving from exit to a main menu item
0xa - counts from 0x0 to 0x4 once when opening the menu
0xb - cycles from 0x4..0x1 sometime after start is pressed to open the menu, stops when B is pressed to close the menu
0xc - 0x3 when menu is fully loaded
0xd - cycles from 0x2..0x1 with same condition as above
0xe - counts from 0x0..0x7 when menu is opened, maybe a counter for menu entries shown when each entry slides in from under the previous
0xf - undetected
s16 0x10 - x tile offset of where to draw these screen tiles (menu items, PET title + lines) https://i.imgur.com/Dn34dUF.png

*/

/*
look at:
- sub_8001B1C
*/

// .macro overworld_npc_object_struct, struct_entry=label_struct_entry, struct_begin=struct_begin
