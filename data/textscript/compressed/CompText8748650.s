	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8748650::
	.word 0x11B100

	text_archive_start

	def_text_script CompText8748650_unk0
	ts_check_chapter [
		lower: 0x80,
		upper: 0x80,
		jumpIfInRange: CompText8748650_unk220_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x57,
		upper: 0x57,
		jumpIfInRange: CompText8748650_unk190_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x56,
		upper: 0x56,
		jumpIfInRange: CompText8748650_unk180_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x52,
		upper: 0x52,
		jumpIfInRange: CompText8748650_unk135_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x51,
		upper: 0x51,
		jumpIfInRange: CompText8748650_unk115_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x50,
		upper: 0x50,
		jumpIfInRange: CompText8748650_unk100_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x4B,
		upper: 0x4B,
		jumpIfInRange: CompText8748650_unk155_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x48,
		upper: 0x49,
		jumpIfInRange: CompText8748650_unk150_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x43,
		upper: 0x46,
		jumpIfInRange: CompText8748650_unk15_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x40,
		upper: 0x42,
		jumpIfInRange: CompText8748650_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk1

	def_text_script CompText8748650_unk2

	def_text_script CompText8748650_unk3

	def_text_script CompText8748650_unk4

	def_text_script CompText8748650_unk5
	ts_check_flag [
		flag: 0xA0A,
		jumpIfTrue: CompText8748650_unk10_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA08,
		jumpIfTrue: CompText8748650_unk9_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA62,
		jumpIfTrue: CompText8748650_unk8_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA06,
		jumpIfTrue: CompText8748650_unk7_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA60,
		jumpIfTrue: CompText8748650_unk6_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's check out Sky\n"
	.string "Town! The LevBus'll\n"
	.string "get us there,right!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's get going to\n"
	.string "Sky Town,MegaMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go back to\n"
	.string "Sky Town,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's get back to\n"
	.string "Sky Area,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've gotta go find\n"
	.string "Mick's Navi,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk10
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText8748650_unk11_id,
		jumpIfElecMan: CompText8748650_unk12_id,
		jumpIfSlashMan: CompText8748650_unk13_id,
		jumpIfEraseMan: TS_CONTINUE,
		jumpIfChargeMan: TS_CONTINUE,
		jumpIfSpoutMan: CompText8748650_unk14_id,
		jumpIfTomahawkMan: CompText8748650_unk35_id,
		jumpIfTenguMan: CompText8748650_unk36_id,
		jumpIfGroundMan: TS_CONTINUE,
		jumpIfDustMan: TS_CONTINUE,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText8748650_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "HeatMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "ElecMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "SlashMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "SpoutMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk15
	ts_check_flag [
		flag: 0xA2E,
		jumpIfTrue: CompText8748650_unk27_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA2C,
		jumpIfTrue: CompText8748650_unk26_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA2A,
		jumpIfTrue: CompText8748650_unk25_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA28,
		jumpIfTrue: CompText8748650_unk23_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA26,
		jumpIfTrue: CompText8748650_unk22_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA24,
		jumpIfTrue: CompText8748650_unk21_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA1A,
		jumpIfTrue: CompText8748650_unk19_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA18,
		jumpIfTrue: CompText8748650_unk18_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA16,
		jumpIfTrue: CompText8748650_unk17_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA10,
		jumpIfTrue: CompText8748650_unk16_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText8748650_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The weather's really\n"
	.string "acting up today...\n"
	.string "Better hurry home!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "Sky Town,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk18
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's head for Sky\n"
	.string "Town MegaMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk19
	ts_check_flag [
		flag: 0xA1C,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8748650_unk20_id,
	]
	ts_check_flag [
		flag: 0xA1E,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8748650_unk20_id,
	]
	ts_check_flag [
		flag: 0xA20,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8748650_unk20_id,
	]
	ts_check_flag [
		flag: 0xA22,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8748650_unk20_id,
	]
	ts_jump target=CompText8748650_unk20_id

	def_text_script CompText8748650_unk20
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta get\n"
	.string "back to Sky Town!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk21
	ts_jump target=CompText8748650_unk20_id

	def_text_script CompText8748650_unk22
	ts_jump target=CompText8748650_unk20_id

	def_text_script CompText8748650_unk23
	ts_jump target=CompText8748650_unk20_id

	def_text_script CompText8748650_unk24
	ts_end

	def_text_script CompText8748650_unk25
	ts_jump target=CompText8748650_unk20_id

	def_text_script CompText8748650_unk26
	ts_jump target=CompText8748650_unk20_id

	def_text_script CompText8748650_unk27
	ts_jump target=CompText8748650_unk20_id

	def_text_script CompText8748650_unk28

	def_text_script CompText8748650_unk29

	def_text_script CompText8748650_unk30

	def_text_script CompText8748650_unk31

	def_text_script CompText8748650_unk32

	def_text_script CompText8748650_unk33

	def_text_script CompText8748650_unk34

	def_text_script CompText8748650_unk35
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "TomahawkMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk36
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "TenguMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk37

	def_text_script CompText8748650_unk38

	def_text_script CompText8748650_unk39

	def_text_script CompText8748650_unk40

	def_text_script CompText8748650_unk41

	def_text_script CompText8748650_unk42

	def_text_script CompText8748650_unk43

	def_text_script CompText8748650_unk44

	def_text_script CompText8748650_unk45

	def_text_script CompText8748650_unk46

	def_text_script CompText8748650_unk47

	def_text_script CompText8748650_unk48

	def_text_script CompText8748650_unk49

	def_text_script CompText8748650_unk50

	def_text_script CompText8748650_unk51

	def_text_script CompText8748650_unk52

	def_text_script CompText8748650_unk53

	def_text_script CompText8748650_unk54

	def_text_script CompText8748650_unk55

	def_text_script CompText8748650_unk56

	def_text_script CompText8748650_unk57

	def_text_script CompText8748650_unk58

	def_text_script CompText8748650_unk59

	def_text_script CompText8748650_unk60

	def_text_script CompText8748650_unk61

	def_text_script CompText8748650_unk62

	def_text_script CompText8748650_unk63

	def_text_script CompText8748650_unk64

	def_text_script CompText8748650_unk65

	def_text_script CompText8748650_unk66

	def_text_script CompText8748650_unk67

	def_text_script CompText8748650_unk68

	def_text_script CompText8748650_unk69

	def_text_script CompText8748650_unk70

	def_text_script CompText8748650_unk71

	def_text_script CompText8748650_unk72

	def_text_script CompText8748650_unk73

	def_text_script CompText8748650_unk74

	def_text_script CompText8748650_unk75

	def_text_script CompText8748650_unk76

	def_text_script CompText8748650_unk77

	def_text_script CompText8748650_unk78

	def_text_script CompText8748650_unk79

	def_text_script CompText8748650_unk80

	def_text_script CompText8748650_unk81

	def_text_script CompText8748650_unk82

	def_text_script CompText8748650_unk83

	def_text_script CompText8748650_unk84

	def_text_script CompText8748650_unk85

	def_text_script CompText8748650_unk86

	def_text_script CompText8748650_unk87

	def_text_script CompText8748650_unk88

	def_text_script CompText8748650_unk89

	def_text_script CompText8748650_unk90

	def_text_script CompText8748650_unk91

	def_text_script CompText8748650_unk92

	def_text_script CompText8748650_unk93

	def_text_script CompText8748650_unk94

	def_text_script CompText8748650_unk95

	def_text_script CompText8748650_unk96

	def_text_script CompText8748650_unk97

	def_text_script CompText8748650_unk98

	def_text_script CompText8748650_unk99

	def_text_script CompText8748650_unk100
	ts_check_flag [
		flag: 0xC0A,
		jumpIfTrue: CompText8748650_unk107_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCC8,
		jumpIfTrue: CompText8748650_unk106_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD8,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8748650_unk105_id,
	]
	ts_check_flag [
		flag: 0xCC6,
		jumpIfTrue: CompText8748650_unk104_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCC3,
		jumpIfTrue: CompText8748650_unk103_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCC2,
		jumpIfTrue: CompText8748650_unk102_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCE4,
		jumpIfTrue: CompText8748650_unk101_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "Undernet and find\n"
	.string "that MoonStone!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk101
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

	def_text_script CompText8748650_unk102
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

	def_text_script CompText8748650_unk103
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

	def_text_script CompText8748650_unk104
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "Undernet1,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk105
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's look for the\n"
	.string "MoonStone in\n"
	.string "Undernet2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk106
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's take the\n"
	.string "MoonStone and get\n"
	.string "out of this place!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk107
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time for bed\n"
	.string "already...\n"
	.string "*sigh*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk108

	def_text_script CompText8748650_unk109

	def_text_script CompText8748650_unk110

	def_text_script CompText8748650_unk111

	def_text_script CompText8748650_unk112

	def_text_script CompText8748650_unk113

	def_text_script CompText8748650_unk114

	def_text_script CompText8748650_unk115
	ts_check_flag [
		flag: 0xC1C,
		jumpIfTrue: CompText8748650_unk125_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1A,
		jumpIfTrue: CompText8748650_unk124_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC14,
		jumpIfTrue: CompText8748650_unk123_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD4,
		jumpIfTrue: CompText8748650_unk122_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD3,
		jumpIfTrue: CompText8748650_unk121_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD2,
		jumpIfTrue: CompText8748650_unk120_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD1,
		jumpIfTrue: CompText8748650_unk119_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD0,
		jumpIfTrue: CompText8748650_unk118_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC12,
		jumpIfTrue: CompText8748650_unk117_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's head for ACDC\n"
	.string "Town!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk116

	def_text_script CompText8748650_unk117
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's head for ACDC\n"
	.string "Area,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk118
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "A lost Mr.Prog,\n"
	.string "huh...? Let's go\n"
	.string "find him!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk119
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I wonder who's\n"
	.string "causing trouble with\n"
	.string "these cyberdoors?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk120
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go back to\n"
	.string "that lost Mr.Prog!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk121
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's bring Roll's\n"
	.string "package back to her!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk122
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the area\n"
	.string "in front of the\n"
	.string "ducks in ACDC Area!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk123
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

	def_text_script CompText8748650_unk124
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... I guess I should\n"
	.string "go back to Central\n"
	.string "Town for now..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk125
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Guess I should\n"
	.string "go home..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk126

	def_text_script CompText8748650_unk127

	def_text_script CompText8748650_unk128

	def_text_script CompText8748650_unk129

	def_text_script CompText8748650_unk130

	def_text_script CompText8748650_unk131

	def_text_script CompText8748650_unk132

	def_text_script CompText8748650_unk133

	def_text_script CompText8748650_unk134

	def_text_script CompText8748650_unk135
	ts_check_flag [
		flag: 0xC26,
		jumpIfTrue: CompText8748650_unk141_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC24,
		jumpIfTrue: CompText8748650_unk140_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC22,
		jumpIfTrue: CompText8748650_unk139_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCCF,
		jumpIfTrue: CompText8748650_unk138_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCCE,
		jumpIfTrue: CompText8748650_unk137_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC30,
		jumpIfTrue: CompText8748650_unk136_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC20,
		jumpIfTrue: CompText8748650_unk142_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I've gotta hurry to\n"
	.string "Seaside Town!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk136
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've gotta head to\n"
	.string "CentralArea3!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk137
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

	def_text_script CompText8748650_unk138
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out! We've\n"
	.string "gotta find the Mayor\n"
	.string "no matter what!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk139
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out! We've\n"
	.string "gotta get to the\n"
	.string "Principal's Office!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk140
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Head for the large\n"
	.string "hole in CentralArea!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk141
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

	def_text_script CompText8748650_unk142
	ts_check_flag [
		flag: 0x1D28,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8748650_unk143_id,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I guess I should\n"
	.string "read my mail..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk143
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

	def_text_script CompText8748650_unk144

	def_text_script CompText8748650_unk145

	def_text_script CompText8748650_unk146

	def_text_script CompText8748650_unk147

	def_text_script CompText8748650_unk148

	def_text_script CompText8748650_unk149

	def_text_script CompText8748650_unk150

	def_text_script CompText8748650_unk151

	def_text_script CompText8748650_unk152

	def_text_script CompText8748650_unk153

	def_text_script CompText8748650_unk154

	def_text_script CompText8748650_unk155

	def_text_script CompText8748650_unk156

	def_text_script CompText8748650_unk157

	def_text_script CompText8748650_unk158

	def_text_script CompText8748650_unk159

	def_text_script CompText8748650_unk160

	def_text_script CompText8748650_unk161

	def_text_script CompText8748650_unk162

	def_text_script CompText8748650_unk163

	def_text_script CompText8748650_unk164

	def_text_script CompText8748650_unk165

	def_text_script CompText8748650_unk166

	def_text_script CompText8748650_unk167

	def_text_script CompText8748650_unk168

	def_text_script CompText8748650_unk169

	def_text_script CompText8748650_unk170

	def_text_script CompText8748650_unk171

	def_text_script CompText8748650_unk172

	def_text_script CompText8748650_unk173

	def_text_script CompText8748650_unk174

	def_text_script CompText8748650_unk175

	def_text_script CompText8748650_unk176

	def_text_script CompText8748650_unk177

	def_text_script CompText8748650_unk178

	def_text_script CompText8748650_unk179

	def_text_script CompText8748650_unk180
	ts_check_flag [
		flag: 0xD32,
		jumpIfTrue: CompText8748650_unk183_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xD33,
		jumpIfTrue: CompText8748650_unk182_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC63,
		jumpIfTrue: CompText8748650_unk181_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText8748650_unk181
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk182
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea1!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk183
	ts_end

	def_text_script CompText8748650_unk184
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We're gonna turn all\n"
	.string "the rocks in this\n"
	.string "area into pebbles!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk185

	def_text_script CompText8748650_unk186

	def_text_script CompText8748650_unk187

	def_text_script CompText8748650_unk188

	def_text_script CompText8748650_unk189

	def_text_script CompText8748650_unk190
	ts_check_flag [
		flag: 0xC8F,
		jumpIfTrue: CompText8748650_unk194_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC8B,
		jumpIfTrue: CompText8748650_unk193_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC87,
		jumpIfTrue: CompText8748650_unk192_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC83,
		jumpIfTrue: CompText8748650_unk191_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText8748650_unk191
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Undernet2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk192
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Sky Area2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk193
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "CentralArea3!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk194
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time for the final\n"
	.string "exam! Jack out,\n"
	.string "ChargeMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk195
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's look for the\n"
	.string "cyberstation in this\n"
	.string "area!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk196

	def_text_script CompText8748650_unk197

	def_text_script CompText8748650_unk198

	def_text_script CompText8748650_unk199

	def_text_script CompText8748650_unk200

	def_text_script CompText8748650_unk201

	def_text_script CompText8748650_unk202

	def_text_script CompText8748650_unk203

	def_text_script CompText8748650_unk204

	def_text_script CompText8748650_unk205

	def_text_script CompText8748650_unk206

	def_text_script CompText8748650_unk207

	def_text_script CompText8748650_unk208

	def_text_script CompText8748650_unk209

	def_text_script CompText8748650_unk210

	def_text_script CompText8748650_unk211

	def_text_script CompText8748650_unk212

	def_text_script CompText8748650_unk213

	def_text_script CompText8748650_unk214

	def_text_script CompText8748650_unk215

	def_text_script CompText8748650_unk216

	def_text_script CompText8748650_unk217

	def_text_script CompText8748650_unk218

	def_text_script CompText8748650_unk219

	def_text_script CompText8748650_unk220
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText8748650_unk221_id,
		jumpIfElecMan: CompText8748650_unk222_id,
		jumpIfSlashMan: CompText8748650_unk223_id,
		jumpIfEraseMan: CompText8748650_unk224_id,
		jumpIfChargeMan: CompText8748650_unk225_id,
		jumpIfSpoutMan: CompText8748650_unk226_id,
		jumpIfTomahawkMan: CompText8748650_unk227_id,
		jumpIfTenguMan: CompText8748650_unk228_id,
		jumpIfGroundMan: CompText8748650_unk229_id,
		jumpIfDustMan: CompText8748650_unk230_id,
		jumpIfProtoMan: CompText8748650_unk231_id,
	]
	ts_end

	def_text_script CompText8748650_unk221
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating HeatMan...\n"
	.string "It lights my soul on\n"
	.string "fire!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk222
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ElecMan...\n"
	.string "I feel a surge of\n"
	.string "power coming on!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk223
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SlashMan\n"
	.string "is like sharpening\n"
	.string "my mind to a point!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk224
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating EraseMan\n"
	.string "brings out my dark\n"
	.string "side... Mwahahaha!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk225
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ChargeMan\n"
	.string "makes me want to\n"
	.string "plow ahead!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk226
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SpoutMan\n"
	.string "makes me feel like\n"
	.string "a little fish..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk227
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating\n"
	.string "TomahawkMan is an\n"
	.string "awesome feeling!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk228
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating TenguMan\n"
	.string "brings a sense of\n"
	.string "peace to my heart..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk229
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating GroundMan\n"
	.string "lets me drill\n"
	.string "through anything!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk230
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating DustMan...\n"
	.string "There's no virus we\n"
	.string "can't scrap!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk231
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "ProtoMan helping out\n"
	.string "during battle... He\n"
	.string "sure is trustworthy!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8748650_unk232

	def_text_script CompText8748650_unk233

	def_text_script CompText8748650_unk234

	def_text_script CompText8748650_unk235

	def_text_script CompText8748650_unk236

	def_text_script CompText8748650_unk237

	def_text_script CompText8748650_unk238

	def_text_script CompText8748650_unk239

	def_text_script CompText8748650_unk240

	def_text_script CompText8748650_unk241

	def_text_script CompText8748650_unk242

	def_text_script CompText8748650_unk243

	def_text_script CompText8748650_unk244

	def_text_script CompText8748650_unk245

	def_text_script CompText8748650_unk246

	def_text_script CompText8748650_unk247

	def_text_script CompText8748650_unk248

	def_text_script CompText8748650_unk249

	def_text_script CompText8748650_unk250

	def_text_script CompText8748650_unk251

	def_text_script CompText8748650_unk252

	def_text_script CompText8748650_unk253

	def_text_script CompText8748650_unk254

	