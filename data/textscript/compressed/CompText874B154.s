	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText874B154::
	.word 0xCC500

	text_archive_start

	def_text_script CompText874B154_unk0
	ts_check_chapter 0x57, 0x57, 0xBE, 0xFF
	ts_check_chapter 0x56, 0x56, 0xB4, 0xFF
	ts_check_chapter 0x4B, 0x4B, 0x9B, 0xFF
	ts_check_chapter 0x48, 0x49, 0x96, 0xFF
	ts_check_chapter 0x35, 0x35, 0xA5, 0xFF
	ts_check_chapter 0x34, 0x34, 0xA0, 0xFF
	ts_check_navi_all 0xFF, 0xDD, 0xDE, 0xDF, 0xE0, 0xE1, 0xE2, 0xE3, 0xE4, 0xE5, 0xE6, 0xE7
	ts_check_flag 0x63, 0x1, 0xDC, 0xFF
	ts_jump 1
	ts_end

	def_text_script CompText874B154_unk1
	ts_check_chapter 0x62, 0x64, 0xF, 0xFF
	ts_check_chapter 0x60, 0x61, 0x5, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk2

	def_text_script CompText874B154_unk3

	def_text_script CompText874B154_unk4

	def_text_script CompText874B154_unk5
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

	def_text_script CompText874B154_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out and head\n"
	.string "for the Sky Town\n"
	.string "Admin Building!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk7
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

	def_text_script CompText874B154_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It's about time to\n"
	.string "jack out,MegaMan."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk9
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

	def_text_script CompText874B154_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Time to jack out!\n"
	.string "I can't wait for\n"
	.string "the Gala!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk11

	def_text_script CompText874B154_unk12

	def_text_script CompText874B154_unk13

	def_text_script CompText874B154_unk14

	def_text_script CompText874B154_unk15
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

	def_text_script CompText874B154_unk16
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Everyone's waiting\n"
	.string "for us at the park!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk17
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to the Expo\n"
	.string "Site,MegaMan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk18
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "There are still\n"
	.string "stamps to collect!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk19
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Head for the\n"
	.string "Principal's Office,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk20
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "Principal's Office,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk21
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

	def_text_script CompText874B154_unk22
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's get back to\n"
	.string "the Expo Site!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk23
	ts_jump 22

	def_text_script CompText874B154_unk24
	ts_jump 22

	def_text_script CompText874B154_unk25
	ts_jump 22

	def_text_script CompText874B154_unk26
	ts_jump 22

	def_text_script CompText874B154_unk27
	ts_jump 22

	def_text_script CompText874B154_unk28
	ts_jump 22

	def_text_script CompText874B154_unk29
	ts_jump 22

	def_text_script CompText874B154_unk30

	def_text_script CompText874B154_unk31

	def_text_script CompText874B154_unk32

	def_text_script CompText874B154_unk33

	def_text_script CompText874B154_unk34

	def_text_script CompText874B154_unk35

	def_text_script CompText874B154_unk36

	def_text_script CompText874B154_unk37

	def_text_script CompText874B154_unk38

	def_text_script CompText874B154_unk39

	def_text_script CompText874B154_unk40

	def_text_script CompText874B154_unk41

	def_text_script CompText874B154_unk42

	def_text_script CompText874B154_unk43

	def_text_script CompText874B154_unk44

	def_text_script CompText874B154_unk45

	def_text_script CompText874B154_unk46

	def_text_script CompText874B154_unk47

	def_text_script CompText874B154_unk48

	def_text_script CompText874B154_unk49

	def_text_script CompText874B154_unk50

	def_text_script CompText874B154_unk51

	def_text_script CompText874B154_unk52

	def_text_script CompText874B154_unk53

	def_text_script CompText874B154_unk54

	def_text_script CompText874B154_unk55

	def_text_script CompText874B154_unk56

	def_text_script CompText874B154_unk57

	def_text_script CompText874B154_unk58

	def_text_script CompText874B154_unk59

	def_text_script CompText874B154_unk60

	def_text_script CompText874B154_unk61

	def_text_script CompText874B154_unk62

	def_text_script CompText874B154_unk63

	def_text_script CompText874B154_unk64

	def_text_script CompText874B154_unk65

	def_text_script CompText874B154_unk66

	def_text_script CompText874B154_unk67

	def_text_script CompText874B154_unk68

	def_text_script CompText874B154_unk69

	def_text_script CompText874B154_unk70

	def_text_script CompText874B154_unk71

	def_text_script CompText874B154_unk72

	def_text_script CompText874B154_unk73

	def_text_script CompText874B154_unk74

	def_text_script CompText874B154_unk75

	def_text_script CompText874B154_unk76

	def_text_script CompText874B154_unk77

	def_text_script CompText874B154_unk78

	def_text_script CompText874B154_unk79

	def_text_script CompText874B154_unk80

	def_text_script CompText874B154_unk81

	def_text_script CompText874B154_unk82

	def_text_script CompText874B154_unk83

	def_text_script CompText874B154_unk84

	def_text_script CompText874B154_unk85

	def_text_script CompText874B154_unk86

	def_text_script CompText874B154_unk87

	def_text_script CompText874B154_unk88

	def_text_script CompText874B154_unk89

	def_text_script CompText874B154_unk90

	def_text_script CompText874B154_unk91

	def_text_script CompText874B154_unk92

	def_text_script CompText874B154_unk93

	def_text_script CompText874B154_unk94

	def_text_script CompText874B154_unk95

	def_text_script CompText874B154_unk96

	def_text_script CompText874B154_unk97

	def_text_script CompText874B154_unk98

	def_text_script CompText874B154_unk99

	def_text_script CompText874B154_unk100

	def_text_script CompText874B154_unk101

	def_text_script CompText874B154_unk102

	def_text_script CompText874B154_unk103

	def_text_script CompText874B154_unk104

	def_text_script CompText874B154_unk105

	def_text_script CompText874B154_unk106

	def_text_script CompText874B154_unk107

	def_text_script CompText874B154_unk108

	def_text_script CompText874B154_unk109

	def_text_script CompText874B154_unk110

	def_text_script CompText874B154_unk111

	def_text_script CompText874B154_unk112

	def_text_script CompText874B154_unk113

	def_text_script CompText874B154_unk114

	def_text_script CompText874B154_unk115

	def_text_script CompText874B154_unk116

	def_text_script CompText874B154_unk117

	def_text_script CompText874B154_unk118

	def_text_script CompText874B154_unk119

	def_text_script CompText874B154_unk120

	def_text_script CompText874B154_unk121

	def_text_script CompText874B154_unk122

	def_text_script CompText874B154_unk123

	def_text_script CompText874B154_unk124

	def_text_script CompText874B154_unk125

	def_text_script CompText874B154_unk126

	def_text_script CompText874B154_unk127

	def_text_script CompText874B154_unk128

	def_text_script CompText874B154_unk129

	def_text_script CompText874B154_unk130

	def_text_script CompText874B154_unk131

	def_text_script CompText874B154_unk132

	def_text_script CompText874B154_unk133

	def_text_script CompText874B154_unk134

	def_text_script CompText874B154_unk135

	def_text_script CompText874B154_unk136

	def_text_script CompText874B154_unk137

	def_text_script CompText874B154_unk138

	def_text_script CompText874B154_unk139

	def_text_script CompText874B154_unk140

	def_text_script CompText874B154_unk141

	def_text_script CompText874B154_unk142

	def_text_script CompText874B154_unk143

	def_text_script CompText874B154_unk144

	def_text_script CompText874B154_unk145

	def_text_script CompText874B154_unk146

	def_text_script CompText874B154_unk147

	def_text_script CompText874B154_unk148

	def_text_script CompText874B154_unk149

	def_text_script CompText874B154_unk150
	ts_check_flag 0x3C, 0xA, 0x99, 0xFF
	ts_check_flag 0x3A, 0xA, 0x98, 0xFF
	ts_check_flag 0x38, 0xA, 0x97, 0xFF
	ts_end

	def_text_script CompText874B154_unk151
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Alright,first on the\n"
	.string "list is Sky Area1's\n"
	.string "NetCafe. Let's go!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk152
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's find all the\n"
	.string "cyberbatteries!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk153
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out... and good\n"
	.string "luck on Ms.Zap's\n"
	.string "final exam!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk154

	def_text_script CompText874B154_unk155
	ts_check_flag 0x8C, 0xA, 0x9D, 0xFF
	ts_check_flag 0x42, 0xA, 0x9C, 0xFF
	ts_end

	def_text_script CompText874B154_unk156
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Four Totem Poles,\n"
	.string "four tests... Let's\n"
	.string "give it our best!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk157
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out... and\n"
	.string "good luck on Dingo's\n"
	.string "final exam!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk158

	def_text_script CompText874B154_unk159

	def_text_script CompText874B154_unk160
	ts_check_flag 0x97, 0x9, 0xA4, 0xFF
	ts_check_flag 0x96, 0x9, 0xA3, 0xFF
	ts_check_flag 0x95, 0x9, 0xA2, 0xFF
	ts_check_flag 0x36, 0x8, 0xA1, 0xFF
	ts_end

	def_text_script CompText874B154_unk161
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Cybercooking!\n"
	.string "Time to slice and\n"
	.string "dice some veggies!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk162
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Head to Green Area1!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk163
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head over to\n"
	.string "Green Area2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk164
	ts_end

	def_text_script CompText874B154_unk165
	ts_check_flag 0x6F, 0x9, 0xA8, 0xFF
	ts_check_flag 0x6E, 0x9, 0xA7, 0xFF
	ts_check_flag 0x4C, 0x8, 0xA6, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Head to Green Area1!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk166
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Head to Green Area1!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk167
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Head to Green Area2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk168
	ts_end

	def_text_script CompText874B154_unk169

	def_text_script CompText874B154_unk170

	def_text_script CompText874B154_unk171

	def_text_script CompText874B154_unk172

	def_text_script CompText874B154_unk173

	def_text_script CompText874B154_unk174

	def_text_script CompText874B154_unk175

	def_text_script CompText874B154_unk176

	def_text_script CompText874B154_unk177

	def_text_script CompText874B154_unk178

	def_text_script CompText874B154_unk179

	def_text_script CompText874B154_unk180
	ts_check_flag 0x32, 0xD, 0xB7, 0xFF
	ts_check_flag 0x33, 0xD, 0xB6, 0xFF
	ts_check_flag 0x63, 0xC, 0xB5, 0xFF
	ts_end

	def_text_script CompText874B154_unk181
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk182
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea1!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk183
	ts_end

	def_text_script CompText874B154_unk184
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We're gonna turn all\n"
	.string "the rocks in this\n"
	.string "area into pebbles!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk185

	def_text_script CompText874B154_unk186

	def_text_script CompText874B154_unk187

	def_text_script CompText874B154_unk188

	def_text_script CompText874B154_unk189

	def_text_script CompText874B154_unk190
	ts_check_flag 0x8F, 0xC, 0xC2, 0xFF
	ts_check_flag 0x8B, 0xC, 0xC1, 0xFF
	ts_check_flag 0x87, 0xC, 0xC0, 0xFF
	ts_check_flag 0x83, 0xC, 0xBF, 0xFF
	ts_end

	def_text_script CompText874B154_unk191
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Undernet2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk192
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Sky Area2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk193
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "CentralArea3!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk194
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Time for the final\n"
	.string "exam! Jack out,\n"
	.string "ChargeMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk195
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's look for the\n"
	.string "cyberstation in this\n"
	.string "area!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk196

	def_text_script CompText874B154_unk197

	def_text_script CompText874B154_unk198

	def_text_script CompText874B154_unk199

	def_text_script CompText874B154_unk200

	def_text_script CompText874B154_unk201

	def_text_script CompText874B154_unk202

	def_text_script CompText874B154_unk203

	def_text_script CompText874B154_unk204

	def_text_script CompText874B154_unk205

	def_text_script CompText874B154_unk206

	def_text_script CompText874B154_unk207

	def_text_script CompText874B154_unk208

	def_text_script CompText874B154_unk209

	def_text_script CompText874B154_unk210

	def_text_script CompText874B154_unk211

	def_text_script CompText874B154_unk212

	def_text_script CompText874B154_unk213

	def_text_script CompText874B154_unk214

	def_text_script CompText874B154_unk215

	def_text_script CompText874B154_unk216

	def_text_script CompText874B154_unk217

	def_text_script CompText874B154_unk218

	def_text_script CompText874B154_unk219

	def_text_script CompText874B154_unk220
	ts_jump 1
	ts_end

	def_text_script CompText874B154_unk221
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating HeatMan...\n"
	.string "It lights my soul on\n"
	.string "fire!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk222
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating ElecMan...\n"
	.string "I feel a surge of\n"
	.string "power coming on!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk223
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating SlashMan\n"
	.string "is like sharpening\n"
	.string "my mind to a point!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk224
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating EraseMan\n"
	.string "brings out my dark\n"
	.string "side... Mwahahaha!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk225
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating ChargeMan\n"
	.string "makes me want to\n"
	.string "plow ahead!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk226
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating SpoutMan\n"
	.string "makes me feel like\n"
	.string "a little fish..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk227
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating\n"
	.string "TomahawkMan is an\n"
	.string "awesome feeling!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk228
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating TenguMan\n"
	.string "brings a sense of\n"
	.string "peace to my heart..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk229
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating GroundMan\n"
	.string "lets me drill\n"
	.string "through anything!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk230
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating DustMan...\n"
	.string "There's no virus we\n"
	.string "can't scrap!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B154_unk231
	ts_mugshot_show 0x0
	ts_msg_open
	.string "ProtoMan helping out\n"
	.string "during battle... He\n"
	.string "sure is trustworthy!"
	ts_key_wait 0x0
	ts_end

	