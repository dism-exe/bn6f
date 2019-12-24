	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87428D4::
	.word 0x82B00

	text_archive_start

	def_text_script CompText87428D4_unk0
	ts_check_chapter [
		lower: 0x15,
		upper: 0x16,
		jumpIfInRange: 0x5F,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x14,
		upper: 0x14,
		jumpIfInRange: 0x50,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x12,
		upper: 0x13,
		jumpIfInRange: 0x41,
		jumpIfOutOfRange: 0xFF,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Go back to operating\n"
	.string "me,Lan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x2, 0xFF
	ts_flag_set flag=0x5E6
	ts_end

	def_text_script CompText87428D4_unk2
	ts_end

	def_text_script CompText87428D4_unk3

	def_text_script CompText87428D4_unk4

	def_text_script CompText87428D4_unk5

	def_text_script CompText87428D4_unk6

	def_text_script CompText87428D4_unk7

	def_text_script CompText87428D4_unk8

	def_text_script CompText87428D4_unk9

	def_text_script CompText87428D4_unk10

	def_text_script CompText87428D4_unk11

	def_text_script CompText87428D4_unk12

	def_text_script CompText87428D4_unk13

	def_text_script CompText87428D4_unk14

	def_text_script CompText87428D4_unk15

	def_text_script CompText87428D4_unk16

	def_text_script CompText87428D4_unk17

	def_text_script CompText87428D4_unk18

	def_text_script CompText87428D4_unk19

	def_text_script CompText87428D4_unk20

	def_text_script CompText87428D4_unk21

	def_text_script CompText87428D4_unk22

	def_text_script CompText87428D4_unk23

	def_text_script CompText87428D4_unk24

	def_text_script CompText87428D4_unk25

	def_text_script CompText87428D4_unk26

	def_text_script CompText87428D4_unk27

	def_text_script CompText87428D4_unk28

	def_text_script CompText87428D4_unk29

	def_text_script CompText87428D4_unk30

	def_text_script CompText87428D4_unk31

	def_text_script CompText87428D4_unk32

	def_text_script CompText87428D4_unk33

	def_text_script CompText87428D4_unk34

	def_text_script CompText87428D4_unk35

	def_text_script CompText87428D4_unk36

	def_text_script CompText87428D4_unk37

	def_text_script CompText87428D4_unk38

	def_text_script CompText87428D4_unk39

	def_text_script CompText87428D4_unk40

	def_text_script CompText87428D4_unk41

	def_text_script CompText87428D4_unk42

	def_text_script CompText87428D4_unk43

	def_text_script CompText87428D4_unk44

	def_text_script CompText87428D4_unk45

	def_text_script CompText87428D4_unk46

	def_text_script CompText87428D4_unk47

	def_text_script CompText87428D4_unk48

	def_text_script CompText87428D4_unk49

	def_text_script CompText87428D4_unk50

	def_text_script CompText87428D4_unk51

	def_text_script CompText87428D4_unk52

	def_text_script CompText87428D4_unk53

	def_text_script CompText87428D4_unk54

	def_text_script CompText87428D4_unk55

	def_text_script CompText87428D4_unk56

	def_text_script CompText87428D4_unk57

	def_text_script CompText87428D4_unk58

	def_text_script CompText87428D4_unk59

	def_text_script CompText87428D4_unk60

	def_text_script CompText87428D4_unk61

	def_text_script CompText87428D4_unk62

	def_text_script CompText87428D4_unk63

	def_text_script CompText87428D4_unk64

	def_text_script CompText87428D4_unk65
	ts_check_flag [
		flag: 0x516,
		jumpIfTrue: 0x49,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x554,
		jumpIfTrue: 0x48,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x514,
		jumpIfTrue: 0x47,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x544,
		jumpIfTrue: 0x46,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x512,
		jumpIfTrue: 0x45,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x510,
		jumpIfTrue: 0x44,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x50E,
		jumpIfTrue: 0x43,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x543,
		jumpIfTrue: 0x42,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's go tell Mick\n"
	.string "about the penguin!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk66
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's wait for Mick\n"
	.string "in front of the\n"
	.string "LevBus station!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk67
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's go to the\n"
	.string "Aquarium,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk68
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's go home and\n"
	.string "hit the sack,OK,Lan?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk69
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We said we'd meet\n"
	.string "in front of the\n"
	.string "Aquarium,so"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "let's head on out\n"
	.string "there!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk70
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's go inside,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk71
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's take a look\n"
	.string "around,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk72
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "The show's about to\n"
	.string "start! Let's go or\n"
	.string "we'll miss it!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk73
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "If Mick feels that\n"
	.string "way,we should just\n"
	.string "go home for today..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk74

	def_text_script CompText87428D4_unk75

	def_text_script CompText87428D4_unk76

	def_text_script CompText87428D4_unk77

	def_text_script CompText87428D4_unk78

	def_text_script CompText87428D4_unk79

	def_text_script CompText87428D4_unk80
	ts_check_flag [
		flag: 0x52A,
		jumpIfTrue: 0x57,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x528,
		jumpIfTrue: 0x51,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x526,
		jumpIfTrue: 0x56,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1729,
		jumpIfTrue: 0x58,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x524,
		jumpIfTrue: 0x55,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x522,
		jumpIfTrue: 0x54,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x51E,
		jumpIfTrue: 0x53,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x555,
		jumpIfTrue: 0x52,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x51C,
		jumpIfTrue: 0x51,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan! We've gotta go\n"
	.string "after Mick,quick!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk81
	ts_check_sub_area [
		lower: 0x4,
		upper: 0x4,
		jumpIfInRange: 0x5A,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We've gotta get to\n"
	.string "the control room\n"
	.string "fast!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Normalizing the main\n"
	.string "computer is the only\n"
	.string "way to save Mick!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk82
	ts_check_sub_area [
		lower: 0x3,
		upper: 0x3,
		jumpIfInRange: 0xFF,
		jumpIfOutOfRange: 0x59,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,we've gotta find\n"
	.string "Fanny's play ball!\n"
	.string "They just used it"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "for the show,so it's\n"
	.string "gotta be around here\n"
	.string "somewhere!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk83
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "There must be some-\n"
	.string "thing we can use so\n"
	.string "we don't get stung!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk84
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I wonder what that\n"
	.string "mysterious girl was\n"
	.string "trying to tell us?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk85
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan! Transfer me\n"
	.string "into that CopyBot!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk86
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Use that ball to get\n"
	.string "Fanny to move out of\n"
	.string "our way,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk87
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_check_flag [
		flag: 0x5DF,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x1,
	]
	.string "Jack me in,Lan!\n"
	.string "Hurry! We've gotta\n"
	.string "save the Aquarium!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk88
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We've gotta hurry up\n"
	.string "and get the ball\n"
	.string "that's in the tank!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk89
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan! We've gotta\n"
	.string "find Fanny's play\n"
	.string "ball fast!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They used it in the\n"
	.string "show,so maybe it's\n"
	.string "near the stage...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk90
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Hurry,Lan! Find the\n"
	.string "main computer!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk91

	def_text_script CompText87428D4_unk92

	def_text_script CompText87428D4_unk93

	def_text_script CompText87428D4_unk94

	def_text_script CompText87428D4_unk95
	ts_check_flag [
		flag: 0x538,
		jumpIfTrue: 0x60,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's hurry to where\n"
	.string "Mick and the others\n"
	.string "are,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk96
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's call it a\n"
	.string "day,Lan."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87428D4_unk97

	def_text_script CompText87428D4_unk98

	def_text_script CompText87428D4_unk99

	def_text_script CompText87428D4_unk100

	def_text_script CompText87428D4_unk101

	def_text_script CompText87428D4_unk102

	def_text_script CompText87428D4_unk103

	def_text_script CompText87428D4_unk104

	def_text_script CompText87428D4_unk105

	def_text_script CompText87428D4_unk106

	def_text_script CompText87428D4_unk107

	def_text_script CompText87428D4_unk108

	def_text_script CompText87428D4_unk109

	def_text_script CompText87428D4_unk110

	def_text_script CompText87428D4_unk111

	def_text_script CompText87428D4_unk112

	def_text_script CompText87428D4_unk113

	def_text_script CompText87428D4_unk114

	def_text_script CompText87428D4_unk115

	def_text_script CompText87428D4_unk116

	def_text_script CompText87428D4_unk117

	def_text_script CompText87428D4_unk118

	def_text_script CompText87428D4_unk119

	def_text_script CompText87428D4_unk120

	def_text_script CompText87428D4_unk121

	def_text_script CompText87428D4_unk122

	def_text_script CompText87428D4_unk123

	def_text_script CompText87428D4_unk124

	def_text_script CompText87428D4_unk125

	def_text_script CompText87428D4_unk126

	def_text_script CompText87428D4_unk127

	def_text_script CompText87428D4_unk128

	def_text_script CompText87428D4_unk129

	def_text_script CompText87428D4_unk130

	def_text_script CompText87428D4_unk131

	def_text_script CompText87428D4_unk132

	def_text_script CompText87428D4_unk133

	def_text_script CompText87428D4_unk134

	def_text_script CompText87428D4_unk135

	def_text_script CompText87428D4_unk136

	def_text_script CompText87428D4_unk137

	def_text_script CompText87428D4_unk138

	def_text_script CompText87428D4_unk139

	def_text_script CompText87428D4_unk140

	def_text_script CompText87428D4_unk141

	def_text_script CompText87428D4_unk142

	def_text_script CompText87428D4_unk143

	def_text_script CompText87428D4_unk144

	def_text_script CompText87428D4_unk145

	def_text_script CompText87428D4_unk146

	def_text_script CompText87428D4_unk147

	def_text_script CompText87428D4_unk148

	def_text_script CompText87428D4_unk149

	def_text_script CompText87428D4_unk150

	def_text_script CompText87428D4_unk151

	def_text_script CompText87428D4_unk152

	def_text_script CompText87428D4_unk153

	def_text_script CompText87428D4_unk154

	def_text_script CompText87428D4_unk155

	def_text_script CompText87428D4_unk156

	def_text_script CompText87428D4_unk157

	def_text_script CompText87428D4_unk158

	def_text_script CompText87428D4_unk159

	def_text_script CompText87428D4_unk160

	def_text_script CompText87428D4_unk161

	def_text_script CompText87428D4_unk162

	def_text_script CompText87428D4_unk163

	def_text_script CompText87428D4_unk164

	def_text_script CompText87428D4_unk165

	def_text_script CompText87428D4_unk166

	def_text_script CompText87428D4_unk167

	def_text_script CompText87428D4_unk168

	def_text_script CompText87428D4_unk169

	def_text_script CompText87428D4_unk170

	def_text_script CompText87428D4_unk171

	def_text_script CompText87428D4_unk172

	def_text_script CompText87428D4_unk173

	def_text_script CompText87428D4_unk174

	def_text_script CompText87428D4_unk175

	def_text_script CompText87428D4_unk176

	def_text_script CompText87428D4_unk177

	def_text_script CompText87428D4_unk178

	def_text_script CompText87428D4_unk179

	def_text_script CompText87428D4_unk180

	def_text_script CompText87428D4_unk181

	def_text_script CompText87428D4_unk182

	def_text_script CompText87428D4_unk183

	def_text_script CompText87428D4_unk184

	def_text_script CompText87428D4_unk185

	def_text_script CompText87428D4_unk186

	def_text_script CompText87428D4_unk187

	def_text_script CompText87428D4_unk188

	def_text_script CompText87428D4_unk189

	def_text_script CompText87428D4_unk190

	def_text_script CompText87428D4_unk191

	def_text_script CompText87428D4_unk192

	def_text_script CompText87428D4_unk193

	def_text_script CompText87428D4_unk194

	def_text_script CompText87428D4_unk195

	def_text_script CompText87428D4_unk196

	def_text_script CompText87428D4_unk197

	def_text_script CompText87428D4_unk198

	def_text_script CompText87428D4_unk199

	def_text_script CompText87428D4_unk200

	def_text_script CompText87428D4_unk201

	def_text_script CompText87428D4_unk202

	def_text_script CompText87428D4_unk203

	def_text_script CompText87428D4_unk204

	def_text_script CompText87428D4_unk205

	def_text_script CompText87428D4_unk206

	def_text_script CompText87428D4_unk207

	def_text_script CompText87428D4_unk208

	def_text_script CompText87428D4_unk209

	def_text_script CompText87428D4_unk210

	def_text_script CompText87428D4_unk211

	def_text_script CompText87428D4_unk212

	def_text_script CompText87428D4_unk213

	def_text_script CompText87428D4_unk214

	def_text_script CompText87428D4_unk215

	def_text_script CompText87428D4_unk216

	def_text_script CompText87428D4_unk217

	def_text_script CompText87428D4_unk218

	def_text_script CompText87428D4_unk219

	def_text_script CompText87428D4_unk220

	def_text_script CompText87428D4_unk221

	def_text_script CompText87428D4_unk222

	def_text_script CompText87428D4_unk223

	def_text_script CompText87428D4_unk224

	def_text_script CompText87428D4_unk225

	def_text_script CompText87428D4_unk226

	def_text_script CompText87428D4_unk227

	def_text_script CompText87428D4_unk228

	def_text_script CompText87428D4_unk229

	def_text_script CompText87428D4_unk230

	def_text_script CompText87428D4_unk231

	def_text_script CompText87428D4_unk232

	def_text_script CompText87428D4_unk233

	def_text_script CompText87428D4_unk234

	def_text_script CompText87428D4_unk235

	def_text_script CompText87428D4_unk236

	def_text_script CompText87428D4_unk237

	def_text_script CompText87428D4_unk238

	def_text_script CompText87428D4_unk239

	def_text_script CompText87428D4_unk240

	def_text_script CompText87428D4_unk241

	def_text_script CompText87428D4_unk242

	def_text_script CompText87428D4_unk243

	def_text_script CompText87428D4_unk244

	def_text_script CompText87428D4_unk245

	def_text_script CompText87428D4_unk246

	def_text_script CompText87428D4_unk247

	def_text_script CompText87428D4_unk248

	def_text_script CompText87428D4_unk249

	def_text_script CompText87428D4_unk250

	def_text_script CompText87428D4_unk251

	def_text_script CompText87428D4_unk252

	def_text_script CompText87428D4_unk253

	def_text_script CompText87428D4_unk254

	