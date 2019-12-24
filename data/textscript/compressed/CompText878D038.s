	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878D038::
	.word 0x8A700

	text_archive_start

	def_text_script CompText878D038_unk0
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "HI! WELCOME TO\n"
	.string "SEASIDEAREA3!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878D038_unk1
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Ahhh... I'm so\n"
	.string "confused..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Which panel am I\n"
	.string "supposed to ride...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878D038_unk2
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "You look suspicious!\n"
	.string "...Or maybe not..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878D038_unk3

	def_text_script CompText878D038_unk4

	def_text_script CompText878D038_unk5
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "A feeling of\n"
	.string "danger is in the\n"
	.string "air."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's worrying me...\n"
	.string "This area is safe...\n"
	.string "...Right?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878D038_unk6

	def_text_script CompText878D038_unk7

	def_text_script CompText878D038_unk8

	def_text_script CompText878D038_unk9

	def_text_script CompText878D038_unk10
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "No reaction..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878D038_unk11

	def_text_script CompText878D038_unk12

	def_text_script CompText878D038_unk13

	def_text_script CompText878D038_unk14

	def_text_script CompText878D038_unk15

	def_text_script CompText878D038_unk16

	def_text_script CompText878D038_unk17

	def_text_script CompText878D038_unk18

	def_text_script CompText878D038_unk19

	def_text_script CompText878D038_unk20

	def_text_script CompText878D038_unk21

	def_text_script CompText878D038_unk22

	def_text_script CompText878D038_unk23

	def_text_script CompText878D038_unk24

	def_text_script CompText878D038_unk25

	def_text_script CompText878D038_unk26

	def_text_script CompText878D038_unk27

	def_text_script CompText878D038_unk28

	def_text_script CompText878D038_unk29

	def_text_script CompText878D038_unk30

	def_text_script CompText878D038_unk31

	def_text_script CompText878D038_unk32

	def_text_script CompText878D038_unk33

	def_text_script CompText878D038_unk34

	def_text_script CompText878D038_unk35

	def_text_script CompText878D038_unk36

	def_text_script CompText878D038_unk37

	def_text_script CompText878D038_unk38

	def_text_script CompText878D038_unk39

	def_text_script CompText878D038_unk40

	def_text_script CompText878D038_unk41

	def_text_script CompText878D038_unk42

	def_text_script CompText878D038_unk43

	def_text_script CompText878D038_unk44

	def_text_script CompText878D038_unk45

	def_text_script CompText878D038_unk46

	def_text_script CompText878D038_unk47

	def_text_script CompText878D038_unk48

	def_text_script CompText878D038_unk49

	def_text_script CompText878D038_unk50
	ts_check_flag [
		flag: 0x7F5,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x34,
	]
	ts_check_flag [
		flag: 0x68B,
		jumpIfTrue: 0x33,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Are you looking\n"
	.string "for \"HealWatr\"?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you are,it's\n"
	.string "flowing from the\n"
	.string "giant faucet at"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the very back of\n"
	.string "this area..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But the Evil\n"
	.string "Spirits might\n"
	.string "interfere..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And I have nothing\n"
	.string "left... I can't\n"
	.string "fight back..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Will you...\n"
	.string "take care of the\n"
	.string "EvilSpirits...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Good... Take these\n"
	.string "and use them..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x35,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_mugshot_hide
	ts_player_animate_object animation=0x18
	ts_sound_play00 track=0x182
	ts_sound_enable_text_sfx
	.string "\"SoulWeapons\" have\n"
	.string "been installed\n"
	.string "inside HeatMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_call_reload_soul_weapons
	ts_flag_set flag=0x68B
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Take care of\n"
	.string "yourself..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878D038_unk51
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Reload the\n"
	.string "SoulWeapons?"
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
	ts_select 0x6, 0x80, 0x37, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Good luck..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878D038_unk52
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	ts_mugshot_animation animation=0x1
	.string "Take care..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878D038_unk53
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_mugshot_hide
	ts_player_animate_object animation=0x18
	ts_sound_play00 track=0x182
	ts_sound_enable_text_sfx
	.string "\"SoulWeapons\" have\n"
	.string "been installed\n"
	.string "inside SpoutMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_call_reload_soul_weapons
	ts_flag_set flag=0x68B
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Take care of\n"
	.string "yourself..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878D038_unk54

	def_text_script CompText878D038_unk55
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Reloading the Soul\n"
	.string "Weapons requires a\n"
	.string "bit of time..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "During that time,\n"
	.string "the EvilSpirits you\n"
	.string "have already taken"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "care of in this\n"
	.string "area may come back\n"
	.string "to haunt you..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Is that OK?"
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
	ts_select 0x6, 0x80, 0xFF, 0x38, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Good luck..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x746
	ts_end

	def_text_script CompText878D038_unk56
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Good luck..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878D038_unk57

	def_text_script CompText878D038_unk58

	def_text_script CompText878D038_unk59

	def_text_script CompText878D038_unk60
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "...The recent\n"
	.string "trouble even caused\n"
	.string "damage here..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I am usually here\n"
	.string "hanging out,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but luckily I wasn't\n"
	.string "here then..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I was really lucky..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878D038_unk61
	ts_mugshot_show mugshot=0x46
	ts_msg_open
	.string "That slide I just\n"
	.string "did... My form and\n"
	.string "speed were perfect!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hahaha!\n"
	.string "I even surprise\n"
	.string "myself sometimes!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878D038_unk62

	def_text_script CompText878D038_unk63

	def_text_script CompText878D038_unk64

	def_text_script CompText878D038_unk65
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "I love livin' on\n"
	.string "the edge..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But make a mistake\n"
	.string "here and *poof*...\n"
	.string "It's all over!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...How exciting!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878D038_unk66
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "I'm used to\n"
	.string "battling water\n"
	.string "viruses..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe I'll go check\n"
	.string "out Green Area..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They say there are\n"
	.string "lots of grass\n"
	.string "viruses there..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878D038_unk67

	def_text_script CompText878D038_unk68

	def_text_script CompText878D038_unk69

	def_text_script CompText878D038_unk70

	def_text_script CompText878D038_unk71

	def_text_script CompText878D038_unk72

	def_text_script CompText878D038_unk73

	def_text_script CompText878D038_unk74

	def_text_script CompText878D038_unk75

	def_text_script CompText878D038_unk76

	def_text_script CompText878D038_unk77

	def_text_script CompText878D038_unk78

	def_text_script CompText878D038_unk79

	def_text_script CompText878D038_unk80

	def_text_script CompText878D038_unk81

	def_text_script CompText878D038_unk82

	def_text_script CompText878D038_unk83

	def_text_script CompText878D038_unk84

	def_text_script CompText878D038_unk85

	def_text_script CompText878D038_unk86

	def_text_script CompText878D038_unk87

	def_text_script CompText878D038_unk88

	def_text_script CompText878D038_unk89

	def_text_script CompText878D038_unk90

	def_text_script CompText878D038_unk91

	def_text_script CompText878D038_unk92

	def_text_script CompText878D038_unk93

	def_text_script CompText878D038_unk94

	def_text_script CompText878D038_unk95

	def_text_script CompText878D038_unk96

	def_text_script CompText878D038_unk97

	def_text_script CompText878D038_unk98

	def_text_script CompText878D038_unk99

	def_text_script CompText878D038_unk100

	def_text_script CompText878D038_unk101

	def_text_script CompText878D038_unk102

	def_text_script CompText878D038_unk103

	def_text_script CompText878D038_unk104

	def_text_script CompText878D038_unk105

	def_text_script CompText878D038_unk106

	def_text_script CompText878D038_unk107

	def_text_script CompText878D038_unk108

	def_text_script CompText878D038_unk109

	def_text_script CompText878D038_unk110

	def_text_script CompText878D038_unk111

	def_text_script CompText878D038_unk112

	def_text_script CompText878D038_unk113

	def_text_script CompText878D038_unk114

	def_text_script CompText878D038_unk115

	def_text_script CompText878D038_unk116

	def_text_script CompText878D038_unk117

	def_text_script CompText878D038_unk118

	def_text_script CompText878D038_unk119

	def_text_script CompText878D038_unk120

	def_text_script CompText878D038_unk121

	def_text_script CompText878D038_unk122

	def_text_script CompText878D038_unk123

	def_text_script CompText878D038_unk124

	def_text_script CompText878D038_unk125

	def_text_script CompText878D038_unk126

	def_text_script CompText878D038_unk127

	def_text_script CompText878D038_unk128

	def_text_script CompText878D038_unk129

	def_text_script CompText878D038_unk130

	def_text_script CompText878D038_unk131

	def_text_script CompText878D038_unk132

	def_text_script CompText878D038_unk133

	def_text_script CompText878D038_unk134

	def_text_script CompText878D038_unk135

	def_text_script CompText878D038_unk136

	def_text_script CompText878D038_unk137

	def_text_script CompText878D038_unk138

	def_text_script CompText878D038_unk139

	def_text_script CompText878D038_unk140

	def_text_script CompText878D038_unk141

	def_text_script CompText878D038_unk142

	def_text_script CompText878D038_unk143

	def_text_script CompText878D038_unk144

	def_text_script CompText878D038_unk145

	def_text_script CompText878D038_unk146

	def_text_script CompText878D038_unk147

	def_text_script CompText878D038_unk148

	def_text_script CompText878D038_unk149

	def_text_script CompText878D038_unk150

	def_text_script CompText878D038_unk151

	def_text_script CompText878D038_unk152

	def_text_script CompText878D038_unk153

	def_text_script CompText878D038_unk154

	def_text_script CompText878D038_unk155

	def_text_script CompText878D038_unk156

	def_text_script CompText878D038_unk157

	def_text_script CompText878D038_unk158

	def_text_script CompText878D038_unk159

	def_text_script CompText878D038_unk160

	def_text_script CompText878D038_unk161

	def_text_script CompText878D038_unk162

	def_text_script CompText878D038_unk163

	def_text_script CompText878D038_unk164

	def_text_script CompText878D038_unk165

	def_text_script CompText878D038_unk166

	def_text_script CompText878D038_unk167

	def_text_script CompText878D038_unk168

	def_text_script CompText878D038_unk169

	def_text_script CompText878D038_unk170

	def_text_script CompText878D038_unk171

	def_text_script CompText878D038_unk172

	def_text_script CompText878D038_unk173

	def_text_script CompText878D038_unk174

	def_text_script CompText878D038_unk175

	def_text_script CompText878D038_unk176

	def_text_script CompText878D038_unk177

	def_text_script CompText878D038_unk178

	def_text_script CompText878D038_unk179

	def_text_script CompText878D038_unk180

	def_text_script CompText878D038_unk181

	def_text_script CompText878D038_unk182

	def_text_script CompText878D038_unk183

	def_text_script CompText878D038_unk184

	def_text_script CompText878D038_unk185

	def_text_script CompText878D038_unk186

	def_text_script CompText878D038_unk187

	def_text_script CompText878D038_unk188

	def_text_script CompText878D038_unk189

	def_text_script CompText878D038_unk190

	def_text_script CompText878D038_unk191

	def_text_script CompText878D038_unk192

	def_text_script CompText878D038_unk193

	def_text_script CompText878D038_unk194

	def_text_script CompText878D038_unk195

	def_text_script CompText878D038_unk196

	def_text_script CompText878D038_unk197

	def_text_script CompText878D038_unk198

	def_text_script CompText878D038_unk199

	def_text_script CompText878D038_unk200

	def_text_script CompText878D038_unk201

	def_text_script CompText878D038_unk202

	def_text_script CompText878D038_unk203

	def_text_script CompText878D038_unk204

	def_text_script CompText878D038_unk205

	def_text_script CompText878D038_unk206

	def_text_script CompText878D038_unk207

	def_text_script CompText878D038_unk208

	def_text_script CompText878D038_unk209

	def_text_script CompText878D038_unk210

	def_text_script CompText878D038_unk211

	def_text_script CompText878D038_unk212

	def_text_script CompText878D038_unk213

	def_text_script CompText878D038_unk214

	def_text_script CompText878D038_unk215

	def_text_script CompText878D038_unk216

	def_text_script CompText878D038_unk217

	def_text_script CompText878D038_unk218

	def_text_script CompText878D038_unk219

	def_text_script CompText878D038_unk220

	def_text_script CompText878D038_unk221

	def_text_script CompText878D038_unk222

	def_text_script CompText878D038_unk223

	def_text_script CompText878D038_unk224

	def_text_script CompText878D038_unk225

	def_text_script CompText878D038_unk226

	def_text_script CompText878D038_unk227

	def_text_script CompText878D038_unk228

	def_text_script CompText878D038_unk229

	def_text_script CompText878D038_unk230

	def_text_script CompText878D038_unk231

	def_text_script CompText878D038_unk232

	def_text_script CompText878D038_unk233

	def_text_script CompText878D038_unk234

	def_text_script CompText878D038_unk235

	def_text_script CompText878D038_unk236

	def_text_script CompText878D038_unk237

	def_text_script CompText878D038_unk238

	def_text_script CompText878D038_unk239

	def_text_script CompText878D038_unk240

	def_text_script CompText878D038_unk241

	def_text_script CompText878D038_unk242

	def_text_script CompText878D038_unk243

	def_text_script CompText878D038_unk244

	def_text_script CompText878D038_unk245

	def_text_script CompText878D038_unk246

	def_text_script CompText878D038_unk247

	def_text_script CompText878D038_unk248

	def_text_script CompText878D038_unk249

	def_text_script CompText878D038_unk250

	def_text_script CompText878D038_unk251

	def_text_script CompText878D038_unk252

	def_text_script CompText878D038_unk253

	def_text_script CompText878D038_unk254

	