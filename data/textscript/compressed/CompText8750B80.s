	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8750B80::
	.word 0xA6F00

	text_archive_start

	def_text_script CompText8750B80_unk0
	ts_check_chapter [
		lower: 0x57,
		upper: 0x57,
		jumpIfInRange: CompText8750B80_unk190_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x56,
		upper: 0x56,
		jumpIfInRange: CompText8750B80_unk180_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText8750B80_unk221_id,
		jumpIfElecMan: CompText8750B80_unk222_id,
		jumpIfSlashMan: CompText8750B80_unk223_id,
		jumpIfEraseMan: CompText8750B80_unk224_id,
		jumpIfChargeMan: CompText8750B80_unk225_id,
		jumpIfSpoutMan: CompText8750B80_unk226_id,
		jumpIfTomahawkMan: CompText8750B80_unk227_id,
		jumpIfTenguMan: CompText8750B80_unk228_id,
		jumpIfGroundMan: CompText8750B80_unk229_id,
		jumpIfDustMan: CompText8750B80_unk230_id,
		jumpIfProtoMan: CompText8750B80_unk231_id,
	]
	ts_check_flag [
		flag: 0x163,
		jumpIfTrue: CompText8750B80_unk220_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText8750B80_unk1_id
	ts_end

	def_text_script CompText8750B80_unk1
	ts_check_chapter [
		lower: 0x62,
		upper: 0x64,
		jumpIfInRange: CompText8750B80_unk15_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x60,
		upper: 0x61,
		jumpIfInRange: CompText8750B80_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk2

	def_text_script CompText8750B80_unk3

	def_text_script CompText8750B80_unk4

	def_text_script CompText8750B80_unk5
	ts_check_flag [
		flag: 0xE10,
		jumpIfTrue: CompText8750B80_unk10_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE0E,
		jumpIfTrue: CompText8750B80_unk9_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE0A,
		jumpIfTrue: CompText8750B80_unk8_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE08,
		jumpIfTrue: CompText8750B80_unk7_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE5A,
		jumpIfTrue: CompText8750B80_unk6_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've got to check\n"
	.string "the Undernet BBS!!\n"
	.string "Let's go!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out and head\n"
	.string "for the Sky Town\n"
	.string "Admin Building!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Phew...\n"
	.string "I'm glad everyone's\n"
	.string "safe..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK,time to jack out!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "It's about time to\n"
	.string "jack out,MegaMan."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "So,we're inviting\n"
	.string "Mick,Iris,Tab,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and all our friends\n"
	.string "from ACDC Town!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh,and Chaud too,if\n"
	.string "he's around!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time to jack out!\n"
	.string "I can't wait for\n"
	.string "the Gala!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk11

	def_text_script CompText8750B80_unk12

	def_text_script CompText8750B80_unk13

	def_text_script CompText8750B80_unk14

	def_text_script CompText8750B80_unk15
	ts_check_flag [
		flag: 0xE44,
		jumpIfTrue: CompText8750B80_unk29_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE3E,
		jumpIfTrue: CompText8750B80_unk28_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE3C,
		jumpIfTrue: CompText8750B80_unk27_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE36,
		jumpIfTrue: CompText8750B80_unk26_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE34,
		jumpIfTrue: CompText8750B80_unk25_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE2E,
		jumpIfTrue: CompText8750B80_unk24_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE2C,
		jumpIfTrue: CompText8750B80_unk23_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE2A,
		jumpIfTrue: CompText8750B80_unk22_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE26,
		jumpIfTrue: CompText8750B80_unk21_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE22,
		jumpIfTrue: CompText8750B80_unk20_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE20,
		jumpIfTrue: CompText8750B80_unk19_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE16,
		jumpIfTrue: CompText8750B80_unk18_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE14,
		jumpIfTrue: CompText8750B80_unk17_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE62,
		jumpIfTrue: CompText8750B80_unk16_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Let's get going to\n"
	.string "the meeting point!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Everyone's waiting\n"
	.string "for us at the park!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the Expo\n"
	.string "Site,MegaMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk18
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "There are still\n"
	.string "stamps to collect!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk19
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Head for the\n"
	.string "Principal's Office,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk20
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "Principal's Office,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's see where in\n"
	.string "the Expo Site that\n"
	.string "passageway leads..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk22
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's get back to\n"
	.string "the Expo Site!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk23
	ts_jump target=CompText8750B80_unk22_id

	def_text_script CompText8750B80_unk24
	ts_jump target=CompText8750B80_unk22_id

	def_text_script CompText8750B80_unk25
	ts_jump target=CompText8750B80_unk22_id

	def_text_script CompText8750B80_unk26
	ts_jump target=CompText8750B80_unk22_id

	def_text_script CompText8750B80_unk27
	ts_jump target=CompText8750B80_unk22_id

	def_text_script CompText8750B80_unk28
	ts_jump target=CompText8750B80_unk22_id

	def_text_script CompText8750B80_unk29
	ts_jump target=CompText8750B80_unk22_id

	def_text_script CompText8750B80_unk30

	def_text_script CompText8750B80_unk31

	def_text_script CompText8750B80_unk32

	def_text_script CompText8750B80_unk33

	def_text_script CompText8750B80_unk34

	def_text_script CompText8750B80_unk35

	def_text_script CompText8750B80_unk36

	def_text_script CompText8750B80_unk37

	def_text_script CompText8750B80_unk38

	def_text_script CompText8750B80_unk39

	def_text_script CompText8750B80_unk40

	def_text_script CompText8750B80_unk41

	def_text_script CompText8750B80_unk42

	def_text_script CompText8750B80_unk43

	def_text_script CompText8750B80_unk44

	def_text_script CompText8750B80_unk45

	def_text_script CompText8750B80_unk46

	def_text_script CompText8750B80_unk47

	def_text_script CompText8750B80_unk48

	def_text_script CompText8750B80_unk49

	def_text_script CompText8750B80_unk50

	def_text_script CompText8750B80_unk51

	def_text_script CompText8750B80_unk52

	def_text_script CompText8750B80_unk53

	def_text_script CompText8750B80_unk54

	def_text_script CompText8750B80_unk55

	def_text_script CompText8750B80_unk56

	def_text_script CompText8750B80_unk57

	def_text_script CompText8750B80_unk58

	def_text_script CompText8750B80_unk59

	def_text_script CompText8750B80_unk60

	def_text_script CompText8750B80_unk61

	def_text_script CompText8750B80_unk62

	def_text_script CompText8750B80_unk63

	def_text_script CompText8750B80_unk64

	def_text_script CompText8750B80_unk65

	def_text_script CompText8750B80_unk66

	def_text_script CompText8750B80_unk67

	def_text_script CompText8750B80_unk68

	def_text_script CompText8750B80_unk69

	def_text_script CompText8750B80_unk70

	def_text_script CompText8750B80_unk71

	def_text_script CompText8750B80_unk72

	def_text_script CompText8750B80_unk73

	def_text_script CompText8750B80_unk74

	def_text_script CompText8750B80_unk75

	def_text_script CompText8750B80_unk76

	def_text_script CompText8750B80_unk77

	def_text_script CompText8750B80_unk78

	def_text_script CompText8750B80_unk79

	def_text_script CompText8750B80_unk80

	def_text_script CompText8750B80_unk81

	def_text_script CompText8750B80_unk82

	def_text_script CompText8750B80_unk83

	def_text_script CompText8750B80_unk84

	def_text_script CompText8750B80_unk85

	def_text_script CompText8750B80_unk86

	def_text_script CompText8750B80_unk87

	def_text_script CompText8750B80_unk88

	def_text_script CompText8750B80_unk89

	def_text_script CompText8750B80_unk90

	def_text_script CompText8750B80_unk91

	def_text_script CompText8750B80_unk92

	def_text_script CompText8750B80_unk93

	def_text_script CompText8750B80_unk94

	def_text_script CompText8750B80_unk95

	def_text_script CompText8750B80_unk96

	def_text_script CompText8750B80_unk97

	def_text_script CompText8750B80_unk98

	def_text_script CompText8750B80_unk99

	def_text_script CompText8750B80_unk100

	def_text_script CompText8750B80_unk101

	def_text_script CompText8750B80_unk102

	def_text_script CompText8750B80_unk103

	def_text_script CompText8750B80_unk104

	def_text_script CompText8750B80_unk105

	def_text_script CompText8750B80_unk106

	def_text_script CompText8750B80_unk107

	def_text_script CompText8750B80_unk108

	def_text_script CompText8750B80_unk109

	def_text_script CompText8750B80_unk110

	def_text_script CompText8750B80_unk111

	def_text_script CompText8750B80_unk112

	def_text_script CompText8750B80_unk113

	def_text_script CompText8750B80_unk114

	def_text_script CompText8750B80_unk115

	def_text_script CompText8750B80_unk116

	def_text_script CompText8750B80_unk117

	def_text_script CompText8750B80_unk118

	def_text_script CompText8750B80_unk119

	def_text_script CompText8750B80_unk120

	def_text_script CompText8750B80_unk121

	def_text_script CompText8750B80_unk122

	def_text_script CompText8750B80_unk123

	def_text_script CompText8750B80_unk124

	def_text_script CompText8750B80_unk125

	def_text_script CompText8750B80_unk126

	def_text_script CompText8750B80_unk127

	def_text_script CompText8750B80_unk128

	def_text_script CompText8750B80_unk129

	def_text_script CompText8750B80_unk130

	def_text_script CompText8750B80_unk131

	def_text_script CompText8750B80_unk132

	def_text_script CompText8750B80_unk133

	def_text_script CompText8750B80_unk134

	def_text_script CompText8750B80_unk135

	def_text_script CompText8750B80_unk136

	def_text_script CompText8750B80_unk137

	def_text_script CompText8750B80_unk138

	def_text_script CompText8750B80_unk139

	def_text_script CompText8750B80_unk140

	def_text_script CompText8750B80_unk141

	def_text_script CompText8750B80_unk142

	def_text_script CompText8750B80_unk143

	def_text_script CompText8750B80_unk144

	def_text_script CompText8750B80_unk145

	def_text_script CompText8750B80_unk146

	def_text_script CompText8750B80_unk147

	def_text_script CompText8750B80_unk148

	def_text_script CompText8750B80_unk149

	def_text_script CompText8750B80_unk150

	def_text_script CompText8750B80_unk151

	def_text_script CompText8750B80_unk152

	def_text_script CompText8750B80_unk153

	def_text_script CompText8750B80_unk154

	def_text_script CompText8750B80_unk155

	def_text_script CompText8750B80_unk156

	def_text_script CompText8750B80_unk157

	def_text_script CompText8750B80_unk158

	def_text_script CompText8750B80_unk159

	def_text_script CompText8750B80_unk160

	def_text_script CompText8750B80_unk161

	def_text_script CompText8750B80_unk162

	def_text_script CompText8750B80_unk163

	def_text_script CompText8750B80_unk164

	def_text_script CompText8750B80_unk165

	def_text_script CompText8750B80_unk166

	def_text_script CompText8750B80_unk167

	def_text_script CompText8750B80_unk168

	def_text_script CompText8750B80_unk169

	def_text_script CompText8750B80_unk170

	def_text_script CompText8750B80_unk171

	def_text_script CompText8750B80_unk172

	def_text_script CompText8750B80_unk173

	def_text_script CompText8750B80_unk174

	def_text_script CompText8750B80_unk175

	def_text_script CompText8750B80_unk176

	def_text_script CompText8750B80_unk177

	def_text_script CompText8750B80_unk178

	def_text_script CompText8750B80_unk179

	def_text_script CompText8750B80_unk180
	ts_check_flag [
		flag: 0xD32,
		jumpIfTrue: CompText8750B80_unk183_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xD33,
		jumpIfTrue: CompText8750B80_unk182_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC63,
		jumpIfTrue: CompText8750B80_unk181_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText8750B80_unk181
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk182
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea1!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk183
	ts_end

	def_text_script CompText8750B80_unk184
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We're gonna turn all\n"
	.string "the rocks in this\n"
	.string "area into pebbles!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk185

	def_text_script CompText8750B80_unk186

	def_text_script CompText8750B80_unk187

	def_text_script CompText8750B80_unk188

	def_text_script CompText8750B80_unk189

	def_text_script CompText8750B80_unk190
	ts_check_flag [
		flag: 0xC8F,
		jumpIfTrue: CompText8750B80_unk194_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC8B,
		jumpIfTrue: CompText8750B80_unk193_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC87,
		jumpIfTrue: CompText8750B80_unk192_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC83,
		jumpIfTrue: CompText8750B80_unk191_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText8750B80_unk191
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Undernet2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk192
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Sky Area2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk193
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "CentralArea3!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk194
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time for the final\n"
	.string "exam! Jack out,\n"
	.string "ChargeMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk195
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's look for the\n"
	.string "cyberstation in this\n"
	.string "area!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk196

	def_text_script CompText8750B80_unk197

	def_text_script CompText8750B80_unk198

	def_text_script CompText8750B80_unk199

	def_text_script CompText8750B80_unk200

	def_text_script CompText8750B80_unk201

	def_text_script CompText8750B80_unk202

	def_text_script CompText8750B80_unk203

	def_text_script CompText8750B80_unk204

	def_text_script CompText8750B80_unk205

	def_text_script CompText8750B80_unk206

	def_text_script CompText8750B80_unk207

	def_text_script CompText8750B80_unk208

	def_text_script CompText8750B80_unk209

	def_text_script CompText8750B80_unk210

	def_text_script CompText8750B80_unk211

	def_text_script CompText8750B80_unk212

	def_text_script CompText8750B80_unk213

	def_text_script CompText8750B80_unk214

	def_text_script CompText8750B80_unk215

	def_text_script CompText8750B80_unk216

	def_text_script CompText8750B80_unk217

	def_text_script CompText8750B80_unk218

	def_text_script CompText8750B80_unk219

	def_text_script CompText8750B80_unk220
	ts_jump target=CompText8750B80_unk1_id
	ts_end

	def_text_script CompText8750B80_unk221
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating HeatMan...\n"
	.string "It lights my soul on\n"
	.string "fire!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk222
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ElecMan...\n"
	.string "I feel a surge of\n"
	.string "power coming on!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk223
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SlashMan\n"
	.string "is like sharpening\n"
	.string "my mind to a point!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk224
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating EraseMan\n"
	.string "brings out my dark\n"
	.string "side... Mwahahaha!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk225
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ChargeMan\n"
	.string "makes me want to\n"
	.string "plow ahead!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk226
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SpoutMan\n"
	.string "makes me feel like\n"
	.string "a little fish..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk227
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating\n"
	.string "TomahawkMan is an\n"
	.string "awesome feeling!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk228
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating TenguMan\n"
	.string "brings a sense of\n"
	.string "peace to my heart..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk229
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating GroundMan\n"
	.string "lets me drill\n"
	.string "through anything!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk230
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating DustMan...\n"
	.string "There's no virus we\n"
	.string "can't scrap!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk231
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "ProtoMan helping out\n"
	.string "during battle... He\n"
	.string "sure is trustworthy!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8750B80_unk232

	def_text_script CompText8750B80_unk233

	def_text_script CompText8750B80_unk234

	def_text_script CompText8750B80_unk235

	def_text_script CompText8750B80_unk236

	def_text_script CompText8750B80_unk237

	def_text_script CompText8750B80_unk238

	def_text_script CompText8750B80_unk239

	def_text_script CompText8750B80_unk240

	def_text_script CompText8750B80_unk241

	def_text_script CompText8750B80_unk242

	def_text_script CompText8750B80_unk243

	def_text_script CompText8750B80_unk244

	def_text_script CompText8750B80_unk245

	def_text_script CompText8750B80_unk246

	def_text_script CompText8750B80_unk247

	def_text_script CompText8750B80_unk248

	def_text_script CompText8750B80_unk249

	def_text_script CompText8750B80_unk250

	def_text_script CompText8750B80_unk251

	def_text_script CompText8750B80_unk252

	def_text_script CompText8750B80_unk253

	def_text_script CompText8750B80_unk254

	