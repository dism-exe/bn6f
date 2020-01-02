	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText874F980::
	.word 0x113E00

	text_archive_start

	def_text_script CompText874F980_unk0
	ts_check_chapter [
		lower: 0x80,
		upper: 0x80,
		jumpIfInRange: CompText874F980_unk220_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x32,
		upper: 0x33,
		jumpIfInRange: CompText874F980_unk95_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x31,
		upper: 0x31,
		jumpIfInRange: CompText874F980_unk80_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x30,
		upper: 0x30,
		jumpIfInRange: CompText874F980_unk70_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x24,
		upper: 0x25,
		jumpIfInRange: CompText874F980_unk50_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x22,
		upper: 0x23,
		jumpIfInRange: CompText874F980_unk35_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x21,
		upper: 0x21,
		jumpIfInRange: CompText874F980_unk10_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "Temporary message"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk1

	def_text_script CompText874F980_unk2

	def_text_script CompText874F980_unk3

	def_text_script CompText874F980_unk4

	def_text_script CompText874F980_unk5

	def_text_script CompText874F980_unk6

	def_text_script CompText874F980_unk7

	def_text_script CompText874F980_unk8

	def_text_script CompText874F980_unk9

	def_text_script CompText874F980_unk10
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText874F980_unk20_id,
	]
	ts_check_flag [
		flag: 0x669,
		jumpIfTrue: CompText874F980_unk17_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x665,
		jumpIfTrue: CompText874F980_unk16_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x661,
		jumpIfTrue: CompText874F980_unk15_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x65D,
		jumpIfTrue: CompText874F980_unk14_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x659,
		jumpIfTrue: CompText874F980_unk13_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x657,
		jumpIfTrue: CompText874F980_unk12_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874F980_unk11

	def_text_script CompText874F980_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Head back to\n"
	.string "CentralArea,HeatMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk13
	ts_jump target=CompText874F980_unk12_id

	def_text_script CompText874F980_unk14
	ts_jump target=CompText874F980_unk12_id

	def_text_script CompText874F980_unk15
	ts_jump target=CompText874F980_unk12_id

	def_text_script CompText874F980_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time for Match's\n"
	.string "final...\n"
	.string "Good luck!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I think it's time\n"
	.string "to head on home..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk18

	def_text_script CompText874F980_unk19

	def_text_script CompText874F980_unk20
	ts_check_flag [
		flag: 0x67B,
		jumpIfTrue: CompText874F980_unk29_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x679,
		jumpIfTrue: CompText874F980_unk28_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x677,
		jumpIfTrue: CompText874F980_unk27_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x66F,
		jumpIfTrue: CompText874F980_unk23_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x66D,
		jumpIfTrue: CompText874F980_unk22_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874F980_unk21

	def_text_script CompText874F980_unk22
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Shuko told us to go\n"
	.string "to the Aquarium HP!\n"
	.string "Let's go,SpoutMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk23
	ts_check_sub_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: CompText874F980_unk26_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x1,
		upper: 0x1,
		jumpIfInRange: CompText874F980_unk25_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x0,
		upper: 0x0,
		jumpIfInRange: CompText874F980_unk24_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_jump target=CompText874F980_unk30_id

	def_text_script CompText874F980_unk24
	ts_check_flag [
		flag: 0x671,
		jumpIfTrue: CompText874F980_unk30_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText874F980_unk30_id

	def_text_script CompText874F980_unk25
	ts_check_flag [
		flag: 0x673,
		jumpIfTrue: CompText874F980_unk30_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText874F980_unk30_id

	def_text_script CompText874F980_unk26
	ts_check_flag [
		flag: 0x675,
		jumpIfTrue: CompText874F980_unk30_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText874F980_unk30_id

	def_text_script CompText874F980_unk27
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's bring the fish\n"
	.string "data back to the\n"
	.string "Aquarium,SpoutMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk28
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Next is Shuko's\n"
	.string "final exam,huh...?\n"
	.string "Good luck!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk29
	ts_jump target=CompText874F980_unk17_id

	def_text_script CompText874F980_unk30
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's look for the\n"
	.string "fish data,SpoutMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk31

	def_text_script CompText874F980_unk32

	def_text_script CompText874F980_unk33

	def_text_script CompText874F980_unk34

	def_text_script CompText874F980_unk35
	ts_check_flag [
		flag: 0x618,
		jumpIfTrue: CompText874F980_unk42_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x614,
		jumpIfTrue: CompText874F980_unk40_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The event tomorrow\n"
	.string "sounds fun! I wonder\n"
	.string "what'll happen!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk36

	def_text_script CompText874F980_unk37

	def_text_script CompText874F980_unk38

	def_text_script CompText874F980_unk39

	def_text_script CompText874F980_unk40
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Head for\n"
	.string "CentralArea3,\n"
	.string "MegaMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk41

	def_text_script CompText874F980_unk42
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The Cybeast is still\n"
	.string "in CentralArea3,I\n"
	.string "think... Let's go!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk43

	def_text_script CompText874F980_unk44

	def_text_script CompText874F980_unk45

	def_text_script CompText874F980_unk46

	def_text_script CompText874F980_unk47

	def_text_script CompText874F980_unk48

	def_text_script CompText874F980_unk49

	def_text_script CompText874F980_unk50
	ts_check_flag [
		flag: 0x626,
		jumpIfTrue: CompText874F980_unk55_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x620,
		jumpIfTrue: CompText874F980_unk53_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_game_version [
		jumpIfCybeastGregar: CompText874F980_unk51_id,
		jumpIfCybeastFalzar: CompText874F980_unk52_id,
	]
	ts_end

	def_text_script CompText874F980_unk51
	ts_check_sub_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: CompText874F980_unk56_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The \"Healing Water\"\n"
	.string "is in SeasideArea3,\n"
	.string "HeatMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk52
	ts_check_sub_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: CompText874F980_unk56_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The \"Healing Water\"\n"
	.string "is in SeasideArea3,\n"
	.string "SpoutMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk53
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText874F980_unk54_id,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's bring that\n"
	.string "\"Healing Water\" back\n"
	.string "to MegaMan,HeatMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk54
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's bring that\n"
	.string "\"Healing Water\" back\n"
	.string "to MegaMan,SpoutMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk55
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Head for\n"
	.string "CentralArea3,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk56
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The \"Healing Water\"\n"
	.string "is somewhere in this\n"
	.string "area..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk57

	def_text_script CompText874F980_unk58

	def_text_script CompText874F980_unk59

	def_text_script CompText874F980_unk60
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Want to take a look\n"
	.string "around,"
	ts_print_current_navi_ow
	.string "!?\n"
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
	ts_select 0x6, 0x80, 0x3D, 0xFF, 0xFF
	ts_end

	def_text_script CompText874F980_unk61
	ts_flag_set flag=0x747
	ts_end

	def_text_script CompText874F980_unk62

	def_text_script CompText874F980_unk63

	def_text_script CompText874F980_unk64

	def_text_script CompText874F980_unk65

	def_text_script CompText874F980_unk66

	def_text_script CompText874F980_unk67

	def_text_script CompText874F980_unk68

	def_text_script CompText874F980_unk69

	def_text_script CompText874F980_unk70
	ts_check_flag [
		flag: 0x85A,
		jumpIfTrue: CompText874F980_unk75_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x87B,
		jumpIfTrue: CompText874F980_unk74_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x859,
		jumpIfTrue: CompText874F980_unk73_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x858,
		jumpIfTrue: CompText874F980_unk72_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x857,
		jumpIfTrue: CompText874F980_unk71_id,
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

	def_text_script CompText874F980_unk71
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's find that\n"
	.string "cyberseal,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk72
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I wonder what a fish\n"
	.string "that can't swim is??"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk73
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

	def_text_script CompText874F980_unk74
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

	def_text_script CompText874F980_unk75
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We passed the\n"
	.string "prelims!\n"
	.string "Let's jack out,OK?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk76

	def_text_script CompText874F980_unk77

	def_text_script CompText874F980_unk78

	def_text_script CompText874F980_unk79

	def_text_script CompText874F980_unk80
	ts_check_flag [
		flag: 0x80E,
		jumpIfTrue: CompText874F980_unk87_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x80A,
		jumpIfTrue: CompText874F980_unk86_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x867,
		jumpIfTrue: CompText874F980_unk85_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x866,
		jumpIfTrue: CompText874F980_unk84_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x865,
		jumpIfTrue: CompText874F980_unk83_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x864,
		jumpIfTrue: CompText874F980_unk82_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x806,
		jumpIfTrue: CompText874F980_unk81_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go see what's\n"
	.string "in Green Town!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk81
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

	def_text_script CompText874F980_unk82
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

	def_text_script CompText874F980_unk83
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

	def_text_script CompText874F980_unk84
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

	def_text_script CompText874F980_unk85
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We have to get back\n"
	.string "to the courthouse!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk86
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's check out the\n"
	.string "courtroom!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk87
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah,it's time to go\n"
	.string "home and head to bed\n"
	.string "already..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk88

	def_text_script CompText874F980_unk89

	def_text_script CompText874F980_unk90

	def_text_script CompText874F980_unk91

	def_text_script CompText874F980_unk92

	def_text_script CompText874F980_unk93

	def_text_script CompText874F980_unk94

	def_text_script CompText874F980_unk95
	ts_check_flag [
		flag: 0x82A,
		jumpIfTrue: CompText874F980_unk107_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x826,
		jumpIfTrue: CompText874F980_unk106_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x824,
		jumpIfTrue: CompText874F980_unk105_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x81E,
		jumpIfTrue: CompText874F980_unk104_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x870,
		jumpIfTrue: CompText874F980_unk103_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x81C,
		jumpIfTrue: CompText874F980_unk102_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x81A,
		jumpIfTrue: CompText874F980_unk101_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x816,
		jumpIfTrue: CompText874F980_unk100_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x86E,
		jumpIfTrue: CompText874F980_unk99_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x86D,
		jumpIfTrue: CompText874F980_unk98_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x814,
		jumpIfTrue: CompText874F980_unk97_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x86C,
		jumpIfTrue: CompText874F980_unk96_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "In any case,we've\n"
	.string "gotta go home and\n"
	.string "ask Mom..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk96
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Head for Green Town,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk97
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's try to find\n"
	.string "out more about Dad!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk98
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

	def_text_script CompText874F980_unk99
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

	def_text_script CompText874F980_unk100
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

	def_text_script CompText874F980_unk101
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out! The\n"
	.string "RoboControl PC is in\n"
	.string "the Teachers' Room!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk102
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

	def_text_script CompText874F980_unk103
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,and let's\n"
	.string "get over to the\n"
	.string "Punishment Room!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk104
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

	def_text_script CompText874F980_unk105
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta stop the\n"
	.string "JudgeTree somehow!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk106
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've gotta stop the\n"
	.string "JudgeTree somehow,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk107
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta stop the\n"
	.string "JudgeTree somehow!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk108

	def_text_script CompText874F980_unk109

	def_text_script CompText874F980_unk110

	def_text_script CompText874F980_unk111

	def_text_script CompText874F980_unk112

	def_text_script CompText874F980_unk113

	def_text_script CompText874F980_unk114

	def_text_script CompText874F980_unk115

	def_text_script CompText874F980_unk116

	def_text_script CompText874F980_unk117

	def_text_script CompText874F980_unk118

	def_text_script CompText874F980_unk119

	def_text_script CompText874F980_unk120

	def_text_script CompText874F980_unk121

	def_text_script CompText874F980_unk122

	def_text_script CompText874F980_unk123

	def_text_script CompText874F980_unk124

	def_text_script CompText874F980_unk125

	def_text_script CompText874F980_unk126

	def_text_script CompText874F980_unk127

	def_text_script CompText874F980_unk128

	def_text_script CompText874F980_unk129

	def_text_script CompText874F980_unk130

	def_text_script CompText874F980_unk131

	def_text_script CompText874F980_unk132

	def_text_script CompText874F980_unk133

	def_text_script CompText874F980_unk134

	def_text_script CompText874F980_unk135

	def_text_script CompText874F980_unk136

	def_text_script CompText874F980_unk137

	def_text_script CompText874F980_unk138

	def_text_script CompText874F980_unk139

	def_text_script CompText874F980_unk140

	def_text_script CompText874F980_unk141

	def_text_script CompText874F980_unk142

	def_text_script CompText874F980_unk143

	def_text_script CompText874F980_unk144

	def_text_script CompText874F980_unk145

	def_text_script CompText874F980_unk146

	def_text_script CompText874F980_unk147

	def_text_script CompText874F980_unk148

	def_text_script CompText874F980_unk149

	def_text_script CompText874F980_unk150

	def_text_script CompText874F980_unk151

	def_text_script CompText874F980_unk152

	def_text_script CompText874F980_unk153

	def_text_script CompText874F980_unk154

	def_text_script CompText874F980_unk155

	def_text_script CompText874F980_unk156

	def_text_script CompText874F980_unk157

	def_text_script CompText874F980_unk158

	def_text_script CompText874F980_unk159

	def_text_script CompText874F980_unk160

	def_text_script CompText874F980_unk161

	def_text_script CompText874F980_unk162

	def_text_script CompText874F980_unk163

	def_text_script CompText874F980_unk164

	def_text_script CompText874F980_unk165

	def_text_script CompText874F980_unk166

	def_text_script CompText874F980_unk167

	def_text_script CompText874F980_unk168

	def_text_script CompText874F980_unk169

	def_text_script CompText874F980_unk170

	def_text_script CompText874F980_unk171

	def_text_script CompText874F980_unk172

	def_text_script CompText874F980_unk173

	def_text_script CompText874F980_unk174

	def_text_script CompText874F980_unk175

	def_text_script CompText874F980_unk176

	def_text_script CompText874F980_unk177

	def_text_script CompText874F980_unk178

	def_text_script CompText874F980_unk179

	def_text_script CompText874F980_unk180

	def_text_script CompText874F980_unk181

	def_text_script CompText874F980_unk182

	def_text_script CompText874F980_unk183

	def_text_script CompText874F980_unk184

	def_text_script CompText874F980_unk185

	def_text_script CompText874F980_unk186

	def_text_script CompText874F980_unk187

	def_text_script CompText874F980_unk188

	def_text_script CompText874F980_unk189

	def_text_script CompText874F980_unk190

	def_text_script CompText874F980_unk191

	def_text_script CompText874F980_unk192

	def_text_script CompText874F980_unk193

	def_text_script CompText874F980_unk194

	def_text_script CompText874F980_unk195

	def_text_script CompText874F980_unk196

	def_text_script CompText874F980_unk197

	def_text_script CompText874F980_unk198

	def_text_script CompText874F980_unk199

	def_text_script CompText874F980_unk200

	def_text_script CompText874F980_unk201

	def_text_script CompText874F980_unk202

	def_text_script CompText874F980_unk203

	def_text_script CompText874F980_unk204

	def_text_script CompText874F980_unk205

	def_text_script CompText874F980_unk206

	def_text_script CompText874F980_unk207

	def_text_script CompText874F980_unk208

	def_text_script CompText874F980_unk209

	def_text_script CompText874F980_unk210

	def_text_script CompText874F980_unk211

	def_text_script CompText874F980_unk212

	def_text_script CompText874F980_unk213

	def_text_script CompText874F980_unk214

	def_text_script CompText874F980_unk215

	def_text_script CompText874F980_unk216

	def_text_script CompText874F980_unk217

	def_text_script CompText874F980_unk218

	def_text_script CompText874F980_unk219

	def_text_script CompText874F980_unk220
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText874F980_unk221_id,
		jumpIfElecMan: CompText874F980_unk222_id,
		jumpIfSlashMan: CompText874F980_unk223_id,
		jumpIfEraseMan: CompText874F980_unk224_id,
		jumpIfChargeMan: CompText874F980_unk225_id,
		jumpIfSpoutMan: CompText874F980_unk226_id,
		jumpIfTomahawkMan: CompText874F980_unk227_id,
		jumpIfTenguMan: CompText874F980_unk228_id,
		jumpIfGroundMan: CompText874F980_unk229_id,
		jumpIfDustMan: CompText874F980_unk230_id,
		jumpIfProtoMan: CompText874F980_unk231_id,
	]
	ts_end

	def_text_script CompText874F980_unk221
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating HeatMan...\n"
	.string "It lights my soul on\n"
	.string "fire!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk222
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ElecMan...\n"
	.string "I feel a surge of\n"
	.string "power coming on!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk223
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SlashMan\n"
	.string "is like sharpening\n"
	.string "my mind to a point!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk224
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating EraseMan\n"
	.string "brings out my dark\n"
	.string "side... Mwahahaha!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk225
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ChargeMan\n"
	.string "makes me want to\n"
	.string "plow ahead!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk226
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SpoutMan\n"
	.string "makes me feel like\n"
	.string "a little fish..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk227
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating\n"
	.string "TomahawkMan is an\n"
	.string "awesome feeling!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk228
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating TenguMan\n"
	.string "brings a sense of\n"
	.string "peace to my heart..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk229
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating GroundMan\n"
	.string "lets me drill\n"
	.string "through anything!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk230
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating DustMan...\n"
	.string "There's no virus we\n"
	.string "can't scrap!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk231
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "ProtoMan helping out\n"
	.string "during battle... He\n"
	.string "sure is trustworthy!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874F980_unk232

	def_text_script CompText874F980_unk233

	def_text_script CompText874F980_unk234

	def_text_script CompText874F980_unk235

	def_text_script CompText874F980_unk236

	def_text_script CompText874F980_unk237

	def_text_script CompText874F980_unk238

	def_text_script CompText874F980_unk239

	def_text_script CompText874F980_unk240

	def_text_script CompText874F980_unk241

	def_text_script CompText874F980_unk242

	def_text_script CompText874F980_unk243

	def_text_script CompText874F980_unk244

	def_text_script CompText874F980_unk245

	def_text_script CompText874F980_unk246

	def_text_script CompText874F980_unk247

	def_text_script CompText874F980_unk248

	def_text_script CompText874F980_unk249

	def_text_script CompText874F980_unk250

	def_text_script CompText874F980_unk251

	def_text_script CompText874F980_unk252

	def_text_script CompText874F980_unk253

	def_text_script CompText874F980_unk254

	