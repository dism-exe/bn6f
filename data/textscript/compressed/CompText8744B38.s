	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8744B38::
	.word 0x93100

	text_archive_start

	def_text_script CompText8744B38_unk0
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x5B,
		jumpIfElecMan: 0x5C,
		jumpIfSlashMan: 0x5D,
		jumpIfEraseMan: 0x5E,
		jumpIfChargeMan: 0x5F,
		jumpIfSpoutMan: 0x60,
		jumpIfTomahawkMan: 0x61,
		jumpIfTenguMan: 0x62,
		jumpIfGroundMan: 0x63,
		jumpIfDustMan: 0x64,
		jumpIfProtoMan: 0x65,
	]
	ts_check_chapter [
		lower: 0x62,
		upper: 0x64,
		jumpIfInRange: 0xF,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x60,
		upper: 0x61,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x35,
		upper: 0x35,
		jumpIfInRange: 0x37,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x34,
		upper: 0x34,
		jumpIfInRange: 0x32,
		jumpIfOutOfRange: 0xFF,
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
		jumpIfTrue: 0xA,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE0E,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE0A,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE08,
		jumpIfTrue: 0x7,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE5A,
		jumpIfTrue: 0x6,
		jumpIfFalse: 0xFF,
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
	ts_check_flag [
		flag: 0xE26,
		jumpIfTrue: 0x15,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE22,
		jumpIfTrue: 0x14,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE20,
		jumpIfTrue: 0x13,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE16,
		jumpIfTrue: 0x12,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE14,
		jumpIfTrue: 0x11,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE62,
		jumpIfTrue: 0x10,
		jumpIfFalse: 0xFF,
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
	ts_jump target=22

	def_text_script CompText8744B38_unk24
	ts_jump target=22

	def_text_script CompText8744B38_unk25
	ts_jump target=22

	def_text_script CompText8744B38_unk26
	ts_jump target=22

	def_text_script CompText8744B38_unk27
	ts_jump target=22

	def_text_script CompText8744B38_unk28
	ts_jump target=22

	def_text_script CompText8744B38_unk29
	ts_jump target=22

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
		jumpIfTrue: 0x36,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x996,
		jumpIfTrue: 0x35,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x995,
		jumpIfTrue: 0x34,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x836,
		jumpIfTrue: 0x33,
		jumpIfFalse: 0xFF,
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
		jumpIfTrue: 0x3A,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x96E,
		jumpIfTrue: 0x39,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x84C,
		jumpIfTrue: 0x38,
		jumpIfFalse: 0xFF,
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

	