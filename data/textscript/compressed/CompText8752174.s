	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8752174::
	.word 0xBC800

	text_archive_start

	def_text_script CompText8752174_unk0
	ts_check_chapter 0x57, 0x57, 0xBE, 0xFF
	ts_check_chapter 0x56, 0x56, 0xB4, 0xFF
	ts_check_chapter 0x35, 0x35, 0x37, 0xFF
	ts_check_chapter 0x34, 0x34, 0x32, 0xFF
	ts_check_navi_all 0xFF, 0xDD, 0xDE, 0xDF, 0xE0, 0xE1, 0xE2, 0xE3, 0xE4, 0xE5, 0xE6, 0xE7
	ts_check_flag 0x63, 0x1, 0xDC, 0xFF
	ts_jump 1
	ts_end

	def_text_script CompText8752174_unk1
	ts_check_chapter 0x62, 0x64, 0xF, 0xFF
	ts_check_chapter 0x60, 0x61, 0x5, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk2

	def_text_script CompText8752174_unk3

	def_text_script CompText8752174_unk4

	def_text_script CompText8752174_unk5
	ts_check_flag 0x10, 0xE, 0xA, 0xFF
	ts_check_flag 0xE, 0xE, 0x9, 0xFF
	ts_check_flag 0xA, 0xE, 0x8, 0xFF
	ts_check_flag 0x8, 0xE, 0x7, 0xFF
	ts_check_flag 0x5A, 0xE, 0x6, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We've got to check\n"
	.string "the Undernet BBS!!\n"
	.string "Let's go!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out and head\n"
	.string "for the Sky Town\n"
	.string "Admin Building!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Phew...\n"
	.string "I'm glad everyone's\n"
	.string "safe..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "OK,time to jack out!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It's about time to\n"
	.string "jack out,MegaMan."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk9
	ts_mugshot_show 0x0
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

	def_text_script CompText8752174_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Time to jack out!\n"
	.string "I can't wait for\n"
	.string "the Gala!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk11

	def_text_script CompText8752174_unk12

	def_text_script CompText8752174_unk13

	def_text_script CompText8752174_unk14

	def_text_script CompText8752174_unk15
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
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Let's get going to\n"
	.string "the meeting point!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk16
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Everyone's waiting\n"
	.string "for us at the park!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk17
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to the Expo\n"
	.string "Site,MegaMan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk18
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "There are still\n"
	.string "stamps to collect!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk19
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Head for the\n"
	.string "Principal's Office,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk20
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "Principal's Office,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk21
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's see where in\n"
	.string "the Expo Site that\n"
	.string "passageway leads..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk22
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's get back to\n"
	.string "the Expo Site!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk23
	ts_jump 22

	def_text_script CompText8752174_unk24
	ts_jump 22

	def_text_script CompText8752174_unk25
	ts_jump 22

	def_text_script CompText8752174_unk26
	ts_jump 22

	def_text_script CompText8752174_unk27
	ts_jump 22

	def_text_script CompText8752174_unk28
	ts_jump 22

	def_text_script CompText8752174_unk29
	ts_jump 22

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
	ts_check_flag 0x97, 0x9, 0x36, 0xFF
	ts_check_flag 0x96, 0x9, 0x35, 0xFF
	ts_check_flag 0x95, 0x9, 0x34, 0xFF
	ts_check_flag 0x36, 0x8, 0x33, 0xFF
	ts_end

	def_text_script CompText8752174_unk51
	ts_end

	def_text_script CompText8752174_unk52
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It's cybercooking\n"
	.string "time! Let's go chop\n"
	.string "up some carrots!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk53
	ts_check_sub_area 0x1, 0x1, 0x3B, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head over to\n"
	.string "Green Area2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk54
	ts_end

	def_text_script CompText8752174_unk55
	ts_check_flag 0x6E, 0x9, 0x39, 0xFF
	ts_check_flag 0x4C, 0x8, 0x38, 0xFF
	.string "Temporary message"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk56
	ts_mugshot_show 0x0
	ts_msg_open
	.string "OK,avoid the cyber-\n"
	.string "crows... gather the\n"
	.string "cyberscrolls..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk57
	ts_check_sub_area 0x1, 0x1, 0x38, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head for\n"
	.string "Green Area2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk58

	def_text_script CompText8752174_unk59
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It's cybercooking\n"
	.string "time! There's cyber-\n"
	.string "radishes to cut!"
	ts_key_wait 0x0
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
	ts_check_flag 0x32, 0xD, 0xB7, 0xFF
	ts_check_flag 0x33, 0xD, 0xB6, 0xFF
	ts_check_flag 0x63, 0xC, 0xB5, 0xFF
	ts_end

	def_text_script CompText8752174_unk181
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk182
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea1!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk183
	ts_end

	def_text_script CompText8752174_unk184
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We're gonna turn all\n"
	.string "the rocks in this\n"
	.string "area into pebbles!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk185

	def_text_script CompText8752174_unk186

	def_text_script CompText8752174_unk187

	def_text_script CompText8752174_unk188

	def_text_script CompText8752174_unk189

	def_text_script CompText8752174_unk190
	ts_check_flag 0x8F, 0xC, 0xC2, 0xFF
	ts_check_flag 0x8B, 0xC, 0xC1, 0xFF
	ts_check_flag 0x87, 0xC, 0xC0, 0xFF
	ts_check_flag 0x83, 0xC, 0xBF, 0xFF
	ts_end

	def_text_script CompText8752174_unk191
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Undernet2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk192
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Sky Area2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk193
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "CentralArea3!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk194
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Time for the final\n"
	.string "exam! Jack out,\n"
	.string "ChargeMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk195
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's look for the\n"
	.string "cyberstation in this\n"
	.string "area!"
	ts_key_wait 0x0
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
	ts_jump 1
	ts_end

	def_text_script CompText8752174_unk221
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating HeatMan...\n"
	.string "It lights my soul on\n"
	.string "fire!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk222
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating ElecMan...\n"
	.string "I feel a surge of\n"
	.string "power coming on!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk223
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating SlashMan\n"
	.string "is like sharpening\n"
	.string "my mind to a point!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk224
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating EraseMan\n"
	.string "brings out my dark\n"
	.string "side... Mwahahaha!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk225
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating ChargeMan\n"
	.string "makes me want to\n"
	.string "plow ahead!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk226
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating SpoutMan\n"
	.string "makes me feel like\n"
	.string "a little fish..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk227
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating\n"
	.string "TomahawkMan is an\n"
	.string "awesome feeling!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk228
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating TenguMan\n"
	.string "brings a sense of\n"
	.string "peace to my heart..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk229
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating GroundMan\n"
	.string "lets me drill\n"
	.string "through anything!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk230
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating DustMan...\n"
	.string "There's no virus we\n"
	.string "can't scrap!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8752174_unk231
	ts_mugshot_show 0x0
	ts_msg_open
	.string "ProtoMan helping out\n"
	.string "during battle... He\n"
	.string "sure is trustworthy!"
	ts_key_wait 0x0
	ts_end

	