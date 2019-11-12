	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8743F6C::
	.word 0xA1000

	text_archive_start

	def_text_script CompText8743F6C_unk0
	ts_check_chapter 0x35, 0x35, 0x73, 0xFF
	ts_check_chapter 0x34, 0x34, 0x6E, 0xFF
	ts_check_chapter 0x32, 0x33, 0x5F, 0xFF
	ts_check_chapter 0x31, 0x31, 0x50, 0xFF
	ts_check_chapter 0x30, 0x30, 0x46, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
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
	ts_check_flag 0xE, 0x8, 0x57, 0xFF
	ts_check_flag 0xA, 0x8, 0x56, 0xFF
	ts_check_flag 0x67, 0x8, 0x55, 0xFF
	ts_check_flag 0x66, 0x8, 0x54, 0xFF
	ts_check_flag 0x65, 0x8, 0x53, 0xFF
	ts_check_flag 0x64, 0x8, 0x52, 0xFF
	ts_check_flag 0x6, 0x8, 0x51, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's go to\n"
	.string "the Green Town\n"
	.string "Courthouse!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk81
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We need to go to the\n"
	.string "Green Area2 NetCafe"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to get permission\n"
	.string "to enter the\n"
	.string "courthouse!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk82
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder what the\n"
	.string "punishment for\n"
	.string "hitting Mr.Prog"
	ts_key_wait 0x0
	ts_clear_msg
	.string "on the head is...?\n"
	.string "Hmm......\n"
	.string "I have no idea!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk83
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder if it's\n"
	.string "true that the\n"
	.string "punishment for"
	ts_key_wait 0x0
	ts_clear_msg
	.string "hitting Mr.Prog on\n"
	.string "the head is really\n"
	.string "infuriating...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk84
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We need to go to the\n"
	.string "Green Area2 NetCafe"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to get permission\n"
	.string "to enter the\n"
	.string "courthouse!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk85
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We got permission,\n"
	.string "so we can go in the\n"
	.string "courthouse now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk86
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's take a look\n"
	.string "around the\n"
	.string "courtroom,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk87
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Want to go home and\n"
	.string "call it a day?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk88

	def_text_script CompText8743F6C_unk89

	def_text_script CompText8743F6C_unk90

	def_text_script CompText8743F6C_unk91

	def_text_script CompText8743F6C_unk92

	def_text_script CompText8743F6C_unk93

	def_text_script CompText8743F6C_unk94

	def_text_script CompText8743F6C_unk95
	ts_check_flag 0x2A, 0x8, 0x6B, 0xFF
	ts_check_flag 0x24, 0x8, 0x69, 0xFF
	ts_check_flag 0x1E, 0x8, 0x68, 0xFF
	ts_check_flag 0x70, 0x8, 0x67, 0xFF
	ts_check_flag 0x1C, 0x8, 0x66, 0xFF
	ts_check_flag 0x1A, 0x8, 0x65, 0xFF
	ts_check_flag 0x16, 0x8, 0x64, 0xFF
	ts_check_flag 0x6E, 0x8, 0x63, 0xFF
	ts_check_flag 0x6D, 0x8, 0x62, 0xFF
	ts_check_flag 0x14, 0x8, 0x61, 0xFF
	ts_check_flag 0x6C, 0x8, 0x60, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,calm down! Let's\n"
	.string "go home and ask Mom\n"
	.string "what's going on!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk96
	ts_check_sub_area 0x1, 0x1, 0x6C, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's hurry to the\n"
	.string "Green Town\n"
	.string "Courthouse,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk97
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's try to find\n"
	.string "out more about Dad!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk98
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Maybe we can find\n"
	.string "something to prove\n"
	.string "what Dad was doing"
	ts_key_wait 0x0
	ts_clear_msg
	.string "yesterday at 4 P.M.\n"
	.string "in Central Town!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk99
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's try to find\n"
	.string "someone at school"
	ts_key_wait 0x0
	ts_clear_msg
	.string "who saw Dad at\n"
	.string "4 P.M. yesterday!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk100
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We've got to find\n"
	.string "something that\n"
	.string "proves that Dad was"
	ts_key_wait 0x0
	ts_clear_msg
	.string "at the school at\n"
	.string "4 P.M.,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk101
	ts_mugshot_show 0x37
	ts_msg_open
	.string "The RoboControl PC\n"
	.string "is in the Teachers'\n"
	.string "Room! Let's go!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk102
	ts_check_sub_area 0x1, 0x1, 0x6D, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's take that\n"
	.string "recorded data and go\n"
	.string "to the courthouse!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We'll prove Dad's\n"
	.string "innocent!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk103
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,Dad's in the\n"
	.string "Punishment Room!\n"
	.string "Let's go there!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk104
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We can save Dad if\n"
	.string "we show our evidence\n"
	.string "to the JudgeTree!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk105
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We have to find a\n"
	.string "port to jack into on\n"
	.string "the JudgeTree!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk106
	ts_end

	def_text_script CompText8743F6C_unk107
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan! Jack me into\n"
	.string "the JudgeTree!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've got to stop\n"
	.string "it somehow!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk108
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder where Dad\n"
	.string "is,Lan..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk109
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We're going to prove\n"
	.string "Dad's innocent,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk110
	ts_check_flag 0x97, 0x9, 0x72, 0xFF
	ts_check_flag 0x96, 0x9, 0x71, 0xFF
	ts_check_flag 0x95, 0x9, 0x70, 0xFF
	ts_check_flag 0x36, 0x8, 0x6F, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Class has started,\n"
	.string "so let's take a\n"
	.string "crack at that book!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk111
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We're in the middle\n"
	.string "of class,Lan,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so let's concentrate\n"
	.string "on cybercooking!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk112
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We're in the middle\n"
	.string "of class,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There's more\n"
	.string "cybercooking fun\n"
	.string "in Green Area1!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk113
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We're in the middle\n"
	.string "of class,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There's more\n"
	.string "cybercooking fun\n"
	.string "in Green Area2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk114
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Good luck on\n"
	.string "Ms.Fahran's final\n"
	.string "exam,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk115
	ts_check_flag 0x6F, 0x9, 0x76, 0xFF
	ts_check_flag 0x6E, 0x9, 0x75, 0xFF
	ts_check_flag 0x4C, 0x8, 0x74, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Class has started,\n"
	.string "so let's take a\n"
	.string "crack at that book!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk116
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Master Feng-Tian's\n"
	.string "class is in\n"
	.string "Green Area1,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk117
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Master Feng-Tian's\n"
	.string "class is in\n"
	.string "Green Area2,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk118
	ts_mugshot_show 0x37
	ts_msg_open
	.string "It's time for Master\n"
	.string "Feng-Tian's final\n"
	.string "exam!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8743F6C_unk119

	