	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8740E90::
	.word 0xABE00

	text_archive_start

	def_text_script CompText8740E90_unk0
	ts_check_chapter 0x15, 0x16, 0x5F, 0xFF
	ts_check_chapter 0x14, 0x14, 0x50, 0xFF
	ts_check_chapter 0x12, 0x13, 0x41, 0xFF
	ts_check_chapter 0x10, 0x11, 0x32, 0xFF
	ts_check_chapter 0x5, 0x5, 0x23, 0xFF
	ts_check_chapter 0x3, 0x4, 0x19, 0xFF
	ts_check_chapter 0x2, 0x2, 0xF, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk1

	def_text_script CompText8740E90_unk2

	def_text_script CompText8740E90_unk3

	def_text_script CompText8740E90_unk4

	def_text_script CompText8740E90_unk5

	def_text_script CompText8740E90_unk6

	def_text_script CompText8740E90_unk7

	def_text_script CompText8740E90_unk8

	def_text_script CompText8740E90_unk9

	def_text_script CompText8740E90_unk10

	def_text_script CompText8740E90_unk11

	def_text_script CompText8740E90_unk12

	def_text_script CompText8740E90_unk13

	def_text_script CompText8740E90_unk14

	def_text_script CompText8740E90_unk15
	ts_check_flag 0x2A, 0x4, 0x16, 0xFF
	ts_check_flag 0x26, 0x4, 0x15, 0xFF
	ts_check_flag 0x20, 0x4, 0x13, 0xFF
	ts_check_flag 0x71, 0x4, 0x12, 0xFF
	ts_check_flag 0x1E, 0x4, 0x10, 0xFF
	ts_end

	def_text_script CompText8740E90_unk16
	ts_check_sub_area 0x7, 0x7, 0x11, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We should go to the\n"
	.string "Teachers' Room,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Um... I think we're\n"
	.string "looking for the,uh,\n"
	.string "energetic teacher"
	ts_key_wait 0x0
	ts_clear_msg
	.string "in a bright red\n"
	.string "warm-up suit..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk18
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go to your new\n"
	.string "classroom! It's 6-1\n"
	.string "on the second floor!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk19
	ts_check_sub_area 0x0, 0x0, 0xFF, 0x14
	ts_mugshot_show 0x37
	ts_msg_open
	.string "It's important to\n"
	.string "make a good first\n"
	.string "impression,so"
	ts_key_wait 0x0
	ts_clear_msg
	.string "let's go say hi\n"
	.string "to everyone!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk20
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's say hi to\n"
	.string "everyone in your\n"
	.string "class before"
	ts_key_wait 0x0
	ts_clear_msg
	.string "going to another\n"
	.string "one,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk21
	ts_end

	def_text_script CompText8740E90_unk22
	ts_mugshot_show 0x37
	ts_msg_open
	.string "It sure feels\n"
	.string "strange to be in\n"
	.string "the real world..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk23

	def_text_script CompText8740E90_unk24

	def_text_script CompText8740E90_unk25
	ts_check_flag 0x3A, 0x4, 0x20, 0xFF
	ts_check_flag 0x36, 0x4, 0x1F, 0xFF
	ts_check_flag 0x34, 0x4, 0x1D, 0xFF
	ts_check_flag 0x32, 0x4, 0x1D, 0xFF
	ts_check_flag 0x7C, 0x4, 0x1C, 0xFF
	ts_check_flag 0x2E, 0x4, 0x1B, 0xFF
	ts_check_flag 0x7B, 0x4, 0x1A, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "What's wrong with\n"
	.string "the Security Bots!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "For now,we should\n"
	.string "do something about\n"
	.string "the fire!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk26
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I've gotta hurry up\n"
	.string "and save Lan and the\n"
	.string "other students!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk27
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Where's Mick?..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And where is he\n"
	.string "controlling these\n"
	.string "Bots from...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk28
	ts_check_sub_area 0x7, 0x7, 0x21, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's hurry to the\n"
	.string "Teachers' Room,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk29
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Jack me in,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've gotta get the\n"
	.string "control system back\n"
	.string "to normal!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk30

	def_text_script CompText8740E90_unk31
	ts_msg_open
	.string "MegaMan isn't in\n"
	.string "the PET right now..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk32
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Jack me in,Lan!\n"
	.string "BlastMan is right\n"
	.string "there!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk33
	ts_mugshot_show 0x37
	ts_msg_open
	.string "This has to be where\n"
	.string "the Bots are being\n"
	.string "controlled from..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk34

	def_text_script CompText8740E90_unk35
	ts_check_flag 0x42, 0x4, 0x24, 0xFF

	def_text_script CompText8740E90_unk36
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go home,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk37

	def_text_script CompText8740E90_unk38

	def_text_script CompText8740E90_unk39

	def_text_script CompText8740E90_unk40

	def_text_script CompText8740E90_unk41

	def_text_script CompText8740E90_unk42

	def_text_script CompText8740E90_unk43

	def_text_script CompText8740E90_unk44

	def_text_script CompText8740E90_unk45

	def_text_script CompText8740E90_unk46

	def_text_script CompText8740E90_unk47

	def_text_script CompText8740E90_unk48

	def_text_script CompText8740E90_unk49

	def_text_script CompText8740E90_unk50
	ts_check_flag 0xA, 0x5, 0x3A, 0xFF
	ts_check_flag 0x8, 0x5, 0x39, 0xFF
	ts_check_flag 0x42, 0x5, 0x38, 0xFF
	ts_check_flag 0x41, 0x5, 0x37, 0xFF
	ts_check_flag 0x4, 0x5, 0x36, 0xFF
	ts_check_flag 0x3F, 0x5, 0x35, 0xFF
	ts_check_flag 0x3D, 0x5, 0x34, 0xFF
	ts_check_flag 0x3C, 0x5, 0x33, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Hmm,what do penguins\n"
	.string "eat?... Let's go ask\n"
	.string "the Biology teacher!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk51
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go ask the\n"
	.string "Biology teacher's\n"
	.string "aide about fish!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk52
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's find someone\n"
	.string "with too many fish\n"
	.string "and ask for one!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk53
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I bet that penguin\n"
	.string "would love to have\n"
	.string "that fish,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk54
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

	def_text_script CompText8740E90_unk55
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go find the\n"
	.string "Repair Navi on the\n"
	.string "Net!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk56
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's help the\n"
	.string "Repair Navi find his\n"
	.string "\""
	ts_print_item 0x8, 0x0
	.string "\"!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk57
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

	def_text_script CompText8740E90_unk58
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go take a look\n"
	.string "at the SeasideArea\n"
	.string "BBS!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk59

	def_text_script CompText8740E90_unk60

	def_text_script CompText8740E90_unk61

	def_text_script CompText8740E90_unk62

	def_text_script CompText8740E90_unk63

	def_text_script CompText8740E90_unk64

	def_text_script CompText8740E90_unk65
	ts_check_flag 0x44, 0x5, 0x46, 0xFF
	ts_check_flag 0x12, 0x5, 0x45, 0xFF
	ts_check_flag 0x10, 0x5, 0x44, 0xFF
	ts_check_flag 0xE, 0x5, 0x43, 0xFF
	ts_check_flag 0x43, 0x5, 0x42, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go tell Mick\n"
	.string "about the penguin!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk66
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's wait for Mick\n"
	.string "in front of the\n"
	.string "LevBus station!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk67
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's take off for\n"
	.string "Seaside Town,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk68
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go home and\n"
	.string "hit the sack,OK,Lan?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk69
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

	def_text_script CompText8740E90_unk70
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's head back to\n"
	.string "Seaside Town,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk71

	def_text_script CompText8740E90_unk72

	def_text_script CompText8740E90_unk73
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Well,if that's how\n"
	.string "Mick feels about\n"
	.string "it..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I guess we can't\n"
	.string "do anything...\n"
	.string "Shall we go back?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk74

	def_text_script CompText8740E90_unk75

	def_text_script CompText8740E90_unk76

	def_text_script CompText8740E90_unk77

	def_text_script CompText8740E90_unk78

	def_text_script CompText8740E90_unk79

	def_text_script CompText8740E90_unk80

	def_text_script CompText8740E90_unk81

	def_text_script CompText8740E90_unk82

	def_text_script CompText8740E90_unk83

	def_text_script CompText8740E90_unk84

	def_text_script CompText8740E90_unk85

	def_text_script CompText8740E90_unk86

	def_text_script CompText8740E90_unk87

	def_text_script CompText8740E90_unk88

	def_text_script CompText8740E90_unk89

	def_text_script CompText8740E90_unk90

	def_text_script CompText8740E90_unk91

	def_text_script CompText8740E90_unk92

	def_text_script CompText8740E90_unk93

	def_text_script CompText8740E90_unk94

	def_text_script CompText8740E90_unk95
	ts_check_flag 0x38, 0x5, 0x60, 0xFF
	ts_end

	def_text_script CompText8740E90_unk96
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's call it a\n"
	.string "day,Lan."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8740E90_unk97

	def_text_script CompText8740E90_unk98

	def_text_script CompText8740E90_unk99

	def_text_script CompText8740E90_unk100

	def_text_script CompText8740E90_unk101

	def_text_script CompText8740E90_unk102

	def_text_script CompText8740E90_unk103

	def_text_script CompText8740E90_unk104

	def_text_script CompText8740E90_unk105

	def_text_script CompText8740E90_unk106

	def_text_script CompText8740E90_unk107

	def_text_script CompText8740E90_unk108

	def_text_script CompText8740E90_unk109

	def_text_script CompText8740E90_unk110

	def_text_script CompText8740E90_unk111

	def_text_script CompText8740E90_unk112

	def_text_script CompText8740E90_unk113

	def_text_script CompText8740E90_unk114

	def_text_script CompText8740E90_unk115

	def_text_script CompText8740E90_unk116

	def_text_script CompText8740E90_unk117

	def_text_script CompText8740E90_unk118

	def_text_script CompText8740E90_unk119

	def_text_script CompText8740E90_unk120

	def_text_script CompText8740E90_unk121

	def_text_script CompText8740E90_unk122

	def_text_script CompText8740E90_unk123

	def_text_script CompText8740E90_unk124

	def_text_script CompText8740E90_unk125

	def_text_script CompText8740E90_unk126

	def_text_script CompText8740E90_unk127

	def_text_script CompText8740E90_unk128

	def_text_script CompText8740E90_unk129

	def_text_script CompText8740E90_unk130

	def_text_script CompText8740E90_unk131

	def_text_script CompText8740E90_unk132

	def_text_script CompText8740E90_unk133

	def_text_script CompText8740E90_unk134

	def_text_script CompText8740E90_unk135

	def_text_script CompText8740E90_unk136

	def_text_script CompText8740E90_unk137

	def_text_script CompText8740E90_unk138

	def_text_script CompText8740E90_unk139

	def_text_script CompText8740E90_unk140

	def_text_script CompText8740E90_unk141

	def_text_script CompText8740E90_unk142

	def_text_script CompText8740E90_unk143

	def_text_script CompText8740E90_unk144

	def_text_script CompText8740E90_unk145

	def_text_script CompText8740E90_unk146

	def_text_script CompText8740E90_unk147

	def_text_script CompText8740E90_unk148

	def_text_script CompText8740E90_unk149

	def_text_script CompText8740E90_unk150

	def_text_script CompText8740E90_unk151

	def_text_script CompText8740E90_unk152

	def_text_script CompText8740E90_unk153

	def_text_script CompText8740E90_unk154

	def_text_script CompText8740E90_unk155

	def_text_script CompText8740E90_unk156

	def_text_script CompText8740E90_unk157

	def_text_script CompText8740E90_unk158

	def_text_script CompText8740E90_unk159

	def_text_script CompText8740E90_unk160

	def_text_script CompText8740E90_unk161

	def_text_script CompText8740E90_unk162

	def_text_script CompText8740E90_unk163

	def_text_script CompText8740E90_unk164

	def_text_script CompText8740E90_unk165

	def_text_script CompText8740E90_unk166

	def_text_script CompText8740E90_unk167

	def_text_script CompText8740E90_unk168

	def_text_script CompText8740E90_unk169

	def_text_script CompText8740E90_unk170

	def_text_script CompText8740E90_unk171

	def_text_script CompText8740E90_unk172

	def_text_script CompText8740E90_unk173

	def_text_script CompText8740E90_unk174

	def_text_script CompText8740E90_unk175

	def_text_script CompText8740E90_unk176

	def_text_script CompText8740E90_unk177

	def_text_script CompText8740E90_unk178

	def_text_script CompText8740E90_unk179

	def_text_script CompText8740E90_unk180

	def_text_script CompText8740E90_unk181

	def_text_script CompText8740E90_unk182

	def_text_script CompText8740E90_unk183

	def_text_script CompText8740E90_unk184

	def_text_script CompText8740E90_unk185

	def_text_script CompText8740E90_unk186

	def_text_script CompText8740E90_unk187

	def_text_script CompText8740E90_unk188

	def_text_script CompText8740E90_unk189

	def_text_script CompText8740E90_unk190

	def_text_script CompText8740E90_unk191

	def_text_script CompText8740E90_unk192

	def_text_script CompText8740E90_unk193

	def_text_script CompText8740E90_unk194

	def_text_script CompText8740E90_unk195

	def_text_script CompText8740E90_unk196

	def_text_script CompText8740E90_unk197

	def_text_script CompText8740E90_unk198

	def_text_script CompText8740E90_unk199

	def_text_script CompText8740E90_unk200

	def_text_script CompText8740E90_unk201

	def_text_script CompText8740E90_unk202

	def_text_script CompText8740E90_unk203

	def_text_script CompText8740E90_unk204

	def_text_script CompText8740E90_unk205

	def_text_script CompText8740E90_unk206

	def_text_script CompText8740E90_unk207

	def_text_script CompText8740E90_unk208

	def_text_script CompText8740E90_unk209

	def_text_script CompText8740E90_unk210

	def_text_script CompText8740E90_unk211

	def_text_script CompText8740E90_unk212

	def_text_script CompText8740E90_unk213

	def_text_script CompText8740E90_unk214

	def_text_script CompText8740E90_unk215

	def_text_script CompText8740E90_unk216

	def_text_script CompText8740E90_unk217

	def_text_script CompText8740E90_unk218

	def_text_script CompText8740E90_unk219

	def_text_script CompText8740E90_unk220

	def_text_script CompText8740E90_unk221

	def_text_script CompText8740E90_unk222

	def_text_script CompText8740E90_unk223

	def_text_script CompText8740E90_unk224

	def_text_script CompText8740E90_unk225

	def_text_script CompText8740E90_unk226

	def_text_script CompText8740E90_unk227

	def_text_script CompText8740E90_unk228

	def_text_script CompText8740E90_unk229

	def_text_script CompText8740E90_unk230

	def_text_script CompText8740E90_unk231

	def_text_script CompText8740E90_unk232

	def_text_script CompText8740E90_unk233

	def_text_script CompText8740E90_unk234

	def_text_script CompText8740E90_unk235

	def_text_script CompText8740E90_unk236

	def_text_script CompText8740E90_unk237

	def_text_script CompText8740E90_unk238

	def_text_script CompText8740E90_unk239

	def_text_script CompText8740E90_unk240

	def_text_script CompText8740E90_unk241

	def_text_script CompText8740E90_unk242

	def_text_script CompText8740E90_unk243

	def_text_script CompText8740E90_unk244

	def_text_script CompText8740E90_unk245

	def_text_script CompText8740E90_unk246

	def_text_script CompText8740E90_unk247

	def_text_script CompText8740E90_unk248

	def_text_script CompText8740E90_unk249

	def_text_script CompText8740E90_unk250

	def_text_script CompText8740E90_unk251

	def_text_script CompText8740E90_unk252

	def_text_script CompText8740E90_unk253

	def_text_script CompText8740E90_unk254

	