	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText873FD64::
	.word 0xD1700

	text_archive_start

	def_text_script CompText873FD64_unk0
	ts_check_chapter [
		lower: 0x32,
		upper: 0x33,
		jumpIfInRange: CompText873FD64_unk95_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x31,
		upper: 0x31,
		jumpIfInRange: CompText873FD64_unk80_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x30,
		upper: 0x30,
		jumpIfInRange: CompText873FD64_unk70_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x24,
		upper: 0x25,
		jumpIfInRange: CompText873FD64_unk50_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x22,
		upper: 0x23,
		jumpIfInRange: CompText873FD64_unk35_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "Temporary message"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk1

	def_text_script CompText873FD64_unk2

	def_text_script CompText873FD64_unk3

	def_text_script CompText873FD64_unk4

	def_text_script CompText873FD64_unk5

	def_text_script CompText873FD64_unk6

	def_text_script CompText873FD64_unk7

	def_text_script CompText873FD64_unk8

	def_text_script CompText873FD64_unk9

	def_text_script CompText873FD64_unk10

	def_text_script CompText873FD64_unk11

	def_text_script CompText873FD64_unk12

	def_text_script CompText873FD64_unk13

	def_text_script CompText873FD64_unk14

	def_text_script CompText873FD64_unk15

	def_text_script CompText873FD64_unk16

	def_text_script CompText873FD64_unk17

	def_text_script CompText873FD64_unk18

	def_text_script CompText873FD64_unk19

	def_text_script CompText873FD64_unk20

	def_text_script CompText873FD64_unk21

	def_text_script CompText873FD64_unk22

	def_text_script CompText873FD64_unk23

	def_text_script CompText873FD64_unk24

	def_text_script CompText873FD64_unk25

	def_text_script CompText873FD64_unk26

	def_text_script CompText873FD64_unk27

	def_text_script CompText873FD64_unk28

	def_text_script CompText873FD64_unk29

	def_text_script CompText873FD64_unk30

	def_text_script CompText873FD64_unk31

	def_text_script CompText873FD64_unk32

	def_text_script CompText873FD64_unk33

	def_text_script CompText873FD64_unk34

	def_text_script CompText873FD64_unk35
	ts_check_flag [
		flag: 0x618,
		jumpIfTrue: CompText873FD64_unk42_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x616,
		jumpIfTrue: CompText873FD64_unk41_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x614,
		jumpIfTrue: CompText873FD64_unk40_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x612,
		jumpIfTrue: CompText873FD64_unk39_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x632,
		jumpIfTrue: CompText873FD64_unk38_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x60C,
		jumpIfTrue: CompText873FD64_unk37_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x1,
		upper: 0x3,
		jumpIfInRange: CompText873FD64_unk36_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's go home. I'm\n"
	.string "sure we'll have a\n"
	.string "great time tomorrow!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk36
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Is it time for\n"
	.string "bed,yet?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk37
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I wonder who it\n"
	.string "could be...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk38
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I wonder what Iris\n"
	.string "wanted? We'd better\n"
	.string "look for her!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk39
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's go on the Net!\n"
	.string "Jack me in,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk40
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's go back onto\n"
	.string "the Net!\n"
	.string "Jack me in,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk41
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I wonder how we can\n"
	.string "beat the Cybeast...\n"
	.string "......"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk42
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Jack me in,Lan!\n"
	.string "Let's go find that\n"
	.string "Cybeast!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk43

	def_text_script CompText873FD64_unk44

	def_text_script CompText873FD64_unk45

	def_text_script CompText873FD64_unk46

	def_text_script CompText873FD64_unk47

	def_text_script CompText873FD64_unk48

	def_text_script CompText873FD64_unk49

	def_text_script CompText873FD64_unk50
	ts_check_flag [
		flag: 0x626,
		jumpIfTrue: CompText873FD64_unk55_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x620,
		jumpIfTrue: CompText873FD64_unk53_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The \"Healing Water\"\n"
	.string "is in SeasideArea3.\n"
	.string "Hang on,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk51

	def_text_script CompText873FD64_unk52

	def_text_script CompText873FD64_unk53
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText873FD64_unk54_id,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan needs that\n"
	.string "\"Healing Water\",\n"
	.string "ASAP,HeatMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk54
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan needs that\n"
	.string "\"Healing Water\",\n"
	.string "ASAP,SpoutMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk55
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Jack me in,Lan!\n"
	.string "We've gotta go to\n"
	.string "CentralArea3!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk56

	def_text_script CompText873FD64_unk57

	def_text_script CompText873FD64_unk58

	def_text_script CompText873FD64_unk59

	def_text_script CompText873FD64_unk60

	def_text_script CompText873FD64_unk61

	def_text_script CompText873FD64_unk62

	def_text_script CompText873FD64_unk63

	def_text_script CompText873FD64_unk64

	def_text_script CompText873FD64_unk65

	def_text_script CompText873FD64_unk66

	def_text_script CompText873FD64_unk67

	def_text_script CompText873FD64_unk68

	def_text_script CompText873FD64_unk69

	def_text_script CompText873FD64_unk70
	ts_check_flag [
		flag: 0x85A,
		jumpIfTrue: CompText873FD64_unk75_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x87B,
		jumpIfTrue: CompText873FD64_unk74_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x859,
		jumpIfTrue: CompText873FD64_unk73_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x858,
		jumpIfTrue: CompText873FD64_unk72_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x857,
		jumpIfTrue: CompText873FD64_unk71_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
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

	def_text_script CompText873FD64_unk71
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,let's find that\n"
	.string "cyberseal!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk72
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "A fish that can't\n"
	.string "swim...? I wonder\n"
	.string "what that means...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk73
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "\"I am always looking\n"
	.string " at crayfish\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I have no idea what\n"
	.string "that means,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "let's find some\n"
	.string "crayfish and go\n"
	.string "from there."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk74
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "\"I am always looking\n"
	.string " at crayfish\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's go look around\n"
	.string "the crayfish tank\n"
	.string "in our classroom!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk75
	ts_end

	def_text_script CompText873FD64_unk76

	def_text_script CompText873FD64_unk77

	def_text_script CompText873FD64_unk78

	def_text_script CompText873FD64_unk79

	def_text_script CompText873FD64_unk80
	ts_check_flag [
		flag: 0x80E,
		jumpIfTrue: CompText873FD64_unk87_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x80A,
		jumpIfTrue: CompText873FD64_unk86_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x867,
		jumpIfTrue: CompText873FD64_unk85_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x866,
		jumpIfTrue: CompText873FD64_unk84_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x865,
		jumpIfTrue: CompText873FD64_unk83_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x864,
		jumpIfTrue: CompText873FD64_unk82_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x806,
		jumpIfTrue: CompText873FD64_unk81_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,let's go to\n"
	.string "the Green Town\n"
	.string "Courthouse!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk81
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

	def_text_script CompText873FD64_unk82
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

	def_text_script CompText873FD64_unk83
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

	def_text_script CompText873FD64_unk84
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

	def_text_script CompText873FD64_unk85
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We got permission,\n"
	.string "so we can go in the\n"
	.string "courthouse now!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk86
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's take a look\n"
	.string "around the\n"
	.string "courtroom,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk87
	ts_check_sub_area [
		lower: 0x1,
		upper: 0x3,
		jumpIfInRange: CompText873FD64_unk88_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Want to go home and\n"
	.string "call it a day?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk88
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Time for bed...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk89

	def_text_script CompText873FD64_unk90

	def_text_script CompText873FD64_unk91

	def_text_script CompText873FD64_unk92

	def_text_script CompText873FD64_unk93

	def_text_script CompText873FD64_unk94

	def_text_script CompText873FD64_unk95
	ts_check_flag [
		flag: 0x82A,
		jumpIfTrue: CompText873FD64_unk107_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x824,
		jumpIfTrue: CompText873FD64_unk105_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x81E,
		jumpIfTrue: CompText873FD64_unk104_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x870,
		jumpIfTrue: CompText873FD64_unk103_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x81C,
		jumpIfTrue: CompText873FD64_unk102_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x81A,
		jumpIfTrue: CompText873FD64_unk101_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x816,
		jumpIfTrue: CompText873FD64_unk100_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x86E,
		jumpIfTrue: CompText873FD64_unk99_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x86D,
		jumpIfTrue: CompText873FD64_unk98_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x814,
		jumpIfTrue: CompText873FD64_unk97_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x86C,
		jumpIfTrue: CompText873FD64_unk96_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0x1,
		upper: 0x3,
		jumpIfInRange: CompText873FD64_unk108_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,calm down! Let's\n"
	.string "go home and ask Mom\n"
	.string "what's going on!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk96
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's hurry to the\n"
	.string "Green Town\n"
	.string "Courthouse,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk97
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's try to find\n"
	.string "out more about Dad!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk98
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

	def_text_script CompText873FD64_unk99
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

	def_text_script CompText873FD64_unk100
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

	def_text_script CompText873FD64_unk101
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "The RoboControl PC\n"
	.string "is in the Teachers'\n"
	.string "Room! Let's go!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk102
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

	def_text_script CompText873FD64_unk103
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,Dad's in the\n"
	.string "Punishment Room!\n"
	.string "Let's go there!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk104
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We can save Dad if\n"
	.string "we show our evidence\n"
	.string "to the JudgeTree!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk105
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We have to find a\n"
	.string "port to jack into on\n"
	.string "the JudgeTree!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk106
	ts_end

	def_text_script CompText873FD64_unk107
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

	def_text_script CompText873FD64_unk108
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,calm down!\n"
	.string "Let's see what Mom\n"
	.string "has to say first!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873FD64_unk109

	def_text_script CompText873FD64_unk110

	def_text_script CompText873FD64_unk111

	def_text_script CompText873FD64_unk112

	def_text_script CompText873FD64_unk113

	def_text_script CompText873FD64_unk114

	def_text_script CompText873FD64_unk115

	def_text_script CompText873FD64_unk116

	def_text_script CompText873FD64_unk117

	def_text_script CompText873FD64_unk118

	def_text_script CompText873FD64_unk119

	def_text_script CompText873FD64_unk120

	def_text_script CompText873FD64_unk121

	def_text_script CompText873FD64_unk122

	def_text_script CompText873FD64_unk123

	def_text_script CompText873FD64_unk124

	def_text_script CompText873FD64_unk125

	def_text_script CompText873FD64_unk126

	def_text_script CompText873FD64_unk127

	def_text_script CompText873FD64_unk128

	def_text_script CompText873FD64_unk129

	def_text_script CompText873FD64_unk130

	def_text_script CompText873FD64_unk131

	def_text_script CompText873FD64_unk132

	def_text_script CompText873FD64_unk133

	def_text_script CompText873FD64_unk134

	def_text_script CompText873FD64_unk135

	def_text_script CompText873FD64_unk136

	def_text_script CompText873FD64_unk137

	def_text_script CompText873FD64_unk138

	def_text_script CompText873FD64_unk139

	def_text_script CompText873FD64_unk140

	def_text_script CompText873FD64_unk141

	def_text_script CompText873FD64_unk142

	def_text_script CompText873FD64_unk143

	def_text_script CompText873FD64_unk144

	def_text_script CompText873FD64_unk145

	def_text_script CompText873FD64_unk146

	def_text_script CompText873FD64_unk147

	def_text_script CompText873FD64_unk148

	def_text_script CompText873FD64_unk149

	def_text_script CompText873FD64_unk150

	def_text_script CompText873FD64_unk151

	def_text_script CompText873FD64_unk152

	def_text_script CompText873FD64_unk153

	def_text_script CompText873FD64_unk154

	def_text_script CompText873FD64_unk155

	def_text_script CompText873FD64_unk156

	def_text_script CompText873FD64_unk157

	def_text_script CompText873FD64_unk158

	def_text_script CompText873FD64_unk159

	def_text_script CompText873FD64_unk160

	def_text_script CompText873FD64_unk161

	def_text_script CompText873FD64_unk162

	def_text_script CompText873FD64_unk163

	def_text_script CompText873FD64_unk164

	def_text_script CompText873FD64_unk165

	def_text_script CompText873FD64_unk166

	def_text_script CompText873FD64_unk167

	def_text_script CompText873FD64_unk168

	def_text_script CompText873FD64_unk169

	def_text_script CompText873FD64_unk170

	def_text_script CompText873FD64_unk171

	def_text_script CompText873FD64_unk172

	def_text_script CompText873FD64_unk173

	def_text_script CompText873FD64_unk174

	def_text_script CompText873FD64_unk175

	def_text_script CompText873FD64_unk176

	def_text_script CompText873FD64_unk177

	def_text_script CompText873FD64_unk178

	def_text_script CompText873FD64_unk179

	def_text_script CompText873FD64_unk180

	def_text_script CompText873FD64_unk181

	def_text_script CompText873FD64_unk182

	def_text_script CompText873FD64_unk183

	def_text_script CompText873FD64_unk184

	def_text_script CompText873FD64_unk185

	def_text_script CompText873FD64_unk186

	def_text_script CompText873FD64_unk187

	def_text_script CompText873FD64_unk188

	def_text_script CompText873FD64_unk189

	def_text_script CompText873FD64_unk190

	def_text_script CompText873FD64_unk191

	def_text_script CompText873FD64_unk192

	def_text_script CompText873FD64_unk193

	def_text_script CompText873FD64_unk194

	def_text_script CompText873FD64_unk195

	def_text_script CompText873FD64_unk196

	def_text_script CompText873FD64_unk197

	def_text_script CompText873FD64_unk198

	def_text_script CompText873FD64_unk199

	def_text_script CompText873FD64_unk200

	def_text_script CompText873FD64_unk201

	def_text_script CompText873FD64_unk202

	def_text_script CompText873FD64_unk203

	def_text_script CompText873FD64_unk204

	def_text_script CompText873FD64_unk205

	def_text_script CompText873FD64_unk206

	def_text_script CompText873FD64_unk207

	def_text_script CompText873FD64_unk208

	def_text_script CompText873FD64_unk209

	def_text_script CompText873FD64_unk210

	def_text_script CompText873FD64_unk211

	def_text_script CompText873FD64_unk212

	def_text_script CompText873FD64_unk213

	def_text_script CompText873FD64_unk214

	def_text_script CompText873FD64_unk215

	def_text_script CompText873FD64_unk216

	def_text_script CompText873FD64_unk217

	def_text_script CompText873FD64_unk218

	def_text_script CompText873FD64_unk219

	def_text_script CompText873FD64_unk220

	def_text_script CompText873FD64_unk221

	def_text_script CompText873FD64_unk222

	def_text_script CompText873FD64_unk223

	def_text_script CompText873FD64_unk224

	def_text_script CompText873FD64_unk225

	def_text_script CompText873FD64_unk226

	def_text_script CompText873FD64_unk227

	def_text_script CompText873FD64_unk228

	def_text_script CompText873FD64_unk229

	def_text_script CompText873FD64_unk230

	def_text_script CompText873FD64_unk231

	def_text_script CompText873FD64_unk232

	def_text_script CompText873FD64_unk233

	def_text_script CompText873FD64_unk234

	def_text_script CompText873FD64_unk235

	def_text_script CompText873FD64_unk236

	def_text_script CompText873FD64_unk237

	def_text_script CompText873FD64_unk238

	def_text_script CompText873FD64_unk239

	def_text_script CompText873FD64_unk240

	def_text_script CompText873FD64_unk241

	def_text_script CompText873FD64_unk242

	def_text_script CompText873FD64_unk243

	def_text_script CompText873FD64_unk244

	def_text_script CompText873FD64_unk245

	def_text_script CompText873FD64_unk246

	def_text_script CompText873FD64_unk247

	def_text_script CompText873FD64_unk248

	def_text_script CompText873FD64_unk249

	def_text_script CompText873FD64_unk250

	def_text_script CompText873FD64_unk251

	def_text_script CompText873FD64_unk252

	def_text_script CompText873FD64_unk253

	def_text_script CompText873FD64_unk254

	