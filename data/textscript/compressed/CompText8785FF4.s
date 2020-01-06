	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8785FF4::
	.word 0xAF900

	text_archive_start

	def_text_script CompText8785FF4_unk0
	ts_check_chapter [
		lower: 0x22,
		upper: 0x22,
		jumpIfInRange: CompText8785FF4_unk24_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText8785FF4_unk5_id,
	]
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "It's really hot\n"
	.string "today... Huh?\n"
	.string "It's your fault!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk1
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "Well,I'm done\n"
	.string "shopping... Now what\n"
	.string "should I do?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk2
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "HELLO! WELCOME TO\n"
	.string "ANOTHER PEACEFUL DAY\n"
	.string "IN CENTRALAREA2!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk3

	def_text_script CompText8785FF4_unk4

	def_text_script CompText8785FF4_unk5
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Hmmm... I'm really\n"
	.string "thirsty..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...*gulp*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk6

	def_text_script CompText8785FF4_unk7

	def_text_script CompText8785FF4_unk8

	def_text_script CompText8785FF4_unk9

	def_text_script CompText8785FF4_unk10

	def_text_script CompText8785FF4_unk11

	def_text_script CompText8785FF4_unk12

	def_text_script CompText8785FF4_unk13

	def_text_script CompText8785FF4_unk14

	def_text_script CompText8785FF4_unk15

	def_text_script CompText8785FF4_unk16

	def_text_script CompText8785FF4_unk17

	def_text_script CompText8785FF4_unk18

	def_text_script CompText8785FF4_unk19

	def_text_script CompText8785FF4_unk20
	ts_check_flag [
		flag: 0x638,
		jumpIfTrue: CompText8785FF4_unk22_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x638
	ts_msg_open
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "There's a Kettle!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Start the battle!?"
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
	ts_select 0x6, 0x80, 0x15, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x47
	.string "Hurry up and let\n"
	.string "me fry him..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk21
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Fire it up!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x63C
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText8785FF4_unk22
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "It's a Kettle...\n"
	.string "Time to light the\n"
	.string "candle and fight!?"
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
	ts_select 0x6, 0x80, 0x15, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x47
	.string "HUH! C'mon and let\n"
	.string "me smoke this guy!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk23

	def_text_script CompText8785FF4_unk24
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "There's some kind\n"
	.string "of fun event\n"
	.string "tomorrow,huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can't miss fun\n"
	.string "events! Especially\n"
	.string "if they are free!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk25
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "You!\n"
	.string "You've got to jack\n"
	.string "out now!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk26

	def_text_script CompText8785FF4_unk27

	def_text_script CompText8785FF4_unk28

	def_text_script CompText8785FF4_unk29

	def_text_script CompText8785FF4_unk30
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Unnggghhh..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk31

	def_text_script CompText8785FF4_unk32

	def_text_script CompText8785FF4_unk33

	def_text_script CompText8785FF4_unk34

	def_text_script CompText8785FF4_unk35

	def_text_script CompText8785FF4_unk36

	def_text_script CompText8785FF4_unk37

	def_text_script CompText8785FF4_unk38

	def_text_script CompText8785FF4_unk39

	def_text_script CompText8785FF4_unk40

	def_text_script CompText8785FF4_unk41

	def_text_script CompText8785FF4_unk42

	def_text_script CompText8785FF4_unk43

	def_text_script CompText8785FF4_unk44

	def_text_script CompText8785FF4_unk45

	def_text_script CompText8785FF4_unk46

	def_text_script CompText8785FF4_unk47

	def_text_script CompText8785FF4_unk48

	def_text_script CompText8785FF4_unk49

	def_text_script CompText8785FF4_unk50
	ts_check_flag [
		flag: 0x7F1,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8785FF4_unk52_id,
	]
	ts_check_flag [
		flag: 0x687,
		jumpIfTrue: CompText8785FF4_unk51_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Unnggghhh..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Aren't you a\n"
	.string "member of the\n"
	.string "NetPolice?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Uh-huh... You...\n"
	.string "How did you...\n"
	.string "get here...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "I got the\n"
	.string "SoulWeapons\n"
	.string "in CentralArea1."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can leave the\n"
	.string "Cybeast to me!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "I heard that it's\n"
	.string "on it's way to\n"
	.string "the SeasideArea..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You've got to\n"
	.string "stop it quickly..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Take my\n"
	.string "SoulWeapons..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "...OK!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_mugshot_hide
	ts_player_animate_object animation=0x18
	ts_sound_play00 track=0x182
	ts_sound_enable_text_sfx
	.string "\"SoulWeapons\" have\n"
	.string "been installed\n"
	.string "inside MegaMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_call_reload_soul_weapons unused=0x0
	ts_flag_set flag=0x687
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "You can do it...\n"
	.string "Good luck..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk51
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

	def_text_script CompText8785FF4_unk52
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

	def_text_script CompText8785FF4_unk53
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	ts_mugshot_animation animation=0x1
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "No reaction..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk54
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	ts_mugshot_animation animation=0x1
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "No reaction..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk55
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
	.string "Do...do your best..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x746
	ts_end

	def_text_script CompText8785FF4_unk56
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Take...take care..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk57

	def_text_script CompText8785FF4_unk58

	def_text_script CompText8785FF4_unk59

	def_text_script CompText8785FF4_unk60
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "I know the Expo is\n"
	.string "getting closer,and\n"
	.string "everyone is excited;"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "however,the trouble\n"
	.string "on the Net lately..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It seems to have\n"
	.string "clouded people's\n"
	.string "souls..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's such a\n"
	.string "complicated\n"
	.string "situation..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk61
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "I never neglect my\n"
	.string "daily hour of\n"
	.string "NetBattle training."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "For instance,no\n"
	.string "matter how skillful\n"
	.string "I become,I'm never"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "satisfied,and always\n"
	.string "devoted to getting\n"
	.string "better!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hiiiiyaaaah!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk62

	def_text_script CompText8785FF4_unk63

	def_text_script CompText8785FF4_unk64

	def_text_script CompText8785FF4_unk65
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "...Hey!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Didn't you appear\n"
	.string "in the Operator Navi\n"
	.string "Selection Test?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "How did you do?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You passed?\n"
	.string "That's amazing!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Huh? How did I do?\n"
	.string "Let's not talk\n"
	.string "about that one,OK..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk66
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "I'm on a special\n"
	.string "training course for"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the 2nd Operator\n"
	.string "Navi Selection Test.\n"
	.string "Waaaaatttaaaa!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8785FF4_unk67

	def_text_script CompText8785FF4_unk68

	def_text_script CompText8785FF4_unk69

	def_text_script CompText8785FF4_unk70

	def_text_script CompText8785FF4_unk71

	def_text_script CompText8785FF4_unk72

	def_text_script CompText8785FF4_unk73

	def_text_script CompText8785FF4_unk74

	def_text_script CompText8785FF4_unk75

	def_text_script CompText8785FF4_unk76

	def_text_script CompText8785FF4_unk77

	def_text_script CompText8785FF4_unk78

	def_text_script CompText8785FF4_unk79

	def_text_script CompText8785FF4_unk80

	def_text_script CompText8785FF4_unk81

	def_text_script CompText8785FF4_unk82

	def_text_script CompText8785FF4_unk83

	def_text_script CompText8785FF4_unk84

	def_text_script CompText8785FF4_unk85

	def_text_script CompText8785FF4_unk86

	def_text_script CompText8785FF4_unk87

	def_text_script CompText8785FF4_unk88

	def_text_script CompText8785FF4_unk89

	def_text_script CompText8785FF4_unk90

	def_text_script CompText8785FF4_unk91

	def_text_script CompText8785FF4_unk92

	def_text_script CompText8785FF4_unk93

	def_text_script CompText8785FF4_unk94

	def_text_script CompText8785FF4_unk95

	def_text_script CompText8785FF4_unk96

	def_text_script CompText8785FF4_unk97

	def_text_script CompText8785FF4_unk98

	def_text_script CompText8785FF4_unk99

	def_text_script CompText8785FF4_unk100

	def_text_script CompText8785FF4_unk101

	def_text_script CompText8785FF4_unk102

	def_text_script CompText8785FF4_unk103

	def_text_script CompText8785FF4_unk104

	def_text_script CompText8785FF4_unk105

	def_text_script CompText8785FF4_unk106

	def_text_script CompText8785FF4_unk107

	def_text_script CompText8785FF4_unk108

	def_text_script CompText8785FF4_unk109

	def_text_script CompText8785FF4_unk110

	def_text_script CompText8785FF4_unk111

	def_text_script CompText8785FF4_unk112

	def_text_script CompText8785FF4_unk113

	def_text_script CompText8785FF4_unk114

	def_text_script CompText8785FF4_unk115

	def_text_script CompText8785FF4_unk116

	def_text_script CompText8785FF4_unk117

	def_text_script CompText8785FF4_unk118

	def_text_script CompText8785FF4_unk119

	def_text_script CompText8785FF4_unk120

	def_text_script CompText8785FF4_unk121

	def_text_script CompText8785FF4_unk122

	def_text_script CompText8785FF4_unk123

	def_text_script CompText8785FF4_unk124

	def_text_script CompText8785FF4_unk125

	def_text_script CompText8785FF4_unk126

	def_text_script CompText8785FF4_unk127

	def_text_script CompText8785FF4_unk128

	def_text_script CompText8785FF4_unk129

	def_text_script CompText8785FF4_unk130

	def_text_script CompText8785FF4_unk131

	def_text_script CompText8785FF4_unk132

	def_text_script CompText8785FF4_unk133

	def_text_script CompText8785FF4_unk134

	def_text_script CompText8785FF4_unk135

	def_text_script CompText8785FF4_unk136

	def_text_script CompText8785FF4_unk137

	def_text_script CompText8785FF4_unk138

	def_text_script CompText8785FF4_unk139

	def_text_script CompText8785FF4_unk140

	def_text_script CompText8785FF4_unk141

	def_text_script CompText8785FF4_unk142

	def_text_script CompText8785FF4_unk143

	def_text_script CompText8785FF4_unk144

	def_text_script CompText8785FF4_unk145

	def_text_script CompText8785FF4_unk146

	def_text_script CompText8785FF4_unk147

	def_text_script CompText8785FF4_unk148

	def_text_script CompText8785FF4_unk149

	def_text_script CompText8785FF4_unk150

	def_text_script CompText8785FF4_unk151

	def_text_script CompText8785FF4_unk152

	def_text_script CompText8785FF4_unk153

	def_text_script CompText8785FF4_unk154

	def_text_script CompText8785FF4_unk155

	def_text_script CompText8785FF4_unk156

	def_text_script CompText8785FF4_unk157

	def_text_script CompText8785FF4_unk158

	def_text_script CompText8785FF4_unk159

	def_text_script CompText8785FF4_unk160

	def_text_script CompText8785FF4_unk161

	def_text_script CompText8785FF4_unk162

	def_text_script CompText8785FF4_unk163

	def_text_script CompText8785FF4_unk164

	def_text_script CompText8785FF4_unk165

	def_text_script CompText8785FF4_unk166

	def_text_script CompText8785FF4_unk167

	def_text_script CompText8785FF4_unk168

	def_text_script CompText8785FF4_unk169

	def_text_script CompText8785FF4_unk170

	def_text_script CompText8785FF4_unk171

	def_text_script CompText8785FF4_unk172

	def_text_script CompText8785FF4_unk173

	def_text_script CompText8785FF4_unk174

	def_text_script CompText8785FF4_unk175

	def_text_script CompText8785FF4_unk176

	def_text_script CompText8785FF4_unk177

	def_text_script CompText8785FF4_unk178

	def_text_script CompText8785FF4_unk179

	def_text_script CompText8785FF4_unk180

	def_text_script CompText8785FF4_unk181

	def_text_script CompText8785FF4_unk182

	def_text_script CompText8785FF4_unk183

	def_text_script CompText8785FF4_unk184

	def_text_script CompText8785FF4_unk185

	def_text_script CompText8785FF4_unk186

	def_text_script CompText8785FF4_unk187

	def_text_script CompText8785FF4_unk188

	def_text_script CompText8785FF4_unk189

	def_text_script CompText8785FF4_unk190

	def_text_script CompText8785FF4_unk191

	def_text_script CompText8785FF4_unk192

	def_text_script CompText8785FF4_unk193

	def_text_script CompText8785FF4_unk194

	def_text_script CompText8785FF4_unk195

	def_text_script CompText8785FF4_unk196

	def_text_script CompText8785FF4_unk197

	def_text_script CompText8785FF4_unk198

	def_text_script CompText8785FF4_unk199

	def_text_script CompText8785FF4_unk200

	def_text_script CompText8785FF4_unk201

	def_text_script CompText8785FF4_unk202

	def_text_script CompText8785FF4_unk203

	def_text_script CompText8785FF4_unk204

	def_text_script CompText8785FF4_unk205

	def_text_script CompText8785FF4_unk206

	def_text_script CompText8785FF4_unk207

	def_text_script CompText8785FF4_unk208

	def_text_script CompText8785FF4_unk209

	def_text_script CompText8785FF4_unk210

	def_text_script CompText8785FF4_unk211

	def_text_script CompText8785FF4_unk212

	def_text_script CompText8785FF4_unk213

	def_text_script CompText8785FF4_unk214

	def_text_script CompText8785FF4_unk215

	def_text_script CompText8785FF4_unk216

	def_text_script CompText8785FF4_unk217

	def_text_script CompText8785FF4_unk218

	def_text_script CompText8785FF4_unk219

	def_text_script CompText8785FF4_unk220

	def_text_script CompText8785FF4_unk221

	def_text_script CompText8785FF4_unk222

	def_text_script CompText8785FF4_unk223

	def_text_script CompText8785FF4_unk224

	def_text_script CompText8785FF4_unk225

	def_text_script CompText8785FF4_unk226

	def_text_script CompText8785FF4_unk227

	def_text_script CompText8785FF4_unk228

	def_text_script CompText8785FF4_unk229

	def_text_script CompText8785FF4_unk230

	def_text_script CompText8785FF4_unk231

	def_text_script CompText8785FF4_unk232

	def_text_script CompText8785FF4_unk233

	def_text_script CompText8785FF4_unk234

	def_text_script CompText8785FF4_unk235

	def_text_script CompText8785FF4_unk236

	def_text_script CompText8785FF4_unk237

	def_text_script CompText8785FF4_unk238

	def_text_script CompText8785FF4_unk239

	def_text_script CompText8785FF4_unk240

	def_text_script CompText8785FF4_unk241

	def_text_script CompText8785FF4_unk242

	def_text_script CompText8785FF4_unk243

	def_text_script CompText8785FF4_unk244

	def_text_script CompText8785FF4_unk245

	def_text_script CompText8785FF4_unk246

	def_text_script CompText8785FF4_unk247

	def_text_script CompText8785FF4_unk248

	def_text_script CompText8785FF4_unk249

	def_text_script CompText8785FF4_unk250

	def_text_script CompText8785FF4_unk251

	def_text_script CompText8785FF4_unk252

	def_text_script CompText8785FF4_unk253

	def_text_script CompText8785FF4_unk254

	