	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8747474::
	.word 0x54E00

	text_archive_start

	def_text_script CompText8747474_unk0
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x33,
		jumpIfElecMan: 0x34,
		jumpIfSlashMan: 0x35,
		jumpIfEraseMan: 0x36,
		jumpIfChargeMan: 0x37,
		jumpIfSpoutMan: 0x38,
		jumpIfTomahawkMan: 0x39,
		jumpIfTenguMan: 0x3A,
		jumpIfGroundMan: 0x3B,
		jumpIfDustMan: 0x3C,
		jumpIfProtoMan: 0x3D,
	]
	ts_check_flag [
		flag: 0x163,
		jumpIfTrue: 0x32,
		jumpIfFalse: 0xFF,
	]
	ts_jump target=1
	ts_end

	def_text_script CompText8747474_unk1
	ts_check_chapter [
		lower: 0x62,
		upper: 0x64,
		jumpIfInRange: 0xF,
		jumpIfOutOfRange: 0xFF,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk2

	def_text_script CompText8747474_unk3

	def_text_script CompText8747474_unk4

	def_text_script CompText8747474_unk5

	def_text_script CompText8747474_unk6

	def_text_script CompText8747474_unk7

	def_text_script CompText8747474_unk8

	def_text_script CompText8747474_unk9

	def_text_script CompText8747474_unk10

	def_text_script CompText8747474_unk11

	def_text_script CompText8747474_unk12

	def_text_script CompText8747474_unk13

	def_text_script CompText8747474_unk14

	def_text_script CompText8747474_unk15
	ts_check_flag [
		flag: 0xE44,
		jumpIfTrue: 0x1D,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE3E,
		jumpIfTrue: 0x1C,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE3C,
		jumpIfTrue: 0x1B,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE36,
		jumpIfTrue: 0x1A,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE34,
		jumpIfTrue: 0x19,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE2E,
		jumpIfTrue: 0x18,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE2C,
		jumpIfTrue: 0x17,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE2A,
		jumpIfTrue: 0x16,
		jumpIfFalse: 0xFF,
	]
	ts_end

	def_text_script CompText8747474_unk16

	def_text_script CompText8747474_unk17

	def_text_script CompText8747474_unk18

	def_text_script CompText8747474_unk19

	def_text_script CompText8747474_unk20

	def_text_script CompText8747474_unk21

	def_text_script CompText8747474_unk22
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan! You've\n"
	.string "gotta normalize this\n"
	.string "pavilion's system!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk23
	ts_check_sub_area [
		lower: 0x4,
		upper: 0x4,
		jumpIfInRange: 0x1F,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta keep\n"
	.string "going!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk24
	ts_check_sub_area [
		lower: 0x0,
		upper: 0x0,
		jumpIfInRange: 0x17,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_flag [
		flag: 0xFC5,
		jumpIfTrue: 0x16,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Want to take a look\n"
	.string "around,MegaMan!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x1E, 0xFF, 0xFF
	ts_end

	def_text_script CompText8747474_unk25
	ts_jump target=23

	def_text_script CompText8747474_unk26
	ts_check_sub_area [
		lower: 0x0,
		upper: 0x1,
		jumpIfInRange: 0x17,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've gotta go after\n"
	.string "ElementMan,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk27
	ts_jump target=23

	def_text_script CompText8747474_unk28
	ts_check_sub_area [
		lower: 0x0,
		upper: 0x2,
		jumpIfInRange: 0x17,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've gotta go after\n"
	.string "CircusMan,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk29
	ts_jump target=23

	def_text_script CompText8747474_unk30
	ts_flag_set flag=0x9D4
	ts_end

	def_text_script CompText8747474_unk31
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "This is it!\n"
	.string "The last battle!\n"
	.string "Let's go,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk32

	def_text_script CompText8747474_unk33

	def_text_script CompText8747474_unk34

	def_text_script CompText8747474_unk35

	def_text_script CompText8747474_unk36

	def_text_script CompText8747474_unk37

	def_text_script CompText8747474_unk38

	def_text_script CompText8747474_unk39

	def_text_script CompText8747474_unk40

	def_text_script CompText8747474_unk41

	def_text_script CompText8747474_unk42

	def_text_script CompText8747474_unk43

	def_text_script CompText8747474_unk44

	def_text_script CompText8747474_unk45

	def_text_script CompText8747474_unk46

	def_text_script CompText8747474_unk47

	def_text_script CompText8747474_unk48

	def_text_script CompText8747474_unk49

	def_text_script CompText8747474_unk50
	ts_jump target=1
	ts_end

	def_text_script CompText8747474_unk51
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating HeatMan...\n"
	.string "It lights my soul on\n"
	.string "fire!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk52
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ElecMan...\n"
	.string "I feel a surge of\n"
	.string "power coming on!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk53
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SlashMan\n"
	.string "is like sharpening\n"
	.string "my mind to a point!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk54
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating EraseMan\n"
	.string "brings out my dark\n"
	.string "side... Mwahahaha!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk55
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ChargeMan\n"
	.string "makes me want to\n"
	.string "plow ahead!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk56
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SpoutMan\n"
	.string "makes me feel like\n"
	.string "a little fish..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk57
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating\n"
	.string "TomahawkMan is an\n"
	.string "awesome feeling!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk58
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating TenguMan\n"
	.string "brings a sense of\n"
	.string "peace to my heart..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk59
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating GroundMan\n"
	.string "lets me drill\n"
	.string "through anything!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk60
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating DustMan...\n"
	.string "There's no virus we\n"
	.string "can't scrap!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk61
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "ProtoMan helping out\n"
	.string "during battle... He\n"
	.string "sure is trustworthy!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8747474_unk62

	def_text_script CompText8747474_unk63

	def_text_script CompText8747474_unk64

	def_text_script CompText8747474_unk65

	def_text_script CompText8747474_unk66

	def_text_script CompText8747474_unk67

	def_text_script CompText8747474_unk68

	def_text_script CompText8747474_unk69

	def_text_script CompText8747474_unk70

	def_text_script CompText8747474_unk71

	def_text_script CompText8747474_unk72

	def_text_script CompText8747474_unk73

	def_text_script CompText8747474_unk74

	def_text_script CompText8747474_unk75

	def_text_script CompText8747474_unk76

	def_text_script CompText8747474_unk77

	def_text_script CompText8747474_unk78

	def_text_script CompText8747474_unk79

	def_text_script CompText8747474_unk80

	def_text_script CompText8747474_unk81

	def_text_script CompText8747474_unk82

	def_text_script CompText8747474_unk83

	def_text_script CompText8747474_unk84

	def_text_script CompText8747474_unk85

	def_text_script CompText8747474_unk86

	def_text_script CompText8747474_unk87

	def_text_script CompText8747474_unk88

	def_text_script CompText8747474_unk89

	def_text_script CompText8747474_unk90

	def_text_script CompText8747474_unk91

	def_text_script CompText8747474_unk92

	def_text_script CompText8747474_unk93

	def_text_script CompText8747474_unk94

	def_text_script CompText8747474_unk95

	def_text_script CompText8747474_unk96

	def_text_script CompText8747474_unk97

	def_text_script CompText8747474_unk98

	def_text_script CompText8747474_unk99

	def_text_script CompText8747474_unk100

	