
	.macro navi_stats_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: struct NaviStats
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	struct_org 0x1
	u8 Attack // loc=0x1
	u8 Speed // loc=0x2
	u8 Charge // loc=0x3
	u8 APwrAtk // loc=0x4
	u8 BPwrAtk // loc=0x5
	u8 FstBarr // loc=0x6
	u8 BLeftAbility // loc=0x7
	struct_org 0x9
	u8 RegUP // loc=0x9
	u8 CustomLevel // loc=0xa
	u8 MegaLevel // loc=0xb
	u8 GigaLevel // loc=0xc
	struct_org 0xe
	u8 Mood // loc=0xe
	struct_org 0x19
	u8 CustHPBug // loc=0x19
	struct_org 0x1b
	u8 FloatShoes // loc=0x1b
	u8 AirShoes // loc=0x1c
	u8 UnderShirt // loc=0x1d
	struct_org 0x21
	u8 BeastOutCounter // loc=0x21
	struct_org 0x23
	u8 SuperArmor // loc=0x23
	u8 EmotionBug // loc=0x24
	u8 Humor // loc=0x25
	struct_org 0x29
	u8 NaviIndex // loc=0x29
	struct_org 0x2c
	u8 Transformation // loc=0x2c
	struct_org 0x2e
	u8 Folder1Reg // loc=0x2e
	u8 Folder2Reg // loc=0x2f
	struct_org 0x31
	u8 ProcessingBug // loc=0x31
	struct_org 0x35
	u8 SlipRun // loc=0x35
	struct_org 0x3e
	u16 MaxBaseHP // loc=0x3e
	u16 CurHP // loc=0x40
	u16 MaxHP // loc=0x42
	struct_org 0x4c
	u8 Unk_4c // loc=0x4c
	struct_org 0x4f
	u8 Unk_4f // loc=0x4f
	u16 ChipRecovery // loc=0x50
	struct_org 0x56
	u8 Folder1Tag1 // loc=0x56
	u8 Folder1Tag2 // loc=0x57
	u8 Folder2Tag1 // loc=0x58
	u8 Folder2Tag2 // loc=0x59
	struct_org 0x5f
	u8 Poem // loc=0x5f
	struct_org 0x63
	u8 TurnsUntilCustBugActivates // loc=0x63
	u0 Size // loc=0x64
	u0 End // loc=0x64
	restore_struct_label
	.endm

	def_struct_offsets navi_stats_struct, oNaviStats
