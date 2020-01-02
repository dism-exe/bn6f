	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8752174::
	.word 0xBC800

	text_archive_start

	def_text_script CompText8752174_unk0
	ts_check_chapter [
		lower: 0x57,
		upper: 0x57,
		jumpIfInRange: CompText8752174_unk190_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x56,
		upper: 0x56,
		jumpIfInRange: CompText8752174_unk180_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x35,
		upper: 0x35,
		jumpIfInRange: CompText8752174_unk55_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x34,
		upper: 0x34,
		jumpIfInRange: CompText8752174_unk50_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText8752174_unk221_id,
		jumpIfElecMan: CompText8752174_unk222_id,
		jumpIfSlashMan: CompText8752174_unk223_id,
		jumpIfEraseMan: CompText8752174_unk224_id,
		jumpIfChargeMan: CompText8752174_unk225_id,
		jumpIfSpoutMan: CompText8752174_unk226_id,
		jumpIfTomahawkMan: CompText8752174_unk227_id,
		jumpIfTenguMan: CompText8752174_unk228_id,
		jumpIfGroundMan: CompText8752174_unk229_id,
		jumpIfDustMan: CompText8752174_unk230_id,
		jumpIfProtoMan: CompText8752174_unk231_id,
	]
	ts_check_flag [
		flag: 0x163,
		jumpIfTrue: CompText8752174_unk220_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText8752174_unk1_id
	ts_end

	def_text_script CompText8752174_unk1
	ts_check_chapter [
		lower: 0x62,
		upper: 0x64,
		jumpIfInRange: CompText8752174_unk15_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x60,
		upper: 0x61,
		jumpIfInRange: CompText8752174_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk2

	def_text_script CompText8752174_unk3

	def_text_script CompText8752174_unk4

	def_text_script CompText8752174_unk5
	ts_check_flag [
		flag: 0xE10,
		jumpIfTrue: CompText8752174_unk10_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE0E,
		jumpIfTrue: CompText8752174_unk9_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE0A,
		jumpIfTrue: CompText8752174_unk8_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE08,
		jumpIfTrue: CompText8752174_unk7_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE5A,
		jumpIfTrue: CompText8752174_unk6_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've got to check\n"
	.string "the Undernet BBS!!\n"
	.string "Let's go!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out and head\n"
	.string "for the Sky Town\n"
	.string "Admin Building!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk7
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

	def_text_script CompText8752174_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "It's about time to\n"
	.string "jack out,MegaMan."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk9
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

	def_text_script CompText8752174_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time to jack out!\n"
	.string "I can't wait for\n"
	.string "the Gala!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk11

	def_text_script CompText8752174_unk12

	def_text_script CompText8752174_unk13

	def_text_script CompText8752174_unk14

	def_text_script CompText8752174_unk15
	ts_check_flag [
		flag: 0xE44,
		jumpIfTrue: CompText8752174_unk29_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE3E,
		jumpIfTrue: CompText8752174_unk28_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE3C,
		jumpIfTrue: CompText8752174_unk27_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE36,
		jumpIfTrue: CompText8752174_unk26_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE34,
		jumpIfTrue: CompText8752174_unk25_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE2E,
		jumpIfTrue: CompText8752174_unk24_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE2C,
		jumpIfTrue: CompText8752174_unk23_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE2A,
		jumpIfTrue: CompText8752174_unk22_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE26,
		jumpIfTrue: CompText8752174_unk21_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE22,
		jumpIfTrue: CompText8752174_unk20_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE20,
		jumpIfTrue: CompText8752174_unk19_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE16,
		jumpIfTrue: CompText8752174_unk18_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE14,
		jumpIfTrue: CompText8752174_unk17_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE62,
		jumpIfTrue: CompText8752174_unk16_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Let's get going to\n"
	.string "the meeting point!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Everyone's waiting\n"
	.string "for us at the park!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the Expo\n"
	.string "Site,MegaMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk18
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "There are still\n"
	.string "stamps to collect!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk19
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Head for the\n"
	.string "Principal's Office,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk20
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "Principal's Office,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk21
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

	def_text_script CompText8752174_unk22
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's get back to\n"
	.string "the Expo Site!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk23
	ts_jump target=CompText8752174_unk22_id

	def_text_script CompText8752174_unk24
	ts_jump target=CompText8752174_unk22_id

	def_text_script CompText8752174_unk25
	ts_jump target=CompText8752174_unk22_id

	def_text_script CompText8752174_unk26
	ts_jump target=CompText8752174_unk22_id

	def_text_script CompText8752174_unk27
	ts_jump target=CompText8752174_unk22_id

	def_text_script CompText8752174_unk28
	ts_jump target=CompText8752174_unk22_id

	def_text_script CompText8752174_unk29
	ts_jump target=CompText8752174_unk22_id

	def_text_script CompText8752174_unk30

	def_text_script CompText8752174_unk31

	def_text_script CompText8752174_unk32

	def_text_script CompText8752174_unk33

	def_text_script CompText8752174_unk34

	def_text_script CompText8752174_unk35

	def_text_script CompText8752174_unk36

	def_text_script CompText8752174_unk37

	def_text_script CompText8752174_unk38

	def_text_script CompText8752174_unk39

	def_text_script CompText8752174_unk40

	def_text_script CompText8752174_unk41

	def_text_script CompText8752174_unk42

	def_text_script CompText8752174_unk43

	def_text_script CompText8752174_unk44

	def_text_script CompText8752174_unk45

	def_text_script CompText8752174_unk46

	def_text_script CompText8752174_unk47

	def_text_script CompText8752174_unk48

	def_text_script CompText8752174_unk49

	def_text_script CompText8752174_unk50
	ts_check_flag [
		flag: 0x997,
		jumpIfTrue: CompText8752174_unk54_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x996,
		jumpIfTrue: CompText8752174_unk53_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x995,
		jumpIfTrue: CompText8752174_unk52_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x836,
		jumpIfTrue: CompText8752174_unk51_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText8752174_unk51
	ts_end

	def_text_script CompText8752174_unk52
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "It's cybercooking\n"
	.string "time! Let's go chop\n"
	.string "up some carrots!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk53
	ts_check_sub_area [
		lower: 0x1,
		upper: 0x1,
		jumpIfInRange: CompText8752174_unk59_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's head over to\n"
	.string "Green Area2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk54
	ts_end

	def_text_script CompText8752174_unk55
	ts_check_flag [
		flag: 0x96E,
		jumpIfTrue: CompText8752174_unk57_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x84C,
		jumpIfTrue: CompText8752174_unk56_id,
		jumpIfFalse: TS_CONTINUE,
	]
	.string "Temporary message"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk56
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK,avoid the cyber-\n"
	.string "crows... gather the\n"
	.string "cyberscrolls..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk57
	ts_check_sub_area [
		lower: 0x1,
		upper: 0x1,
		jumpIfInRange: CompText8752174_unk56_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's head for\n"
	.string "Green Area2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk58

	def_text_script CompText8752174_unk59
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "It's cybercooking\n"
	.string "time! There's cyber-\n"
	.string "radishes to cut!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk60

	def_text_script CompText8752174_unk61

	def_text_script CompText8752174_unk62

	def_text_script CompText8752174_unk63

	def_text_script CompText8752174_unk64

	def_text_script CompText8752174_unk65

	def_text_script CompText8752174_unk66

	def_text_script CompText8752174_unk67

	def_text_script CompText8752174_unk68

	def_text_script CompText8752174_unk69

	def_text_script CompText8752174_unk70

	def_text_script CompText8752174_unk71

	def_text_script CompText8752174_unk72

	def_text_script CompText8752174_unk73

	def_text_script CompText8752174_unk74

	def_text_script CompText8752174_unk75

	def_text_script CompText8752174_unk76

	def_text_script CompText8752174_unk77

	def_text_script CompText8752174_unk78

	def_text_script CompText8752174_unk79

	def_text_script CompText8752174_unk80

	def_text_script CompText8752174_unk81

	def_text_script CompText8752174_unk82

	def_text_script CompText8752174_unk83

	def_text_script CompText8752174_unk84

	def_text_script CompText8752174_unk85

	def_text_script CompText8752174_unk86

	def_text_script CompText8752174_unk87

	def_text_script CompText8752174_unk88

	def_text_script CompText8752174_unk89

	def_text_script CompText8752174_unk90

	def_text_script CompText8752174_unk91

	def_text_script CompText8752174_unk92

	def_text_script CompText8752174_unk93

	def_text_script CompText8752174_unk94

	def_text_script CompText8752174_unk95

	def_text_script CompText8752174_unk96

	def_text_script CompText8752174_unk97

	def_text_script CompText8752174_unk98

	def_text_script CompText8752174_unk99

	def_text_script CompText8752174_unk100

	def_text_script CompText8752174_unk101

	def_text_script CompText8752174_unk102

	def_text_script CompText8752174_unk103

	def_text_script CompText8752174_unk104

	def_text_script CompText8752174_unk105

	def_text_script CompText8752174_unk106

	def_text_script CompText8752174_unk107

	def_text_script CompText8752174_unk108

	def_text_script CompText8752174_unk109

	def_text_script CompText8752174_unk110

	def_text_script CompText8752174_unk111

	def_text_script CompText8752174_unk112

	def_text_script CompText8752174_unk113

	def_text_script CompText8752174_unk114

	def_text_script CompText8752174_unk115

	def_text_script CompText8752174_unk116

	def_text_script CompText8752174_unk117

	def_text_script CompText8752174_unk118

	def_text_script CompText8752174_unk119

	def_text_script CompText8752174_unk120

	def_text_script CompText8752174_unk121

	def_text_script CompText8752174_unk122

	def_text_script CompText8752174_unk123

	def_text_script CompText8752174_unk124

	def_text_script CompText8752174_unk125

	def_text_script CompText8752174_unk126

	def_text_script CompText8752174_unk127

	def_text_script CompText8752174_unk128

	def_text_script CompText8752174_unk129

	def_text_script CompText8752174_unk130

	def_text_script CompText8752174_unk131

	def_text_script CompText8752174_unk132

	def_text_script CompText8752174_unk133

	def_text_script CompText8752174_unk134

	def_text_script CompText8752174_unk135

	def_text_script CompText8752174_unk136

	def_text_script CompText8752174_unk137

	def_text_script CompText8752174_unk138

	def_text_script CompText8752174_unk139

	def_text_script CompText8752174_unk140

	def_text_script CompText8752174_unk141

	def_text_script CompText8752174_unk142

	def_text_script CompText8752174_unk143

	def_text_script CompText8752174_unk144

	def_text_script CompText8752174_unk145

	def_text_script CompText8752174_unk146

	def_text_script CompText8752174_unk147

	def_text_script CompText8752174_unk148

	def_text_script CompText8752174_unk149

	def_text_script CompText8752174_unk150

	def_text_script CompText8752174_unk151

	def_text_script CompText8752174_unk152

	def_text_script CompText8752174_unk153

	def_text_script CompText8752174_unk154

	def_text_script CompText8752174_unk155

	def_text_script CompText8752174_unk156

	def_text_script CompText8752174_unk157

	def_text_script CompText8752174_unk158

	def_text_script CompText8752174_unk159

	def_text_script CompText8752174_unk160

	def_text_script CompText8752174_unk161

	def_text_script CompText8752174_unk162

	def_text_script CompText8752174_unk163

	def_text_script CompText8752174_unk164

	def_text_script CompText8752174_unk165

	def_text_script CompText8752174_unk166

	def_text_script CompText8752174_unk167

	def_text_script CompText8752174_unk168

	def_text_script CompText8752174_unk169

	def_text_script CompText8752174_unk170

	def_text_script CompText8752174_unk171

	def_text_script CompText8752174_unk172

	def_text_script CompText8752174_unk173

	def_text_script CompText8752174_unk174

	def_text_script CompText8752174_unk175

	def_text_script CompText8752174_unk176

	def_text_script CompText8752174_unk177

	def_text_script CompText8752174_unk178

	def_text_script CompText8752174_unk179

	def_text_script CompText8752174_unk180
	ts_check_flag [
		flag: 0xD32,
		jumpIfTrue: CompText8752174_unk183_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xD33,
		jumpIfTrue: CompText8752174_unk182_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC63,
		jumpIfTrue: CompText8752174_unk181_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText8752174_unk181
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk182
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea1!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk183
	ts_end

	def_text_script CompText8752174_unk184
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We're gonna turn all\n"
	.string "the rocks in this\n"
	.string "area into pebbles!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk185

	def_text_script CompText8752174_unk186

	def_text_script CompText8752174_unk187

	def_text_script CompText8752174_unk188

	def_text_script CompText8752174_unk189

	def_text_script CompText8752174_unk190
	ts_check_flag [
		flag: 0xC8F,
		jumpIfTrue: CompText8752174_unk194_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC8B,
		jumpIfTrue: CompText8752174_unk193_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC87,
		jumpIfTrue: CompText8752174_unk192_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC83,
		jumpIfTrue: CompText8752174_unk191_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText8752174_unk191
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Undernet2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk192
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Sky Area2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk193
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "CentralArea3!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk194
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time for the final\n"
	.string "exam! Jack out,\n"
	.string "ChargeMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk195
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's look for the\n"
	.string "cyberstation in this\n"
	.string "area!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk196

	def_text_script CompText8752174_unk197

	def_text_script CompText8752174_unk198

	def_text_script CompText8752174_unk199

	def_text_script CompText8752174_unk200

	def_text_script CompText8752174_unk201

	def_text_script CompText8752174_unk202

	def_text_script CompText8752174_unk203

	def_text_script CompText8752174_unk204

	def_text_script CompText8752174_unk205

	def_text_script CompText8752174_unk206

	def_text_script CompText8752174_unk207

	def_text_script CompText8752174_unk208

	def_text_script CompText8752174_unk209

	def_text_script CompText8752174_unk210

	def_text_script CompText8752174_unk211

	def_text_script CompText8752174_unk212

	def_text_script CompText8752174_unk213

	def_text_script CompText8752174_unk214

	def_text_script CompText8752174_unk215

	def_text_script CompText8752174_unk216

	def_text_script CompText8752174_unk217

	def_text_script CompText8752174_unk218

	def_text_script CompText8752174_unk219

	def_text_script CompText8752174_unk220
	ts_jump target=CompText8752174_unk1_id
	ts_end

	def_text_script CompText8752174_unk221
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating HeatMan...\n"
	.string "It lights my soul on\n"
	.string "fire!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk222
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ElecMan...\n"
	.string "I feel a surge of\n"
	.string "power coming on!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk223
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SlashMan\n"
	.string "is like sharpening\n"
	.string "my mind to a point!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk224
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating EraseMan\n"
	.string "brings out my dark\n"
	.string "side... Mwahahaha!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk225
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ChargeMan\n"
	.string "makes me want to\n"
	.string "plow ahead!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk226
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SpoutMan\n"
	.string "makes me feel like\n"
	.string "a little fish..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk227
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating\n"
	.string "TomahawkMan is an\n"
	.string "awesome feeling!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk228
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating TenguMan\n"
	.string "brings a sense of\n"
	.string "peace to my heart..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk229
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating GroundMan\n"
	.string "lets me drill\n"
	.string "through anything!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk230
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating DustMan...\n"
	.string "There's no virus we\n"
	.string "can't scrap!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk231
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "ProtoMan helping out\n"
	.string "during battle... He\n"
	.string "sure is trustworthy!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8752174_unk232

	def_text_script CompText8752174_unk233

	def_text_script CompText8752174_unk234

	def_text_script CompText8752174_unk235

	def_text_script CompText8752174_unk236

	def_text_script CompText8752174_unk237

	def_text_script CompText8752174_unk238

	def_text_script CompText8752174_unk239

	def_text_script CompText8752174_unk240

	def_text_script CompText8752174_unk241

	def_text_script CompText8752174_unk242

	def_text_script CompText8752174_unk243

	def_text_script CompText8752174_unk244

	def_text_script CompText8752174_unk245

	def_text_script CompText8752174_unk246

	def_text_script CompText8752174_unk247

	def_text_script CompText8752174_unk248

	def_text_script CompText8752174_unk249

	def_text_script CompText8752174_unk250

	def_text_script CompText8752174_unk251

	def_text_script CompText8752174_unk252

	def_text_script CompText8752174_unk253

	def_text_script CompText8752174_unk254

	