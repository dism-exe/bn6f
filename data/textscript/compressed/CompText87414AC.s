	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87414AC::
	.word 0x103E00

	text_archive_start

	def_text_script CompText87414AC_unk0
	ts_check_chapter 0x32, 0x33, 0x5F, 0xFF
	ts_check_chapter 0x31, 0x31, 0x50, 0xFF
	ts_check_chapter 0x30, 0x30, 0x46, 0xFF
	ts_check_chapter 0x24, 0x25, 0x32, 0xFF
	ts_check_chapter 0x22, 0x23, 0x23, 0xFF
	ts_check_chapter 0x21, 0x21, 0xA, 0xFF
	ts_check_chapter 0x20, 0x20, 0x5, 0xFF
	ts_msg_open
	.string "Temporary message"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk1

	def_text_script CompText87414AC_unk2

	def_text_script CompText87414AC_unk3

	def_text_script CompText87414AC_unk4

	def_text_script CompText87414AC_unk5
	ts_check_flag 0x6, 0x6, 0x6, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go show\n"
	.string "Mr.Mach what you\n"
	.string "wrote!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk6
	ts_check_sub_area 0x0, 0x0, 0x7, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We should go back to\n"
	.string "the classroom and\n"
	.string "pack up,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk7
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's hurry up and\n"
	.string "pack up all your\n"
	.string "stuff,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk8

	def_text_script CompText87414AC_unk9

	def_text_script CompText87414AC_unk10
	ts_check_game_version 0xFF, 0x14
	ts_check_flag 0x69, 0x6, 0x11, 0xFF
	ts_check_flag 0x65, 0x6, 0x10, 0xFF
	ts_check_flag 0x61, 0x6, 0xF, 0xFF
	ts_check_flag 0x5D, 0x6, 0xE, 0xFF
	ts_check_flag 0x59, 0x6, 0xD, 0xFF
	ts_check_flag 0x57, 0x6, 0xC, 0xFF
	ts_check_flag 0x55, 0x6, 0xB, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder what kind\n"
	.string "of lesson Match is\n"
	.string "going to give?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Whatever it is,I can\n"
	.string "tell it's going to\n"
	.string "be fun!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk11
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's check out that\n"
	.string "computer over there,\n"
	.string "Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk12
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Where are you going,\n"
	.string "Lan!? Class isn't\n"
	.string "over,yet!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk13
	ts_jump 12

	def_text_script CompText87414AC_unk14
	ts_jump 12

	def_text_script CompText87414AC_unk15
	ts_jump 12

	def_text_script CompText87414AC_unk16
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Good luck on your\n"
	.string "final exam,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I think it's time\n"
	.string "to go home..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk18

	def_text_script CompText87414AC_unk19

	def_text_script CompText87414AC_unk20
	ts_check_flag 0x7B, 0x6, 0x1D, 0xFF
	ts_check_flag 0x79, 0x6, 0x1C, 0xFF
	ts_check_flag 0x77, 0x6, 0x1B, 0xFF
	ts_check_flag 0x75, 0x6, 0x1A, 0xFF
	ts_check_flag 0x73, 0x6, 0x19, 0xFF
	ts_check_flag 0x71, 0x6, 0x18, 0xFF
	ts_check_flag 0x6F, 0x6, 0x17, 0xFF
	ts_check_flag 0x6D, 0x6, 0x16, 0xFF
	ts_check_flag 0x6B, 0x6, 0x15, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder what kind\n"
	.string "of lesson Shuko is\n"
	.string "going to give?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Whatever it is,I can\n"
	.string "tell it's going to\n"
	.string "be fun!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk21
	ts_jump 11

	def_text_script CompText87414AC_unk22
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Where are you going,\n"
	.string "Lan!? Class isn't\n"
	.string "over,yet!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk23
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We really should\n"
	.string "catch those fish\n"
	.string "data for Shuko..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk24
	ts_jump 23

	def_text_script CompText87414AC_unk25
	ts_jump 23

	def_text_script CompText87414AC_unk26
	ts_jump 23

	def_text_script CompText87414AC_unk27
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We have to get the\n"
	.string "fish data back to\n"
	.string "the Aquarium!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk28
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Good luck on Shuko's\n"
	.string "test,Lan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk29
	ts_jump 17

	def_text_script CompText87414AC_unk30

	def_text_script CompText87414AC_unk31

	def_text_script CompText87414AC_unk32

	def_text_script CompText87414AC_unk33

	def_text_script CompText87414AC_unk34

	def_text_script CompText87414AC_unk35
	ts_check_flag 0x18, 0x6, 0x2A, 0xFF
	ts_check_flag 0x16, 0x6, 0x29, 0xFF
	ts_check_flag 0x14, 0x6, 0x28, 0xFF
	ts_check_flag 0x12, 0x6, 0x27, 0xFF
	ts_check_flag 0x32, 0x6, 0x26, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go home. I'm\n"
	.string "sure we'll have a\n"
	.string "great time tomorrow!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk36

	def_text_script CompText87414AC_unk37

	def_text_script CompText87414AC_unk38
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder what Iris\n"
	.string "wanted? We'd better\n"
	.string "look for her!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk39
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go on the Net!\n"
	.string "Jack me in,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk40
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go back onto\n"
	.string "the Net!\n"
	.string "Jack me in,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk41
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder how we can\n"
	.string "beat the Cybeast...\n"
	.string "......"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk42
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Jack me in,Lan!\n"
	.string "Let's go find that\n"
	.string "Cybeast!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk43

	def_text_script CompText87414AC_unk44

	def_text_script CompText87414AC_unk45

	def_text_script CompText87414AC_unk46

	def_text_script CompText87414AC_unk47

	def_text_script CompText87414AC_unk48

	def_text_script CompText87414AC_unk49

	def_text_script CompText87414AC_unk50
	ts_check_flag 0x26, 0x6, 0x37, 0xFF
	ts_check_flag 0x20, 0x6, 0x35, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The \"Healing Water\"\n"
	.string "is in SeasideArea3.\n"
	.string "Hang on,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk51

	def_text_script CompText87414AC_unk52

	def_text_script CompText87414AC_unk53
	ts_check_game_version 0xFF, 0x36
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan needs that\n"
	.string "\"Healing Water\",\n"
	.string "ASAP,HeatMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk54
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan needs that\n"
	.string "\"Healing Water\",\n"
	.string "ASAP,SpoutMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk55
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Jack me in,Lan!\n"
	.string "We've gotta go to\n"
	.string "CentralArea3!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk56

	def_text_script CompText87414AC_unk57

	def_text_script CompText87414AC_unk58

	def_text_script CompText87414AC_unk59

	def_text_script CompText87414AC_unk60

	def_text_script CompText87414AC_unk61

	def_text_script CompText87414AC_unk62

	def_text_script CompText87414AC_unk63

	def_text_script CompText87414AC_unk64

	def_text_script CompText87414AC_unk65

	def_text_script CompText87414AC_unk66

	def_text_script CompText87414AC_unk67

	def_text_script CompText87414AC_unk68

	def_text_script CompText87414AC_unk69

	def_text_script CompText87414AC_unk70
	ts_check_flag 0x5A, 0x8, 0x4B, 0xFF
	ts_check_flag 0x7B, 0x8, 0x4A, 0xFF
	ts_check_flag 0x59, 0x8, 0x49, 0xFF
	ts_check_flag 0x58, 0x8, 0x48, 0xFF
	ts_check_flag 0x57, 0x8, 0x47, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go to the\n"
	.string "CentralArea NetCafe,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and enter the\n"
	.string "Operator Navi\n"
	.string "Selection Test!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk71
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's find that\n"
	.string "cyberseal!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk72
	ts_mugshot_show 0x37
	ts_msg_open
	.string "A fish that can't\n"
	.string "swim...? I wonder\n"
	.string "what that means...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk73
	ts_mugshot_show 0x37
	ts_msg_open
	.string "\"I am always looking\n"
	.string " at crayfish\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I have no idea what\n"
	.string "that means,but"
	ts_key_wait 0x0
	ts_clear_msg
	.string "let's find some\n"
	.string "crayfish and go\n"
	.string "from there."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk74
	ts_mugshot_show 0x37
	ts_msg_open
	.string "\"I am always looking\n"
	.string " at crayfish\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go look around\n"
	.string "the crayfish tank\n"
	.string "in our classroom!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk75
	ts_end

	def_text_script CompText87414AC_unk76

	def_text_script CompText87414AC_unk77

	def_text_script CompText87414AC_unk78

	def_text_script CompText87414AC_unk79

	def_text_script CompText87414AC_unk80
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

	def_text_script CompText87414AC_unk81
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

	def_text_script CompText87414AC_unk82
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

	def_text_script CompText87414AC_unk83
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

	def_text_script CompText87414AC_unk84
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

	def_text_script CompText87414AC_unk85
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We got permission,\n"
	.string "so we can go in the\n"
	.string "courthouse now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk86
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's take a look\n"
	.string "around the\n"
	.string "courtroom,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk87
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Want to go home and\n"
	.string "call it a day?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk88

	def_text_script CompText87414AC_unk89

	def_text_script CompText87414AC_unk90

	def_text_script CompText87414AC_unk91

	def_text_script CompText87414AC_unk92

	def_text_script CompText87414AC_unk93

	def_text_script CompText87414AC_unk94

	def_text_script CompText87414AC_unk95
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

	def_text_script CompText87414AC_unk96
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's hurry to the\n"
	.string "Green Town\n"
	.string "Courthouse,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk97
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's try to find\n"
	.string "out more about Dad!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk98
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

	def_text_script CompText87414AC_unk99
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

	def_text_script CompText87414AC_unk100
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

	def_text_script CompText87414AC_unk101
	ts_check_sub_area 0x7, 0x7, 0x6C, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "The RoboControl PC\n"
	.string "is in the Teachers'\n"
	.string "Room! Let's go!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk102
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

	def_text_script CompText87414AC_unk103
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,Dad's in the\n"
	.string "Punishment Room!\n"
	.string "Let's go there!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk104
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We can save Dad if\n"
	.string "we show our evidence\n"
	.string "to the JudgeTree!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk105
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We have to find a\n"
	.string "port to jack into on\n"
	.string "the JudgeTree!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk106
	ts_end

	def_text_script CompText87414AC_unk107
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

	def_text_script CompText87414AC_unk108
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's check out\n"
	.string "the RoboControl PC!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87414AC_unk109

	def_text_script CompText87414AC_unk110

	def_text_script CompText87414AC_unk111

	def_text_script CompText87414AC_unk112

	def_text_script CompText87414AC_unk113

	def_text_script CompText87414AC_unk114

	def_text_script CompText87414AC_unk115

	def_text_script CompText87414AC_unk116

	def_text_script CompText87414AC_unk117

	def_text_script CompText87414AC_unk118

	def_text_script CompText87414AC_unk119

	def_text_script CompText87414AC_unk120

	def_text_script CompText87414AC_unk121

	def_text_script CompText87414AC_unk122

	def_text_script CompText87414AC_unk123

	def_text_script CompText87414AC_unk124

	def_text_script CompText87414AC_unk125

	def_text_script CompText87414AC_unk126

	def_text_script CompText87414AC_unk127

	def_text_script CompText87414AC_unk128

	def_text_script CompText87414AC_unk129

	def_text_script CompText87414AC_unk130

	def_text_script CompText87414AC_unk131

	def_text_script CompText87414AC_unk132

	def_text_script CompText87414AC_unk133

	def_text_script CompText87414AC_unk134

	def_text_script CompText87414AC_unk135

	def_text_script CompText87414AC_unk136

	def_text_script CompText87414AC_unk137

	def_text_script CompText87414AC_unk138

	def_text_script CompText87414AC_unk139

	def_text_script CompText87414AC_unk140

	def_text_script CompText87414AC_unk141

	def_text_script CompText87414AC_unk142

	def_text_script CompText87414AC_unk143

	def_text_script CompText87414AC_unk144

	def_text_script CompText87414AC_unk145

	def_text_script CompText87414AC_unk146

	def_text_script CompText87414AC_unk147

	def_text_script CompText87414AC_unk148

	def_text_script CompText87414AC_unk149

	def_text_script CompText87414AC_unk150

	def_text_script CompText87414AC_unk151

	def_text_script CompText87414AC_unk152

	def_text_script CompText87414AC_unk153

	def_text_script CompText87414AC_unk154

	def_text_script CompText87414AC_unk155

	def_text_script CompText87414AC_unk156

	def_text_script CompText87414AC_unk157

	def_text_script CompText87414AC_unk158

	def_text_script CompText87414AC_unk159

	def_text_script CompText87414AC_unk160

	def_text_script CompText87414AC_unk161

	def_text_script CompText87414AC_unk162

	def_text_script CompText87414AC_unk163

	def_text_script CompText87414AC_unk164

	def_text_script CompText87414AC_unk165

	def_text_script CompText87414AC_unk166

	def_text_script CompText87414AC_unk167

	def_text_script CompText87414AC_unk168

	def_text_script CompText87414AC_unk169

	def_text_script CompText87414AC_unk170

	def_text_script CompText87414AC_unk171

	def_text_script CompText87414AC_unk172

	def_text_script CompText87414AC_unk173

	def_text_script CompText87414AC_unk174

	def_text_script CompText87414AC_unk175

	def_text_script CompText87414AC_unk176

	def_text_script CompText87414AC_unk177

	def_text_script CompText87414AC_unk178

	def_text_script CompText87414AC_unk179

	def_text_script CompText87414AC_unk180

	def_text_script CompText87414AC_unk181

	def_text_script CompText87414AC_unk182

	def_text_script CompText87414AC_unk183

	def_text_script CompText87414AC_unk184

	def_text_script CompText87414AC_unk185

	def_text_script CompText87414AC_unk186

	def_text_script CompText87414AC_unk187

	def_text_script CompText87414AC_unk188

	def_text_script CompText87414AC_unk189

	def_text_script CompText87414AC_unk190

	def_text_script CompText87414AC_unk191

	def_text_script CompText87414AC_unk192

	def_text_script CompText87414AC_unk193

	def_text_script CompText87414AC_unk194

	def_text_script CompText87414AC_unk195

	def_text_script CompText87414AC_unk196

	def_text_script CompText87414AC_unk197

	def_text_script CompText87414AC_unk198

	def_text_script CompText87414AC_unk199

	def_text_script CompText87414AC_unk200

	def_text_script CompText87414AC_unk201

	def_text_script CompText87414AC_unk202

	def_text_script CompText87414AC_unk203

	def_text_script CompText87414AC_unk204

	def_text_script CompText87414AC_unk205

	def_text_script CompText87414AC_unk206

	def_text_script CompText87414AC_unk207

	def_text_script CompText87414AC_unk208

	def_text_script CompText87414AC_unk209

	def_text_script CompText87414AC_unk210

	def_text_script CompText87414AC_unk211

	def_text_script CompText87414AC_unk212

	def_text_script CompText87414AC_unk213

	def_text_script CompText87414AC_unk214

	def_text_script CompText87414AC_unk215

	def_text_script CompText87414AC_unk216

	def_text_script CompText87414AC_unk217

	def_text_script CompText87414AC_unk218

	def_text_script CompText87414AC_unk219

	def_text_script CompText87414AC_unk220

	def_text_script CompText87414AC_unk221

	def_text_script CompText87414AC_unk222

	def_text_script CompText87414AC_unk223

	def_text_script CompText87414AC_unk224

	def_text_script CompText87414AC_unk225

	def_text_script CompText87414AC_unk226

	def_text_script CompText87414AC_unk227

	def_text_script CompText87414AC_unk228

	def_text_script CompText87414AC_unk229

	def_text_script CompText87414AC_unk230

	def_text_script CompText87414AC_unk231

	def_text_script CompText87414AC_unk232

	def_text_script CompText87414AC_unk233

	def_text_script CompText87414AC_unk234

	def_text_script CompText87414AC_unk235

	def_text_script CompText87414AC_unk236

	def_text_script CompText87414AC_unk237

	def_text_script CompText87414AC_unk238

	def_text_script CompText87414AC_unk239

	def_text_script CompText87414AC_unk240

	def_text_script CompText87414AC_unk241

	def_text_script CompText87414AC_unk242

	def_text_script CompText87414AC_unk243

	def_text_script CompText87414AC_unk244

	def_text_script CompText87414AC_unk245

	def_text_script CompText87414AC_unk246

	def_text_script CompText87414AC_unk247

	def_text_script CompText87414AC_unk248

	def_text_script CompText87414AC_unk249

	def_text_script CompText87414AC_unk250

	def_text_script CompText87414AC_unk251

	def_text_script CompText87414AC_unk252

	def_text_script CompText87414AC_unk253

	def_text_script CompText87414AC_unk254

	