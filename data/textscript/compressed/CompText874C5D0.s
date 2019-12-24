	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText874C5D0::
	.word 0x152B00

	text_archive_start

	def_text_script CompText874C5D0_unk0
	ts_check_chapter [
		lower: 0x80,
		upper: 0x80,
		jumpIfInRange: CompText874C5D0_unk220_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x57,
		upper: 0x57,
		jumpIfInRange: CompText874C5D0_unk190_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x56,
		upper: 0x56,
		jumpIfInRange: CompText874C5D0_unk180_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x55,
		upper: 0x55,
		jumpIfInRange: CompText874C5D0_unk155_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x54,
		upper: 0x54,
		jumpIfInRange: CompText874C5D0_unk150_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x52,
		upper: 0x52,
		jumpIfInRange: CompText874C5D0_unk135_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x51,
		upper: 0x51,
		jumpIfInRange: CompText874C5D0_unk115_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x50,
		upper: 0x50,
		jumpIfInRange: CompText874C5D0_unk100_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x43,
		upper: 0x46,
		jumpIfInRange: CompText874C5D0_unk15_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x40,
		upper: 0x42,
		jumpIfInRange: CompText874C5D0_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk1

	def_text_script CompText874C5D0_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "The test's already\n"
	.string "begun!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta keep\n"
	.string "going forward!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk4

	def_text_script CompText874C5D0_unk5
	ts_check_flag [
		flag: 0xA0A,
		jumpIfTrue: CompText874C5D0_unk10_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA08,
		jumpIfTrue: CompText874C5D0_unk9_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA62,
		jumpIfTrue: CompText874C5D0_unk8_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA06,
		jumpIfTrue: CompText874C5D0_unk7_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA60,
		jumpIfTrue: CompText874C5D0_unk6_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to Sky\n"
	.string "Town,MegaMan! We can\n"
	.string "go by LevBus,right!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk6
	ts_check_sub_area [
		lower: 0xA,
		upper: 0xA,
		jumpIfInRange: CompText874C5D0_unk3_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x9,
		upper: 0x9,
		jumpIfInRange: CompText874C5D0_unk3_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's head for Sky\n"
	.string "Town MegaMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk7
	ts_check_sub_area [
		lower: 0xA,
		upper: 0xA,
		jumpIfInRange: CompText874C5D0_unk2_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x9,
		upper: 0x9,
		jumpIfInRange: CompText874C5D0_unk2_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Head back to Sky\n"
	.string "Town,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Head for Sky Area,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've gotta find\n"
	.string "Mick's Navi,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk10
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText874C5D0_unk11_id,
		jumpIfElecMan: CompText874C5D0_unk12_id,
		jumpIfSlashMan: CompText874C5D0_unk13_id,
		jumpIfEraseMan: TS_CONTINUE,
		jumpIfChargeMan: TS_CONTINUE,
		jumpIfSpoutMan: CompText874C5D0_unk14_id,
		jumpIfTomahawkMan: CompText874C5D0_unk35_id,
		jumpIfTenguMan: CompText874C5D0_unk36_id,
		jumpIfGroundMan: TS_CONTINUE,
		jumpIfDustMan: TS_CONTINUE,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874C5D0_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "HeatMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "ElecMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "SlashMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "SpoutMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk15
	ts_check_flag [
		flag: 0xA2E,
		jumpIfTrue: CompText874C5D0_unk27_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA2C,
		jumpIfTrue: CompText874C5D0_unk26_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA2A,
		jumpIfTrue: CompText874C5D0_unk25_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA28,
		jumpIfTrue: CompText874C5D0_unk23_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA26,
		jumpIfTrue: CompText874C5D0_unk22_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA24,
		jumpIfTrue: CompText874C5D0_unk21_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA1A,
		jumpIfTrue: CompText874C5D0_unk19_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA18,
		jumpIfTrue: CompText874C5D0_unk18_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA16,
		jumpIfTrue: CompText874C5D0_unk17_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA10,
		jumpIfTrue: CompText874C5D0_unk16_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "It's time to go\n"
	.string "home,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The weather's really\n"
	.string "acting up today...\n"
	.string "Better hurry home!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk17
	ts_check_sub_area [
		lower: 0xA,
		upper: 0xA,
		jumpIfInRange: CompText874C5D0_unk28_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "Sky Town,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk18
	ts_check_sub_area [
		lower: 0xA,
		upper: 0xA,
		jumpIfInRange: CompText874C5D0_unk28_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's head for Sky\n"
	.string "Town MegaMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk19
	ts_check_flag [
		flag: 0xA1C,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText874C5D0_unk20_id,
	]
	ts_check_flag [
		flag: 0xA1E,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText874C5D0_unk20_id,
	]
	ts_check_flag [
		flag: 0xA20,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText874C5D0_unk20_id,
	]
	ts_check_flag [
		flag: 0xA22,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText874C5D0_unk20_id,
	]
	ts_jump target=CompText874C5D0_unk20_id

	def_text_script CompText874C5D0_unk20
	ts_check_sub_area [
		lower: 0xA,
		upper: 0xA,
		jumpIfInRange: CompText874C5D0_unk28_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x9,
		upper: 0x9,
		jumpIfInRange: CompText874C5D0_unk28_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta get\n"
	.string "back to Sky Town!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk21
	ts_jump target=CompText874C5D0_unk20_id

	def_text_script CompText874C5D0_unk22
	ts_jump target=CompText874C5D0_unk20_id

	def_text_script CompText874C5D0_unk23
	ts_jump target=CompText874C5D0_unk20_id

	def_text_script CompText874C5D0_unk24
	ts_end

	def_text_script CompText874C5D0_unk25
	ts_jump target=CompText874C5D0_unk20_id

	def_text_script CompText874C5D0_unk26
	ts_jump target=CompText874C5D0_unk20_id

	def_text_script CompText874C5D0_unk27
	ts_jump target=CompText874C5D0_unk20_id

	def_text_script CompText874C5D0_unk28
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta keep\n"
	.string "going!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk29

	def_text_script CompText874C5D0_unk30

	def_text_script CompText874C5D0_unk31

	def_text_script CompText874C5D0_unk32

	def_text_script CompText874C5D0_unk33

	def_text_script CompText874C5D0_unk34

	def_text_script CompText874C5D0_unk35
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "TomahawkMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk36
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "TenguMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk37

	def_text_script CompText874C5D0_unk38

	def_text_script CompText874C5D0_unk39

	def_text_script CompText874C5D0_unk40

	def_text_script CompText874C5D0_unk41

	def_text_script CompText874C5D0_unk42

	def_text_script CompText874C5D0_unk43

	def_text_script CompText874C5D0_unk44

	def_text_script CompText874C5D0_unk45

	def_text_script CompText874C5D0_unk46

	def_text_script CompText874C5D0_unk47

	def_text_script CompText874C5D0_unk48

	def_text_script CompText874C5D0_unk49

	def_text_script CompText874C5D0_unk50

	def_text_script CompText874C5D0_unk51

	def_text_script CompText874C5D0_unk52

	def_text_script CompText874C5D0_unk53

	def_text_script CompText874C5D0_unk54

	def_text_script CompText874C5D0_unk55

	def_text_script CompText874C5D0_unk56

	def_text_script CompText874C5D0_unk57

	def_text_script CompText874C5D0_unk58

	def_text_script CompText874C5D0_unk59

	def_text_script CompText874C5D0_unk60

	def_text_script CompText874C5D0_unk61

	def_text_script CompText874C5D0_unk62

	def_text_script CompText874C5D0_unk63

	def_text_script CompText874C5D0_unk64

	def_text_script CompText874C5D0_unk65

	def_text_script CompText874C5D0_unk66

	def_text_script CompText874C5D0_unk67

	def_text_script CompText874C5D0_unk68

	def_text_script CompText874C5D0_unk69

	def_text_script CompText874C5D0_unk70

	def_text_script CompText874C5D0_unk71

	def_text_script CompText874C5D0_unk72

	def_text_script CompText874C5D0_unk73

	def_text_script CompText874C5D0_unk74

	def_text_script CompText874C5D0_unk75

	def_text_script CompText874C5D0_unk76

	def_text_script CompText874C5D0_unk77

	def_text_script CompText874C5D0_unk78

	def_text_script CompText874C5D0_unk79

	def_text_script CompText874C5D0_unk80

	def_text_script CompText874C5D0_unk81

	def_text_script CompText874C5D0_unk82

	def_text_script CompText874C5D0_unk83

	def_text_script CompText874C5D0_unk84

	def_text_script CompText874C5D0_unk85

	def_text_script CompText874C5D0_unk86

	def_text_script CompText874C5D0_unk87

	def_text_script CompText874C5D0_unk88

	def_text_script CompText874C5D0_unk89

	def_text_script CompText874C5D0_unk90

	def_text_script CompText874C5D0_unk91

	def_text_script CompText874C5D0_unk92

	def_text_script CompText874C5D0_unk93

	def_text_script CompText874C5D0_unk94

	def_text_script CompText874C5D0_unk95

	def_text_script CompText874C5D0_unk96

	def_text_script CompText874C5D0_unk97

	def_text_script CompText874C5D0_unk98

	def_text_script CompText874C5D0_unk99

	def_text_script CompText874C5D0_unk100
	ts_check_flag [
		flag: 0xC0A,
		jumpIfTrue: CompText874C5D0_unk107_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCC8,
		jumpIfTrue: CompText874C5D0_unk106_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD8,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText874C5D0_unk105_id,
	]
	ts_check_flag [
		flag: 0xCC6,
		jumpIfTrue: CompText874C5D0_unk104_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCC3,
		jumpIfTrue: CompText874C5D0_unk103_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCC2,
		jumpIfTrue: CompText874C5D0_unk102_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCE4,
		jumpIfTrue: CompText874C5D0_unk101_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "Undernet and find\n"
	.string "that MoonStone!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk101
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Sky gazing...\n"
	.string "Is it related to the\n"
	.string "MoonStone somehow?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,let's go check\n"
	.string "out Undernet2,and\n"
	.string "see what we find!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk102
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The person who can\n"
	.string "open the Undernet\n"
	.string "door was \"caught\"?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So where in the\n"
	.string "world is that person\n"
	.string "now!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk103
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Sounds like this\n"
	.string "person is an\n"
	.string "ex-criminal..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But where's this\n"
	.string "person now!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It sounds like\n"
	.string "they're part-timing\n"
	.string "at a store..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk104
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "Undernet1,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk105
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's look for the\n"
	.string "MoonStone in\n"
	.string "Undernet2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk106
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's take the\n"
	.string "MoonStone and get\n"
	.string "out of this place!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk107
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time for bed\n"
	.string "already..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk108

	def_text_script CompText874C5D0_unk109

	def_text_script CompText874C5D0_unk110

	def_text_script CompText874C5D0_unk111

	def_text_script CompText874C5D0_unk112

	def_text_script CompText874C5D0_unk113

	def_text_script CompText874C5D0_unk114

	def_text_script CompText874C5D0_unk115
	ts_check_flag [
		flag: 0xC1C,
		jumpIfTrue: CompText874C5D0_unk125_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1A,
		jumpIfTrue: CompText874C5D0_unk124_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC14,
		jumpIfTrue: CompText874C5D0_unk123_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD4,
		jumpIfTrue: CompText874C5D0_unk122_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD3,
		jumpIfTrue: CompText874C5D0_unk121_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD2,
		jumpIfTrue: CompText874C5D0_unk120_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD1,
		jumpIfTrue: CompText874C5D0_unk119_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD0,
		jumpIfTrue: CompText874C5D0_unk118_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC12,
		jumpIfTrue: CompText874C5D0_unk117_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC10,
		jumpIfTrue: CompText874C5D0_unk116_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's head for ACDC\n"
	.string "Town!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk116
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Let's go say hi to\n"
	.string "everyone in town!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk117
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's head for ACDC\n"
	.string "Area,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk118
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "A lost Mr.Prog,\n"
	.string "huh...? Let's go\n"
	.string "find him!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk119
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I wonder who's\n"
	.string "causing trouble with\n"
	.string "these cyberdoors?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk120
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go back to\n"
	.string "that lost Mr.Prog!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk121
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's bring Roll's\n"
	.string "package back to her!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk122
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the area\n"
	.string "in front of the\n"
	.string "ducks in ACDC Area!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk123
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hurry,MegaMan!\n"
	.string "Head for Undernet2\n"
	.string "right now!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We've gotta save\n"
	.string "Roll and the others!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk124
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... I guess I should\n"
	.string "go back to Central\n"
	.string "Town for now..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk125
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Guess I should\n"
	.string "go home..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk126

	def_text_script CompText874C5D0_unk127

	def_text_script CompText874C5D0_unk128

	def_text_script CompText874C5D0_unk129

	def_text_script CompText874C5D0_unk130

	def_text_script CompText874C5D0_unk131

	def_text_script CompText874C5D0_unk132

	def_text_script CompText874C5D0_unk133

	def_text_script CompText874C5D0_unk134

	def_text_script CompText874C5D0_unk135
	ts_check_flag [
		flag: 0xC26,
		jumpIfTrue: CompText874C5D0_unk141_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC24,
		jumpIfTrue: CompText874C5D0_unk140_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC22,
		jumpIfTrue: CompText874C5D0_unk139_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCCF,
		jumpIfTrue: CompText874C5D0_unk138_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCCE,
		jumpIfTrue: CompText874C5D0_unk137_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC30,
		jumpIfTrue: CompText874C5D0_unk136_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC20,
		jumpIfTrue: CompText874C5D0_unk142_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I've gotta hurry to\n"
	.string "Seaside Town!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk136
	ts_check_sub_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: CompText874C5D0_unk144_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've gotta head to\n"
	.string "CentralArea3!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk137
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I have to get the\n"
	.string "Mayor to get rid of\n"
	.string "the cyberbarrier..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I think the Mayor\n"
	.string "might be in the\n"
	.string "Principal's Office."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk138
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out! We've\n"
	.string "gotta find the Mayor\n"
	.string "no matter what!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk139
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out! We've\n"
	.string "gotta get to the\n"
	.string "Principal's Office!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk140
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Head for the large\n"
	.string "hole in CentralArea!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk141
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hang in there,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm coming to the\n"
	.string "Underground to get\n"
	.string "you right now!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk142
	ts_check_flag [
		flag: 0x1D28,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText874C5D0_unk143_id,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I guess I should\n"
	.string "read my mail..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk143
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I wonder what\n"
	.string "Mr.Mach wants...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,jack out,for\n"
	.string "now,and let's head\n"
	.string "to Sky Town..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk144

	def_text_script CompText874C5D0_unk145

	def_text_script CompText874C5D0_unk146

	def_text_script CompText874C5D0_unk147

	def_text_script CompText874C5D0_unk148

	def_text_script CompText874C5D0_unk149

	def_text_script CompText874C5D0_unk150
	ts_check_flag [
		flag: 0xC49,
		jumpIfTrue: CompText874C5D0_unk152_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC43,
		jumpIfTrue: CompText874C5D0_unk151_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874C5D0_unk151
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's see... Our\n"
	.string "targets are the gang\n"
	.string "members who are"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "hanging around..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk152
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out...\n"
	.string "It's time to face\n"
	.string "Dark Scyth's final!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk153

	def_text_script CompText874C5D0_unk154

	def_text_script CompText874C5D0_unk155
	ts_check_flag [
		flag: 0xCA5,
		jumpIfTrue: CompText874C5D0_unk159_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCB3,
		jumpIfTrue: CompText874C5D0_unk158_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCB2,
		jumpIfTrue: CompText874C5D0_unk157_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCA3,
		jumpIfTrue: CompText874C5D0_unk156_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874C5D0_unk156
	ts_check_sub_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: CompText874C5D0_unk160_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "First,we've gotta\n"
	.string "find the junk trader\n"
	.string "in Undernet2..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk157
	ts_check_sub_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: CompText874C5D0_unk161_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "There's one more\n"
	.string "junk trader in\n"
	.string "Undernet2..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk158
	ts_check_sub_area [
		lower: 0x0,
		upper: 0x0,
		jumpIfInRange: CompText874C5D0_unk161_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Next,we've gotta\n"
	.string "find the junk trader\n"
	.string "in Undernet1."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk159
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out... and\n"
	.string "good luck on\n"
	.string "Mr.Press's final!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk160
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "First,we've gotta\n"
	.string "find the junk trader\n"
	.string "in this area..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk161
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "There's one more\n"
	.string "junk trader here in\n"
	.string "this area..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk162
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Next,we've gotta\n"
	.string "find the junk trader\n"
	.string "in this area..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk163

	def_text_script CompText874C5D0_unk164

	def_text_script CompText874C5D0_unk165

	def_text_script CompText874C5D0_unk166

	def_text_script CompText874C5D0_unk167

	def_text_script CompText874C5D0_unk168

	def_text_script CompText874C5D0_unk169

	def_text_script CompText874C5D0_unk170

	def_text_script CompText874C5D0_unk171

	def_text_script CompText874C5D0_unk172

	def_text_script CompText874C5D0_unk173

	def_text_script CompText874C5D0_unk174

	def_text_script CompText874C5D0_unk175

	def_text_script CompText874C5D0_unk176

	def_text_script CompText874C5D0_unk177

	def_text_script CompText874C5D0_unk178

	def_text_script CompText874C5D0_unk179

	def_text_script CompText874C5D0_unk180
	ts_check_flag [
		flag: 0xD32,
		jumpIfTrue: CompText874C5D0_unk183_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xD33,
		jumpIfTrue: CompText874C5D0_unk182_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC63,
		jumpIfTrue: CompText874C5D0_unk181_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874C5D0_unk181
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk182
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea1!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk183
	ts_end

	def_text_script CompText874C5D0_unk184
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We're gonna turn all\n"
	.string "the rocks in this\n"
	.string "area into pebbles!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk185

	def_text_script CompText874C5D0_unk186

	def_text_script CompText874C5D0_unk187

	def_text_script CompText874C5D0_unk188

	def_text_script CompText874C5D0_unk189

	def_text_script CompText874C5D0_unk190
	ts_check_flag [
		flag: 0xC8F,
		jumpIfTrue: CompText874C5D0_unk194_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC8B,
		jumpIfTrue: CompText874C5D0_unk193_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC87,
		jumpIfTrue: CompText874C5D0_unk192_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC83,
		jumpIfTrue: CompText874C5D0_unk191_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874C5D0_unk191
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Undernet2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk192
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Sky Area2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk193
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "CentralArea3!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk194
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time for the final\n"
	.string "exam! Jack out,\n"
	.string "ChargeMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk195
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's look for the\n"
	.string "cyberstation in this\n"
	.string "area!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk196

	def_text_script CompText874C5D0_unk197

	def_text_script CompText874C5D0_unk198

	def_text_script CompText874C5D0_unk199

	def_text_script CompText874C5D0_unk200

	def_text_script CompText874C5D0_unk201

	def_text_script CompText874C5D0_unk202

	def_text_script CompText874C5D0_unk203

	def_text_script CompText874C5D0_unk204

	def_text_script CompText874C5D0_unk205

	def_text_script CompText874C5D0_unk206

	def_text_script CompText874C5D0_unk207

	def_text_script CompText874C5D0_unk208

	def_text_script CompText874C5D0_unk209

	def_text_script CompText874C5D0_unk210

	def_text_script CompText874C5D0_unk211

	def_text_script CompText874C5D0_unk212

	def_text_script CompText874C5D0_unk213

	def_text_script CompText874C5D0_unk214

	def_text_script CompText874C5D0_unk215

	def_text_script CompText874C5D0_unk216

	def_text_script CompText874C5D0_unk217

	def_text_script CompText874C5D0_unk218

	def_text_script CompText874C5D0_unk219

	def_text_script CompText874C5D0_unk220
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText874C5D0_unk221_id,
		jumpIfElecMan: CompText874C5D0_unk222_id,
		jumpIfSlashMan: CompText874C5D0_unk223_id,
		jumpIfEraseMan: CompText874C5D0_unk224_id,
		jumpIfChargeMan: CompText874C5D0_unk225_id,
		jumpIfSpoutMan: CompText874C5D0_unk226_id,
		jumpIfTomahawkMan: CompText874C5D0_unk227_id,
		jumpIfTenguMan: CompText874C5D0_unk228_id,
		jumpIfGroundMan: CompText874C5D0_unk229_id,
		jumpIfDustMan: CompText874C5D0_unk230_id,
		jumpIfProtoMan: CompText874C5D0_unk231_id,
	]
	ts_end

	def_text_script CompText874C5D0_unk221
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating HeatMan...\n"
	.string "It lights my soul on\n"
	.string "fire!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk222
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ElecMan...\n"
	.string "I feel a surge of\n"
	.string "power coming on!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk223
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SlashMan\n"
	.string "is like sharpening\n"
	.string "my mind to a point!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk224
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating EraseMan\n"
	.string "brings out my dark\n"
	.string "side... Mwahahaha!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk225
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ChargeMan\n"
	.string "makes me want to\n"
	.string "plow ahead!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk226
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SpoutMan\n"
	.string "makes me feel like\n"
	.string "a little fish..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk227
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating\n"
	.string "TomahawkMan is an\n"
	.string "awesome feeling!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk228
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating TenguMan\n"
	.string "brings a sense of\n"
	.string "peace to my heart..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk229
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating GroundMan\n"
	.string "lets me drill\n"
	.string "through anything!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk230
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating DustMan...\n"
	.string "There's no virus we\n"
	.string "can't scrap!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk231
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "ProtoMan helping out\n"
	.string "during battle... He\n"
	.string "sure is trustworthy!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874C5D0_unk232

	def_text_script CompText874C5D0_unk233

	def_text_script CompText874C5D0_unk234

	def_text_script CompText874C5D0_unk235

	def_text_script CompText874C5D0_unk236

	def_text_script CompText874C5D0_unk237

	def_text_script CompText874C5D0_unk238

	def_text_script CompText874C5D0_unk239

	def_text_script CompText874C5D0_unk240

	def_text_script CompText874C5D0_unk241

	def_text_script CompText874C5D0_unk242

	def_text_script CompText874C5D0_unk243

	def_text_script CompText874C5D0_unk244

	def_text_script CompText874C5D0_unk245

	def_text_script CompText874C5D0_unk246

	def_text_script CompText874C5D0_unk247

	def_text_script CompText874C5D0_unk248

	def_text_script CompText874C5D0_unk249

	def_text_script CompText874C5D0_unk250

	def_text_script CompText874C5D0_unk251

	def_text_script CompText874C5D0_unk252

	def_text_script CompText874C5D0_unk253

	def_text_script CompText874C5D0_unk254

	