	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText874B878::
	.word 0x65700

	text_archive_start

	def_text_script CompText874B878_unk0
	ts_check_chapter [
		lower: 0x15,
		upper: 0x16,
		jumpIfInRange: CompText874B878_unk95_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x14,
		upper: 0x14,
		jumpIfInRange: CompText874B878_unk80_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x12,
		upper: 0x13,
		jumpIfInRange: CompText874B878_unk65_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x10,
		upper: 0x11,
		jumpIfInRange: CompText874B878_unk50_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk1

	def_text_script CompText874B878_unk2

	def_text_script CompText874B878_unk3

	def_text_script CompText874B878_unk4

	def_text_script CompText874B878_unk5

	def_text_script CompText874B878_unk6

	def_text_script CompText874B878_unk7

	def_text_script CompText874B878_unk8

	def_text_script CompText874B878_unk9

	def_text_script CompText874B878_unk10

	def_text_script CompText874B878_unk11

	def_text_script CompText874B878_unk12

	def_text_script CompText874B878_unk13

	def_text_script CompText874B878_unk14

	def_text_script CompText874B878_unk15

	def_text_script CompText874B878_unk16

	def_text_script CompText874B878_unk17

	def_text_script CompText874B878_unk18

	def_text_script CompText874B878_unk19

	def_text_script CompText874B878_unk20

	def_text_script CompText874B878_unk21

	def_text_script CompText874B878_unk22

	def_text_script CompText874B878_unk23

	def_text_script CompText874B878_unk24

	def_text_script CompText874B878_unk25

	def_text_script CompText874B878_unk26

	def_text_script CompText874B878_unk27

	def_text_script CompText874B878_unk28

	def_text_script CompText874B878_unk29

	def_text_script CompText874B878_unk30

	def_text_script CompText874B878_unk31

	def_text_script CompText874B878_unk32

	def_text_script CompText874B878_unk33

	def_text_script CompText874B878_unk34

	def_text_script CompText874B878_unk35

	def_text_script CompText874B878_unk36

	def_text_script CompText874B878_unk37

	def_text_script CompText874B878_unk38

	def_text_script CompText874B878_unk39

	def_text_script CompText874B878_unk40

	def_text_script CompText874B878_unk41

	def_text_script CompText874B878_unk42

	def_text_script CompText874B878_unk43

	def_text_script CompText874B878_unk44

	def_text_script CompText874B878_unk45

	def_text_script CompText874B878_unk46

	def_text_script CompText874B878_unk47

	def_text_script CompText874B878_unk48

	def_text_script CompText874B878_unk49

	def_text_script CompText874B878_unk50
	ts_check_flag [
		flag: 0x50A,
		jumpIfTrue: CompText874B878_unk58_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x508,
		jumpIfTrue: CompText874B878_unk57_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x542,
		jumpIfTrue: CompText874B878_unk56_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x541,
		jumpIfTrue: CompText874B878_unk55_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x504,
		jumpIfTrue: CompText874B878_unk54_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x53F,
		jumpIfTrue: CompText874B878_unk53_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x53D,
		jumpIfTrue: CompText874B878_unk52_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x53C,
		jumpIfTrue: CompText874B878_unk51_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874B878_unk51
	ts_end

	def_text_script CompText874B878_unk52
	ts_end

	def_text_script CompText874B878_unk53
	ts_end

	def_text_script CompText874B878_unk54
	ts_end

	def_text_script CompText874B878_unk55
	ts_end

	def_text_script CompText874B878_unk56
	ts_end

	def_text_script CompText874B878_unk57
	ts_end

	def_text_script CompText874B878_unk58
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go find the\n"
	.string "BBS in SeasideArea1,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk59

	def_text_script CompText874B878_unk60

	def_text_script CompText874B878_unk61

	def_text_script CompText874B878_unk62

	def_text_script CompText874B878_unk63

	def_text_script CompText874B878_unk64

	def_text_script CompText874B878_unk65
	ts_check_flag [
		flag: 0x516,
		jumpIfTrue: CompText874B878_unk73_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x554,
		jumpIfTrue: CompText874B878_unk72_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x514,
		jumpIfTrue: CompText874B878_unk71_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x544,
		jumpIfTrue: CompText874B878_unk70_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x512,
		jumpIfTrue: CompText874B878_unk69_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x510,
		jumpIfTrue: CompText874B878_unk68_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x50E,
		jumpIfTrue: CompText874B878_unk67_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x543,
		jumpIfTrue: CompText874B878_unk66_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go tell Mick\n"
	.string "what we found out\n"
	.string "about the penguin!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk66
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We'd better head on\n"
	.string "over to the meeting\n"
	.string "point!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk67
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've gotta get back\n"
	.string "to Seaside Town..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk68
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time for bed..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk69
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to where\n"
	.string "we said we'd meet\n"
	.string "Mick!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk70
	ts_check_sub_area [
		lower: 0x3,
		upper: 0x3,
		jumpIfInRange: CompText874B878_unk74_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's head back to\n"
	.string "Seaside Town..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk71
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's check out the\n"
	.string "Aquarium!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk72
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The show's about to\n"
	.string "start! Hurry up and\n"
	.string "jack out,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk73
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Well,if that's how\n"
	.string "Mick feels about\n"
	.string "it..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Guess we should just\n"
	.string "go home for today..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk74
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,\n"
	.string "and let's go to the\n"
	.string "Aquarium!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk75

	def_text_script CompText874B878_unk76

	def_text_script CompText874B878_unk77

	def_text_script CompText874B878_unk78

	def_text_script CompText874B878_unk79

	def_text_script CompText874B878_unk80
	ts_check_flag [
		flag: 0x52A,
		jumpIfTrue: CompText874B878_unk87_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x528,
		jumpIfTrue: CompText874B878_unk81_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x526,
		jumpIfTrue: CompText874B878_unk86_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x524,
		jumpIfTrue: CompText874B878_unk85_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x522,
		jumpIfTrue: CompText874B878_unk84_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x51E,
		jumpIfTrue: CompText874B878_unk83_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x555,
		jumpIfTrue: CompText874B878_unk82_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x51C,
		jumpIfTrue: CompText874B878_unk81_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We've gotta hurry\n"
	.string "after Mick!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk81
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry! We've gotta\n"
	.string "save everybody!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk82
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If we don't return\n"
	.string "the Aquarium back to\n"
	.string "normal,who knows...!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk83
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan! We\n"
	.string "have to find Fanny's\n"
	.string "play ball fast!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk84
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... What was she\n"
	.string "trying to tell us?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hurry,MegaMan,and\n"
	.string "jack out!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk85
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's use this\n"
	.string "CopyBot and get back\n"
	.string "to the large tank!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk86
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "It looks like we can\n"
	.string "get Fanny to move\n"
	.string "with this play ball!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Jack out,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk87
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry! We've gotta\n"
	.string "save everybody!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk88

	def_text_script CompText874B878_unk89

	def_text_script CompText874B878_unk90

	def_text_script CompText874B878_unk91

	def_text_script CompText874B878_unk92

	def_text_script CompText874B878_unk93

	def_text_script CompText874B878_unk94

	def_text_script CompText874B878_unk95
	ts_check_flag [
		flag: 0x538,
		jumpIfTrue: CompText874B878_unk96_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874B878_unk96
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time for bed..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874B878_unk97

	def_text_script CompText874B878_unk98

	def_text_script CompText874B878_unk99

	