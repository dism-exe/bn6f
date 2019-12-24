	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8744B38::
	.word 0x93100

	text_archive_start

	def_text_script CompText8744B38_unk0
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText8744B38_unk91_id,
		jumpIfElecMan: CompText8744B38_unk92_id,
		jumpIfSlashMan: CompText8744B38_unk93_id,
		jumpIfEraseMan: CompText8744B38_unk94_id,
		jumpIfChargeMan: CompText8744B38_unk95_id,
		jumpIfSpoutMan: CompText8744B38_unk96_id,
		jumpIfTomahawkMan: CompText8744B38_unk97_id,
		jumpIfTenguMan: CompText8744B38_unk98_id,
		jumpIfGroundMan: CompText8744B38_unk99_id,
		jumpIfDustMan: CompText8744B38_unk100_id,
		jumpIfProtoMan: CompText8744B38_unk101_id,
	]
	ts_check_chapter [
		lower: 0x62,
		upper: 0x64,
		jumpIfInRange: CompText8744B38_unk15_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x60,
		upper: 0x61,
		jumpIfInRange: CompText8744B38_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x35,
		upper: 0x35,
		jumpIfInRange: CompText8744B38_unk55_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x34,
		upper: 0x34,
		jumpIfInRange: CompText8744B38_unk50_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk1

	def_text_script CompText8744B38_unk2

	def_text_script CompText8744B38_unk3

	def_text_script CompText8744B38_unk4

	def_text_script CompText8744B38_unk5
	ts_check_flag [
		flag: 0xE10,
		jumpIfTrue: CompText8744B38_unk10_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE0E,
		jumpIfTrue: CompText8744B38_unk9_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE0A,
		jumpIfTrue: CompText8744B38_unk8_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE08,
		jumpIfTrue: CompText8744B38_unk7_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE5A,
		jumpIfTrue: CompText8744B38_unk6_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We've got to check\n"
	.string "the Undernet BBS!!\n"
	.string "Let's go!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk6
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,let's go to the\n"
	.string "Sky Town Admin\n"
	.string "Building!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk7
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I'm glad we're all\n"
	.string "safe and sound!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Come on,let's go\n"
	.string "catch up with Mick\n"
	.string "and Tab!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk8
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's go home,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk9
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "So,we're inviting\n"
	.string "Mick,Iris,Tab,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and all our friends\n"
	.string "from ACDC Town!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh,and Chaud too,if\n"
	.string "he's around!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk10
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's go home,Lan!\n"
	.string "I can hardly wait\n"
	.string "for the Gala!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk11

	def_text_script CompText8744B38_unk12

	def_text_script CompText8744B38_unk13

	def_text_script CompText8744B38_unk14

	def_text_script CompText8744B38_unk15
	ts_check_flag [
		flag: 0xE44,
		jumpIfTrue: CompText8744B38_unk29_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE3E,
		jumpIfTrue: CompText8744B38_unk28_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE3C,
		jumpIfTrue: CompText8744B38_unk27_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE36,
		jumpIfTrue: CompText8744B38_unk26_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE34,
		jumpIfTrue: CompText8744B38_unk25_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE2E,
		jumpIfTrue: CompText8744B38_unk24_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE2C,
		jumpIfTrue: CompText8744B38_unk23_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE2A,
		jumpIfTrue: CompText8744B38_unk22_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE26,
		jumpIfTrue: CompText8744B38_unk21_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE22,
		jumpIfTrue: CompText8744B38_unk20_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE20,
		jumpIfTrue: CompText8744B38_unk19_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE16,
		jumpIfTrue: CompText8744B38_unk18_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE14,
		jumpIfTrue: CompText8744B38_unk17_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE62,
		jumpIfTrue: CompText8744B38_unk16_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText8744B38_unk16
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Alright,let's go to\n"
	.string "the meeting point!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk17
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's go to the\n"
	.string "Expo Site,Lan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk18
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,let's go back to\n"
	.string "the Expo! We need to\n"
	.string "get all the stamps!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk19
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,let's head for\n"
	.string "the Principal's\n"
	.string "Office!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk20
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,let's go to the\n"
	.string "Principal's Office!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk21
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I wonder where in\n"
	.string "the Expo Site that\n"
	.string "passageway leads..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk22
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We need to get back\n"
	.string "to the Expo Site!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk23
	ts_jump target=CompText8744B38_unk22_id

	def_text_script CompText8744B38_unk24
	ts_jump target=CompText8744B38_unk22_id

	def_text_script CompText8744B38_unk25
	ts_jump target=CompText8744B38_unk22_id

	def_text_script CompText8744B38_unk26
	ts_jump target=CompText8744B38_unk22_id

	def_text_script CompText8744B38_unk27
	ts_jump target=CompText8744B38_unk22_id

	def_text_script CompText8744B38_unk28
	ts_jump target=CompText8744B38_unk22_id

	def_text_script CompText8744B38_unk29
	ts_jump target=CompText8744B38_unk22_id

	def_text_script CompText8744B38_unk30

	def_text_script CompText8744B38_unk31

	def_text_script CompText8744B38_unk32

	def_text_script CompText8744B38_unk33

	def_text_script CompText8744B38_unk34

	def_text_script CompText8744B38_unk35

	def_text_script CompText8744B38_unk36

	def_text_script CompText8744B38_unk37

	def_text_script CompText8744B38_unk38

	def_text_script CompText8744B38_unk39

	def_text_script CompText8744B38_unk40

	def_text_script CompText8744B38_unk41

	def_text_script CompText8744B38_unk42

	def_text_script CompText8744B38_unk43

	def_text_script CompText8744B38_unk44

	def_text_script CompText8744B38_unk45

	def_text_script CompText8744B38_unk46

	def_text_script CompText8744B38_unk47

	def_text_script CompText8744B38_unk48

	def_text_script CompText8744B38_unk49

	def_text_script CompText8744B38_unk50
	ts_check_flag [
		flag: 0x997,
		jumpIfTrue: CompText8744B38_unk54_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x996,
		jumpIfTrue: CompText8744B38_unk53_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x995,
		jumpIfTrue: CompText8744B38_unk52_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x836,
		jumpIfTrue: CompText8744B38_unk51_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Class has started,\n"
	.string "Lan! Go take a look\n"
	.string "at that book!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk51
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "You're in class,Lan!\n"
	.string "Good luck with\n"
	.string "cybercooking!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk52
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "You're in class,Lan!\n"
	.string "Cybercooking class\n"
	.string "is in Green Area1!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk53
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "You're in class,Lan!\n"
	.string "More cybercooking\n"
	.string "fun in Green Area2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk54
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Good luck on\n"
	.string "Ms.Fahran's\n"
	.string "final exam,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk55
	ts_check_flag [
		flag: 0x96F,
		jumpIfTrue: CompText8744B38_unk58_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x96E,
		jumpIfTrue: CompText8744B38_unk57_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x84C,
		jumpIfTrue: CompText8744B38_unk56_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Class has started,\n"
	.string "Lan! Go take a look\n"
	.string "at that book!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk56
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Master Feng-Tian's\n"
	.string "class is in\n"
	.string "Green Area1,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk57
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Master Feng-Tian's\n"
	.string "class is in\n"
	.string "Green Area2,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk58
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "It's time for Master\n"
	.string "Feng-Tian's final\n"
	.string "exam,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk59

	def_text_script CompText8744B38_unk60

	def_text_script CompText8744B38_unk61

	def_text_script CompText8744B38_unk62

	def_text_script CompText8744B38_unk63

	def_text_script CompText8744B38_unk64

	def_text_script CompText8744B38_unk65

	def_text_script CompText8744B38_unk66

	def_text_script CompText8744B38_unk67

	def_text_script CompText8744B38_unk68

	def_text_script CompText8744B38_unk69

	def_text_script CompText8744B38_unk70

	def_text_script CompText8744B38_unk71

	def_text_script CompText8744B38_unk72

	def_text_script CompText8744B38_unk73

	def_text_script CompText8744B38_unk74

	def_text_script CompText8744B38_unk75

	def_text_script CompText8744B38_unk76

	def_text_script CompText8744B38_unk77

	def_text_script CompText8744B38_unk78

	def_text_script CompText8744B38_unk79

	def_text_script CompText8744B38_unk80

	def_text_script CompText8744B38_unk81

	def_text_script CompText8744B38_unk82

	def_text_script CompText8744B38_unk83

	def_text_script CompText8744B38_unk84

	def_text_script CompText8744B38_unk85

	def_text_script CompText8744B38_unk86

	def_text_script CompText8744B38_unk87

	def_text_script CompText8744B38_unk88

	def_text_script CompText8744B38_unk89

	def_text_script CompText8744B38_unk90
	ts_end

	def_text_script CompText8744B38_unk91
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Let me at 'em,Lan!\n"
	.string "I'm burning for one\n"
	.string "hot battle!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk92
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Your operating\n"
	.string "sparks a surge of\n"
	.string "power within me..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk93
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Slash! Any virus in\n"
	.string "my way is asking for\n"
	.string "a slicing!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk94
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "My scythe cries...\n"
	.string "It wants to delete!!\n"
	.string "Hyahahahahaha!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk95
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Is it departure\n"
	.string "time!? I want to be\n"
	.string "on time! Choo,choo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk96
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "I don't fight a lot,\n"
	.string "drip! Real battles\n"
	.string "scare me... drip!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk97
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Lan,your operating\n"
	.string "gives me such an\n"
	.string "awesome feeling!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk98
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "I can feel\n"
	.string "the wind..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk99
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whiiiiiir!\n"
	.string "C'mon! Let's go\n"
	.string "break some viruses!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk100
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Gahahahaha!!\n"
	.string "Let's go clean up\n"
	.string "some cybertrash!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8744B38_unk101
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "Only you and Chaud\n"
	.string "can operate me well.\n"
	.string "Don't let me down..."
	ts_key_wait any=0x0
	ts_end

	