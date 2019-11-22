	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText873F908::
	.word 0x85300

	text_archive_start

	def_text_script CompText873F908_unk0
	ts_check_chapter 0x15, 0x16, 0x5F, 0xFF
	ts_check_chapter 0x14, 0x14, 0x50, 0xFF
	ts_check_chapter 0x12, 0x13, 0x41, 0xFF
	ts_check_chapter 0x10, 0x11, 0x32, 0xFF
	ts_check_chapter 0x5, 0x5, 0x23, 0xFF
	ts_check_chapter 0x2, 0x2, 0xF, 0xFF
	ts_check_chapter 0x0, 0x1, 0x5, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk1

	def_text_script CompText873F908_unk2

	def_text_script CompText873F908_unk3

	def_text_script CompText873F908_unk4

	def_text_script CompText873F908_unk5
	ts_check_flag 0x1A, 0x4, 0xC, 0xFF
	ts_check_flag 0x6D, 0x4, 0xFF, 0xB
	ts_check_flag 0xA0, 0x1C, 0x9, 0xFF
	ts_check_flag 0x18, 0x4, 0x6, 0xFF
	ts_check_flag 0x62, 0x4, 0xFF, 0x7
	ts_check_flag 0x63, 0x4, 0xFF, 0x7
	ts_check_sub_area 0x0, 0x0, 0x6, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go explore\n"
	.string "the town,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk6
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Come on,Lan!\n"
	.string "Let's go talk with\n"
	.string "everyone!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk7
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's say bye to Dad\n"
	.string "and Mom before we go\n"
	.string "explore the town!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk8
	ts_mugshot_show 0x37
	ts_msg_open
	.string "You should read your\n"
	.string "mail,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk9
	ts_check_flag 0x20, 0x1D, 0x8, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go on the Net\n"
	.string "from your computer,\n"
	.string "Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk10

	def_text_script CompText873F908_unk11
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's head for\n"
	.string "CentralArea2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk12
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Don't you think it's\n"
	.string "time for bed,Lan?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk13

	def_text_script CompText873F908_unk14

	def_text_script CompText873F908_unk15
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Hurry up,Lan!\n"
	.string "We're going to be\n"
	.string "late for school!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk16

	def_text_script CompText873F908_unk17

	def_text_script CompText873F908_unk18

	def_text_script CompText873F908_unk19

	def_text_script CompText873F908_unk20

	def_text_script CompText873F908_unk21

	def_text_script CompText873F908_unk22

	def_text_script CompText873F908_unk23

	def_text_script CompText873F908_unk24

	def_text_script CompText873F908_unk25

	def_text_script CompText873F908_unk26

	def_text_script CompText873F908_unk27

	def_text_script CompText873F908_unk28

	def_text_script CompText873F908_unk29

	def_text_script CompText873F908_unk30

	def_text_script CompText873F908_unk31

	def_text_script CompText873F908_unk32

	def_text_script CompText873F908_unk33

	def_text_script CompText873F908_unk34

	def_text_script CompText873F908_unk35
	ts_check_flag 0x42, 0x4, 0x24, 0xFF
	ts_check_sub_area 0x1, 0x3, 0x25, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go home and go\n"
	.string "on the Net,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk36
	ts_check_sub_area 0x1, 0x3, 0x26, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go home and go\n"
	.string "to bed,OK?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk37
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We should try the\n"
	.string "Net,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk38
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Time for bed,don't\n"
	.string "you think,Lan?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk39

	def_text_script CompText873F908_unk40

	def_text_script CompText873F908_unk41

	def_text_script CompText873F908_unk42

	def_text_script CompText873F908_unk43

	def_text_script CompText873F908_unk44

	def_text_script CompText873F908_unk45

	def_text_script CompText873F908_unk46

	def_text_script CompText873F908_unk47

	def_text_script CompText873F908_unk48

	def_text_script CompText873F908_unk49

	def_text_script CompText873F908_unk50
	ts_check_flag 0xA, 0x5, 0x3A, 0xFF
	ts_check_flag 0x8, 0x5, 0x39, 0xFF
	ts_check_flag 0x42, 0x5, 0x38, 0xFF
	ts_check_flag 0x41, 0x5, 0x37, 0xFF
	ts_check_flag 0x4, 0x5, 0x36, 0xFF
	ts_check_flag 0x3F, 0x5, 0x35, 0xFF
	ts_check_flag 0x3D, 0x5, 0x34, 0xFF
	ts_check_flag 0x3C, 0x5, 0x33, 0xFF
	ts_end

	def_text_script CompText873F908_unk51
	ts_end

	def_text_script CompText873F908_unk52
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's find someone\n"
	.string "with too many fish\n"
	.string "and ask for one!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk53
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I bet that penguin\n"
	.string "would love to have\n"
	.string "that fish,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk54
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder where that\n"
	.string "penguin came from?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's check out the\n"
	.string "SeasideArea BBS!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk55
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go find the\n"
	.string "Repair Navi on the\n"
	.string "Net!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk56
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's help the\n"
	.string "Repair Navi find his\n"
	.string "\""
	ts_print_item 0x8, 0x0
	.string "\"!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk57
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go back to\n"
	.string "CentralArea3 and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "give the Repair Navi\n"
	.string "back his \""
	ts_print_item 0x8, 0x0
	.string "\"!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk58
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go take a look\n"
	.string "at the SeasideArea\n"
	.string "BBS!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk59

	def_text_script CompText873F908_unk60

	def_text_script CompText873F908_unk61

	def_text_script CompText873F908_unk62

	def_text_script CompText873F908_unk63

	def_text_script CompText873F908_unk64

	def_text_script CompText873F908_unk65
	ts_check_flag 0x44, 0x5, 0x46, 0xFF
	ts_check_flag 0xF4, 0x0, 0x45, 0xFF
	ts_check_flag 0x12, 0x5, 0x4A, 0xFF
	ts_check_flag 0x10, 0x5, 0x44, 0xFF
	ts_check_flag 0xE, 0x5, 0x43, 0xFF
	ts_check_flag 0x43, 0x5, 0x42, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go tell Mick\n"
	.string "about the penguin!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk66
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's wait for Mick\n"
	.string "in front of the\n"
	.string "LevBus station!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk67
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's take off for\n"
	.string "Seaside Town,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk68
	ts_check_sub_area 0x1, 0x3, 0x4B, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go home and\n"
	.string "hit the sack,OK,Lan?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk69
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We said we'd meet\n"
	.string "in front of the\n"
	.string "Aquarium,so"
	ts_key_wait 0x0
	ts_clear_msg
	.string "let's head on out\n"
	.string "there!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk70
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's head back to\n"
	.string "Seaside Town,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk71

	def_text_script CompText873F908_unk72

	def_text_script CompText873F908_unk73

	def_text_script CompText873F908_unk74
	ts_mugshot_show 0x37
	ts_msg_open
	.string "You have E-mail,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk75
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go to bed,\n"
	.string "alright?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk76

	def_text_script CompText873F908_unk77

	def_text_script CompText873F908_unk78

	def_text_script CompText873F908_unk79

	def_text_script CompText873F908_unk80

	def_text_script CompText873F908_unk81

	def_text_script CompText873F908_unk82

	def_text_script CompText873F908_unk83

	def_text_script CompText873F908_unk84

	def_text_script CompText873F908_unk85

	def_text_script CompText873F908_unk86

	def_text_script CompText873F908_unk87

	def_text_script CompText873F908_unk88

	def_text_script CompText873F908_unk89

	def_text_script CompText873F908_unk90

	def_text_script CompText873F908_unk91

	def_text_script CompText873F908_unk92

	def_text_script CompText873F908_unk93

	def_text_script CompText873F908_unk94

	def_text_script CompText873F908_unk95
	ts_check_flag 0x38, 0x5, 0x60, 0xFF
	ts_end

	def_text_script CompText873F908_unk96
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's call it a\n"
	.string "day,Lan."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText873F908_unk97

	def_text_script CompText873F908_unk98

	def_text_script CompText873F908_unk99

	def_text_script CompText873F908_unk100

	def_text_script CompText873F908_unk101

	def_text_script CompText873F908_unk102

	def_text_script CompText873F908_unk103

	def_text_script CompText873F908_unk104

	def_text_script CompText873F908_unk105

	def_text_script CompText873F908_unk106

	def_text_script CompText873F908_unk107

	def_text_script CompText873F908_unk108

	def_text_script CompText873F908_unk109

	def_text_script CompText873F908_unk110

	def_text_script CompText873F908_unk111

	def_text_script CompText873F908_unk112

	def_text_script CompText873F908_unk113

	def_text_script CompText873F908_unk114

	def_text_script CompText873F908_unk115

	def_text_script CompText873F908_unk116

	def_text_script CompText873F908_unk117

	def_text_script CompText873F908_unk118

	def_text_script CompText873F908_unk119

	def_text_script CompText873F908_unk120

	def_text_script CompText873F908_unk121

	def_text_script CompText873F908_unk122

	def_text_script CompText873F908_unk123

	def_text_script CompText873F908_unk124

	def_text_script CompText873F908_unk125

	def_text_script CompText873F908_unk126

	def_text_script CompText873F908_unk127

	def_text_script CompText873F908_unk128

	def_text_script CompText873F908_unk129

	def_text_script CompText873F908_unk130

	def_text_script CompText873F908_unk131

	def_text_script CompText873F908_unk132

	def_text_script CompText873F908_unk133

	def_text_script CompText873F908_unk134

	def_text_script CompText873F908_unk135

	def_text_script CompText873F908_unk136

	def_text_script CompText873F908_unk137

	def_text_script CompText873F908_unk138

	def_text_script CompText873F908_unk139

	def_text_script CompText873F908_unk140

	def_text_script CompText873F908_unk141

	def_text_script CompText873F908_unk142

	def_text_script CompText873F908_unk143

	def_text_script CompText873F908_unk144

	def_text_script CompText873F908_unk145

	def_text_script CompText873F908_unk146

	def_text_script CompText873F908_unk147

	def_text_script CompText873F908_unk148

	def_text_script CompText873F908_unk149

	def_text_script CompText873F908_unk150

	def_text_script CompText873F908_unk151

	def_text_script CompText873F908_unk152

	def_text_script CompText873F908_unk153

	def_text_script CompText873F908_unk154

	def_text_script CompText873F908_unk155

	def_text_script CompText873F908_unk156

	def_text_script CompText873F908_unk157

	def_text_script CompText873F908_unk158

	def_text_script CompText873F908_unk159

	def_text_script CompText873F908_unk160

	def_text_script CompText873F908_unk161

	def_text_script CompText873F908_unk162

	def_text_script CompText873F908_unk163

	def_text_script CompText873F908_unk164

	def_text_script CompText873F908_unk165

	def_text_script CompText873F908_unk166

	def_text_script CompText873F908_unk167

	def_text_script CompText873F908_unk168

	def_text_script CompText873F908_unk169

	def_text_script CompText873F908_unk170

	def_text_script CompText873F908_unk171

	def_text_script CompText873F908_unk172

	def_text_script CompText873F908_unk173

	def_text_script CompText873F908_unk174

	def_text_script CompText873F908_unk175

	def_text_script CompText873F908_unk176

	def_text_script CompText873F908_unk177

	def_text_script CompText873F908_unk178

	def_text_script CompText873F908_unk179

	def_text_script CompText873F908_unk180

	def_text_script CompText873F908_unk181

	def_text_script CompText873F908_unk182

	def_text_script CompText873F908_unk183

	def_text_script CompText873F908_unk184

	def_text_script CompText873F908_unk185

	def_text_script CompText873F908_unk186

	def_text_script CompText873F908_unk187

	def_text_script CompText873F908_unk188

	def_text_script CompText873F908_unk189

	def_text_script CompText873F908_unk190

	def_text_script CompText873F908_unk191

	def_text_script CompText873F908_unk192

	def_text_script CompText873F908_unk193

	def_text_script CompText873F908_unk194

	def_text_script CompText873F908_unk195

	def_text_script CompText873F908_unk196

	def_text_script CompText873F908_unk197

	def_text_script CompText873F908_unk198

	def_text_script CompText873F908_unk199

	def_text_script CompText873F908_unk200

	def_text_script CompText873F908_unk201

	def_text_script CompText873F908_unk202

	def_text_script CompText873F908_unk203

	def_text_script CompText873F908_unk204

	def_text_script CompText873F908_unk205

	def_text_script CompText873F908_unk206

	def_text_script CompText873F908_unk207

	def_text_script CompText873F908_unk208

	def_text_script CompText873F908_unk209

	def_text_script CompText873F908_unk210

	def_text_script CompText873F908_unk211

	def_text_script CompText873F908_unk212

	def_text_script CompText873F908_unk213

	def_text_script CompText873F908_unk214

	def_text_script CompText873F908_unk215

	def_text_script CompText873F908_unk216

	def_text_script CompText873F908_unk217

	def_text_script CompText873F908_unk218

	def_text_script CompText873F908_unk219

	def_text_script CompText873F908_unk220

	def_text_script CompText873F908_unk221

	def_text_script CompText873F908_unk222

	def_text_script CompText873F908_unk223

	def_text_script CompText873F908_unk224

	def_text_script CompText873F908_unk225

	def_text_script CompText873F908_unk226

	def_text_script CompText873F908_unk227

	def_text_script CompText873F908_unk228

	def_text_script CompText873F908_unk229

	def_text_script CompText873F908_unk230

	def_text_script CompText873F908_unk231

	def_text_script CompText873F908_unk232

	def_text_script CompText873F908_unk233

	def_text_script CompText873F908_unk234

	def_text_script CompText873F908_unk235

	def_text_script CompText873F908_unk236

	def_text_script CompText873F908_unk237

	def_text_script CompText873F908_unk238

	def_text_script CompText873F908_unk239

	def_text_script CompText873F908_unk240

	def_text_script CompText873F908_unk241

	def_text_script CompText873F908_unk242

	def_text_script CompText873F908_unk243

	def_text_script CompText873F908_unk244

	def_text_script CompText873F908_unk245

	def_text_script CompText873F908_unk246

	def_text_script CompText873F908_unk247

	def_text_script CompText873F908_unk248

	def_text_script CompText873F908_unk249

	def_text_script CompText873F908_unk250

	def_text_script CompText873F908_unk251

	def_text_script CompText873F908_unk252

	def_text_script CompText873F908_unk253

	def_text_script CompText873F908_unk254

	