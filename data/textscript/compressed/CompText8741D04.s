	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8741D04::
	.word 0xACC00

	text_archive_start

	def_text_script CompText8741D04_unk0
	ts_check_chapter [
		lower: 0x56,
		upper: 0x56,
		jumpIfInRange: 0xB4,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x54,
		upper: 0x54,
		jumpIfInRange: 0x96,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x52,
		upper: 0x52,
		jumpIfInRange: 0x87,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x51,
		upper: 0x51,
		jumpIfInRange: 0x73,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x50,
		upper: 0x50,
		jumpIfInRange: 0x64,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x43,
		upper: 0x46,
		jumpIfInRange: 0xF,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x40,
		upper: 0x42,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk1

	def_text_script CompText8741D04_unk2

	def_text_script CompText8741D04_unk3

	def_text_script CompText8741D04_unk4

	def_text_script CompText8741D04_unk5
	ts_check_flag [
		flag: 0xA0A,
		jumpIfTrue: 0xA,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xA08,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xA62,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xA06,
		jumpIfTrue: 0x7,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xA60,
		jumpIfTrue: 0x6,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Let's take the\n"
	.string "LevBus and go to\n"
	.string "Sky Town!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk6
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Let's go to Sky\n"
	.string "Town,Lan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk7
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "We have to go back\n"
	.string "to Sky Town,Lan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk8
	ts_jump [
		target: 7,
	]

	def_text_script CompText8741D04_unk9
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan! We have to find\n"
	.string "Mick's Navi!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk10
	ts_msg_open
	.string "MegaMan isn't in\n"
	.string "the PET right now..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk11

	def_text_script CompText8741D04_unk12

	def_text_script CompText8741D04_unk13

	def_text_script CompText8741D04_unk14

	def_text_script CompText8741D04_unk15
	ts_check_flag [
		flag: 0xA2E,
		jumpIfTrue: 0x1B,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xA2C,
		jumpIfTrue: 0x1A,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xA2A,
		jumpIfTrue: 0x19,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xA28,
		jumpIfTrue: 0x17,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xA26,
		jumpIfTrue: 0x16,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xA24,
		jumpIfTrue: 0x15,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xA1A,
		jumpIfTrue: 0x13,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xA18,
		jumpIfTrue: 0x12,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xA16,
		jumpIfTrue: 0x11,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xA10,
		jumpIfTrue: 0x10,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Come on,let's go\n"
	.string "home,Lan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk16
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Strange weather\n"
	.string "we're having... We'd\n"
	.string "better go home,ASAP!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk17
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "I wonder why Iris\n"
	.string "was in Sky Town...\n"
	.string "Let's go find out!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk18
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Let's go to Sky\n"
	.string "Town,Lan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk19
	ts_check_flag [
		flag: 0xA1C,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x14,
	]
	ts_check_flag [
		flag: 0xA1E,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x14,
	]
	ts_check_flag [
		flag: 0xA20,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x14,
	]
	ts_check_flag [
		flag: 0xA22,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x14,
	]
	ts_jump [
		target: 20,
	]

	def_text_script CompText8741D04_unk20
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,we should go\n"
	.string "back to Sky Town!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk21
	ts_jump [
		target: 20,
	]

	def_text_script CompText8741D04_unk22
	ts_jump [
		target: 20,
	]

	def_text_script CompText8741D04_unk23
	ts_check_flag [
		flag: 0x1729,
		jumpIfTrue: 0x18,
		jumpIfFalse: 0xFF,
	]
	ts_jump [
		target: 20,
	]

	def_text_script CompText8741D04_unk24
	ts_jump [
		target: 20,
	]

	def_text_script CompText8741D04_unk25
	ts_jump [
		target: 20,
	]

	def_text_script CompText8741D04_unk26
	ts_jump [
		target: 20,
	]

	def_text_script CompText8741D04_unk27
	ts_jump [
		target: 20,
	]

	def_text_script CompText8741D04_unk28

	def_text_script CompText8741D04_unk29

	def_text_script CompText8741D04_unk30

	def_text_script CompText8741D04_unk31

	def_text_script CompText8741D04_unk32

	def_text_script CompText8741D04_unk33

	def_text_script CompText8741D04_unk34

	def_text_script CompText8741D04_unk35

	def_text_script CompText8741D04_unk36

	def_text_script CompText8741D04_unk37

	def_text_script CompText8741D04_unk38

	def_text_script CompText8741D04_unk39

	def_text_script CompText8741D04_unk40

	def_text_script CompText8741D04_unk41

	def_text_script CompText8741D04_unk42

	def_text_script CompText8741D04_unk43

	def_text_script CompText8741D04_unk44

	def_text_script CompText8741D04_unk45

	def_text_script CompText8741D04_unk46

	def_text_script CompText8741D04_unk47

	def_text_script CompText8741D04_unk48

	def_text_script CompText8741D04_unk49

	def_text_script CompText8741D04_unk50

	def_text_script CompText8741D04_unk51

	def_text_script CompText8741D04_unk52

	def_text_script CompText8741D04_unk53

	def_text_script CompText8741D04_unk54

	def_text_script CompText8741D04_unk55

	def_text_script CompText8741D04_unk56

	def_text_script CompText8741D04_unk57

	def_text_script CompText8741D04_unk58

	def_text_script CompText8741D04_unk59

	def_text_script CompText8741D04_unk60

	def_text_script CompText8741D04_unk61

	def_text_script CompText8741D04_unk62

	def_text_script CompText8741D04_unk63

	def_text_script CompText8741D04_unk64

	def_text_script CompText8741D04_unk65

	def_text_script CompText8741D04_unk66

	def_text_script CompText8741D04_unk67

	def_text_script CompText8741D04_unk68

	def_text_script CompText8741D04_unk69

	def_text_script CompText8741D04_unk70

	def_text_script CompText8741D04_unk71

	def_text_script CompText8741D04_unk72

	def_text_script CompText8741D04_unk73

	def_text_script CompText8741D04_unk74

	def_text_script CompText8741D04_unk75

	def_text_script CompText8741D04_unk76

	def_text_script CompText8741D04_unk77

	def_text_script CompText8741D04_unk78

	def_text_script CompText8741D04_unk79

	def_text_script CompText8741D04_unk80

	def_text_script CompText8741D04_unk81

	def_text_script CompText8741D04_unk82

	def_text_script CompText8741D04_unk83

	def_text_script CompText8741D04_unk84

	def_text_script CompText8741D04_unk85

	def_text_script CompText8741D04_unk86

	def_text_script CompText8741D04_unk87

	def_text_script CompText8741D04_unk88

	def_text_script CompText8741D04_unk89

	def_text_script CompText8741D04_unk90

	def_text_script CompText8741D04_unk91

	def_text_script CompText8741D04_unk92

	def_text_script CompText8741D04_unk93

	def_text_script CompText8741D04_unk94

	def_text_script CompText8741D04_unk95

	def_text_script CompText8741D04_unk96

	def_text_script CompText8741D04_unk97

	def_text_script CompText8741D04_unk98

	def_text_script CompText8741D04_unk99

	def_text_script CompText8741D04_unk100
	ts_check_flag [
		flag: 0xC0A,
		jumpIfTrue: 0x6B,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xCC8,
		jumpIfTrue: 0x6A,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xCD8,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x69,
	]
	ts_check_flag [
		flag: 0xCC6,
		jumpIfTrue: 0x68,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xCC3,
		jumpIfTrue: 0x67,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xCC2,
		jumpIfTrue: 0x66,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xCE4,
		jumpIfTrue: 0x65,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "The MoonStone is\n"
	.string "in the Undernet!\n"
	.string "Let's find it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk101
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Sky gazing,huh...?\n"
	.string "Want to try\n"
	.string "Undernet2,Lan?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk102
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Sounds like there's\n"
	.string "someone who can open\n"
	.string "the Undernet door..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But it seems like\n"
	.string "they're busy with\n"
	.string "a punishment..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk103
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Let's find the\n"
	.string "person who can open\n"
	.string "the Undernet door!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sounds like they're\n"
	.string "working part-time\n"
	.string "near the ocean..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk104
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,let's go to\n"
	.string "Undernet1!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk105
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Let's look for the\n"
	.string "MoonStone in\n"
	.string "Undernet2!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk106
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Let's take the\n"
	.string "MoonStone to the\n"
	.string "Judge in the park!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk107
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Want to call\n"
	.string "it a day?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk108

	def_text_script CompText8741D04_unk109

	def_text_script CompText8741D04_unk110

	def_text_script CompText8741D04_unk111

	def_text_script CompText8741D04_unk112

	def_text_script CompText8741D04_unk113

	def_text_script CompText8741D04_unk114

	def_text_script CompText8741D04_unk115
	ts_check_flag [
		flag: 0xC1C,
		jumpIfTrue: 0x7D,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "I can't wait,Lan!\n"
	.string "Let's hurry to\n"
	.string "ACDC Town!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk116

	def_text_script CompText8741D04_unk117

	def_text_script CompText8741D04_unk118

	def_text_script CompText8741D04_unk119

	def_text_script CompText8741D04_unk120

	def_text_script CompText8741D04_unk121

	def_text_script CompText8741D04_unk122

	def_text_script CompText8741D04_unk123

	def_text_script CompText8741D04_unk124

	def_text_script CompText8741D04_unk125
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... Maybe I should\n"
	.string "go home..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk126

	def_text_script CompText8741D04_unk127

	def_text_script CompText8741D04_unk128

	def_text_script CompText8741D04_unk129

	def_text_script CompText8741D04_unk130

	def_text_script CompText8741D04_unk131

	def_text_script CompText8741D04_unk132

	def_text_script CompText8741D04_unk133

	def_text_script CompText8741D04_unk134

	def_text_script CompText8741D04_unk135
	ts_check_flag [
		flag: 0xC26,
		jumpIfTrue: 0x8D,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xC24,
		jumpIfTrue: 0x8C,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xC22,
		jumpIfTrue: 0x8B,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xCCF,
		jumpIfTrue: 0x8A,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xCCE,
		jumpIfTrue: 0x89,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xC30,
		jumpIfTrue: 0x88,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xC20,
		jumpIfTrue: 0x8E,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I've gotta hurry\n"
	.string "to Seaside Town!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk136
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Somehow,I've gotta\n"
	.string "get to CentralArea3!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk137
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I have to ask the\n"
	.string "Mayor to get rid of\n"
	.string "the cyberbarrier..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I think the Mayor\n"
	.string "might be in the\n"
	.string "Principal's Office."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk138
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I've gotta see the\n"
	.string "Mayor no matter\n"
	.string "what!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk139
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I've gotta get to\n"
	.string "the Principal's\n"
	.string "Office right now!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk140
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I've gotta get to\n"
	.string "the large hole in\n"
	.string "CentralArea!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk141
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Hold on,MegaMan! I'm\n"
	.string "coming to the Under-\n"
	.string "ground right now!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk142
	ts_check_flag [
		flag: 0x1D28,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x8F,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I guess I should\n"
	.string "read my mail..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk143
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I wonder what\n"
	.string "Mr.Mach wants?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Guess I should go\n"
	.string "to Sky Town and\n"
	.string "find out..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk144

	def_text_script CompText8741D04_unk145

	def_text_script CompText8741D04_unk146

	def_text_script CompText8741D04_unk147

	def_text_script CompText8741D04_unk148

	def_text_script CompText8741D04_unk149

	def_text_script CompText8741D04_unk150
	ts_check_flag [
		flag: 0xC49,
		jumpIfTrue: 0x98,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xC43,
		jumpIfTrue: 0x97,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Class has started,\n"
	.string "Lan! You should go\n"
	.string "use that computer!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk151
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,you're still in\n"
	.string "class,right?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk152
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "It's time to face\n"
	.string "Dark Scyth's final!\n"
	.string "Good luck!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk153

	def_text_script CompText8741D04_unk154

	def_text_script CompText8741D04_unk155

	def_text_script CompText8741D04_unk156

	def_text_script CompText8741D04_unk157

	def_text_script CompText8741D04_unk158

	def_text_script CompText8741D04_unk159

	def_text_script CompText8741D04_unk160

	def_text_script CompText8741D04_unk161

	def_text_script CompText8741D04_unk162

	def_text_script CompText8741D04_unk163

	def_text_script CompText8741D04_unk164

	def_text_script CompText8741D04_unk165

	def_text_script CompText8741D04_unk166

	def_text_script CompText8741D04_unk167

	def_text_script CompText8741D04_unk168

	def_text_script CompText8741D04_unk169

	def_text_script CompText8741D04_unk170

	def_text_script CompText8741D04_unk171

	def_text_script CompText8741D04_unk172

	def_text_script CompText8741D04_unk173

	def_text_script CompText8741D04_unk174

	def_text_script CompText8741D04_unk175

	def_text_script CompText8741D04_unk176

	def_text_script CompText8741D04_unk177

	def_text_script CompText8741D04_unk178

	def_text_script CompText8741D04_unk179

	def_text_script CompText8741D04_unk180
	ts_check_flag [
		flag: 0xD32,
		jumpIfTrue: 0xB6,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xC63,
		jumpIfTrue: 0xB5,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,you're in class!\n"
	.string "Hurry up and check\n"
	.string "the computer!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk181
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,you're still in\n"
	.string "class,right?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk182
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Good luck on the\n"
	.string "final exam,Lan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8741D04_unk183

	def_text_script CompText8741D04_unk184

	def_text_script CompText8741D04_unk185

	def_text_script CompText8741D04_unk186

	def_text_script CompText8741D04_unk187

	def_text_script CompText8741D04_unk188

	def_text_script CompText8741D04_unk189

	def_text_script CompText8741D04_unk190

	def_text_script CompText8741D04_unk191

	def_text_script CompText8741D04_unk192

	def_text_script CompText8741D04_unk193

	def_text_script CompText8741D04_unk194

	def_text_script CompText8741D04_unk195

	def_text_script CompText8741D04_unk196

	def_text_script CompText8741D04_unk197

	def_text_script CompText8741D04_unk198

	def_text_script CompText8741D04_unk199

	def_text_script CompText8741D04_unk200

	def_text_script CompText8741D04_unk201

	def_text_script CompText8741D04_unk202

	def_text_script CompText8741D04_unk203

	def_text_script CompText8741D04_unk204

	def_text_script CompText8741D04_unk205

	def_text_script CompText8741D04_unk206

	def_text_script CompText8741D04_unk207

	def_text_script CompText8741D04_unk208

	def_text_script CompText8741D04_unk209

	def_text_script CompText8741D04_unk210

	def_text_script CompText8741D04_unk211

	def_text_script CompText8741D04_unk212

	def_text_script CompText8741D04_unk213

	def_text_script CompText8741D04_unk214

	def_text_script CompText8741D04_unk215

	def_text_script CompText8741D04_unk216

	def_text_script CompText8741D04_unk217

	def_text_script CompText8741D04_unk218

	def_text_script CompText8741D04_unk219

	def_text_script CompText8741D04_unk220

	def_text_script CompText8741D04_unk221

	def_text_script CompText8741D04_unk222

	def_text_script CompText8741D04_unk223

	def_text_script CompText8741D04_unk224

	def_text_script CompText8741D04_unk225

	def_text_script CompText8741D04_unk226

	def_text_script CompText8741D04_unk227

	def_text_script CompText8741D04_unk228

	def_text_script CompText8741D04_unk229

	def_text_script CompText8741D04_unk230

	def_text_script CompText8741D04_unk231

	def_text_script CompText8741D04_unk232

	def_text_script CompText8741D04_unk233

	def_text_script CompText8741D04_unk234

	def_text_script CompText8741D04_unk235

	def_text_script CompText8741D04_unk236

	def_text_script CompText8741D04_unk237

	def_text_script CompText8741D04_unk238

	def_text_script CompText8741D04_unk239

	def_text_script CompText8741D04_unk240

	def_text_script CompText8741D04_unk241

	def_text_script CompText8741D04_unk242

	def_text_script CompText8741D04_unk243

	def_text_script CompText8741D04_unk244

	def_text_script CompText8741D04_unk245

	def_text_script CompText8741D04_unk246

	def_text_script CompText8741D04_unk247

	def_text_script CompText8741D04_unk248

	def_text_script CompText8741D04_unk249

	def_text_script CompText8741D04_unk250

	def_text_script CompText8741D04_unk251

	def_text_script CompText8741D04_unk252

	def_text_script CompText8741D04_unk253

	def_text_script CompText8741D04_unk254

	