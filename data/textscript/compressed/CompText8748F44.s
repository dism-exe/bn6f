	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8748F44::
	.word 0xA6F00

	text_archive_start

	def_text_script CompText8748F44_unk0
	ts_check_chapter [
		lower: 0x57,
		upper: 0x57,
		jumpIfInRange: 0xBE,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x56,
		upper: 0x56,
		jumpIfInRange: 0xB4,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0xDD,
		jumpIfElecMan: 0xDE,
		jumpIfSlashMan: 0xDF,
		jumpIfEraseMan: 0xE0,
		jumpIfChargeMan: 0xE1,
		jumpIfSpoutMan: 0xE2,
		jumpIfTomahawkMan: 0xE3,
		jumpIfTenguMan: 0xE4,
		jumpIfGroundMan: 0xE5,
		jumpIfDustMan: 0xE6,
		jumpIfProtoMan: 0xE7,
	]
	ts_check_flag [
		flag: 0x163,
		jumpIfTrue: 0xDC,
		jumpIfFalse: 0xFF,
	]
	ts_jump [
		target: 1,
	]
	ts_end

	def_text_script CompText8748F44_unk1
	ts_check_chapter [
		lower: 0x62,
		upper: 0x64,
		jumpIfInRange: 0xF,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x60,
		upper: 0x61,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk2

	def_text_script CompText8748F44_unk3

	def_text_script CompText8748F44_unk4

	def_text_script CompText8748F44_unk5
	ts_check_flag [
		flag: 0xE10,
		jumpIfTrue: 0xA,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE0E,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE0A,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE08,
		jumpIfTrue: 0x7,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE5A,
		jumpIfTrue: 0x6,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "We've got to check\n"
	.string "the Undernet BBS!!\n"
	.string "Let's go!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk6
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Jack out and head\n"
	.string "for the Sky Town\n"
	.string "Admin Building!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk7
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Phew...\n"
	.string "I'm glad everyone's\n"
	.string "safe..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "OK,time to jack out!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk8
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "It's about time to\n"
	.string "jack out,MegaMan."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk9
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "So,we're inviting\n"
	.string "Mick,Iris,Tab,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and all our friends\n"
	.string "from ACDC Town!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Oh,and Chaud too,if\n"
	.string "he's around!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk10
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Time to jack out!\n"
	.string "I can't wait for\n"
	.string "the Gala!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk11

	def_text_script CompText8748F44_unk12

	def_text_script CompText8748F44_unk13

	def_text_script CompText8748F44_unk14

	def_text_script CompText8748F44_unk15
	ts_check_flag [
		flag: 0xE44,
		jumpIfTrue: 0x1D,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE3E,
		jumpIfTrue: 0x1C,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE3C,
		jumpIfTrue: 0x1B,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE36,
		jumpIfTrue: 0x1A,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE34,
		jumpIfTrue: 0x19,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE2E,
		jumpIfTrue: 0x18,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE2C,
		jumpIfTrue: 0x17,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE2A,
		jumpIfTrue: 0x16,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE26,
		jumpIfTrue: 0x15,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE22,
		jumpIfTrue: 0x14,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE20,
		jumpIfTrue: 0x13,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE16,
		jumpIfTrue: 0x12,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE14,
		jumpIfTrue: 0x11,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xE62,
		jumpIfTrue: 0x10,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Let's get going to\n"
	.string "the meeting point!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk16
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Everyone's waiting\n"
	.string "for us at the park!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk17
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Let's go to the Expo\n"
	.string "Site,MegaMan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk18
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "There are still\n"
	.string "stamps to collect!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk19
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Head for the\n"
	.string "Principal's Office,\n"
	.string "MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk20
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Let's go to the\n"
	.string "Principal's Office,\n"
	.string "MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk21
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Jack out,MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's see where in\n"
	.string "the Expo Site that\n"
	.string "passageway leads..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk22
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Let's get back to\n"
	.string "the Expo Site!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk23
	ts_jump [
		target: 22,
	]

	def_text_script CompText8748F44_unk24
	ts_jump [
		target: 22,
	]

	def_text_script CompText8748F44_unk25
	ts_jump [
		target: 22,
	]

	def_text_script CompText8748F44_unk26
	ts_jump [
		target: 22,
	]

	def_text_script CompText8748F44_unk27
	ts_jump [
		target: 22,
	]

	def_text_script CompText8748F44_unk28
	ts_jump [
		target: 22,
	]

	def_text_script CompText8748F44_unk29
	ts_jump [
		target: 22,
	]

	def_text_script CompText8748F44_unk30

	def_text_script CompText8748F44_unk31

	def_text_script CompText8748F44_unk32

	def_text_script CompText8748F44_unk33

	def_text_script CompText8748F44_unk34

	def_text_script CompText8748F44_unk35

	def_text_script CompText8748F44_unk36

	def_text_script CompText8748F44_unk37

	def_text_script CompText8748F44_unk38

	def_text_script CompText8748F44_unk39

	def_text_script CompText8748F44_unk40

	def_text_script CompText8748F44_unk41

	def_text_script CompText8748F44_unk42

	def_text_script CompText8748F44_unk43

	def_text_script CompText8748F44_unk44

	def_text_script CompText8748F44_unk45

	def_text_script CompText8748F44_unk46

	def_text_script CompText8748F44_unk47

	def_text_script CompText8748F44_unk48

	def_text_script CompText8748F44_unk49

	def_text_script CompText8748F44_unk50

	def_text_script CompText8748F44_unk51

	def_text_script CompText8748F44_unk52

	def_text_script CompText8748F44_unk53

	def_text_script CompText8748F44_unk54

	def_text_script CompText8748F44_unk55

	def_text_script CompText8748F44_unk56

	def_text_script CompText8748F44_unk57

	def_text_script CompText8748F44_unk58

	def_text_script CompText8748F44_unk59

	def_text_script CompText8748F44_unk60

	def_text_script CompText8748F44_unk61

	def_text_script CompText8748F44_unk62

	def_text_script CompText8748F44_unk63

	def_text_script CompText8748F44_unk64

	def_text_script CompText8748F44_unk65

	def_text_script CompText8748F44_unk66

	def_text_script CompText8748F44_unk67

	def_text_script CompText8748F44_unk68

	def_text_script CompText8748F44_unk69

	def_text_script CompText8748F44_unk70

	def_text_script CompText8748F44_unk71

	def_text_script CompText8748F44_unk72

	def_text_script CompText8748F44_unk73

	def_text_script CompText8748F44_unk74

	def_text_script CompText8748F44_unk75

	def_text_script CompText8748F44_unk76

	def_text_script CompText8748F44_unk77

	def_text_script CompText8748F44_unk78

	def_text_script CompText8748F44_unk79

	def_text_script CompText8748F44_unk80

	def_text_script CompText8748F44_unk81

	def_text_script CompText8748F44_unk82

	def_text_script CompText8748F44_unk83

	def_text_script CompText8748F44_unk84

	def_text_script CompText8748F44_unk85

	def_text_script CompText8748F44_unk86

	def_text_script CompText8748F44_unk87

	def_text_script CompText8748F44_unk88

	def_text_script CompText8748F44_unk89

	def_text_script CompText8748F44_unk90

	def_text_script CompText8748F44_unk91

	def_text_script CompText8748F44_unk92

	def_text_script CompText8748F44_unk93

	def_text_script CompText8748F44_unk94

	def_text_script CompText8748F44_unk95

	def_text_script CompText8748F44_unk96

	def_text_script CompText8748F44_unk97

	def_text_script CompText8748F44_unk98

	def_text_script CompText8748F44_unk99

	def_text_script CompText8748F44_unk100

	def_text_script CompText8748F44_unk101

	def_text_script CompText8748F44_unk102

	def_text_script CompText8748F44_unk103

	def_text_script CompText8748F44_unk104

	def_text_script CompText8748F44_unk105

	def_text_script CompText8748F44_unk106

	def_text_script CompText8748F44_unk107

	def_text_script CompText8748F44_unk108

	def_text_script CompText8748F44_unk109

	def_text_script CompText8748F44_unk110

	def_text_script CompText8748F44_unk111

	def_text_script CompText8748F44_unk112

	def_text_script CompText8748F44_unk113

	def_text_script CompText8748F44_unk114

	def_text_script CompText8748F44_unk115

	def_text_script CompText8748F44_unk116

	def_text_script CompText8748F44_unk117

	def_text_script CompText8748F44_unk118

	def_text_script CompText8748F44_unk119

	def_text_script CompText8748F44_unk120

	def_text_script CompText8748F44_unk121

	def_text_script CompText8748F44_unk122

	def_text_script CompText8748F44_unk123

	def_text_script CompText8748F44_unk124

	def_text_script CompText8748F44_unk125

	def_text_script CompText8748F44_unk126

	def_text_script CompText8748F44_unk127

	def_text_script CompText8748F44_unk128

	def_text_script CompText8748F44_unk129

	def_text_script CompText8748F44_unk130

	def_text_script CompText8748F44_unk131

	def_text_script CompText8748F44_unk132

	def_text_script CompText8748F44_unk133

	def_text_script CompText8748F44_unk134

	def_text_script CompText8748F44_unk135

	def_text_script CompText8748F44_unk136

	def_text_script CompText8748F44_unk137

	def_text_script CompText8748F44_unk138

	def_text_script CompText8748F44_unk139

	def_text_script CompText8748F44_unk140

	def_text_script CompText8748F44_unk141

	def_text_script CompText8748F44_unk142

	def_text_script CompText8748F44_unk143

	def_text_script CompText8748F44_unk144

	def_text_script CompText8748F44_unk145

	def_text_script CompText8748F44_unk146

	def_text_script CompText8748F44_unk147

	def_text_script CompText8748F44_unk148

	def_text_script CompText8748F44_unk149

	def_text_script CompText8748F44_unk150

	def_text_script CompText8748F44_unk151

	def_text_script CompText8748F44_unk152

	def_text_script CompText8748F44_unk153

	def_text_script CompText8748F44_unk154

	def_text_script CompText8748F44_unk155

	def_text_script CompText8748F44_unk156

	def_text_script CompText8748F44_unk157

	def_text_script CompText8748F44_unk158

	def_text_script CompText8748F44_unk159

	def_text_script CompText8748F44_unk160

	def_text_script CompText8748F44_unk161

	def_text_script CompText8748F44_unk162

	def_text_script CompText8748F44_unk163

	def_text_script CompText8748F44_unk164

	def_text_script CompText8748F44_unk165

	def_text_script CompText8748F44_unk166

	def_text_script CompText8748F44_unk167

	def_text_script CompText8748F44_unk168

	def_text_script CompText8748F44_unk169

	def_text_script CompText8748F44_unk170

	def_text_script CompText8748F44_unk171

	def_text_script CompText8748F44_unk172

	def_text_script CompText8748F44_unk173

	def_text_script CompText8748F44_unk174

	def_text_script CompText8748F44_unk175

	def_text_script CompText8748F44_unk176

	def_text_script CompText8748F44_unk177

	def_text_script CompText8748F44_unk178

	def_text_script CompText8748F44_unk179

	def_text_script CompText8748F44_unk180
	ts_check_flag [
		flag: 0xD32,
		jumpIfTrue: 0xB7,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xD33,
		jumpIfTrue: 0xB6,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xC63,
		jumpIfTrue: 0xB5,
		jumpIfFalse: 0xFF,
	]
	ts_end

	def_text_script CompText8748F44_unk181
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea2!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk182
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea1!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk183
	ts_end

	def_text_script CompText8748F44_unk184
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "We're gonna turn all\n"
	.string "the rocks in this\n"
	.string "area into pebbles!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk185

	def_text_script CompText8748F44_unk186

	def_text_script CompText8748F44_unk187

	def_text_script CompText8748F44_unk188

	def_text_script CompText8748F44_unk189

	def_text_script CompText8748F44_unk190
	ts_check_flag [
		flag: 0xC8F,
		jumpIfTrue: 0xC2,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xC8B,
		jumpIfTrue: 0xC1,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xC87,
		jumpIfTrue: 0xC0,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xC83,
		jumpIfTrue: 0xBF,
		jumpIfFalse: 0xFF,
	]
	ts_end

	def_text_script CompText8748F44_unk191
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Undernet2!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk192
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Sky Area2!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk193
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "CentralArea3!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk194
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Time for the final\n"
	.string "exam! Jack out,\n"
	.string "ChargeMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk195
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Let's look for the\n"
	.string "cyberstation in this\n"
	.string "area!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk196

	def_text_script CompText8748F44_unk197

	def_text_script CompText8748F44_unk198

	def_text_script CompText8748F44_unk199

	def_text_script CompText8748F44_unk200

	def_text_script CompText8748F44_unk201

	def_text_script CompText8748F44_unk202

	def_text_script CompText8748F44_unk203

	def_text_script CompText8748F44_unk204

	def_text_script CompText8748F44_unk205

	def_text_script CompText8748F44_unk206

	def_text_script CompText8748F44_unk207

	def_text_script CompText8748F44_unk208

	def_text_script CompText8748F44_unk209

	def_text_script CompText8748F44_unk210

	def_text_script CompText8748F44_unk211

	def_text_script CompText8748F44_unk212

	def_text_script CompText8748F44_unk213

	def_text_script CompText8748F44_unk214

	def_text_script CompText8748F44_unk215

	def_text_script CompText8748F44_unk216

	def_text_script CompText8748F44_unk217

	def_text_script CompText8748F44_unk218

	def_text_script CompText8748F44_unk219

	def_text_script CompText8748F44_unk220
	ts_jump [
		target: 1,
	]
	ts_end

	def_text_script CompText8748F44_unk221
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Operating HeatMan...\n"
	.string "It lights my soul on\n"
	.string "fire!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk222
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Operating ElecMan...\n"
	.string "I feel a surge of\n"
	.string "power coming on!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk223
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Operating SlashMan\n"
	.string "is like sharpening\n"
	.string "my mind to a point!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk224
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Operating EraseMan\n"
	.string "brings out my dark\n"
	.string "side... Mwahahaha!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk225
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Operating ChargeMan\n"
	.string "makes me want to\n"
	.string "plow ahead!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk226
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Operating SpoutMan\n"
	.string "makes me feel like\n"
	.string "a little fish..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk227
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Operating\n"
	.string "TomahawkMan is an\n"
	.string "awesome feeling!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk228
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Operating TenguMan\n"
	.string "brings a sense of\n"
	.string "peace to my heart..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk229
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Operating GroundMan\n"
	.string "lets me drill\n"
	.string "through anything!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk230
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Operating DustMan...\n"
	.string "There's no virus we\n"
	.string "can't scrap!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk231
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "ProtoMan helping out\n"
	.string "during battle... He\n"
	.string "sure is trustworthy!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8748F44_unk232

	def_text_script CompText8748F44_unk233

	def_text_script CompText8748F44_unk234

	def_text_script CompText8748F44_unk235

	def_text_script CompText8748F44_unk236

	def_text_script CompText8748F44_unk237

	def_text_script CompText8748F44_unk238

	def_text_script CompText8748F44_unk239

	def_text_script CompText8748F44_unk240

	def_text_script CompText8748F44_unk241

	def_text_script CompText8748F44_unk242

	def_text_script CompText8748F44_unk243

	def_text_script CompText8748F44_unk244

	def_text_script CompText8748F44_unk245

	def_text_script CompText8748F44_unk246

	def_text_script CompText8748F44_unk247

	def_text_script CompText8748F44_unk248

	def_text_script CompText8748F44_unk249

	def_text_script CompText8748F44_unk250

	def_text_script CompText8748F44_unk251

	def_text_script CompText8748F44_unk252

	def_text_script CompText8748F44_unk253

	def_text_script CompText8748F44_unk254

	