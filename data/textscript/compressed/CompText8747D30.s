	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8747D30::
	.word 0x111100

	text_archive_start

	def_text_script CompText8747D30_unk0
	ts_check_chapter 0x80, 0x80, 0xDC, 0xFF
	ts_check_chapter 0x32, 0x33, 0x5F, 0xFF
	ts_check_chapter 0x31, 0x31, 0x50, 0xFF
	ts_check_chapter 0x30, 0x30, 0x46, 0xFF
	ts_check_chapter 0x24, 0x25, 0x32, 0xFF
	ts_check_chapter 0x22, 0x23, 0x23, 0xFF
	ts_check_chapter 0x21, 0x21, 0xA, 0xFF
	ts_msg_open
	.string "Temporary message"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk1

	def_text_script CompText8747D30_unk2

	def_text_script CompText8747D30_unk3

	def_text_script CompText8747D30_unk4

	def_text_script CompText8747D30_unk5
	ts_end

	def_text_script CompText8747D30_unk6

	def_text_script CompText8747D30_unk7

	def_text_script CompText8747D30_unk8

	def_text_script CompText8747D30_unk9

	def_text_script CompText8747D30_unk10
	ts_check_game_version 0xFF, 0x14
	ts_check_flag 0x69, 0x6, 0x11, 0xFF
	ts_check_flag 0x65, 0x6, 0x10, 0xFF
	ts_check_flag 0x61, 0x6, 0xF, 0xFF
	ts_check_flag 0x5D, 0x6, 0xE, 0xFF
	ts_check_flag 0x59, 0x6, 0xD, 0xFF
	ts_check_flag 0x57, 0x6, 0xC, 0xFF
	ts_end

	def_text_script CompText8747D30_unk11

	def_text_script CompText8747D30_unk12
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head over to\n"
	.string "CentralArea and find\n"
	.string "some Kettles!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk13
	ts_jump 12

	def_text_script CompText8747D30_unk14
	ts_jump 12

	def_text_script CompText8747D30_unk15
	ts_jump 12

	def_text_script CompText8747D30_unk16
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Time for Match's\n"
	.string "final...\n"
	.string "Good luck!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk17
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I think it's time\n"
	.string "to head on home..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk18

	def_text_script CompText8747D30_unk19

	def_text_script CompText8747D30_unk20
	ts_check_flag 0x7B, 0x6, 0x1D, 0xFF
	ts_check_flag 0x79, 0x6, 0x1C, 0xFF
	ts_check_flag 0x77, 0x6, 0x1B, 0xFF
	ts_check_flag 0x6F, 0x6, 0x17, 0xFF
	ts_check_flag 0x6D, 0x6, 0x16, 0xFF
	ts_end

	def_text_script CompText8747D30_unk21

	def_text_script CompText8747D30_unk22
	ts_check_sub_area 0x3, 0x3, 0x1F, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Shuko told us to go\n"
	.string "to the Aquarium HP!\n"
	.string "Let's go,SpoutMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk23
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go back to\n"
	.string "SeasideArea,\n"
	.string "SpoutMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk24
	ts_jump 23

	def_text_script CompText8747D30_unk25
	ts_jump 23

	def_text_script CompText8747D30_unk26
	ts_jump 23

	def_text_script CompText8747D30_unk27
	ts_check_sub_area 0x3, 0x3, 0x20, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's bring the fish\n"
	.string "data back to the\n"
	.string "Aquarium,SpoutMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk28
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Next is Shuko's\n"
	.string "final exam,huh...?\n"
	.string "Good luck!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk29
	ts_jump 17

	def_text_script CompText8747D30_unk30
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta go take\n"
	.string "Shuko's class!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk31
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hmm,where could the\n"
	.string "staffer's Navi be?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk32
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hmm,I wonder if the\n"
	.string "staffer's Navi is\n"
	.string "here...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk33

	def_text_script CompText8747D30_unk34

	def_text_script CompText8747D30_unk35
	ts_check_flag 0x18, 0x6, 0x2A, 0xFF
	ts_check_flag 0x14, 0x6, 0x28, 0xFF
	ts_check_flag 0x12, 0x6, 0x27, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The event tomorrow\n"
	.string "sounds fun! I wonder\n"
	.string "what'll happen!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk36

	def_text_script CompText8747D30_unk37

	def_text_script CompText8747D30_unk38

	def_text_script CompText8747D30_unk39
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Head for the Net,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk40
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We don't have time\n"
	.string "to hang around here!\n"
	.string "Back to the Net!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk41

	def_text_script CompText8747D30_unk42
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The Cybeast might\n"
	.string "still be in\n"
	.string "CentralArea3..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk43

	def_text_script CompText8747D30_unk44

	def_text_script CompText8747D30_unk45

	def_text_script CompText8747D30_unk46

	def_text_script CompText8747D30_unk47

	def_text_script CompText8747D30_unk48

	def_text_script CompText8747D30_unk49

	def_text_script CompText8747D30_unk50
	ts_check_flag 0x26, 0x6, 0x37, 0xFF
	ts_check_flag 0x20, 0x6, 0x35, 0xFF
	ts_check_game_version 0x33, 0x34
	ts_end

	def_text_script CompText8747D30_unk51
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The \"Healing Water\"\n"
	.string "is in SeasideArea3,\n"
	.string "HeatMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk52
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The \"Healing Water\"\n"
	.string "is in SeasideArea3,\n"
	.string "SpoutMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk53
	ts_check_game_version 0xFF, 0x36
	ts_check_sub_area 0x0, 0x0, 0x38, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's bring that\n"
	.string "\"Healing Water\" back\n"
	.string "to MegaMan,HeatMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk54
	ts_check_sub_area 0x0, 0x0, 0x38, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's bring that\n"
	.string "\"Healing Water\" back\n"
	.string "to MegaMan,SpoutMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk55
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Head for\n"
	.string "CentralArea3,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk56
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We've gotta get that\n"
	.string "\"Healing Water\" to\n"
	.string "MegaMan,fast!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk57

	def_text_script CompText8747D30_unk58

	def_text_script CompText8747D30_unk59

	def_text_script CompText8747D30_unk60

	def_text_script CompText8747D30_unk61

	def_text_script CompText8747D30_unk62

	def_text_script CompText8747D30_unk63

	def_text_script CompText8747D30_unk64

	def_text_script CompText8747D30_unk65

	def_text_script CompText8747D30_unk66

	def_text_script CompText8747D30_unk67

	def_text_script CompText8747D30_unk68

	def_text_script CompText8747D30_unk69

	def_text_script CompText8747D30_unk70
	ts_check_flag 0x5A, 0x8, 0x4B, 0xFF
	ts_check_flag 0x7B, 0x8, 0x4A, 0xFF
	ts_check_flag 0x59, 0x8, 0x49, 0xFF
	ts_check_flag 0x58, 0x8, 0x48, 0xFF
	ts_check_flag 0x57, 0x8, 0x47, 0xFF
	ts_mugshot_show 0x0
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

	def_text_script CompText8747D30_unk71
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's find that\n"
	.string "cyberseal,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk72
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I wonder what a fish\n"
	.string "that can't swim is??"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk73
	ts_mugshot_show 0x0
	ts_msg_open
	.string "\"I am always looking\n"
	.string " at crayfish\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Um... Well,for a\n"
	.string "start,let's try to\n"
	.string "find a crayfish..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk74
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's find something\n"
	.string "that's looking at\n"
	.string "the crayfish"
	ts_key_wait 0x0
	ts_clear_msg
	.string "in our classroom!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk75
	ts_end

	def_text_script CompText8747D30_unk76

	def_text_script CompText8747D30_unk77

	def_text_script CompText8747D30_unk78

	def_text_script CompText8747D30_unk79

	def_text_script CompText8747D30_unk80
	ts_check_flag 0xE, 0x8, 0x57, 0xFF
	ts_check_flag 0xA, 0x8, 0x56, 0xFF
	ts_check_flag 0x67, 0x8, 0x55, 0xFF
	ts_check_flag 0x66, 0x8, 0x54, 0xFF
	ts_check_flag 0x65, 0x8, 0x53, 0xFF
	ts_check_flag 0x64, 0x8, 0x52, 0xFF
	ts_check_flag 0x6, 0x8, 0x51, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go see what's\n"
	.string "in Green Town!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk81
	ts_mugshot_show 0x0
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

	def_text_script CompText8747D30_unk82
	ts_mugshot_show 0x0
	ts_msg_open
	.string "If you hit Mr.Prog\n"
	.string "on the head,what's\n"
	.string "the punishment...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I have no idea..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk83
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I wonder if you\n"
	.string "would really get\n"
	.string "an"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"infuriating\n"
	.string " punishment from\n"
	.string " Mr.Prog\"..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk84
	ts_mugshot_show 0x0
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

	def_text_script CompText8747D30_unk85
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We have to get back\n"
	.string "to the courthouse!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk86
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's check out the\n"
	.string "courtroom!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk87
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ah,it's time to go\n"
	.string "home and head to bed\n"
	.string "already..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk88

	def_text_script CompText8747D30_unk89

	def_text_script CompText8747D30_unk90

	def_text_script CompText8747D30_unk91

	def_text_script CompText8747D30_unk92

	def_text_script CompText8747D30_unk93

	def_text_script CompText8747D30_unk94

	def_text_script CompText8747D30_unk95
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
	ts_mugshot_show 0x0
	ts_msg_open
	.string "In any case,we've\n"
	.string "gotta go home and\n"
	.string "ask Mom..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk96
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Head for Green Town,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk97
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's try to find\n"
	.string "out more about Dad!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk98
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We've gotta find\n"
	.string "something to prove\n"
	.string "what Dad was doing"
	ts_key_wait 0x0
	ts_clear_msg
	.string "yesterday at 4 P.M.\n"
	.string "in Central Town!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk99
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We've gotta find\n"
	.string "someone at school"
	ts_key_wait 0x0
	ts_clear_msg
	.string "who saw Dad at\n"
	.string "4 P.M. yesterday!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk100
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I think we can find\n"
	.string "proof that Dad was\n"
	.string "at the school at"
	ts_key_wait 0x0
	ts_clear_msg
	.string "4 P.M. yesterday!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk101
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out! The\n"
	.string "RoboControl PC is in\n"
	.string "the Teachers' Room!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk102
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's take that\n"
	.string "recorded data\n"
	.string "to the courthouse!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We'll prove Dad's\n"
	.string "innocent!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk103
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,and let's\n"
	.string "get over to the\n"
	.string "Punishment Room!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk104
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We can save Dad if\n"
	.string "we show our proof\n"
	.string "to the JudgeTree!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk105
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta stop the\n"
	.string "JudgeTree somehow!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk106

	def_text_script CompText8747D30_unk107

	def_text_script CompText8747D30_unk108

	def_text_script CompText8747D30_unk109

	def_text_script CompText8747D30_unk110

	def_text_script CompText8747D30_unk111

	def_text_script CompText8747D30_unk112

	def_text_script CompText8747D30_unk113

	def_text_script CompText8747D30_unk114

	def_text_script CompText8747D30_unk115

	def_text_script CompText8747D30_unk116

	def_text_script CompText8747D30_unk117

	def_text_script CompText8747D30_unk118

	def_text_script CompText8747D30_unk119

	def_text_script CompText8747D30_unk120

	def_text_script CompText8747D30_unk121

	def_text_script CompText8747D30_unk122

	def_text_script CompText8747D30_unk123

	def_text_script CompText8747D30_unk124

	def_text_script CompText8747D30_unk125

	def_text_script CompText8747D30_unk126

	def_text_script CompText8747D30_unk127

	def_text_script CompText8747D30_unk128

	def_text_script CompText8747D30_unk129

	def_text_script CompText8747D30_unk130

	def_text_script CompText8747D30_unk131

	def_text_script CompText8747D30_unk132

	def_text_script CompText8747D30_unk133

	def_text_script CompText8747D30_unk134

	def_text_script CompText8747D30_unk135

	def_text_script CompText8747D30_unk136

	def_text_script CompText8747D30_unk137

	def_text_script CompText8747D30_unk138

	def_text_script CompText8747D30_unk139

	def_text_script CompText8747D30_unk140

	def_text_script CompText8747D30_unk141

	def_text_script CompText8747D30_unk142

	def_text_script CompText8747D30_unk143

	def_text_script CompText8747D30_unk144

	def_text_script CompText8747D30_unk145

	def_text_script CompText8747D30_unk146

	def_text_script CompText8747D30_unk147

	def_text_script CompText8747D30_unk148

	def_text_script CompText8747D30_unk149

	def_text_script CompText8747D30_unk150

	def_text_script CompText8747D30_unk151

	def_text_script CompText8747D30_unk152

	def_text_script CompText8747D30_unk153

	def_text_script CompText8747D30_unk154

	def_text_script CompText8747D30_unk155

	def_text_script CompText8747D30_unk156

	def_text_script CompText8747D30_unk157

	def_text_script CompText8747D30_unk158

	def_text_script CompText8747D30_unk159

	def_text_script CompText8747D30_unk160

	def_text_script CompText8747D30_unk161

	def_text_script CompText8747D30_unk162

	def_text_script CompText8747D30_unk163

	def_text_script CompText8747D30_unk164

	def_text_script CompText8747D30_unk165

	def_text_script CompText8747D30_unk166

	def_text_script CompText8747D30_unk167

	def_text_script CompText8747D30_unk168

	def_text_script CompText8747D30_unk169

	def_text_script CompText8747D30_unk170

	def_text_script CompText8747D30_unk171

	def_text_script CompText8747D30_unk172

	def_text_script CompText8747D30_unk173

	def_text_script CompText8747D30_unk174

	def_text_script CompText8747D30_unk175

	def_text_script CompText8747D30_unk176

	def_text_script CompText8747D30_unk177

	def_text_script CompText8747D30_unk178

	def_text_script CompText8747D30_unk179

	def_text_script CompText8747D30_unk180

	def_text_script CompText8747D30_unk181

	def_text_script CompText8747D30_unk182

	def_text_script CompText8747D30_unk183

	def_text_script CompText8747D30_unk184

	def_text_script CompText8747D30_unk185

	def_text_script CompText8747D30_unk186

	def_text_script CompText8747D30_unk187

	def_text_script CompText8747D30_unk188

	def_text_script CompText8747D30_unk189

	def_text_script CompText8747D30_unk190

	def_text_script CompText8747D30_unk191

	def_text_script CompText8747D30_unk192

	def_text_script CompText8747D30_unk193

	def_text_script CompText8747D30_unk194

	def_text_script CompText8747D30_unk195

	def_text_script CompText8747D30_unk196

	def_text_script CompText8747D30_unk197

	def_text_script CompText8747D30_unk198

	def_text_script CompText8747D30_unk199

	def_text_script CompText8747D30_unk200

	def_text_script CompText8747D30_unk201

	def_text_script CompText8747D30_unk202

	def_text_script CompText8747D30_unk203

	def_text_script CompText8747D30_unk204

	def_text_script CompText8747D30_unk205

	def_text_script CompText8747D30_unk206

	def_text_script CompText8747D30_unk207

	def_text_script CompText8747D30_unk208

	def_text_script CompText8747D30_unk209

	def_text_script CompText8747D30_unk210

	def_text_script CompText8747D30_unk211

	def_text_script CompText8747D30_unk212

	def_text_script CompText8747D30_unk213

	def_text_script CompText8747D30_unk214

	def_text_script CompText8747D30_unk215

	def_text_script CompText8747D30_unk216

	def_text_script CompText8747D30_unk217

	def_text_script CompText8747D30_unk218

	def_text_script CompText8747D30_unk219

	def_text_script CompText8747D30_unk220
	ts_check_navi_all 0xFF, 0xDD, 0xDE, 0xDF, 0xE0, 0xE1, 0xE2, 0xE3, 0xE4, 0xE5, 0xE6, 0xE7
	ts_end

	def_text_script CompText8747D30_unk221
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating HeatMan...\n"
	.string "It lights my soul on\n"
	.string "fire!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk222
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating ElecMan...\n"
	.string "I feel a surge of\n"
	.string "power coming on!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk223
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating SlashMan\n"
	.string "is like sharpening\n"
	.string "my mind to a point!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk224
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating EraseMan\n"
	.string "brings out my dark\n"
	.string "side... Mwahahaha!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk225
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating ChargeMan\n"
	.string "makes me want to\n"
	.string "plow ahead!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk226
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating SpoutMan\n"
	.string "makes me feel like\n"
	.string "a little fish..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk227
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating\n"
	.string "TomahawkMan is an\n"
	.string "awesome feeling!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk228
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating TenguMan\n"
	.string "brings a sense of\n"
	.string "peace to my heart..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk229
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating GroundMan\n"
	.string "lets me drill\n"
	.string "through anything!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk230
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating DustMan...\n"
	.string "There's no virus we\n"
	.string "can't scrap!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747D30_unk231
	ts_mugshot_show 0x0
	ts_msg_open
	.string "ProtoMan helping out\n"
	.string "during battle... He\n"
	.string "sure is trustworthy!"
	ts_key_wait 0x0
	ts_end

	