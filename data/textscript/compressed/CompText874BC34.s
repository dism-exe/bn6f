	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText874BC34::
	.word 0x11CF00

	text_archive_start

	def_text_script CompText874BC34_unk0
	ts_check_chapter [
		lower: 0x80,
		upper: 0x80,
		jumpIfInRange: CompText874BC34_unk220_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x32,
		upper: 0x33,
		jumpIfInRange: CompText874BC34_unk95_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x31,
		upper: 0x31,
		jumpIfInRange: CompText874BC34_unk80_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x30,
		upper: 0x30,
		jumpIfInRange: CompText874BC34_unk70_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x24,
		upper: 0x25,
		jumpIfInRange: CompText874BC34_unk50_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x22,
		upper: 0x23,
		jumpIfInRange: CompText874BC34_unk35_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x21,
		upper: 0x21,
		jumpIfInRange: CompText874BC34_unk10_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x20,
		upper: 0x20,
		jumpIfInRange: CompText874BC34_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "Temporary message"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk1

	def_text_script CompText874BC34_unk2

	def_text_script CompText874BC34_unk3

	def_text_script CompText874BC34_unk4

	def_text_script CompText874BC34_unk5
	ts_check_flag [
		flag: 0x606,
		jumpIfTrue: CompText874BC34_unk6_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go show\n"
	.string "Mr.Mach what you\n"
	.string "wrote!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Alright,better\n"
	.string "get all my stuff\n"
	.string "together!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk7

	def_text_script CompText874BC34_unk8

	def_text_script CompText874BC34_unk9

	def_text_script CompText874BC34_unk10
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText874BC34_unk20_id,
	]
	ts_check_flag [
		flag: 0x669,
		jumpIfTrue: CompText874BC34_unk17_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x665,
		jumpIfTrue: CompText874BC34_unk16_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x661,
		jumpIfTrue: CompText874BC34_unk15_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x65D,
		jumpIfTrue: CompText874BC34_unk14_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x659,
		jumpIfTrue: CompText874BC34_unk13_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x657,
		jumpIfTrue: CompText874BC34_unk12_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x655,
		jumpIfTrue: CompText874BC34_unk11_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText874BC34_unk18_id

	def_text_script CompText874BC34_unk11
	ts_jump target=CompText874BC34_unk18_id

	def_text_script CompText874BC34_unk12
	ts_check_sub_area [
		lower: 0xD,
		upper: 0xD,
		jumpIfInRange: CompText874BC34_unk19_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x8,
		upper: 0x8,
		jumpIfInRange: CompText874BC34_unk19_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Heeeeeey!\n"
	.string "Where are\n"
	.string "the Kettles!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk13
	ts_jump target=CompText874BC34_unk12_id

	def_text_script CompText874BC34_unk14
	ts_jump target=CompText874BC34_unk12_id

	def_text_script CompText874BC34_unk15
	ts_jump target=CompText874BC34_unk12_id

	def_text_script CompText874BC34_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time for Match's\n"
	.string "final...\n"
	.string "Good luck!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I think it's time\n"
	.string "to head on home..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk18
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta go take\n"
	.string "Match's class!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk19
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's head over to\n"
	.string "CentralArea and find\n"
	.string "some Kettles!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk20
	ts_check_flag [
		flag: 0x67B,
		jumpIfTrue: CompText874BC34_unk29_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x679,
		jumpIfTrue: CompText874BC34_unk28_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x677,
		jumpIfTrue: CompText874BC34_unk27_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x66F,
		jumpIfTrue: CompText874BC34_unk23_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x66D,
		jumpIfTrue: CompText874BC34_unk22_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x66B,
		jumpIfTrue: CompText874BC34_unk21_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText874BC34_unk30_id

	def_text_script CompText874BC34_unk21
	ts_jump target=CompText874BC34_unk30_id

	def_text_script CompText874BC34_unk22
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Shuko told us to go\n"
	.string "to the Aquarium HP!\n"
	.string "Let's go,SpoutMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk23
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go back to\n"
	.string "SeasideArea,\n"
	.string "SpoutMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk24
	ts_jump target=CompText874BC34_unk23_id

	def_text_script CompText874BC34_unk25
	ts_jump target=CompText874BC34_unk23_id

	def_text_script CompText874BC34_unk26
	ts_jump target=CompText874BC34_unk23_id

	def_text_script CompText874BC34_unk27
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's bring the fish\n"
	.string "data back to the\n"
	.string "Aquarium,SpoutMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk28
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Next is Shuko's\n"
	.string "final exam,huh...?\n"
	.string "Good luck!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk29
	ts_jump target=CompText874BC34_unk17_id

	def_text_script CompText874BC34_unk30
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta go take\n"
	.string "Shuko's class!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk31

	def_text_script CompText874BC34_unk32

	def_text_script CompText874BC34_unk33

	def_text_script CompText874BC34_unk34

	def_text_script CompText874BC34_unk35
	ts_check_flag [
		flag: 0x618,
		jumpIfTrue: CompText874BC34_unk42_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x614,
		jumpIfTrue: CompText874BC34_unk40_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x612,
		jumpIfTrue: CompText874BC34_unk39_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The event tomorrow\n"
	.string "sounds fun! I wonder\n"
	.string "what'll happen!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk36

	def_text_script CompText874BC34_unk37

	def_text_script CompText874BC34_unk38

	def_text_script CompText874BC34_unk39
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Head for the Net,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk40
	ts_check_sub_area [
		lower: 0x3,
		upper: 0x3,
		jumpIfInRange: CompText874BC34_unk41_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x5,
		upper: 0x5,
		jumpIfInRange: CompText874BC34_unk41_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x7,
		upper: 0x7,
		jumpIfInRange: CompText874BC34_unk41_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Wh-What in the\n"
	.string "world happened...!?\n"
	.string "Let's hurry!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk41
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We don't have time\n"
	.string "to hang around here!\n"
	.string "Back to the Net!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk42
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The Cybeast might\n"
	.string "still be in\n"
	.string "CentralArea3..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk43

	def_text_script CompText874BC34_unk44

	def_text_script CompText874BC34_unk45

	def_text_script CompText874BC34_unk46

	def_text_script CompText874BC34_unk47

	def_text_script CompText874BC34_unk48

	def_text_script CompText874BC34_unk49

	def_text_script CompText874BC34_unk50
	ts_check_flag [
		flag: 0x626,
		jumpIfTrue: CompText874BC34_unk55_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x620,
		jumpIfTrue: CompText874BC34_unk53_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_game_version [
		jumpIfCybeastGregar: CompText874BC34_unk51_id,
		jumpIfCybeastFalzar: CompText874BC34_unk52_id,
	]
	ts_end

	def_text_script CompText874BC34_unk51
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The \"Healing Water\"\n"
	.string "is in SeasideArea3,\n"
	.string "HeatMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk52
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The \"Healing Water\"\n"
	.string "is in SeasideArea3,\n"
	.string "SpoutMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk53
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText874BC34_unk54_id,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's bring that\n"
	.string "\"Healing Water\" back\n"
	.string "to MegaMan,HeatMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk54
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's bring that\n"
	.string "\"Healing Water\" back\n"
	.string "to MegaMan,SpoutMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk55
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Head for\n"
	.string "CentralArea3,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk56

	def_text_script CompText874BC34_unk57

	def_text_script CompText874BC34_unk58

	def_text_script CompText874BC34_unk59

	def_text_script CompText874BC34_unk60

	def_text_script CompText874BC34_unk61

	def_text_script CompText874BC34_unk62

	def_text_script CompText874BC34_unk63

	def_text_script CompText874BC34_unk64

	def_text_script CompText874BC34_unk65

	def_text_script CompText874BC34_unk66

	def_text_script CompText874BC34_unk67

	def_text_script CompText874BC34_unk68

	def_text_script CompText874BC34_unk69

	def_text_script CompText874BC34_unk70
	ts_check_flag [
		flag: 0x85A,
		jumpIfTrue: CompText874BC34_unk75_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x87B,
		jumpIfTrue: CompText874BC34_unk74_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x859,
		jumpIfTrue: CompText874BC34_unk73_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x858,
		jumpIfTrue: CompText874BC34_unk72_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x857,
		jumpIfTrue: CompText874BC34_unk71_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "CentralArea NetCafe,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and enter the\n"
	.string "Operator Navi\n"
	.string "Selection Test!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk71
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's find that\n"
	.string "cyberseal,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk72
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I wonder what a fish\n"
	.string "that can't swim is??"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk73
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "\"I am always looking\n"
	.string " at crayfish\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Um... Well,for a\n"
	.string "start,let's try to\n"
	.string "find a crayfish..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk74
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's find something\n"
	.string "that's looking at\n"
	.string "the crayfish"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "in our classroom!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk75
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We passed the\n"
	.string "prelims!\n"
	.string "Let's jack out,OK?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk76

	def_text_script CompText874BC34_unk77

	def_text_script CompText874BC34_unk78

	def_text_script CompText874BC34_unk79

	def_text_script CompText874BC34_unk80
	ts_check_flag [
		flag: 0x80E,
		jumpIfTrue: CompText874BC34_unk87_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x80A,
		jumpIfTrue: CompText874BC34_unk86_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x867,
		jumpIfTrue: CompText874BC34_unk85_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x866,
		jumpIfTrue: CompText874BC34_unk84_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x865,
		jumpIfTrue: CompText874BC34_unk83_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x864,
		jumpIfTrue: CompText874BC34_unk82_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x806,
		jumpIfTrue: CompText874BC34_unk81_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go see what's\n"
	.string "in Green Town!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk81
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We need to go to the\n"
	.string "Green Area2 NetCafe"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "to get permission\n"
	.string "to enter the\n"
	.string "courthouse!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk82
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "If you hit Mr.Prog\n"
	.string "on the head,what's\n"
	.string "the punishment...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I have no idea..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk83
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I wonder if you\n"
	.string "would really get\n"
	.string "an"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"infuriating\n"
	.string " punishment from\n"
	.string " Mr.Prog\"..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk84
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We need to go to the\n"
	.string "Green Area2 NetCafe"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "to get permission\n"
	.string "to enter the\n"
	.string "courthouse!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk85
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We have to get back\n"
	.string "to the courthouse!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk86
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's check out the\n"
	.string "courtroom!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk87
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah,it's time to go\n"
	.string "home and head to bed\n"
	.string "already..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk88

	def_text_script CompText874BC34_unk89

	def_text_script CompText874BC34_unk90

	def_text_script CompText874BC34_unk91

	def_text_script CompText874BC34_unk92

	def_text_script CompText874BC34_unk93

	def_text_script CompText874BC34_unk94

	def_text_script CompText874BC34_unk95
	ts_check_flag [
		flag: 0x824,
		jumpIfTrue: CompText874BC34_unk105_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x81E,
		jumpIfTrue: CompText874BC34_unk104_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x870,
		jumpIfTrue: CompText874BC34_unk103_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x81C,
		jumpIfTrue: CompText874BC34_unk102_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x81A,
		jumpIfTrue: CompText874BC34_unk101_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x816,
		jumpIfTrue: CompText874BC34_unk100_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x86E,
		jumpIfTrue: CompText874BC34_unk99_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x86D,
		jumpIfTrue: CompText874BC34_unk98_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x814,
		jumpIfTrue: CompText874BC34_unk97_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x86C,
		jumpIfTrue: CompText874BC34_unk96_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "In any case,we've\n"
	.string "gotta go home and\n"
	.string "ask Mom..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk96
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Head for Green Town,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk97
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's try to find\n"
	.string "out more about Dad!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk98
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've gotta find\n"
	.string "something to prove\n"
	.string "what Dad was doing"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "yesterday at 4 P.M.\n"
	.string "in Central Town!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk99
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've gotta find\n"
	.string "someone at school"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "who saw Dad at\n"
	.string "4 P.M. yesterday!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk100
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I think we can find\n"
	.string "proof that Dad was\n"
	.string "at the school at"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "4 P.M. yesterday!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk101
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out! The\n"
	.string "RoboControl PC is in\n"
	.string "the Teachers' Room!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk102
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's take that\n"
	.string "recorded data\n"
	.string "to the courthouse!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'll prove Dad's\n"
	.string "innocent!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk103
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,and let's\n"
	.string "get over to the\n"
	.string "Punishment Room!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk104
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We can save Dad if\n"
	.string "we show our proof\n"
	.string "to the JudgeTree!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk105
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We've gotta figure\n"
	.string "out how to stop the\n"
	.string "JudgeTree!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk106
	ts_end

	def_text_script CompText874BC34_unk107
	ts_end

	def_text_script CompText874BC34_unk108

	def_text_script CompText874BC34_unk109

	def_text_script CompText874BC34_unk110

	def_text_script CompText874BC34_unk111

	def_text_script CompText874BC34_unk112

	def_text_script CompText874BC34_unk113

	def_text_script CompText874BC34_unk114

	def_text_script CompText874BC34_unk115

	def_text_script CompText874BC34_unk116

	def_text_script CompText874BC34_unk117

	def_text_script CompText874BC34_unk118

	def_text_script CompText874BC34_unk119

	def_text_script CompText874BC34_unk120

	def_text_script CompText874BC34_unk121

	def_text_script CompText874BC34_unk122

	def_text_script CompText874BC34_unk123

	def_text_script CompText874BC34_unk124

	def_text_script CompText874BC34_unk125

	def_text_script CompText874BC34_unk126

	def_text_script CompText874BC34_unk127

	def_text_script CompText874BC34_unk128

	def_text_script CompText874BC34_unk129

	def_text_script CompText874BC34_unk130

	def_text_script CompText874BC34_unk131

	def_text_script CompText874BC34_unk132

	def_text_script CompText874BC34_unk133

	def_text_script CompText874BC34_unk134

	def_text_script CompText874BC34_unk135

	def_text_script CompText874BC34_unk136

	def_text_script CompText874BC34_unk137

	def_text_script CompText874BC34_unk138

	def_text_script CompText874BC34_unk139

	def_text_script CompText874BC34_unk140

	def_text_script CompText874BC34_unk141

	def_text_script CompText874BC34_unk142

	def_text_script CompText874BC34_unk143

	def_text_script CompText874BC34_unk144

	def_text_script CompText874BC34_unk145

	def_text_script CompText874BC34_unk146

	def_text_script CompText874BC34_unk147

	def_text_script CompText874BC34_unk148

	def_text_script CompText874BC34_unk149

	def_text_script CompText874BC34_unk150

	def_text_script CompText874BC34_unk151

	def_text_script CompText874BC34_unk152

	def_text_script CompText874BC34_unk153

	def_text_script CompText874BC34_unk154

	def_text_script CompText874BC34_unk155

	def_text_script CompText874BC34_unk156

	def_text_script CompText874BC34_unk157

	def_text_script CompText874BC34_unk158

	def_text_script CompText874BC34_unk159

	def_text_script CompText874BC34_unk160

	def_text_script CompText874BC34_unk161

	def_text_script CompText874BC34_unk162

	def_text_script CompText874BC34_unk163

	def_text_script CompText874BC34_unk164

	def_text_script CompText874BC34_unk165

	def_text_script CompText874BC34_unk166

	def_text_script CompText874BC34_unk167

	def_text_script CompText874BC34_unk168

	def_text_script CompText874BC34_unk169

	def_text_script CompText874BC34_unk170

	def_text_script CompText874BC34_unk171

	def_text_script CompText874BC34_unk172

	def_text_script CompText874BC34_unk173

	def_text_script CompText874BC34_unk174

	def_text_script CompText874BC34_unk175

	def_text_script CompText874BC34_unk176

	def_text_script CompText874BC34_unk177

	def_text_script CompText874BC34_unk178

	def_text_script CompText874BC34_unk179

	def_text_script CompText874BC34_unk180

	def_text_script CompText874BC34_unk181

	def_text_script CompText874BC34_unk182

	def_text_script CompText874BC34_unk183

	def_text_script CompText874BC34_unk184

	def_text_script CompText874BC34_unk185

	def_text_script CompText874BC34_unk186

	def_text_script CompText874BC34_unk187

	def_text_script CompText874BC34_unk188

	def_text_script CompText874BC34_unk189

	def_text_script CompText874BC34_unk190

	def_text_script CompText874BC34_unk191

	def_text_script CompText874BC34_unk192

	def_text_script CompText874BC34_unk193

	def_text_script CompText874BC34_unk194

	def_text_script CompText874BC34_unk195

	def_text_script CompText874BC34_unk196

	def_text_script CompText874BC34_unk197

	def_text_script CompText874BC34_unk198

	def_text_script CompText874BC34_unk199

	def_text_script CompText874BC34_unk200

	def_text_script CompText874BC34_unk201

	def_text_script CompText874BC34_unk202

	def_text_script CompText874BC34_unk203

	def_text_script CompText874BC34_unk204

	def_text_script CompText874BC34_unk205

	def_text_script CompText874BC34_unk206

	def_text_script CompText874BC34_unk207

	def_text_script CompText874BC34_unk208

	def_text_script CompText874BC34_unk209

	def_text_script CompText874BC34_unk210

	def_text_script CompText874BC34_unk211

	def_text_script CompText874BC34_unk212

	def_text_script CompText874BC34_unk213

	def_text_script CompText874BC34_unk214

	def_text_script CompText874BC34_unk215

	def_text_script CompText874BC34_unk216

	def_text_script CompText874BC34_unk217

	def_text_script CompText874BC34_unk218

	def_text_script CompText874BC34_unk219

	def_text_script CompText874BC34_unk220
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText874BC34_unk221_id,
		jumpIfElecMan: CompText874BC34_unk222_id,
		jumpIfSlashMan: CompText874BC34_unk223_id,
		jumpIfEraseMan: CompText874BC34_unk224_id,
		jumpIfChargeMan: CompText874BC34_unk225_id,
		jumpIfSpoutMan: CompText874BC34_unk226_id,
		jumpIfTomahawkMan: CompText874BC34_unk227_id,
		jumpIfTenguMan: CompText874BC34_unk228_id,
		jumpIfGroundMan: CompText874BC34_unk229_id,
		jumpIfDustMan: CompText874BC34_unk230_id,
		jumpIfProtoMan: CompText874BC34_unk231_id,
	]
	ts_end

	def_text_script CompText874BC34_unk221
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating HeatMan...\n"
	.string "It lights my soul on\n"
	.string "fire!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk222
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ElecMan...\n"
	.string "I feel a surge of\n"
	.string "power coming on!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk223
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SlashMan\n"
	.string "is like sharpening\n"
	.string "my mind to a point!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk224
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating EraseMan\n"
	.string "brings out my dark\n"
	.string "side... Mwahahaha!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk225
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ChargeMan\n"
	.string "makes me want to\n"
	.string "plow ahead!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk226
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SpoutMan\n"
	.string "makes me feel like\n"
	.string "a little fish..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk227
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating\n"
	.string "TomahawkMan is an\n"
	.string "awesome feeling!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk228
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating TenguMan\n"
	.string "brings a sense of\n"
	.string "peace to my heart..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk229
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating GroundMan\n"
	.string "lets me drill\n"
	.string "through anything!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk230
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating DustMan...\n"
	.string "There's no virus we\n"
	.string "can't scrap!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk231
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "ProtoMan helping out\n"
	.string "during battle... He\n"
	.string "sure is trustworthy!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874BC34_unk232

	def_text_script CompText874BC34_unk233

	def_text_script CompText874BC34_unk234

	def_text_script CompText874BC34_unk235

	def_text_script CompText874BC34_unk236

	def_text_script CompText874BC34_unk237

	def_text_script CompText874BC34_unk238

	def_text_script CompText874BC34_unk239

	def_text_script CompText874BC34_unk240

	def_text_script CompText874BC34_unk241

	def_text_script CompText874BC34_unk242

	def_text_script CompText874BC34_unk243

	def_text_script CompText874BC34_unk244

	def_text_script CompText874BC34_unk245

	def_text_script CompText874BC34_unk246

	def_text_script CompText874BC34_unk247

	def_text_script CompText874BC34_unk248

	def_text_script CompText874BC34_unk249

	def_text_script CompText874BC34_unk250

	def_text_script CompText874BC34_unk251

	def_text_script CompText874BC34_unk252

	def_text_script CompText874BC34_unk253

	def_text_script CompText874BC34_unk254

	