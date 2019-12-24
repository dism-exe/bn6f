	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText874D038::
	.word 0xD2900

	text_archive_start

	def_text_script CompText874D038_unk0
	ts_check_chapter [
		lower: 0x57,
		upper: 0x57,
		jumpIfInRange: CompText874D038_unk190_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x56,
		upper: 0x56,
		jumpIfInRange: CompText874D038_unk180_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x55,
		upper: 0x55,
		jumpIfInRange: CompText874D038_unk155_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x54,
		upper: 0x54,
		jumpIfInRange: CompText874D038_unk150_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText874D038_unk221_id,
		jumpIfElecMan: CompText874D038_unk222_id,
		jumpIfSlashMan: CompText874D038_unk223_id,
		jumpIfEraseMan: CompText874D038_unk224_id,
		jumpIfChargeMan: CompText874D038_unk225_id,
		jumpIfSpoutMan: CompText874D038_unk226_id,
		jumpIfTomahawkMan: CompText874D038_unk227_id,
		jumpIfTenguMan: CompText874D038_unk228_id,
		jumpIfGroundMan: CompText874D038_unk229_id,
		jumpIfDustMan: CompText874D038_unk230_id,
		jumpIfProtoMan: CompText874D038_unk231_id,
	]
	ts_check_flag [
		flag: 0x163,
		jumpIfTrue: CompText874D038_unk220_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText874D038_unk1_id
	ts_end

	def_text_script CompText874D038_unk1
	ts_check_chapter [
		lower: 0x62,
		upper: 0x64,
		jumpIfInRange: CompText874D038_unk15_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x60,
		upper: 0x61,
		jumpIfInRange: CompText874D038_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk2

	def_text_script CompText874D038_unk3

	def_text_script CompText874D038_unk4

	def_text_script CompText874D038_unk5
	ts_check_flag [
		flag: 0xE10,
		jumpIfTrue: CompText874D038_unk10_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE0E,
		jumpIfTrue: CompText874D038_unk9_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE0A,
		jumpIfTrue: CompText874D038_unk8_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE08,
		jumpIfTrue: CompText874D038_unk7_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE5A,
		jumpIfTrue: CompText874D038_unk6_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've got to check\n"
	.string "the Undernet BBS!!\n"
	.string "Let's go!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out and head\n"
	.string "for the Sky Town\n"
	.string "Admin Building!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk7
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

	def_text_script CompText874D038_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "It's about time to\n"
	.string "jack out,MegaMan."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk9
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

	def_text_script CompText874D038_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time to jack out!\n"
	.string "I can't wait for\n"
	.string "the Gala!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk11

	def_text_script CompText874D038_unk12

	def_text_script CompText874D038_unk13

	def_text_script CompText874D038_unk14

	def_text_script CompText874D038_unk15
	ts_check_flag [
		flag: 0xE44,
		jumpIfTrue: CompText874D038_unk29_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE3E,
		jumpIfTrue: CompText874D038_unk28_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE3C,
		jumpIfTrue: CompText874D038_unk27_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE36,
		jumpIfTrue: CompText874D038_unk26_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE34,
		jumpIfTrue: CompText874D038_unk25_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE2E,
		jumpIfTrue: CompText874D038_unk24_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE2C,
		jumpIfTrue: CompText874D038_unk23_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE2A,
		jumpIfTrue: CompText874D038_unk22_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE26,
		jumpIfTrue: CompText874D038_unk21_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE22,
		jumpIfTrue: CompText874D038_unk20_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE20,
		jumpIfTrue: CompText874D038_unk19_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE16,
		jumpIfTrue: CompText874D038_unk18_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE14,
		jumpIfTrue: CompText874D038_unk17_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE62,
		jumpIfTrue: CompText874D038_unk16_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Let's get going to\n"
	.string "the meeting point!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Everyone's waiting\n"
	.string "for us at the park!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the Expo\n"
	.string "Site,MegaMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk18
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "There are still\n"
	.string "stamps to collect!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk19
	ts_check_sub_area [
		lower: 0xB,
		upper: 0xB,
		jumpIfInRange: CompText874D038_unk30_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Head for the\n"
	.string "Principal's Office,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk20
	ts_check_sub_area [
		lower: 0xB,
		upper: 0xB,
		jumpIfInRange: CompText874D038_unk30_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "Principal's Office,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk21
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

	def_text_script CompText874D038_unk22
	ts_check_sub_area [
		lower: 0xF,
		upper: 0xF,
		jumpIfInRange: CompText874D038_unk30_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_sub_area [
		lower: 0xC,
		upper: 0xC,
		jumpIfInRange: CompText874D038_unk30_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's get back to\n"
	.string "the Expo Site!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk23
	ts_jump target=CompText874D038_unk22_id

	def_text_script CompText874D038_unk24
	ts_jump target=CompText874D038_unk22_id

	def_text_script CompText874D038_unk25
	ts_jump target=CompText874D038_unk22_id

	def_text_script CompText874D038_unk26
	ts_jump target=CompText874D038_unk22_id

	def_text_script CompText874D038_unk27
	ts_jump target=CompText874D038_unk22_id

	def_text_script CompText874D038_unk28
	ts_jump target=CompText874D038_unk22_id

	def_text_script CompText874D038_unk29
	ts_jump target=CompText874D038_unk22_id

	def_text_script CompText874D038_unk30
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out,MegaMan!!\n"
	.string "This is no time to\n"
	.string "dilly-dally!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk31

	def_text_script CompText874D038_unk32

	def_text_script CompText874D038_unk33

	def_text_script CompText874D038_unk34

	def_text_script CompText874D038_unk35

	def_text_script CompText874D038_unk36

	def_text_script CompText874D038_unk37

	def_text_script CompText874D038_unk38

	def_text_script CompText874D038_unk39

	def_text_script CompText874D038_unk40

	def_text_script CompText874D038_unk41

	def_text_script CompText874D038_unk42

	def_text_script CompText874D038_unk43

	def_text_script CompText874D038_unk44

	def_text_script CompText874D038_unk45

	def_text_script CompText874D038_unk46

	def_text_script CompText874D038_unk47

	def_text_script CompText874D038_unk48

	def_text_script CompText874D038_unk49

	def_text_script CompText874D038_unk50

	def_text_script CompText874D038_unk51

	def_text_script CompText874D038_unk52

	def_text_script CompText874D038_unk53

	def_text_script CompText874D038_unk54

	def_text_script CompText874D038_unk55

	def_text_script CompText874D038_unk56

	def_text_script CompText874D038_unk57

	def_text_script CompText874D038_unk58

	def_text_script CompText874D038_unk59

	def_text_script CompText874D038_unk60

	def_text_script CompText874D038_unk61

	def_text_script CompText874D038_unk62

	def_text_script CompText874D038_unk63

	def_text_script CompText874D038_unk64

	def_text_script CompText874D038_unk65

	def_text_script CompText874D038_unk66

	def_text_script CompText874D038_unk67

	def_text_script CompText874D038_unk68

	def_text_script CompText874D038_unk69

	def_text_script CompText874D038_unk70

	def_text_script CompText874D038_unk71

	def_text_script CompText874D038_unk72

	def_text_script CompText874D038_unk73

	def_text_script CompText874D038_unk74

	def_text_script CompText874D038_unk75

	def_text_script CompText874D038_unk76

	def_text_script CompText874D038_unk77

	def_text_script CompText874D038_unk78

	def_text_script CompText874D038_unk79

	def_text_script CompText874D038_unk80

	def_text_script CompText874D038_unk81

	def_text_script CompText874D038_unk82

	def_text_script CompText874D038_unk83

	def_text_script CompText874D038_unk84

	def_text_script CompText874D038_unk85

	def_text_script CompText874D038_unk86

	def_text_script CompText874D038_unk87

	def_text_script CompText874D038_unk88

	def_text_script CompText874D038_unk89

	def_text_script CompText874D038_unk90

	def_text_script CompText874D038_unk91

	def_text_script CompText874D038_unk92

	def_text_script CompText874D038_unk93

	def_text_script CompText874D038_unk94

	def_text_script CompText874D038_unk95

	def_text_script CompText874D038_unk96

	def_text_script CompText874D038_unk97

	def_text_script CompText874D038_unk98

	def_text_script CompText874D038_unk99

	def_text_script CompText874D038_unk100

	def_text_script CompText874D038_unk101

	def_text_script CompText874D038_unk102

	def_text_script CompText874D038_unk103

	def_text_script CompText874D038_unk104

	def_text_script CompText874D038_unk105

	def_text_script CompText874D038_unk106

	def_text_script CompText874D038_unk107

	def_text_script CompText874D038_unk108

	def_text_script CompText874D038_unk109

	def_text_script CompText874D038_unk110

	def_text_script CompText874D038_unk111

	def_text_script CompText874D038_unk112

	def_text_script CompText874D038_unk113

	def_text_script CompText874D038_unk114

	def_text_script CompText874D038_unk115

	def_text_script CompText874D038_unk116

	def_text_script CompText874D038_unk117

	def_text_script CompText874D038_unk118

	def_text_script CompText874D038_unk119

	def_text_script CompText874D038_unk120

	def_text_script CompText874D038_unk121

	def_text_script CompText874D038_unk122

	def_text_script CompText874D038_unk123

	def_text_script CompText874D038_unk124

	def_text_script CompText874D038_unk125

	def_text_script CompText874D038_unk126

	def_text_script CompText874D038_unk127

	def_text_script CompText874D038_unk128

	def_text_script CompText874D038_unk129

	def_text_script CompText874D038_unk130

	def_text_script CompText874D038_unk131

	def_text_script CompText874D038_unk132

	def_text_script CompText874D038_unk133

	def_text_script CompText874D038_unk134

	def_text_script CompText874D038_unk135

	def_text_script CompText874D038_unk136

	def_text_script CompText874D038_unk137

	def_text_script CompText874D038_unk138

	def_text_script CompText874D038_unk139

	def_text_script CompText874D038_unk140

	def_text_script CompText874D038_unk141

	def_text_script CompText874D038_unk142

	def_text_script CompText874D038_unk143

	def_text_script CompText874D038_unk144

	def_text_script CompText874D038_unk145

	def_text_script CompText874D038_unk146

	def_text_script CompText874D038_unk147

	def_text_script CompText874D038_unk148

	def_text_script CompText874D038_unk149

	def_text_script CompText874D038_unk150
	ts_check_flag [
		flag: 0xC49,
		jumpIfTrue: CompText874D038_unk152_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC43,
		jumpIfTrue: CompText874D038_unk151_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874D038_unk151
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's see... Our\n"
	.string "targets are the gang\n"
	.string "members who are"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "hanging around..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk152
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out...\n"
	.string "It's time to face\n"
	.string "Dark Scyth's final!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk153

	def_text_script CompText874D038_unk154

	def_text_script CompText874D038_unk155
	ts_check_flag [
		flag: 0xCA5,
		jumpIfTrue: CompText874D038_unk159_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCB3,
		jumpIfTrue: CompText874D038_unk158_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCB2,
		jumpIfTrue: CompText874D038_unk157_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCA3,
		jumpIfTrue: CompText874D038_unk156_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874D038_unk156
	ts_check_sub_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: CompText874D038_unk160_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "First,we've gotta\n"
	.string "find the junk trader\n"
	.string "in Undernet2..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk157
	ts_check_sub_area [
		lower: 0x2,
		upper: 0x2,
		jumpIfInRange: CompText874D038_unk161_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "There's one more\n"
	.string "junk trader in\n"
	.string "Undernet2..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk158
	ts_check_sub_area [
		lower: 0x0,
		upper: 0x0,
		jumpIfInRange: CompText874D038_unk161_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Next,we've gotta\n"
	.string "find the junk trader\n"
	.string "in Undernet1."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk159
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack out... and\n"
	.string "good luck on\n"
	.string "Mr.Press's final!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk160
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "First,we've gotta\n"
	.string "find the junk trader\n"
	.string "in this area..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk161
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "There's one more\n"
	.string "junk trader here in\n"
	.string "this area..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk162
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Next,we've gotta\n"
	.string "find the junk trader\n"
	.string "in this area..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk163

	def_text_script CompText874D038_unk164

	def_text_script CompText874D038_unk165

	def_text_script CompText874D038_unk166

	def_text_script CompText874D038_unk167

	def_text_script CompText874D038_unk168

	def_text_script CompText874D038_unk169

	def_text_script CompText874D038_unk170

	def_text_script CompText874D038_unk171

	def_text_script CompText874D038_unk172

	def_text_script CompText874D038_unk173

	def_text_script CompText874D038_unk174

	def_text_script CompText874D038_unk175

	def_text_script CompText874D038_unk176

	def_text_script CompText874D038_unk177

	def_text_script CompText874D038_unk178

	def_text_script CompText874D038_unk179

	def_text_script CompText874D038_unk180
	ts_check_flag [
		flag: 0xD32,
		jumpIfTrue: CompText874D038_unk183_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xD33,
		jumpIfTrue: CompText874D038_unk182_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC63,
		jumpIfTrue: CompText874D038_unk181_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874D038_unk181
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk182
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea1!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk183
	ts_end

	def_text_script CompText874D038_unk184
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We're gonna turn all\n"
	.string "the rocks in this\n"
	.string "area into pebbles!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk185

	def_text_script CompText874D038_unk186

	def_text_script CompText874D038_unk187

	def_text_script CompText874D038_unk188

	def_text_script CompText874D038_unk189

	def_text_script CompText874D038_unk190
	ts_check_flag [
		flag: 0xC8F,
		jumpIfTrue: CompText874D038_unk194_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC8B,
		jumpIfTrue: CompText874D038_unk193_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC87,
		jumpIfTrue: CompText874D038_unk192_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC83,
		jumpIfTrue: CompText874D038_unk191_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874D038_unk191
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Undernet2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk192
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Sky Area2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk193
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "CentralArea3!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk194
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Time for the final\n"
	.string "exam! Jack out,\n"
	.string "ChargeMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk195
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's look for the\n"
	.string "cyberstation in this\n"
	.string "area!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk196

	def_text_script CompText874D038_unk197

	def_text_script CompText874D038_unk198

	def_text_script CompText874D038_unk199

	def_text_script CompText874D038_unk200

	def_text_script CompText874D038_unk201

	def_text_script CompText874D038_unk202

	def_text_script CompText874D038_unk203

	def_text_script CompText874D038_unk204

	def_text_script CompText874D038_unk205

	def_text_script CompText874D038_unk206

	def_text_script CompText874D038_unk207

	def_text_script CompText874D038_unk208

	def_text_script CompText874D038_unk209

	def_text_script CompText874D038_unk210

	def_text_script CompText874D038_unk211

	def_text_script CompText874D038_unk212

	def_text_script CompText874D038_unk213

	def_text_script CompText874D038_unk214

	def_text_script CompText874D038_unk215

	def_text_script CompText874D038_unk216

	def_text_script CompText874D038_unk217

	def_text_script CompText874D038_unk218

	def_text_script CompText874D038_unk219

	def_text_script CompText874D038_unk220
	ts_jump target=CompText874D038_unk1_id
	ts_end

	def_text_script CompText874D038_unk221
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating HeatMan...\n"
	.string "It lights my soul on\n"
	.string "fire!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk222
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ElecMan...\n"
	.string "I feel a surge of\n"
	.string "power coming on!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk223
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SlashMan\n"
	.string "is like sharpening\n"
	.string "my mind to a point!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk224
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating EraseMan\n"
	.string "brings out my dark\n"
	.string "side... Mwahahaha!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk225
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ChargeMan\n"
	.string "makes me want to\n"
	.string "plow ahead!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk226
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SpoutMan\n"
	.string "makes me feel like\n"
	.string "a little fish..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk227
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating\n"
	.string "TomahawkMan is an\n"
	.string "awesome feeling!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk228
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating TenguMan\n"
	.string "brings a sense of\n"
	.string "peace to my heart..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk229
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating GroundMan\n"
	.string "lets me drill\n"
	.string "through anything!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk230
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating DustMan...\n"
	.string "There's no virus we\n"
	.string "can't scrap!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk231
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "ProtoMan helping out\n"
	.string "during battle... He\n"
	.string "sure is trustworthy!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874D038_unk232

	def_text_script CompText874D038_unk233

	def_text_script CompText874D038_unk234

	def_text_script CompText874D038_unk235

	def_text_script CompText874D038_unk236

	def_text_script CompText874D038_unk237

	def_text_script CompText874D038_unk238

	def_text_script CompText874D038_unk239

	def_text_script CompText874D038_unk240

	def_text_script CompText874D038_unk241

	def_text_script CompText874D038_unk242

	def_text_script CompText874D038_unk243

	def_text_script CompText874D038_unk244

	def_text_script CompText874D038_unk245

	def_text_script CompText874D038_unk246

	def_text_script CompText874D038_unk247

	def_text_script CompText874D038_unk248

	def_text_script CompText874D038_unk249

	def_text_script CompText874D038_unk250

	def_text_script CompText874D038_unk251

	def_text_script CompText874D038_unk252

	def_text_script CompText874D038_unk253

	def_text_script CompText874D038_unk254

	