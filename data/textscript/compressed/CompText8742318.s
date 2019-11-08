	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8742318::
	.word 0x92000

	text_archive_start

	def_text_script CompText8742318_unk0
	ts_check_navi_all 0xFF, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65
	ts_check_chapter 0x56, 0x56, 0xB4, 0xFF
	ts_check_chapter 0x54, 0x54, 0x96, 0xFF
	ts_check_chapter 0x62, 0x64, 0xF, 0xFF
	ts_check_chapter 0x60, 0x61, 0x5, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk1

	def_text_script CompText8742318_unk2

	def_text_script CompText8742318_unk3

	def_text_script CompText8742318_unk4

	def_text_script CompText8742318_unk5
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

	def_text_script CompText8742318_unk6
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's go to the\n"
	.string "Sky Town Admin\n"
	.string "Building!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk7
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

	def_text_script CompText8742318_unk8
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go home,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk9
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

	def_text_script CompText8742318_unk10
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go home,Lan!\n"
	.string "I can hardly wait\n"
	.string "for the Gala!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk11

	def_text_script CompText8742318_unk12

	def_text_script CompText8742318_unk13

	def_text_script CompText8742318_unk14

	def_text_script CompText8742318_unk15
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

	def_text_script CompText8742318_unk16
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Alright,let's go to\n"
	.string "the meeting point!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go to the\n"
	.string "Expo Site,Lan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk18
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's go back to\n"
	.string "the Expo! We need to\n"
	.string "get all the stamps!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk19
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's head for\n"
	.string "the Principal's\n"
	.string "Office!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk20
	ts_check_sub_area 0x8, 0x8, 0x1E, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's go to the\n"
	.string "Principal's Office!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk21
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder where in\n"
	.string "the Expo Site that\n"
	.string "passageway leads..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk22
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We need to get back\n"
	.string "to the Expo Site!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk23
	ts_jump 22

	def_text_script CompText8742318_unk24
	ts_jump 22

	def_text_script CompText8742318_unk25
	ts_jump 22

	def_text_script CompText8742318_unk26
	ts_jump 22

	def_text_script CompText8742318_unk27
	ts_jump 22

	def_text_script CompText8742318_unk28
	ts_jump 22

	def_text_script CompText8742318_unk29
	ts_jump 22

	def_text_script CompText8742318_unk30
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's check and\n"
	.string "try out everything!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk31

	def_text_script CompText8742318_unk32

	def_text_script CompText8742318_unk33

	def_text_script CompText8742318_unk34

	def_text_script CompText8742318_unk35

	def_text_script CompText8742318_unk36

	def_text_script CompText8742318_unk37

	def_text_script CompText8742318_unk38

	def_text_script CompText8742318_unk39

	def_text_script CompText8742318_unk40

	def_text_script CompText8742318_unk41

	def_text_script CompText8742318_unk42

	def_text_script CompText8742318_unk43

	def_text_script CompText8742318_unk44

	def_text_script CompText8742318_unk45

	def_text_script CompText8742318_unk46

	def_text_script CompText8742318_unk47

	def_text_script CompText8742318_unk48

	def_text_script CompText8742318_unk49

	def_text_script CompText8742318_unk50

	def_text_script CompText8742318_unk51

	def_text_script CompText8742318_unk52

	def_text_script CompText8742318_unk53

	def_text_script CompText8742318_unk54

	def_text_script CompText8742318_unk55

	def_text_script CompText8742318_unk56

	def_text_script CompText8742318_unk57

	def_text_script CompText8742318_unk58

	def_text_script CompText8742318_unk59

	def_text_script CompText8742318_unk60

	def_text_script CompText8742318_unk61

	def_text_script CompText8742318_unk62

	def_text_script CompText8742318_unk63

	def_text_script CompText8742318_unk64

	def_text_script CompText8742318_unk65

	def_text_script CompText8742318_unk66

	def_text_script CompText8742318_unk67

	def_text_script CompText8742318_unk68

	def_text_script CompText8742318_unk69

	def_text_script CompText8742318_unk70

	def_text_script CompText8742318_unk71

	def_text_script CompText8742318_unk72

	def_text_script CompText8742318_unk73

	def_text_script CompText8742318_unk74

	def_text_script CompText8742318_unk75

	def_text_script CompText8742318_unk76

	def_text_script CompText8742318_unk77

	def_text_script CompText8742318_unk78

	def_text_script CompText8742318_unk79

	def_text_script CompText8742318_unk80

	def_text_script CompText8742318_unk81

	def_text_script CompText8742318_unk82

	def_text_script CompText8742318_unk83

	def_text_script CompText8742318_unk84

	def_text_script CompText8742318_unk85

	def_text_script CompText8742318_unk86

	def_text_script CompText8742318_unk87

	def_text_script CompText8742318_unk88

	def_text_script CompText8742318_unk89

	def_text_script CompText8742318_unk90
	ts_end

	def_text_script CompText8742318_unk91
	ts_mugshot_show 0x47
	ts_msg_open
	.string "Let me at 'em,Lan!\n"
	.string "I'm burning for one\n"
	.string "hot battle!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk92
	ts_mugshot_show 0x49
	ts_msg_open
	.string "Your operating\n"
	.string "sparks a surge of\n"
	.string "power within me..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk93
	ts_mugshot_show 0x4B
	ts_msg_open
	.string "Slash! Any virus in\n"
	.string "my way is asking for\n"
	.string "a slicing!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk94
	ts_mugshot_show 0x50
	ts_msg_open
	.string "My scythe cries...\n"
	.string "It wants to delete!!\n"
	.string "Hyahahahahaha!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk95
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "Is it departure\n"
	.string "time!? I want to be\n"
	.string "on time! Choo,choo!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk96
	ts_mugshot_show 0x48
	ts_msg_open
	.string "I don't fight a lot,\n"
	.string "drip! Real battles\n"
	.string "scare me... drip!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk97
	ts_mugshot_show 0x4A
	ts_msg_open
	.string "Lan,your operating\n"
	.string "gives me such an\n"
	.string "awesome feeling!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk98
	ts_mugshot_show 0x4C
	ts_msg_open
	.string "I can feel\n"
	.string "the wind..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk99
	ts_mugshot_show 0x4D
	ts_msg_open
	.string "Whiiiiiir!\n"
	.string "C'mon! Let's go\n"
	.string "break some viruses!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk100
	ts_mugshot_show 0x4E
	ts_msg_open
	.string "Gahahahaha!!\n"
	.string "Let's go clean up\n"
	.string "some cybertrash!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk101
	ts_mugshot_show 0x3B
	ts_msg_open
	.string "Only you and Chaud\n"
	.string "can operate me well.\n"
	.string "Don't let me down..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk102

	def_text_script CompText8742318_unk103

	def_text_script CompText8742318_unk104

	def_text_script CompText8742318_unk105

	def_text_script CompText8742318_unk106

	def_text_script CompText8742318_unk107

	def_text_script CompText8742318_unk108

	def_text_script CompText8742318_unk109

	def_text_script CompText8742318_unk110

	def_text_script CompText8742318_unk111

	def_text_script CompText8742318_unk112

	def_text_script CompText8742318_unk113

	def_text_script CompText8742318_unk114

	def_text_script CompText8742318_unk115

	def_text_script CompText8742318_unk116

	def_text_script CompText8742318_unk117

	def_text_script CompText8742318_unk118

	def_text_script CompText8742318_unk119

	def_text_script CompText8742318_unk120

	def_text_script CompText8742318_unk121

	def_text_script CompText8742318_unk122

	def_text_script CompText8742318_unk123

	def_text_script CompText8742318_unk124

	def_text_script CompText8742318_unk125

	def_text_script CompText8742318_unk126

	def_text_script CompText8742318_unk127

	def_text_script CompText8742318_unk128

	def_text_script CompText8742318_unk129

	def_text_script CompText8742318_unk130

	def_text_script CompText8742318_unk131

	def_text_script CompText8742318_unk132

	def_text_script CompText8742318_unk133

	def_text_script CompText8742318_unk134

	def_text_script CompText8742318_unk135

	def_text_script CompText8742318_unk136

	def_text_script CompText8742318_unk137

	def_text_script CompText8742318_unk138

	def_text_script CompText8742318_unk139

	def_text_script CompText8742318_unk140

	def_text_script CompText8742318_unk141

	def_text_script CompText8742318_unk142

	def_text_script CompText8742318_unk143

	def_text_script CompText8742318_unk144

	def_text_script CompText8742318_unk145

	def_text_script CompText8742318_unk146

	def_text_script CompText8742318_unk147

	def_text_script CompText8742318_unk148

	def_text_script CompText8742318_unk149

	def_text_script CompText8742318_unk150
	ts_check_flag 0x49, 0xC, 0x98, 0xFF
	ts_check_flag 0x43, 0xC, 0x97, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Class has started,\n"
	.string "Lan! You should go\n"
	.string "use that computer!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk151
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,you're still in\n"
	.string "class,right?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk152
	ts_mugshot_show 0x37
	ts_msg_open
	.string "It's time to face\n"
	.string "Dark Scyth's final!\n"
	.string "Good luck!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk153

	def_text_script CompText8742318_unk154

	def_text_script CompText8742318_unk155

	def_text_script CompText8742318_unk156

	def_text_script CompText8742318_unk157

	def_text_script CompText8742318_unk158

	def_text_script CompText8742318_unk159

	def_text_script CompText8742318_unk160

	def_text_script CompText8742318_unk161

	def_text_script CompText8742318_unk162

	def_text_script CompText8742318_unk163

	def_text_script CompText8742318_unk164

	def_text_script CompText8742318_unk165

	def_text_script CompText8742318_unk166

	def_text_script CompText8742318_unk167

	def_text_script CompText8742318_unk168

	def_text_script CompText8742318_unk169

	def_text_script CompText8742318_unk170

	def_text_script CompText8742318_unk171

	def_text_script CompText8742318_unk172

	def_text_script CompText8742318_unk173

	def_text_script CompText8742318_unk174

	def_text_script CompText8742318_unk175

	def_text_script CompText8742318_unk176

	def_text_script CompText8742318_unk177

	def_text_script CompText8742318_unk178

	def_text_script CompText8742318_unk179

	def_text_script CompText8742318_unk180
	ts_check_flag 0x32, 0xD, 0xB6, 0xFF
	ts_check_flag 0x63, 0xC, 0xB5, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "You're in class,Lan!\n"
	.string "Go check that\n"
	.string "computer!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk181
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,you're still in\n"
	.string "class,right?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742318_unk182
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Good luck on the\n"
	.string "final exam,Lan!!"
	ts_key_wait 0x0
	ts_end

	