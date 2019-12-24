	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8749514::
	.word 0xE7600

	text_archive_start

	def_text_script CompText8749514_unk0
	ts_check_chapter [
		lower: 0x15,
		upper: 0x16,
		jumpIfInRange: 0x5F,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x14,
		upper: 0x14,
		jumpIfInRange: 0x50,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x12,
		upper: 0x13,
		jumpIfInRange: 0x41,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x10,
		upper: 0x11,
		jumpIfInRange: 0x32,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x5,
		upper: 0x5,
		jumpIfInRange: 0x23,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x3,
		upper: 0x4,
		jumpIfInRange: 0x19,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: 0xF,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x0,
		upper: 0x1,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk1

	def_text_script CompText8749514_unk2

	def_text_script CompText8749514_unk3

	def_text_script CompText8749514_unk4

	def_text_script CompText8749514_unk5
	ts_check_flag [
		flag: 0x41A,
		jumpIfTrue: 0xC,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x46D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0xB,
	]
	ts_check_flag [
		flag: 0x1CA0,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x418,
		jumpIfTrue: 0x7,
		jumpIfFalse: 0xFF,
	]
	ts_end

	def_text_script CompText8749514_unk6

	def_text_script CompText8749514_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Looks like every-\n"
	.string "thing's OK again!\n"
	.string "Jack out,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's read the mail,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk9
	ts_check_flag [
		flag: 0x1D20,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x469,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0xA,
	]
	ts_check_flag [
		flag: 0x46A,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0xA,
	]
	ts_check_flag [
		flag: 0x46B,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0xA,
	]
	ts_check_flag [
		flag: 0x46C,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0xA,
	]

	def_text_script CompText8749514_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go on the Net,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk11
	ts_jump target=10

	def_text_script CompText8749514_unk12

	def_text_script CompText8749514_unk13

	def_text_script CompText8749514_unk14

	def_text_script CompText8749514_unk15
	ts_check_flag [
		flag: 0x42A,
		jumpIfTrue: 0x16,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x426,
		jumpIfTrue: 0x15,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x420,
		jumpIfTrue: 0x13,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x471,
		jumpIfTrue: 0x12,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x41E,
		jumpIfTrue: 0x10,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We should get off\n"
	.string "the Net and get to\n"
	.string "school!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's go to the\n"
	.string "Teachers' Room!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go look for an\n"
	.string "energetic teacher in\n"
	.string "a red warm-up suit!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk18
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to our new\n"
	.string "classroom,6-1,on the\n"
	.string "second floor!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk19
	ts_check_sub_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: 0x14,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Gotta say hi to\n"
	.string "everybody in the\n"
	.string "class,I guess..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk20
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Let's go say hi to\n"
	.string "everyone!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,so\n"
	.string "we can get ready for\n"
	.string "our next class!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk22

	def_text_script CompText8749514_unk23

	def_text_script CompText8749514_unk24

	def_text_script CompText8749514_unk25
	ts_check_flag [
		flag: 0x43A,
		jumpIfTrue: 0x20,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x436,
		jumpIfTrue: 0x1F,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x434,
		jumpIfTrue: 0x1D,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x432,
		jumpIfTrue: 0x1D,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x47C,
		jumpIfTrue: 0x1C,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x42E,
		jumpIfTrue: 0x1B,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x47B,
		jumpIfTrue: 0x1A,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What's going on with\n"
	.string "the Security Bots!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We've gotta do\n"
	.string "something about\n"
	.string "the fire!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk26
	ts_end

	def_text_script CompText8749514_unk27
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Where's Mick?..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And where's he\n"
	.string "controlling the\n"
	.string "Security Bots from?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk28
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan!\n"
	.string "The Teachers' Room!\n"
	.string "Hurry!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk29
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta fix the\n"
	.string "control system!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk30
	ts_end

	def_text_script CompText8749514_unk31
	ts_end

	def_text_script CompText8749514_unk32
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta go beat\n"
	.string "BlastMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk33

	def_text_script CompText8749514_unk34

	def_text_script CompText8749514_unk35
	ts_check_flag [
		flag: 0x442,
		jumpIfTrue: 0x24,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Let's go on the Net!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk36
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time to jack out,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk37

	def_text_script CompText8749514_unk38

	def_text_script CompText8749514_unk39

	def_text_script CompText8749514_unk40

	def_text_script CompText8749514_unk41

	def_text_script CompText8749514_unk42

	def_text_script CompText8749514_unk43

	def_text_script CompText8749514_unk44

	def_text_script CompText8749514_unk45

	def_text_script CompText8749514_unk46

	def_text_script CompText8749514_unk47

	def_text_script CompText8749514_unk48

	def_text_script CompText8749514_unk49

	def_text_script CompText8749514_unk50
	ts_check_flag [
		flag: 0x50A,
		jumpIfTrue: 0x3A,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x508,
		jumpIfTrue: 0x39,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x542,
		jumpIfTrue: 0x38,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x541,
		jumpIfTrue: 0x37,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x504,
		jumpIfTrue: 0x36,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x53F,
		jumpIfTrue: 0x35,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x53D,
		jumpIfTrue: 0x34,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x53C,
		jumpIfTrue: 0x33,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan,do you\n"
	.string "know what penguins\n"
	.string "eat...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh,I know! Jack out,\n"
	.string "MegaMan! Let's ask\n"
	.string "the Biology teacher!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk51
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,\n"
	.string "and let's go find"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the Biology\n"
	.string "teacher's aide!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk52
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's go look for\n"
	.string "some penguin food!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk53
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's get back to\n"
	.string "school and give the\n"
	.string "penguin the fish!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk54
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go find the\n"
	.string "BBS in SeasideArea1!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe there'll be\n"
	.string "something about our\n"
	.string "penguin there!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk55
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The Repair Navi's\n"
	.string "not here... Maybe we\n"
	.string "should look for him?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk56
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's go look for"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the Repair Navi's\n"
	.string "\""
	ts_print_item [
		item: 0x8,
		buffer: 0x0,
	]
	.string "\"!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk57
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's head to\n"
	.string "CentralArea3 and"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "give the Repair Navi\n"
	.string "his \""
	ts_print_item [
		item: 0x8,
		buffer: 0x0,
	]
	.string "\"!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk58
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go find the\n"
	.string "BBS in SeasideArea1,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk59

	def_text_script CompText8749514_unk60

	def_text_script CompText8749514_unk61

	def_text_script CompText8749514_unk62

	def_text_script CompText8749514_unk63

	def_text_script CompText8749514_unk64

	def_text_script CompText8749514_unk65
	ts_check_flag [
		flag: 0x516,
		jumpIfTrue: 0x49,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x554,
		jumpIfTrue: 0x48,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x514,
		jumpIfTrue: 0x47,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x544,
		jumpIfTrue: 0x46,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x512,
		jumpIfTrue: 0x45,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x510,
		jumpIfTrue: 0x44,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x50E,
		jumpIfTrue: 0x43,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x543,
		jumpIfTrue: 0x42,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_msg_open
	.string "Let's go tell Mick\n"
	.string "what we found out\n"
	.string "about the penguin!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk66
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We'd better head on\n"
	.string "over to the meeting\n"
	.string "point!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk67
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've gotta go to\n"
	.string "the Aquarium,huh?\n"
	.string "OK,jack out,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk68
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time for bed..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk69
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to where\n"
	.string "we said we'd meet\n"
	.string "Mick!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk70
	ts_check_sub_area [
		lower: 0x8,
		upper: 0x8,
		jumpIfInRange: 0x4A,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's head back to\n"
	.string "Seaside Town..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk71
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's check out the\n"
	.string "Aquarium!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk72
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The show's about to\n"
	.string "start! Hurry up and\n"
	.string "jack out,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk73
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

	def_text_script CompText8749514_unk74
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,\n"
	.string "and let's go to the\n"
	.string "Aquarium!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk75

	def_text_script CompText8749514_unk76

	def_text_script CompText8749514_unk77

	def_text_script CompText8749514_unk78

	def_text_script CompText8749514_unk79

	def_text_script CompText8749514_unk80
	ts_check_flag [
		flag: 0x52A,
		jumpIfTrue: 0x57,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x528,
		jumpIfTrue: 0x51,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x526,
		jumpIfTrue: 0x56,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x524,
		jumpIfTrue: 0x55,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x522,
		jumpIfTrue: 0x54,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x51E,
		jumpIfTrue: 0x53,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x555,
		jumpIfTrue: 0x52,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x51C,
		jumpIfTrue: 0x51,
		jumpIfFalse: 0xFF,
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

	def_text_script CompText8749514_unk81
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry! We've gotta\n"
	.string "save everybody!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk82
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

	def_text_script CompText8749514_unk83
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan! We\n"
	.string "have to find Fanny's\n"
	.string "play ball fast!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk84
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

	def_text_script CompText8749514_unk85
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

	def_text_script CompText8749514_unk86
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

	def_text_script CompText8749514_unk87
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry! We've gotta\n"
	.string "save everybody!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk88

	def_text_script CompText8749514_unk89

	def_text_script CompText8749514_unk90

	def_text_script CompText8749514_unk91

	def_text_script CompText8749514_unk92

	def_text_script CompText8749514_unk93

	def_text_script CompText8749514_unk94

	def_text_script CompText8749514_unk95
	ts_check_flag [
		flag: 0x538,
		jumpIfTrue: 0x60,
		jumpIfFalse: 0xFF,
	]
	ts_end

	def_text_script CompText8749514_unk96
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time for bed..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8749514_unk97

	def_text_script CompText8749514_unk98

	def_text_script CompText8749514_unk99

	def_text_script CompText8749514_unk100

	def_text_script CompText8749514_unk101

	def_text_script CompText8749514_unk102

	def_text_script CompText8749514_unk103

	def_text_script CompText8749514_unk104

	def_text_script CompText8749514_unk105

	def_text_script CompText8749514_unk106

	def_text_script CompText8749514_unk107

	def_text_script CompText8749514_unk108

	def_text_script CompText8749514_unk109

	def_text_script CompText8749514_unk110

	def_text_script CompText8749514_unk111

	def_text_script CompText8749514_unk112

	def_text_script CompText8749514_unk113

	def_text_script CompText8749514_unk114

	def_text_script CompText8749514_unk115

	def_text_script CompText8749514_unk116

	def_text_script CompText8749514_unk117

	def_text_script CompText8749514_unk118

	def_text_script CompText8749514_unk119

	def_text_script CompText8749514_unk120

	def_text_script CompText8749514_unk121

	def_text_script CompText8749514_unk122

	def_text_script CompText8749514_unk123

	def_text_script CompText8749514_unk124

	def_text_script CompText8749514_unk125

	def_text_script CompText8749514_unk126

	def_text_script CompText8749514_unk127

	def_text_script CompText8749514_unk128

	def_text_script CompText8749514_unk129

	def_text_script CompText8749514_unk130

	def_text_script CompText8749514_unk131

	def_text_script CompText8749514_unk132

	def_text_script CompText8749514_unk133

	def_text_script CompText8749514_unk134

	def_text_script CompText8749514_unk135

	def_text_script CompText8749514_unk136

	def_text_script CompText8749514_unk137

	def_text_script CompText8749514_unk138

	def_text_script CompText8749514_unk139

	def_text_script CompText8749514_unk140

	def_text_script CompText8749514_unk141

	def_text_script CompText8749514_unk142

	def_text_script CompText8749514_unk143

	def_text_script CompText8749514_unk144

	def_text_script CompText8749514_unk145

	def_text_script CompText8749514_unk146

	def_text_script CompText8749514_unk147

	def_text_script CompText8749514_unk148

	def_text_script CompText8749514_unk149

	def_text_script CompText8749514_unk150

	def_text_script CompText8749514_unk151

	def_text_script CompText8749514_unk152

	def_text_script CompText8749514_unk153

	def_text_script CompText8749514_unk154

	def_text_script CompText8749514_unk155

	def_text_script CompText8749514_unk156

	def_text_script CompText8749514_unk157

	def_text_script CompText8749514_unk158

	def_text_script CompText8749514_unk159

	def_text_script CompText8749514_unk160

	def_text_script CompText8749514_unk161

	def_text_script CompText8749514_unk162

	def_text_script CompText8749514_unk163

	def_text_script CompText8749514_unk164

	def_text_script CompText8749514_unk165

	def_text_script CompText8749514_unk166

	def_text_script CompText8749514_unk167

	def_text_script CompText8749514_unk168

	def_text_script CompText8749514_unk169

	def_text_script CompText8749514_unk170

	def_text_script CompText8749514_unk171

	def_text_script CompText8749514_unk172

	def_text_script CompText8749514_unk173

	def_text_script CompText8749514_unk174

	def_text_script CompText8749514_unk175

	def_text_script CompText8749514_unk176

	def_text_script CompText8749514_unk177

	def_text_script CompText8749514_unk178

	def_text_script CompText8749514_unk179

	def_text_script CompText8749514_unk180

	def_text_script CompText8749514_unk181

	def_text_script CompText8749514_unk182

	def_text_script CompText8749514_unk183

	def_text_script CompText8749514_unk184

	def_text_script CompText8749514_unk185

	def_text_script CompText8749514_unk186

	def_text_script CompText8749514_unk187

	def_text_script CompText8749514_unk188

	def_text_script CompText8749514_unk189

	def_text_script CompText8749514_unk190

	def_text_script CompText8749514_unk191

	def_text_script CompText8749514_unk192

	def_text_script CompText8749514_unk193

	def_text_script CompText8749514_unk194

	def_text_script CompText8749514_unk195

	def_text_script CompText8749514_unk196

	def_text_script CompText8749514_unk197

	def_text_script CompText8749514_unk198

	def_text_script CompText8749514_unk199

	def_text_script CompText8749514_unk200

	def_text_script CompText8749514_unk201

	def_text_script CompText8749514_unk202

	def_text_script CompText8749514_unk203

	def_text_script CompText8749514_unk204

	def_text_script CompText8749514_unk205

	def_text_script CompText8749514_unk206

	def_text_script CompText8749514_unk207

	def_text_script CompText8749514_unk208

	def_text_script CompText8749514_unk209

	def_text_script CompText8749514_unk210

	def_text_script CompText8749514_unk211

	def_text_script CompText8749514_unk212

	def_text_script CompText8749514_unk213

	def_text_script CompText8749514_unk214

	def_text_script CompText8749514_unk215

	def_text_script CompText8749514_unk216

	def_text_script CompText8749514_unk217

	def_text_script CompText8749514_unk218

	def_text_script CompText8749514_unk219

	def_text_script CompText8749514_unk220

	def_text_script CompText8749514_unk221

	def_text_script CompText8749514_unk222

	def_text_script CompText8749514_unk223

	def_text_script CompText8749514_unk224

	def_text_script CompText8749514_unk225

	def_text_script CompText8749514_unk226

	def_text_script CompText8749514_unk227

	def_text_script CompText8749514_unk228

	def_text_script CompText8749514_unk229

	def_text_script CompText8749514_unk230

	def_text_script CompText8749514_unk231

	def_text_script CompText8749514_unk232

	def_text_script CompText8749514_unk233

	def_text_script CompText8749514_unk234

	def_text_script CompText8749514_unk235

	def_text_script CompText8749514_unk236

	def_text_script CompText8749514_unk237

	def_text_script CompText8749514_unk238

	def_text_script CompText8749514_unk239

	def_text_script CompText8749514_unk240

	def_text_script CompText8749514_unk241

	def_text_script CompText8749514_unk242

	def_text_script CompText8749514_unk243

	def_text_script CompText8749514_unk244

	def_text_script CompText8749514_unk245

	def_text_script CompText8749514_unk246

	def_text_script CompText8749514_unk247

	def_text_script CompText8749514_unk248

	def_text_script CompText8749514_unk249

	def_text_script CompText8749514_unk250

	def_text_script CompText8749514_unk251

	def_text_script CompText8749514_unk252

	def_text_script CompText8749514_unk253

	def_text_script CompText8749514_unk254

	