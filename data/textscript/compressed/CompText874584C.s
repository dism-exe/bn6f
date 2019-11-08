	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText874584C::
	.word 0x8FD00

	text_archive_start

	def_text_script CompText874584C_unk0
	ts_check_navi_all 0xFF, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65
	ts_check_chapter 0x62, 0x64, 0xF, 0xFF
	ts_check_chapter 0x60, 0x61, 0x5, 0xFF
	ts_check_chapter 0x4B, 0x4B, 0x9B, 0xFF
	ts_check_chapter 0x48, 0x49, 0x96, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk1

	def_text_script CompText874584C_unk2

	def_text_script CompText874584C_unk3

	def_text_script CompText874584C_unk4

	def_text_script CompText874584C_unk5
	ts_check_flag 0x10, 0xE, 0xA, 0xFF
	ts_check_flag 0xE, 0xE, 0x9, 0xFF
	ts_check_flag 0xA, 0xE, 0x8, 0xFF
	ts_check_flag 0x8, 0xE, 0x7, 0xFF
	ts_check_flag 0x5A, 0xE, 0x6, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We've got to check\n"
	.string "the Undernet BBS!!\n"
	.string "Let's go!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk6
	ts_check_sub_area 0x0, 0x0, 0xB, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's go to the\n"
	.string "Sky Town Admin\n"
	.string "Building!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk7
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I'm glad we're all\n"
	.string "safe and sound!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Come on,let's go\n"
	.string "catch up with Mick\n"
	.string "and Tab!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk8
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go home,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk9
	ts_mugshot_show 0x37
	ts_msg_open
	.string "So,we're inviting\n"
	.string "Mick,Iris,Tab,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and all our friends\n"
	.string "from ACDC Town!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh,and Chaud too,if\n"
	.string "he's around!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk10
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go home,Lan!\n"
	.string "I can hardly wait\n"
	.string "for the Gala!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk11
	ts_mugshot_show 0x37
	ts_msg_open
	.string "According to the\n"
	.string "Undernet BBS,they're\n"
	.string "in this area!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk12

	def_text_script CompText874584C_unk13

	def_text_script CompText874584C_unk14

	def_text_script CompText874584C_unk15
	ts_check_flag 0x44, 0xE, 0x1D, 0xFF
	ts_check_flag 0x3E, 0xE, 0x1C, 0xFF
	ts_check_flag 0x3C, 0xE, 0x1B, 0xFF
	ts_check_flag 0x36, 0xE, 0x1A, 0xFF
	ts_check_flag 0x34, 0xE, 0x19, 0xFF
	ts_check_flag 0x2E, 0xE, 0x18, 0xFF
	ts_check_flag 0x2C, 0xE, 0x17, 0xFF
	ts_check_flag 0x2A, 0xE, 0x16, 0xFF
	ts_check_flag 0x26, 0xE, 0x15, 0xFF
	ts_check_flag 0x22, 0xE, 0x14, 0xFF
	ts_check_flag 0x20, 0xE, 0x13, 0xFF
	ts_check_flag 0x16, 0xE, 0x12, 0xFF
	ts_check_flag 0x14, 0xE, 0x11, 0xFF
	ts_check_flag 0x62, 0xE, 0x10, 0xFF
	ts_end

	def_text_script CompText874584C_unk16
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Alright,let's go to\n"
	.string "the meeting point!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go to the\n"
	.string "Expo Site,Lan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk18
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's go back to\n"
	.string "the Expo! We need to\n"
	.string "get all the stamps!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk19
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's head for\n"
	.string "the Principal's\n"
	.string "Office!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk20
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's go to the\n"
	.string "Principal's Office!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk21
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder where in\n"
	.string "the Expo Site that\n"
	.string "passageway leads..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk22
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We need to get back\n"
	.string "to the Expo Site!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk23
	ts_jump 22

	def_text_script CompText874584C_unk24
	ts_jump 22

	def_text_script CompText874584C_unk25
	ts_jump 22

	def_text_script CompText874584C_unk26
	ts_jump 22

	def_text_script CompText874584C_unk27
	ts_jump 22

	def_text_script CompText874584C_unk28
	ts_jump 22

	def_text_script CompText874584C_unk29
	ts_jump 22

	def_text_script CompText874584C_unk30

	def_text_script CompText874584C_unk31

	def_text_script CompText874584C_unk32

	def_text_script CompText874584C_unk33

	def_text_script CompText874584C_unk34

	def_text_script CompText874584C_unk35

	def_text_script CompText874584C_unk36

	def_text_script CompText874584C_unk37

	def_text_script CompText874584C_unk38

	def_text_script CompText874584C_unk39

	def_text_script CompText874584C_unk40

	def_text_script CompText874584C_unk41

	def_text_script CompText874584C_unk42

	def_text_script CompText874584C_unk43

	def_text_script CompText874584C_unk44

	def_text_script CompText874584C_unk45

	def_text_script CompText874584C_unk46

	def_text_script CompText874584C_unk47

	def_text_script CompText874584C_unk48

	def_text_script CompText874584C_unk49

	def_text_script CompText874584C_unk50

	def_text_script CompText874584C_unk51

	def_text_script CompText874584C_unk52

	def_text_script CompText874584C_unk53

	def_text_script CompText874584C_unk54

	def_text_script CompText874584C_unk55

	def_text_script CompText874584C_unk56

	def_text_script CompText874584C_unk57

	def_text_script CompText874584C_unk58

	def_text_script CompText874584C_unk59

	def_text_script CompText874584C_unk60

	def_text_script CompText874584C_unk61

	def_text_script CompText874584C_unk62

	def_text_script CompText874584C_unk63

	def_text_script CompText874584C_unk64

	def_text_script CompText874584C_unk65

	def_text_script CompText874584C_unk66

	def_text_script CompText874584C_unk67

	def_text_script CompText874584C_unk68

	def_text_script CompText874584C_unk69

	def_text_script CompText874584C_unk70

	def_text_script CompText874584C_unk71

	def_text_script CompText874584C_unk72

	def_text_script CompText874584C_unk73

	def_text_script CompText874584C_unk74

	def_text_script CompText874584C_unk75

	def_text_script CompText874584C_unk76

	def_text_script CompText874584C_unk77

	def_text_script CompText874584C_unk78

	def_text_script CompText874584C_unk79

	def_text_script CompText874584C_unk80

	def_text_script CompText874584C_unk81

	def_text_script CompText874584C_unk82

	def_text_script CompText874584C_unk83

	def_text_script CompText874584C_unk84

	def_text_script CompText874584C_unk85

	def_text_script CompText874584C_unk86

	def_text_script CompText874584C_unk87

	def_text_script CompText874584C_unk88

	def_text_script CompText874584C_unk89

	def_text_script CompText874584C_unk90
	ts_end

	def_text_script CompText874584C_unk91
	ts_mugshot_show 0x47
	ts_msg_open
	.string "Let me at 'em,Lan!\n"
	.string "I'm burning for one\n"
	.string "hot battle!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk92
	ts_mugshot_show 0x49
	ts_msg_open
	.string "Your operating\n"
	.string "sparks a surge of\n"
	.string "power within me..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk93
	ts_mugshot_show 0x4B
	ts_msg_open
	.string "Slash! Any virus in\n"
	.string "my way is asking for\n"
	.string "a slicing!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk94
	ts_mugshot_show 0x50
	ts_msg_open
	.string "My scythe cries...\n"
	.string "It wants to delete!!\n"
	.string "Hyahahahahaha!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk95
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "Is it departure\n"
	.string "time!? I want to be\n"
	.string "on time! Choo,choo!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk96
	ts_mugshot_show 0x48
	ts_msg_open
	.string "I don't fight a lot,\n"
	.string "drip! Real battles\n"
	.string "scare me... drip!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk97
	ts_mugshot_show 0x4A
	ts_msg_open
	.string "Lan,your operating\n"
	.string "gives me such an\n"
	.string "awesome feeling!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk98
	ts_mugshot_show 0x4C
	ts_msg_open
	.string "I can feel\n"
	.string "the wind..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk99
	ts_mugshot_show 0x4D
	ts_msg_open
	.string "Whiiiiiir!\n"
	.string "C'mon! Let's go\n"
	.string "break some viruses!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk100
	ts_mugshot_show 0x4E
	ts_msg_open
	.string "Gahahahaha!!\n"
	.string "Let's go clean up\n"
	.string "some cybertrash!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk101
	ts_mugshot_show 0x3B
	ts_msg_open
	.string "Only you and Chaud\n"
	.string "can operate me well.\n"
	.string "Don't let me down..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk102

	def_text_script CompText874584C_unk103

	def_text_script CompText874584C_unk104

	def_text_script CompText874584C_unk105

	def_text_script CompText874584C_unk106

	def_text_script CompText874584C_unk107

	def_text_script CompText874584C_unk108

	def_text_script CompText874584C_unk109

	def_text_script CompText874584C_unk110

	def_text_script CompText874584C_unk111

	def_text_script CompText874584C_unk112

	def_text_script CompText874584C_unk113

	def_text_script CompText874584C_unk114

	def_text_script CompText874584C_unk115

	def_text_script CompText874584C_unk116

	def_text_script CompText874584C_unk117

	def_text_script CompText874584C_unk118

	def_text_script CompText874584C_unk119

	def_text_script CompText874584C_unk120

	def_text_script CompText874584C_unk121

	def_text_script CompText874584C_unk122

	def_text_script CompText874584C_unk123

	def_text_script CompText874584C_unk124

	def_text_script CompText874584C_unk125

	def_text_script CompText874584C_unk126

	def_text_script CompText874584C_unk127

	def_text_script CompText874584C_unk128

	def_text_script CompText874584C_unk129

	def_text_script CompText874584C_unk130

	def_text_script CompText874584C_unk131

	def_text_script CompText874584C_unk132

	def_text_script CompText874584C_unk133

	def_text_script CompText874584C_unk134

	def_text_script CompText874584C_unk135

	def_text_script CompText874584C_unk136

	def_text_script CompText874584C_unk137

	def_text_script CompText874584C_unk138

	def_text_script CompText874584C_unk139

	def_text_script CompText874584C_unk140

	def_text_script CompText874584C_unk141

	def_text_script CompText874584C_unk142

	def_text_script CompText874584C_unk143

	def_text_script CompText874584C_unk144

	def_text_script CompText874584C_unk145

	def_text_script CompText874584C_unk146

	def_text_script CompText874584C_unk147

	def_text_script CompText874584C_unk148

	def_text_script CompText874584C_unk149

	def_text_script CompText874584C_unk150
	ts_check_flag 0x3C, 0xA, 0x99, 0xFF
	ts_check_flag 0x3A, 0xA, 0x98, 0xFF
	ts_check_flag 0x38, 0xA, 0x97, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "You're in class now,\n"
	.string "Lan! Better go check\n"
	.string "the control panel!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk151
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,you're still in\n"
	.string "class,right?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk152
	ts_jump 151

	def_text_script CompText874584C_unk153
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Good luck on\n"
	.string "Ms.Zap's final\n"
	.string "exam!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk154

	def_text_script CompText874584C_unk155
	ts_check_flag 0x8C, 0xA, 0x9D, 0xFF
	ts_check_flag 0x42, 0xA, 0x9C, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "You're in class now,\n"
	.string "Lan! Better go check\n"
	.string "the control panel!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk156
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,you're still in\n"
	.string "class,right?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874584C_unk157
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Good luck on Dingo's\n"
	.string "final exam,Lan!!"
	ts_key_wait 0x0
	ts_end

	