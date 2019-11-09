	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8751150::
	.word 0xC2D00

	text_archive_start

	def_text_script CompText8751150_unk0
	ts_check_chapter 0x80, 0x80, 0xDC, 0xFF
	ts_check_chapter 0x35, 0x35, 0x73, 0xFF
	ts_check_chapter 0x34, 0x34, 0x6E, 0xFF
	ts_check_chapter 0x32, 0x33, 0x5F, 0xFF
	ts_check_chapter 0x31, 0x31, 0x50, 0xFF
	ts_msg_open
	.string "Temporary message"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk1

	def_text_script CompText8751150_unk2

	def_text_script CompText8751150_unk3

	def_text_script CompText8751150_unk4

	def_text_script CompText8751150_unk5

	def_text_script CompText8751150_unk6

	def_text_script CompText8751150_unk7

	def_text_script CompText8751150_unk8

	def_text_script CompText8751150_unk9

	def_text_script CompText8751150_unk10

	def_text_script CompText8751150_unk11

	def_text_script CompText8751150_unk12

	def_text_script CompText8751150_unk13

	def_text_script CompText8751150_unk14

	def_text_script CompText8751150_unk15

	def_text_script CompText8751150_unk16

	def_text_script CompText8751150_unk17

	def_text_script CompText8751150_unk18

	def_text_script CompText8751150_unk19

	def_text_script CompText8751150_unk20

	def_text_script CompText8751150_unk21

	def_text_script CompText8751150_unk22

	def_text_script CompText8751150_unk23

	def_text_script CompText8751150_unk24

	def_text_script CompText8751150_unk25

	def_text_script CompText8751150_unk26

	def_text_script CompText8751150_unk27

	def_text_script CompText8751150_unk28

	def_text_script CompText8751150_unk29

	def_text_script CompText8751150_unk30

	def_text_script CompText8751150_unk31

	def_text_script CompText8751150_unk32

	def_text_script CompText8751150_unk33

	def_text_script CompText8751150_unk34

	def_text_script CompText8751150_unk35

	def_text_script CompText8751150_unk36

	def_text_script CompText8751150_unk37

	def_text_script CompText8751150_unk38

	def_text_script CompText8751150_unk39

	def_text_script CompText8751150_unk40

	def_text_script CompText8751150_unk41

	def_text_script CompText8751150_unk42

	def_text_script CompText8751150_unk43

	def_text_script CompText8751150_unk44

	def_text_script CompText8751150_unk45

	def_text_script CompText8751150_unk46

	def_text_script CompText8751150_unk47

	def_text_script CompText8751150_unk48

	def_text_script CompText8751150_unk49

	def_text_script CompText8751150_unk50

	def_text_script CompText8751150_unk51

	def_text_script CompText8751150_unk52

	def_text_script CompText8751150_unk53

	def_text_script CompText8751150_unk54

	def_text_script CompText8751150_unk55

	def_text_script CompText8751150_unk56

	def_text_script CompText8751150_unk57

	def_text_script CompText8751150_unk58

	def_text_script CompText8751150_unk59

	def_text_script CompText8751150_unk60

	def_text_script CompText8751150_unk61

	def_text_script CompText8751150_unk62

	def_text_script CompText8751150_unk63

	def_text_script CompText8751150_unk64

	def_text_script CompText8751150_unk65

	def_text_script CompText8751150_unk66

	def_text_script CompText8751150_unk67

	def_text_script CompText8751150_unk68

	def_text_script CompText8751150_unk69

	def_text_script CompText8751150_unk70

	def_text_script CompText8751150_unk71

	def_text_script CompText8751150_unk72

	def_text_script CompText8751150_unk73

	def_text_script CompText8751150_unk74

	def_text_script CompText8751150_unk75

	def_text_script CompText8751150_unk76

	def_text_script CompText8751150_unk77

	def_text_script CompText8751150_unk78

	def_text_script CompText8751150_unk79

	def_text_script CompText8751150_unk80
	ts_check_flag 0xE, 0x8, 0x57, 0xFF
	ts_check_flag 0xA, 0x8, 0x56, 0xFF
	ts_check_flag 0x67, 0x8, 0x55, 0xFF
	ts_check_flag 0x66, 0x8, 0x54, 0xFF
	ts_check_flag 0x65, 0x8, 0x53, 0xFF
	ts_check_flag 0x64, 0x8, 0x52, 0xFF
	ts_check_flag 0x6, 0x8, 0x51, 0xFF
	ts_end

	def_text_script CompText8751150_unk81
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

	def_text_script CompText8751150_unk82
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

	def_text_script CompText8751150_unk83
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

	def_text_script CompText8751150_unk84
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

	def_text_script CompText8751150_unk85
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We have to get back\n"
	.string "to the courthouse!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk86
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's check out the\n"
	.string "courtroom!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk87
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ah,it's time to go\n"
	.string "home and head to bed\n"
	.string "already..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk88

	def_text_script CompText8751150_unk89

	def_text_script CompText8751150_unk90

	def_text_script CompText8751150_unk91

	def_text_script CompText8751150_unk92

	def_text_script CompText8751150_unk93

	def_text_script CompText8751150_unk94

	def_text_script CompText8751150_unk95
	ts_check_flag 0x2A, 0x8, 0x6B, 0xFF
	ts_check_flag 0x26, 0x8, 0x6A, 0xFF
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

	def_text_script CompText8751150_unk96
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Head for Green Town,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk97
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's try to find\n"
	.string "out more about Dad!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk98
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

	def_text_script CompText8751150_unk99
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

	def_text_script CompText8751150_unk100
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

	def_text_script CompText8751150_unk101
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out! The\n"
	.string "RoboControl PC is in\n"
	.string "the Teachers' Room!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk102
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

	def_text_script CompText8751150_unk103
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,and let's\n"
	.string "get over to the\n"
	.string "Punishment Room!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk104
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

	def_text_script CompText8751150_unk105
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta stop the\n"
	.string "JudgeTree somehow!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk106
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We've gotta stop the\n"
	.string "JudgeTree somehow,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk107
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta stop the\n"
	.string "JudgeTree somehow!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk108

	def_text_script CompText8751150_unk109

	def_text_script CompText8751150_unk110
	ts_check_flag 0x97, 0x9, 0x72, 0xFF
	ts_check_flag 0x96, 0x9, 0x71, 0xFF
	ts_check_flag 0x95, 0x9, 0x70, 0xFF
	ts_check_flag 0x36, 0x8, 0x6F, 0xFF
	ts_end

	def_text_script CompText8751150_unk111
	ts_end

	def_text_script CompText8751150_unk112
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It's cybercooking\n"
	.string "time! Let's go chop\n"
	.string "up some carrots!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk113
	ts_check_sub_area 0x1, 0x1, 0x77, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head over to\n"
	.string "Green Area2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk114
	ts_end

	def_text_script CompText8751150_unk115
	ts_check_flag 0x6E, 0x9, 0x75, 0xFF
	ts_check_flag 0x4C, 0x8, 0x74, 0xFF
	ts_end

	def_text_script CompText8751150_unk116
	ts_mugshot_show 0x0
	ts_msg_open
	.string "OK,avoid the cyber-\n"
	.string "crows... gather the\n"
	.string "cyberscrolls..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk117
	ts_check_sub_area 0x1, 0x1, 0x74, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head for\n"
	.string "Green Area2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk118

	def_text_script CompText8751150_unk119
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It's cybercooking\n"
	.string "time! There's cyber-\n"
	.string "radishes to cut!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk120

	def_text_script CompText8751150_unk121

	def_text_script CompText8751150_unk122

	def_text_script CompText8751150_unk123

	def_text_script CompText8751150_unk124

	def_text_script CompText8751150_unk125

	def_text_script CompText8751150_unk126

	def_text_script CompText8751150_unk127

	def_text_script CompText8751150_unk128

	def_text_script CompText8751150_unk129

	def_text_script CompText8751150_unk130

	def_text_script CompText8751150_unk131

	def_text_script CompText8751150_unk132

	def_text_script CompText8751150_unk133

	def_text_script CompText8751150_unk134

	def_text_script CompText8751150_unk135

	def_text_script CompText8751150_unk136

	def_text_script CompText8751150_unk137

	def_text_script CompText8751150_unk138

	def_text_script CompText8751150_unk139

	def_text_script CompText8751150_unk140

	def_text_script CompText8751150_unk141

	def_text_script CompText8751150_unk142

	def_text_script CompText8751150_unk143

	def_text_script CompText8751150_unk144

	def_text_script CompText8751150_unk145

	def_text_script CompText8751150_unk146

	def_text_script CompText8751150_unk147

	def_text_script CompText8751150_unk148

	def_text_script CompText8751150_unk149

	def_text_script CompText8751150_unk150

	def_text_script CompText8751150_unk151

	def_text_script CompText8751150_unk152

	def_text_script CompText8751150_unk153

	def_text_script CompText8751150_unk154

	def_text_script CompText8751150_unk155

	def_text_script CompText8751150_unk156

	def_text_script CompText8751150_unk157

	def_text_script CompText8751150_unk158

	def_text_script CompText8751150_unk159

	def_text_script CompText8751150_unk160

	def_text_script CompText8751150_unk161

	def_text_script CompText8751150_unk162

	def_text_script CompText8751150_unk163

	def_text_script CompText8751150_unk164

	def_text_script CompText8751150_unk165

	def_text_script CompText8751150_unk166

	def_text_script CompText8751150_unk167

	def_text_script CompText8751150_unk168

	def_text_script CompText8751150_unk169

	def_text_script CompText8751150_unk170

	def_text_script CompText8751150_unk171

	def_text_script CompText8751150_unk172

	def_text_script CompText8751150_unk173

	def_text_script CompText8751150_unk174

	def_text_script CompText8751150_unk175

	def_text_script CompText8751150_unk176

	def_text_script CompText8751150_unk177

	def_text_script CompText8751150_unk178

	def_text_script CompText8751150_unk179

	def_text_script CompText8751150_unk180

	def_text_script CompText8751150_unk181

	def_text_script CompText8751150_unk182

	def_text_script CompText8751150_unk183

	def_text_script CompText8751150_unk184

	def_text_script CompText8751150_unk185

	def_text_script CompText8751150_unk186

	def_text_script CompText8751150_unk187

	def_text_script CompText8751150_unk188

	def_text_script CompText8751150_unk189

	def_text_script CompText8751150_unk190

	def_text_script CompText8751150_unk191

	def_text_script CompText8751150_unk192

	def_text_script CompText8751150_unk193

	def_text_script CompText8751150_unk194

	def_text_script CompText8751150_unk195

	def_text_script CompText8751150_unk196

	def_text_script CompText8751150_unk197

	def_text_script CompText8751150_unk198

	def_text_script CompText8751150_unk199

	def_text_script CompText8751150_unk200

	def_text_script CompText8751150_unk201

	def_text_script CompText8751150_unk202

	def_text_script CompText8751150_unk203

	def_text_script CompText8751150_unk204

	def_text_script CompText8751150_unk205

	def_text_script CompText8751150_unk206

	def_text_script CompText8751150_unk207

	def_text_script CompText8751150_unk208

	def_text_script CompText8751150_unk209

	def_text_script CompText8751150_unk210

	def_text_script CompText8751150_unk211

	def_text_script CompText8751150_unk212

	def_text_script CompText8751150_unk213

	def_text_script CompText8751150_unk214

	def_text_script CompText8751150_unk215

	def_text_script CompText8751150_unk216

	def_text_script CompText8751150_unk217

	def_text_script CompText8751150_unk218

	def_text_script CompText8751150_unk219

	def_text_script CompText8751150_unk220
	ts_check_navi_all 0xFF, 0xDD, 0xDE, 0xDF, 0xE0, 0xE1, 0xE2, 0xE3, 0xE4, 0xE5, 0xE6, 0xE7
	ts_end

	def_text_script CompText8751150_unk221
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating HeatMan...\n"
	.string "It lights my soul on\n"
	.string "fire!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk222
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating ElecMan...\n"
	.string "I feel a surge of\n"
	.string "power coming on!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk223
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating SlashMan\n"
	.string "is like sharpening\n"
	.string "my mind to a point!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk224
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating EraseMan\n"
	.string "brings out my dark\n"
	.string "side... Mwahahaha!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk225
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating ChargeMan\n"
	.string "makes me want to\n"
	.string "plow ahead!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk226
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating SpoutMan\n"
	.string "makes me feel like\n"
	.string "a little fish..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk227
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating\n"
	.string "TomahawkMan is an\n"
	.string "awesome feeling!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk228
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating TenguMan\n"
	.string "brings a sense of\n"
	.string "peace to my heart..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk229
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating GroundMan\n"
	.string "lets me drill\n"
	.string "through anything!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk230
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating DustMan...\n"
	.string "There's no virus we\n"
	.string "can't scrap!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk231
	ts_mugshot_show 0x0
	ts_msg_open
	.string "ProtoMan helping out\n"
	.string "during battle... He\n"
	.string "sure is trustworthy!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8751150_unk232

	def_text_script CompText8751150_unk233

	def_text_script CompText8751150_unk234

	def_text_script CompText8751150_unk235

	def_text_script CompText8751150_unk236

	def_text_script CompText8751150_unk237

	def_text_script CompText8751150_unk238

	def_text_script CompText8751150_unk239

	def_text_script CompText8751150_unk240

	def_text_script CompText8751150_unk241

	def_text_script CompText8751150_unk242

	def_text_script CompText8751150_unk243

	def_text_script CompText8751150_unk244

	def_text_script CompText8751150_unk245

	def_text_script CompText8751150_unk246

	def_text_script CompText8751150_unk247

	def_text_script CompText8751150_unk248

	def_text_script CompText8751150_unk249

	def_text_script CompText8751150_unk250

	def_text_script CompText8751150_unk251

	def_text_script CompText8751150_unk252

	def_text_script CompText8751150_unk253

	def_text_script CompText8751150_unk254

	