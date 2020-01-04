	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878B690::
	.word 0x94600

	text_archive_start

	def_text_script CompText878B690_unk0
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WELCOME TO\n"
	.string "SEASIDEAREA2!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "GO HAVE A LOOK\n"
	.string "AROUND!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878B690_unk1
	ts_mugshot_show mugshot=0x46
	ts_msg_open
	.string "This is a great\n"
	.string "area..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x41
	.string "Just listen...\n"
	.string "You can hear the\n"
	.string "waves!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x46
	.string "No way!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878B690_unk2
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "This is a really\n"
	.string "dynamic area don't\n"
	.string "you think?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A perfect place\n"
	.string "for our first date!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x46
	.string "It's like a dream..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878B690_unk3
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I've been so busy\n"
	.string "with patrols,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "looking at those two\n"
	.string "on a date,I couldn't\n"
	.string "be more jealous!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's so unfair..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878B690_unk4

	def_text_script CompText878B690_unk5
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I heard that\n"
	.string "CentralArea is\n"
	.string "in serious trouble!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I bet this area\n"
	.string "is dangerous too...!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878B690_unk6

	def_text_script CompText878B690_unk7

	def_text_script CompText878B690_unk8

	def_text_script CompText878B690_unk9

	def_text_script CompText878B690_unk10
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "What in the...\n"
	.string "Who is that clown\n"
	.string "looking Navi..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878B690_unk11

	def_text_script CompText878B690_unk12

	def_text_script CompText878B690_unk13

	def_text_script CompText878B690_unk14

	def_text_script CompText878B690_unk15

	def_text_script CompText878B690_unk16

	def_text_script CompText878B690_unk17

	def_text_script CompText878B690_unk18

	def_text_script CompText878B690_unk19

	def_text_script CompText878B690_unk20

	def_text_script CompText878B690_unk21

	def_text_script CompText878B690_unk22

	def_text_script CompText878B690_unk23

	def_text_script CompText878B690_unk24

	def_text_script CompText878B690_unk25

	def_text_script CompText878B690_unk26

	def_text_script CompText878B690_unk27

	def_text_script CompText878B690_unk28

	def_text_script CompText878B690_unk29

	def_text_script CompText878B690_unk30

	def_text_script CompText878B690_unk31

	def_text_script CompText878B690_unk32

	def_text_script CompText878B690_unk33

	def_text_script CompText878B690_unk34

	def_text_script CompText878B690_unk35

	def_text_script CompText878B690_unk36

	def_text_script CompText878B690_unk37

	def_text_script CompText878B690_unk38

	def_text_script CompText878B690_unk39

	def_text_script CompText878B690_unk40

	def_text_script CompText878B690_unk41

	def_text_script CompText878B690_unk42

	def_text_script CompText878B690_unk43

	def_text_script CompText878B690_unk44

	def_text_script CompText878B690_unk45

	def_text_script CompText878B690_unk46

	def_text_script CompText878B690_unk47

	def_text_script CompText878B690_unk48

	def_text_script CompText878B690_unk49

	def_text_script CompText878B690_unk50
	ts_check_flag [
		flag: 0x7F4,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText878B690_unk52_id,
	]
	ts_check_flag [
		flag: 0x68A,
		jumpIfTrue: CompText878B690_unk51_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "H-Here...\n"
	.string "Take these..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText878B690_unk53_id,
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
	ts_call_reload_soul_weapons unused=0x0
	ts_flag_set flag=0x68A
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Get rid...\n"
	.string "of the...\n"
	.string "EvilSpirits..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878B690_unk51
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

	def_text_script CompText878B690_unk52
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	ts_mugshot_animation animation=0x1
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "No response...\n"
	.string "It seems he passed\n"
	.string "out..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878B690_unk53
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
	ts_call_reload_soul_weapons unused=0x0
	ts_flag_set flag=0x68A
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Get rid...\n"
	.string "of the...\n"
	.string "EvilSpirits..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878B690_unk54

	def_text_script CompText878B690_unk55
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

	def_text_script CompText878B690_unk56
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Take care..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878B690_unk57

	def_text_script CompText878B690_unk58

	def_text_script CompText878B690_unk59

	def_text_script CompText878B690_unk60
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "Show me how much of\n"
	.string "a man you are!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x41
	.string "No problem! Check\n"
	.string "out this cool\n"
	.string "slide!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "(WHEEEEEEE!!)"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878B690_unk61
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THE RIOT ON THE\n"
	.string "INTERNET WAS\n"
	.string "NOTHING TO ME!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "SEASIDEAREA2\n"
	.string "ALWAYS HAS A BRIGHT\n"
	.string "ATMOSPHERE!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "NO MATTER WHAT!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878B690_unk62

	def_text_script CompText878B690_unk63

	def_text_script CompText878B690_unk64

	def_text_script CompText878B690_unk65
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "I'm gonna be \n"
	.string "number 1 the second\n"
	.string "round for sure!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Woohoo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878B690_unk66
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "I'm in a special\n"
	.string "training course to"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "win the 2nd Operator\n"
	.string "Navi Selection Test.\n"
	.string "Hiiiiyaaaah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878B690_unk67
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THIS AREA IS\n"
	.string "JUST LIKE THE SEA..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "COUPLES COME HERE\n"
	.string "ON DATES,AND THERE'S\n"
	.string "LOTS OF NAVIS TOO."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'M HAPPY YOU'RE\n"
	.string "HERE BUT THROWING"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "AWAY THE TRASH IS\n"
	.string "A REALLY TOUGH JOB!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "DON'T BE A MEAN\n"
	.string "CRITTER! REMEMBER\n"
	.string "NOT TO LITTER!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878B690_unk68

	def_text_script CompText878B690_unk69

	def_text_script CompText878B690_unk70

	def_text_script CompText878B690_unk71

	def_text_script CompText878B690_unk72

	def_text_script CompText878B690_unk73

	def_text_script CompText878B690_unk74

	def_text_script CompText878B690_unk75

	def_text_script CompText878B690_unk76

	def_text_script CompText878B690_unk77

	def_text_script CompText878B690_unk78

	def_text_script CompText878B690_unk79

	def_text_script CompText878B690_unk80

	def_text_script CompText878B690_unk81

	def_text_script CompText878B690_unk82

	def_text_script CompText878B690_unk83

	def_text_script CompText878B690_unk84

	def_text_script CompText878B690_unk85

	def_text_script CompText878B690_unk86

	def_text_script CompText878B690_unk87

	def_text_script CompText878B690_unk88

	def_text_script CompText878B690_unk89

	def_text_script CompText878B690_unk90

	def_text_script CompText878B690_unk91

	def_text_script CompText878B690_unk92

	def_text_script CompText878B690_unk93

	def_text_script CompText878B690_unk94

	def_text_script CompText878B690_unk95

	def_text_script CompText878B690_unk96

	def_text_script CompText878B690_unk97

	def_text_script CompText878B690_unk98

	def_text_script CompText878B690_unk99

	def_text_script CompText878B690_unk100

	def_text_script CompText878B690_unk101

	def_text_script CompText878B690_unk102

	def_text_script CompText878B690_unk103

	def_text_script CompText878B690_unk104

	def_text_script CompText878B690_unk105

	def_text_script CompText878B690_unk106

	def_text_script CompText878B690_unk107

	def_text_script CompText878B690_unk108

	def_text_script CompText878B690_unk109

	def_text_script CompText878B690_unk110

	def_text_script CompText878B690_unk111

	def_text_script CompText878B690_unk112

	def_text_script CompText878B690_unk113

	def_text_script CompText878B690_unk114

	def_text_script CompText878B690_unk115

	def_text_script CompText878B690_unk116

	def_text_script CompText878B690_unk117

	def_text_script CompText878B690_unk118

	def_text_script CompText878B690_unk119

	def_text_script CompText878B690_unk120

	def_text_script CompText878B690_unk121

	def_text_script CompText878B690_unk122

	def_text_script CompText878B690_unk123

	def_text_script CompText878B690_unk124

	def_text_script CompText878B690_unk125

	def_text_script CompText878B690_unk126

	def_text_script CompText878B690_unk127

	def_text_script CompText878B690_unk128

	def_text_script CompText878B690_unk129

	def_text_script CompText878B690_unk130

	def_text_script CompText878B690_unk131

	def_text_script CompText878B690_unk132

	def_text_script CompText878B690_unk133

	def_text_script CompText878B690_unk134

	def_text_script CompText878B690_unk135

	def_text_script CompText878B690_unk136

	def_text_script CompText878B690_unk137

	def_text_script CompText878B690_unk138

	def_text_script CompText878B690_unk139

	def_text_script CompText878B690_unk140

	def_text_script CompText878B690_unk141

	def_text_script CompText878B690_unk142

	def_text_script CompText878B690_unk143

	def_text_script CompText878B690_unk144

	def_text_script CompText878B690_unk145

	def_text_script CompText878B690_unk146

	def_text_script CompText878B690_unk147

	def_text_script CompText878B690_unk148

	def_text_script CompText878B690_unk149

	def_text_script CompText878B690_unk150

	def_text_script CompText878B690_unk151

	def_text_script CompText878B690_unk152

	def_text_script CompText878B690_unk153

	def_text_script CompText878B690_unk154

	def_text_script CompText878B690_unk155

	def_text_script CompText878B690_unk156

	def_text_script CompText878B690_unk157

	def_text_script CompText878B690_unk158

	def_text_script CompText878B690_unk159

	def_text_script CompText878B690_unk160

	def_text_script CompText878B690_unk161

	def_text_script CompText878B690_unk162

	def_text_script CompText878B690_unk163

	def_text_script CompText878B690_unk164

	def_text_script CompText878B690_unk165

	def_text_script CompText878B690_unk166

	def_text_script CompText878B690_unk167

	def_text_script CompText878B690_unk168

	def_text_script CompText878B690_unk169

	def_text_script CompText878B690_unk170

	def_text_script CompText878B690_unk171

	def_text_script CompText878B690_unk172

	def_text_script CompText878B690_unk173

	def_text_script CompText878B690_unk174

	def_text_script CompText878B690_unk175

	def_text_script CompText878B690_unk176

	def_text_script CompText878B690_unk177

	def_text_script CompText878B690_unk178

	def_text_script CompText878B690_unk179

	def_text_script CompText878B690_unk180

	def_text_script CompText878B690_unk181

	def_text_script CompText878B690_unk182

	def_text_script CompText878B690_unk183

	def_text_script CompText878B690_unk184

	def_text_script CompText878B690_unk185

	def_text_script CompText878B690_unk186

	def_text_script CompText878B690_unk187

	def_text_script CompText878B690_unk188

	def_text_script CompText878B690_unk189

	def_text_script CompText878B690_unk190

	def_text_script CompText878B690_unk191

	def_text_script CompText878B690_unk192

	def_text_script CompText878B690_unk193

	def_text_script CompText878B690_unk194

	def_text_script CompText878B690_unk195

	def_text_script CompText878B690_unk196

	def_text_script CompText878B690_unk197

	def_text_script CompText878B690_unk198

	def_text_script CompText878B690_unk199

	def_text_script CompText878B690_unk200

	def_text_script CompText878B690_unk201

	def_text_script CompText878B690_unk202

	def_text_script CompText878B690_unk203

	def_text_script CompText878B690_unk204

	def_text_script CompText878B690_unk205

	def_text_script CompText878B690_unk206

	def_text_script CompText878B690_unk207

	def_text_script CompText878B690_unk208

	def_text_script CompText878B690_unk209

	def_text_script CompText878B690_unk210

	def_text_script CompText878B690_unk211

	def_text_script CompText878B690_unk212

	def_text_script CompText878B690_unk213

	def_text_script CompText878B690_unk214

	def_text_script CompText878B690_unk215

	def_text_script CompText878B690_unk216

	def_text_script CompText878B690_unk217

	def_text_script CompText878B690_unk218

	def_text_script CompText878B690_unk219

	def_text_script CompText878B690_unk220

	def_text_script CompText878B690_unk221

	def_text_script CompText878B690_unk222

	def_text_script CompText878B690_unk223

	def_text_script CompText878B690_unk224

	def_text_script CompText878B690_unk225

	def_text_script CompText878B690_unk226

	def_text_script CompText878B690_unk227

	def_text_script CompText878B690_unk228

	def_text_script CompText878B690_unk229

	def_text_script CompText878B690_unk230

	def_text_script CompText878B690_unk231

	def_text_script CompText878B690_unk232

	def_text_script CompText878B690_unk233

	def_text_script CompText878B690_unk234

	def_text_script CompText878B690_unk235

	def_text_script CompText878B690_unk236

	def_text_script CompText878B690_unk237

	def_text_script CompText878B690_unk238

	def_text_script CompText878B690_unk239

	def_text_script CompText878B690_unk240

	def_text_script CompText878B690_unk241

	def_text_script CompText878B690_unk242

	def_text_script CompText878B690_unk243

	def_text_script CompText878B690_unk244

	def_text_script CompText878B690_unk245

	def_text_script CompText878B690_unk246

	def_text_script CompText878B690_unk247

	def_text_script CompText878B690_unk248

	def_text_script CompText878B690_unk249

	def_text_script CompText878B690_unk250

	def_text_script CompText878B690_unk251

	def_text_script CompText878B690_unk252

	def_text_script CompText878B690_unk253

	def_text_script CompText878B690_unk254

	