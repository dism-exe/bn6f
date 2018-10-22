.macro battle_object_struct label, struct_entry=label_struct_entry, struct_begin=struct_begin
\struct_begin \label
\struct_entry \label\()_Flags, 1 // loc=0x0
\struct_entry \label\()_Index, 1 // loc=0x1
\struct_entry \label\()_TypeAndSpriteOffset // loc=0x2
\struct_entry \label\()_Type
\struct_entry \label\()_SpriteOffset, 1
\struct_entry \label\()_ListIndex, 1 // loc=0x3
\struct_entry \label\()_Param1, 1 // loc=0x4
\struct_entry \label\()_Param2, 1 // loc=0x5
\struct_entry \label\()_Param3, 1 // loc=0x6
\struct_entry \label\()_Param4, 1 // loc=0x7
\struct_entry \label\()_CurState, 1 // loc=0x8
\struct_entry \label\()_CurAction, 1 // loc=0x9
\struct_entry \label\()_CurPhase, 1 // loc=0xa
\struct_entry \label\()_PhaseInitialized, 1 // loc=0xb
\struct_entry \label\()_Unk_0c, 1 // loc=0xc
\struct_entry \label\()_Unk_0d, 1 // loc=0xd
\struct_entry \label\()_Element, 1 // loc=0xe
\struct_entry \label\()_Unk_0f, 1 // loc=0xf
\struct_entry \label\()_CurAnim, 1 // loc=0x10
\struct_entry \label\()_CurAnimCopy, 1 // loc=0x11
\struct_entry \label\()_PanelX, 1 // loc=0x12
\struct_entry \label\()_PanelY, 1 // loc=0x13
\struct_entry \label\()_FuturePanelX, 1 // loc=0x14
\struct_entry \label\()_FuturePanelY, 1 // loc=0x15
\struct_entry \label\()_Alliance, 1 // loc=0x16
\struct_entry \label\()_DirectionFlip, 1 // loc=0x17
\struct_entry \label\()_PreventAnim, 1 // loc=0x18
\struct_entry \label\()_Unk_19, 1 // loc=0x19
\struct_entry \label\()_ChipsHeld, 1 // loc=0x1a
\struct_entry \label\()_Unk_1b, 1 // loc=0x1b
\struct_entry \label\()_Unk_1c, 1 // loc=0x1c
\struct_entry \label\()_Unk_1d, 1 // loc=0x1d
\struct_entry \label\()_Unk_1e, 1 // loc=0x1e
\struct_entry \label\()_Unk_1f, 1 // loc=0x1f
\struct_entry \label\()_Timer, 2 // loc=0x20
\struct_entry \label\()_Timer2, 2 // loc=0x22
\struct_entry \label\()_HP, 2 // loc=0x24
\struct_entry \label\()_MaxHP, 2 // loc=0x26
\struct_entry \label\()_NameID, 2 // loc=0x28
\struct_entry \label\()_Chip, 2 // loc=0x2a
// also includes flags
\struct_entry \label\()_Damage, 2 // loc=0x2c
// ???
\struct_entry \label\()_StaminaDamageCounterDisabler, 2  // loc=0x2e
\struct_entry \label\()_Unk_30, 2 // loc=0x30
\struct_entry \label\()_Unk_32, 2 // loc=0x32
\struct_entry \label\()_X, 4 // loc=0x34
\struct_entry \label\()_Y, 4 // loc=0x38
\struct_entry \label\()_Z, 4 // loc=0x3c
\struct_entry \label\()_XVelocity, 4 // loc=0x40
\struct_entry \label\()_YVelocity, 4 // loc=0x44
\struct_entry \label\()_ZVelocity, 4 // loc=0x48
\struct_entry \label\()_RelatedObject1Ptr, 4 // loc=0x4c
\struct_entry \label\()_RelatedObject2Ptr, 4 // loc=0x50
\struct_entry \label\()_CollisionDataPtr, 4 // loc=0x54
\struct_entry \label\()_AIPtr, 4 // loc=0x58
\struct_entry \label\()_Unk_5c, 4 // loc=0x5c
\struct_entry \label\()_ExtraVars, 44 // loc=0x60
\struct_entry \label\()_Unk_8c, 4 // loc=0x8c
\struct_entry \label\()_UnkSpriteData_90, 0x48 // loc=0x90
\struct_entry \label\()_Size
\struct_entry \label\()_End // loc=0xd8
.endm

def_struct_offsets battle_object_struct, oBattleObject
