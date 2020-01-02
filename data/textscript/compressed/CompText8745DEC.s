	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8745DEC::
	.word 0x51E00

	text_archive_start

	def_text_script CompText8745DEC_unk0
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText8745DEC_unk91_id,
		jumpIfElecMan: CompText8745DEC_unk92_id,
		jumpIfSlashMan: CompText8745DEC_unk93_id,
		jumpIfEraseMan: CompText8745DEC_unk94_id,
		jumpIfChargeMan: CompText8745DEC_unk95_id,
		jumpIfSpoutMan: CompText8745DEC_unk96_id,
		jumpIfTomahawkMan: CompText8745DEC_unk97_id,
		jumpIfTenguMan: CompText8745DEC_unk98_id,
		jumpIfGroundMan: CompText8745DEC_unk99_id,
		jumpIfDustMan: CompText8745DEC_unk100_id,
		jumpIfProtoMan: CompText8745DEC_unk101_id,
	]
	ts_check_chapter [
		lower: 0x62,
		upper: 0x64,
		jumpIfInRange: CompText8745DEC_unk15_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8745DEC_unk1

	def_text_script CompText8745DEC_unk2

	def_text_script CompText8745DEC_unk3

	def_text_script CompText8745DEC_unk4

	def_text_script CompText8745DEC_unk5

	def_text_script CompText8745DEC_unk6

	def_text_script CompText8745DEC_unk7

	def_text_script CompText8745DEC_unk8

	def_text_script CompText8745DEC_unk9

	def_text_script CompText8745DEC_unk10

	def_text_script CompText8745DEC_unk11

	def_text_script CompText8745DEC_unk12

	def_text_script CompText8745DEC_unk13

	def_text_script CompText8745DEC_unk14

	def_text_script CompText8745DEC_unk15
	ts_check_flag [
		flag: 0xE44,
		jumpIfTrue: CompText8745DEC_unk29_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE3E,
		jumpIfTrue: CompText8745DEC_unk28_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE3C,
		jumpIfTrue: CompText8745DEC_unk27_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE36,
		jumpIfTrue: CompText8745DEC_unk26_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE34,
		jumpIfTrue: CompText8745DEC_unk25_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE2E,
		jumpIfTrue: CompText8745DEC_unk24_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE2C,
		jumpIfTrue: CompText8745DEC_unk23_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE2A,
		jumpIfTrue: CompText8745DEC_unk22_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE26,
		jumpIfTrue: CompText8745DEC_unk21_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE16,
		jumpIfTrue: CompText8745DEC_unk18_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText8745DEC_unk16

	def_text_script CompText8745DEC_unk17

	def_text_script CompText8745DEC_unk18
	ts_check_flag [
		flag: 0xE65,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8745DEC_unk30_id,
	]
	ts_check_flag [
		flag: 0xE64,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8745DEC_unk30_id,
	]
	ts_check_flag [
		flag: 0xE63,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8745DEC_unk30_id,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "You got all the\n"
	.string "stamps! Now,off to\n"
	.string "Central Pavilion!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8745DEC_unk19

	def_text_script CompText8745DEC_unk20

	def_text_script CompText8745DEC_unk21
	ts_end

	def_text_script CompText8745DEC_unk22
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Jack me in,Lan! We\n"
	.string "have to beat the\n"
	.string "ex-WWW members!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8745DEC_unk23
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "After them! The\n"
	.string "ex-WWW members\n"
	.string "are getting away!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8745DEC_unk24
	ts_check_sub_area [
		lower: 0x3,
		upper: 0x3,
		jumpIfInRange: TS_CONTINUE,
		jumpIfOutOfRange: CompText8745DEC_unk23_id,
	]
	ts_jump target=CompText8745DEC_unk22_id

	def_text_script CompText8745DEC_unk25
	ts_jump target=CompText8745DEC_unk23_id

	def_text_script CompText8745DEC_unk26
	ts_check_sub_area [
		lower: 0x4,
		upper: 0x4,
		jumpIfInRange: CompText8745DEC_unk22_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_jump target=CompText8745DEC_unk23_id

	def_text_script CompText8745DEC_unk27
	ts_jump target=CompText8745DEC_unk23_id

	def_text_script CompText8745DEC_unk28
	ts_check_sub_area [
		lower: 0x1,
		upper: 0x1,
		jumpIfInRange: TS_CONTINUE,
		jumpIfOutOfRange: CompText8745DEC_unk23_id,
	]
	ts_jump target=CompText8745DEC_unk22_id

	def_text_script CompText8745DEC_unk29
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "This is it,the final\n"
	.string "battle,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Time to find Dr.Wily\n"
	.string "and finish this!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8745DEC_unk30
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's go see all the\n"
	.string "pavilions and get\n"
	.string "all the stamps!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8745DEC_unk31

	def_text_script CompText8745DEC_unk32

	def_text_script CompText8745DEC_unk33

	def_text_script CompText8745DEC_unk34

	def_text_script CompText8745DEC_unk35

	def_text_script CompText8745DEC_unk36

	def_text_script CompText8745DEC_unk37

	def_text_script CompText8745DEC_unk38

	def_text_script CompText8745DEC_unk39

	def_text_script CompText8745DEC_unk40

	def_text_script CompText8745DEC_unk41

	def_text_script CompText8745DEC_unk42

	def_text_script CompText8745DEC_unk43

	def_text_script CompText8745DEC_unk44

	def_text_script CompText8745DEC_unk45

	def_text_script CompText8745DEC_unk46

	def_text_script CompText8745DEC_unk47

	def_text_script CompText8745DEC_unk48

	def_text_script CompText8745DEC_unk49

	def_text_script CompText8745DEC_unk50

	def_text_script CompText8745DEC_unk51

	def_text_script CompText8745DEC_unk52

	def_text_script CompText8745DEC_unk53

	def_text_script CompText8745DEC_unk54

	def_text_script CompText8745DEC_unk55

	def_text_script CompText8745DEC_unk56

	def_text_script CompText8745DEC_unk57

	def_text_script CompText8745DEC_unk58

	def_text_script CompText8745DEC_unk59

	def_text_script CompText8745DEC_unk60

	def_text_script CompText8745DEC_unk61

	def_text_script CompText8745DEC_unk62

	def_text_script CompText8745DEC_unk63

	def_text_script CompText8745DEC_unk64

	def_text_script CompText8745DEC_unk65

	def_text_script CompText8745DEC_unk66

	def_text_script CompText8745DEC_unk67

	def_text_script CompText8745DEC_unk68

	def_text_script CompText8745DEC_unk69

	def_text_script CompText8745DEC_unk70

	def_text_script CompText8745DEC_unk71

	def_text_script CompText8745DEC_unk72

	def_text_script CompText8745DEC_unk73

	def_text_script CompText8745DEC_unk74

	def_text_script CompText8745DEC_unk75

	def_text_script CompText8745DEC_unk76

	def_text_script CompText8745DEC_unk77

	def_text_script CompText8745DEC_unk78

	def_text_script CompText8745DEC_unk79

	def_text_script CompText8745DEC_unk80

	def_text_script CompText8745DEC_unk81

	def_text_script CompText8745DEC_unk82

	def_text_script CompText8745DEC_unk83

	def_text_script CompText8745DEC_unk84

	def_text_script CompText8745DEC_unk85

	def_text_script CompText8745DEC_unk86

	def_text_script CompText8745DEC_unk87

	def_text_script CompText8745DEC_unk88

	def_text_script CompText8745DEC_unk89

	def_text_script CompText8745DEC_unk90
	ts_end

	def_text_script CompText8745DEC_unk91
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Let me at 'em,Lan!\n"
	.string "I'm burning for one\n"
	.string "hot battle!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8745DEC_unk92
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Your operating\n"
	.string "sparks a surge of\n"
	.string "power within me..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8745DEC_unk93
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Slash! Any virus in\n"
	.string "my way is asking for\n"
	.string "a slicing!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8745DEC_unk94
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "My scythe cries...\n"
	.string "It wants to delete!!\n"
	.string "Hyahahahahaha!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8745DEC_unk95
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Is it departure\n"
	.string "time!? I want to be\n"
	.string "on time! Choo,choo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8745DEC_unk96
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "I don't fight a lot,\n"
	.string "drip! Real battles\n"
	.string "scare me... drip!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8745DEC_unk97
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Lan,your operating\n"
	.string "gives me such an\n"
	.string "awesome feeling!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8745DEC_unk98
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "I can feel\n"
	.string "the wind..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8745DEC_unk99
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whiiiiiir!\n"
	.string "C'mon! Let's go\n"
	.string "break some viruses!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8745DEC_unk100
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Gahahahaha!!\n"
	.string "Let's go clean up\n"
	.string "some cybertrash!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8745DEC_unk101
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "Only you and Chaud\n"
	.string "can operate me well.\n"
	.string "Don't let me down..."
	ts_key_wait any=0x0
	ts_end

	