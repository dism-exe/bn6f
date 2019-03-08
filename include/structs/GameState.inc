
	.macro game_state_struct, label=oGameState, struct_entry=label_struct_entry, struct_begin=struct_begin
        \struct_begin
        struct_init_defs \struct_entry, \label
        u8 \label, SubsystemIndex // loc=0x0
        u8 \label, PETNaviIndex // loc=0x1
        u8 \label, Unk_02 // loc=0x2
        u8 \label, Unk_03 // loc=0x3
        union3_s \label, u16, MapId, u8, MapGroup, u8, MapNumber // loc=0x4
        u8 \label, GameProgress // loc=0x6
        u8 \label, Unk_07 // loc=0x7
        // related to L button messages
        u8 \label, Unk_08 // loc=0x8
        u8 \label, Unk_09 // loc=0x9
        u8 \label, Unk_0a // loc=0xa
        u8 \label, Unk_0b // loc=0xb

        u8 \label, LastMapGroup // loc=0xc
        u8 \label, LastMapNumber // loc=0xd
        u8 \label, Unk_0e // loc=0xe
        u8 \label, BGMusicIndicator // loc=0xf
        u8 \label, Unk_10 // loc=0x10
        u8 \label, Unk_11 // loc=0x11
        u8 \label, Unk_12 // loc=0x12
        u8 \label, Unk_13 // loc=0x13
        u8 \label, Unk_14 // loc=0x14
        u8 \label, Unk_15 // loc=0x15
        u8 \label, Unk_16 // loc=0x16
        u8 \label, Unk_17 // loc=0x17
        ptr \label, OverworldPlayerObjectPtr // loc=0x18
        ptr \label, CurBattleDataPtr // loc=0x1c
        u32 \label, Unk_20 // loc=0x20
        u32 \label, PlayerX // loc=0x24
        u32 \label, PlayerY // loc=0x28
        u32 \label, Unk_2c // loc=0x2c
        u32 \label, Unk_30 // loc=0x30
        u32 \label, Unk_34 // loc=0x34
        u32 \label, Unk_38 // loc=0x38
        u32 \label, Unk_3c // loc=0x3c
        u32 \label, Unk_40 // loc=0x40
        u32 \label, Unk_44 // loc=0x44
        // same struct as Unk_3_4 to Unk_44
        u8_arr \label, Unk_48, 0x14 // loc=0x48
        u32 \label, ProtectedZenny // loc=0x5c
        u32 \label, ProtectedBugfrags // loc=0x60
        u32 \label, Unk_64 // loc=0x64
        u32 \label, Unk_68 // loc=0x68
        u32 \label, Unk_6c // loc=0x6c
        u32 \label, Unk_70 // loc=0x70
        u8_arr \label, Unk_74, 0xc // loc=0x74
        u0 \label, Size // 0x80
	.endm

	def_struct_offsets game_state_struct, oGameState
