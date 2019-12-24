	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8743F6C::
	.word 0xA1000

	text_archive_start

	def_text_script CompText8743F6C_unk0
	ts_check_chapter [
		lower: 0x35,
		upper: 0x35,
		jumpIfInRange: CompText8743F6C_unk115_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x34,
		upper: 0x34,
		jumpIfInRange: CompText8743F6C_unk110_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x32,
		upper: 0x33,
		jumpIfInRange: CompText8743F6C_unk95_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x31,
		upper: 0x31,
		jumpIfInRange: CompText8743F6C_unk80_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x30,
		upper: 0x30,
		jumpIfInRange: CompText8743F6C_unk70_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk1

	def_text_script CompText8743F6C_unk2

	def_text_script CompText8743F6C_unk3

	def_text_script CompText8743F6C_unk4

	def_text_script CompText8743F6C_unk5

	def_text_script CompText8743F6C_unk6

	def_text_script CompText8743F6C_unk7

	def_text_script CompText8743F6C_unk8

	def_text_script CompText8743F6C_unk9

	def_text_script CompText8743F6C_unk10

	def_text_script CompText8743F6C_unk11

	def_text_script CompText8743F6C_unk12

	def_text_script CompText8743F6C_unk13

	def_text_script CompText8743F6C_unk14

	def_text_script CompText8743F6C_unk15

	def_text_script CompText8743F6C_unk16

	def_text_script CompText8743F6C_unk17

	def_text_script CompText8743F6C_unk18

	def_text_script CompText8743F6C_unk19

	def_text_script CompText8743F6C_unk20

	def_text_script CompText8743F6C_unk21

	def_text_script CompText8743F6C_unk22

	def_text_script CompText8743F6C_unk23

	def_text_script CompText8743F6C_unk24

	def_text_script CompText8743F6C_unk25

	def_text_script CompText8743F6C_unk26

	def_text_script CompText8743F6C_unk27

	def_text_script CompText8743F6C_unk28

	def_text_script CompText8743F6C_unk29

	def_text_script CompText8743F6C_unk30

	def_text_script CompText8743F6C_unk31

	def_text_script CompText8743F6C_unk32

	def_text_script CompText8743F6C_unk33

	def_text_script CompText8743F6C_unk34

	def_text_script CompText8743F6C_unk35

	def_text_script CompText8743F6C_unk36

	def_text_script CompText8743F6C_unk37

	def_text_script CompText8743F6C_unk38

	def_text_script CompText8743F6C_unk39

	def_text_script CompText8743F6C_unk40

	def_text_script CompText8743F6C_unk41

	def_text_script CompText8743F6C_unk42

	def_text_script CompText8743F6C_unk43

	def_text_script CompText8743F6C_unk44

	def_text_script CompText8743F6C_unk45

	def_text_script CompText8743F6C_unk46

	def_text_script CompText8743F6C_unk47

	def_text_script CompText8743F6C_unk48

	def_text_script CompText8743F6C_unk49

	def_text_script CompText8743F6C_unk50

	def_text_script CompText8743F6C_unk51

	def_text_script CompText8743F6C_unk52

	def_text_script CompText8743F6C_unk53

	def_text_script CompText8743F6C_unk54

	def_text_script CompText8743F6C_unk55

	def_text_script CompText8743F6C_unk56

	def_text_script CompText8743F6C_unk57

	def_text_script CompText8743F6C_unk58

	def_text_script CompText8743F6C_unk59

	def_text_script CompText8743F6C_unk60

	def_text_script CompText8743F6C_unk61

	def_text_script CompText8743F6C_unk62

	def_text_script CompText8743F6C_unk63

	def_text_script CompText8743F6C_unk64

	def_text_script CompText8743F6C_unk65

	def_text_script CompText8743F6C_unk66

	def_text_script CompText8743F6C_unk67

	def_text_script CompText8743F6C_unk68

	def_text_script CompText8743F6C_unk69

	def_text_script CompText8743F6C_unk70

	def_text_script CompText8743F6C_unk71

	def_text_script CompText8743F6C_unk72

	def_text_script CompText8743F6C_unk73

	def_text_script CompText8743F6C_unk74

	def_text_script CompText8743F6C_unk75

	def_text_script CompText8743F6C_unk76

	def_text_script CompText8743F6C_unk77

	def_text_script CompText8743F6C_unk78

	def_text_script CompText8743F6C_unk79

	def_text_script CompText8743F6C_unk80
	ts_check_flag [
		flag: 0x80E,
		jumpIfTrue: CompText8743F6C_unk87_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x80A,
		jumpIfTrue: CompText8743F6C_unk86_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x867,
		jumpIfTrue: CompText8743F6C_unk85_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x866,
		jumpIfTrue: CompText8743F6C_unk84_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x865,
		jumpIfTrue: CompText8743F6C_unk83_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x864,
		jumpIfTrue: CompText8743F6C_unk82_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x806,
		jumpIfTrue: CompText8743F6C_unk81_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,let's go to\n"
	.string "the Green Town\n"
	.string "Courthouse!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk81
	ts_mugshot_show mugshot=0x37
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

	def_text_script CompText8743F6C_unk82
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I wonder what the\n"
	.string "punishment for\n"
	.string "hitting Mr.Prog"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "on the head is...?\n"
	.string "Hmm......\n"
	.string "I have no idea!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk83
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I wonder if it's\n"
	.string "true that the\n"
	.string "punishment for"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "hitting Mr.Prog on\n"
	.string "the head is really\n"
	.string "infuriating...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk84
	ts_mugshot_show mugshot=0x37
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

	def_text_script CompText8743F6C_unk85
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We got permission,\n"
	.string "so we can go in the\n"
	.string "courthouse now!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk86
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's take a look\n"
	.string "around the\n"
	.string "courtroom,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk87
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Want to go home and\n"
	.string "call it a day?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk88

	def_text_script CompText8743F6C_unk89

	def_text_script CompText8743F6C_unk90

	def_text_script CompText8743F6C_unk91

	def_text_script CompText8743F6C_unk92

	def_text_script CompText8743F6C_unk93

	def_text_script CompText8743F6C_unk94

	def_text_script CompText8743F6C_unk95
	ts_check_flag [
		flag: 0x82A,
		jumpIfTrue: CompText8743F6C_unk107_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x824,
		jumpIfTrue: CompText8743F6C_unk105_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x81E,
		jumpIfTrue: CompText8743F6C_unk104_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x870,
		jumpIfTrue: CompText8743F6C_unk103_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x81C,
		jumpIfTrue: CompText8743F6C_unk102_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x81A,
		jumpIfTrue: CompText8743F6C_unk101_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x816,
		jumpIfTrue: CompText8743F6C_unk100_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x86E,
		jumpIfTrue: CompText8743F6C_unk99_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x86D,
		jumpIfTrue: CompText8743F6C_unk98_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x814,
		jumpIfTrue: CompText8743F6C_unk97_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x86C,
		jumpIfTrue: CompText8743F6C_unk96_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,calm down! Let's\n"
	.string "go home and ask Mom\n"
	.string "what's going on!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk96
	ts_check_sub_area [
		lower: 0x1,
		upper: 0x1,
		jumpIfInRange: CompText8743F6C_unk108_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's hurry to the\n"
	.string "Green Town\n"
	.string "Courthouse,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk97
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's try to find\n"
	.string "out more about Dad!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk98
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Maybe we can find\n"
	.string "something to prove\n"
	.string "what Dad was doing"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "yesterday at 4 P.M.\n"
	.string "in Central Town!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk99
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's try to find\n"
	.string "someone at school"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "who saw Dad at\n"
	.string "4 P.M. yesterday!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk100
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We've got to find\n"
	.string "something that\n"
	.string "proves that Dad was"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "at the school at\n"
	.string "4 P.M.,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk101
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "The RoboControl PC\n"
	.string "is in the Teachers'\n"
	.string "Room! Let's go!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk102
	ts_check_sub_area [
		lower: 0x1,
		upper: 0x1,
		jumpIfInRange: CompText8743F6C_unk109_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's take that\n"
	.string "recorded data and go\n"
	.string "to the courthouse!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'll prove Dad's\n"
	.string "innocent!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk103
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,Dad's in the\n"
	.string "Punishment Room!\n"
	.string "Let's go there!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk104
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We can save Dad if\n"
	.string "we show our evidence\n"
	.string "to the JudgeTree!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk105
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We have to find a\n"
	.string "port to jack into on\n"
	.string "the JudgeTree!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk106
	ts_end

	def_text_script CompText8743F6C_unk107
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan! Jack me into\n"
	.string "the JudgeTree!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've got to stop\n"
	.string "it somehow!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk108
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I wonder where Dad\n"
	.string "is,Lan..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk109
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We're going to prove\n"
	.string "Dad's innocent,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk110
	ts_check_flag [
		flag: 0x997,
		jumpIfTrue: CompText8743F6C_unk114_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x996,
		jumpIfTrue: CompText8743F6C_unk113_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x995,
		jumpIfTrue: CompText8743F6C_unk112_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x836,
		jumpIfTrue: CompText8743F6C_unk111_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Class has started,\n"
	.string "so let's take a\n"
	.string "crack at that book!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk111
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We're in the middle\n"
	.string "of class,Lan,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "so let's concentrate\n"
	.string "on cybercooking!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk112
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We're in the middle\n"
	.string "of class,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There's more\n"
	.string "cybercooking fun\n"
	.string "in Green Area1!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk113
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We're in the middle\n"
	.string "of class,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There's more\n"
	.string "cybercooking fun\n"
	.string "in Green Area2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk114
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Good luck on\n"
	.string "Ms.Fahran's final\n"
	.string "exam,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk115
	ts_check_flag [
		flag: 0x96F,
		jumpIfTrue: CompText8743F6C_unk118_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x96E,
		jumpIfTrue: CompText8743F6C_unk117_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x84C,
		jumpIfTrue: CompText8743F6C_unk116_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Class has started,\n"
	.string "so let's take a\n"
	.string "crack at that book!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk116
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Master Feng-Tian's\n"
	.string "class is in\n"
	.string "Green Area1,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk117
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Master Feng-Tian's\n"
	.string "class is in\n"
	.string "Green Area2,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk118
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "It's time for Master\n"
	.string "Feng-Tian's final\n"
	.string "exam!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8743F6C_unk119

	