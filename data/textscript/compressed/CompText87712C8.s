	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87712C8::
	.word 0xAA400

	text_archive_start

	def_text_script CompText87712C8_unk0
	ts_check_flag [
		flag: 0x657,
		jumpIfTrue: 0x2,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x636,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x636
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText87712C8_unk1
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "Hey,use that\n"
	.string "computer!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hurry up!\n"
	.string "HeatMan's waitin'\n"
	.string "for ya!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87712C8_unk2
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "Do yer best and\n"
	.string "delete those\n"
	.string "Kettles!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If ya don't,you\n"
	.string "can't ever go home!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87712C8_unk3

	def_text_script CompText87712C8_unk4

	def_text_script CompText87712C8_unk5
	ts_check_flag [
		flag: 0x669,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x652,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x652
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "Time for the\n"
	.string "final test!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The test is..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A NetBattle with\n"
	.string "HeatMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Of course,ya'll\n"
	.string "operate MegaMan."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ya shoulda figured\n"
	.string "out how to use Fire"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "by operatin'\n"
	.string "HeatMan,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So Fire attacks\n"
	.string "shouldn't be a\n"
	.string "problem for ya!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright! Let's go!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Are ya ready!?"
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
	ts_select 0x6, 0x80, 0x6, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x1E
	.string "Huh? Ya aren't\n"
	.string "scared are ya!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87712C8_unk6
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "Let's go! Time for\n"
	.string "the final test!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "START!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x643
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText87712C8_unk7
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "That's too bad!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You wanna give it\n"
	.string "another shot!?"
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
	ts_select 0x6, 0x80, 0x6, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x1E
	.string "Huh? Ya aren't\n"
	.string "scared are ya!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87712C8_unk8
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "How was it!?\n"
	.string "My control's as\n"
	.string "good as yers!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's the way to\n"
	.string "master Fire!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87712C8_unk9
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "Looks like yer\n"
	.string "soul's ready to go!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's get started...\n"
	.string "OK?"
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
	ts_select 0x6, 0x80, 0x6, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x1E
	.string "Huh? Ya aren't\n"
	.string "scared are ya!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87712C8_unk10

	def_text_script CompText87712C8_unk11

	def_text_script CompText87712C8_unk12

	def_text_script CompText87712C8_unk13

	def_text_script CompText87712C8_unk14

	def_text_script CompText87712C8_unk15
	ts_check_flag [
		flag: 0x645,
		jumpIfTrue: 0x10,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x645
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText87712C8_unk16
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Use this computer.\n"
	.string "SpoutMan's waiting."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87712C8_unk17
	ts_check_flag [
		flag: 0x653,
		jumpIfTrue: 0x15,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x653
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Lan,let's start\n"
	.string "the test!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What? All I did was\n"
	.string "operate SpoutMan and\n"
	.string "catch some fish..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's not like we did\n"
	.string "anything classwork-\n"
	.string "like,so"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "why the test all of\n"
	.string "a sudden?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1F
	.string "What are you\n"
	.string "talking about?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Finding the fish\n"
	.string "WAS the classwork!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Re..Really...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1F
	.string "Yes!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Using SpoutMan was\n"
	.string "to get you to"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "understand the\n"
	.string "soul of water!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "...Really?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1F
	.string "Of course!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should\n"
	.string "understand the soul\n"
	.string "of water by now!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "I guess so...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1F
	.string "OK then! Let's see\n"
	.string "how much you learned\n"
	.string "in class!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "How about a battle\n"
	.string "against SpoutMan\n"
	.string "while I operate?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Show me just how\n"
	.string "much you've learned\n"
	.string "through this fight!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "It's a NetBattle...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1F
	.string "Yep,a NetBattle.\n"
	.string "Are you ready!?"
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
	ts_select 0x6, 0x80, 0x12, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x1F
	.string "Once you are ready,\n"
	.string "we'll begin!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87712C8_unk18
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Let's see if you've\n"
	.string "got a soul of water!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle Start!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x650
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText87712C8_unk19
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "What a shame...\n"
	.string "Would you like to\n"
	.string "try again?"
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
	ts_select 0x6, 0x80, 0x12, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x1F
	.string "Once you are ready,\n"
	.string "we'll begin!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87712C8_unk20

	def_text_script CompText87712C8_unk21
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Are you ready to\n"
	.string "take the test!?"
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
	ts_select 0x6, 0x80, 0x12, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x1F
	.string "Once you are ready,\n"
	.string "we'll begin!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87712C8_unk22

	def_text_script CompText87712C8_unk23

	def_text_script CompText87712C8_unk24

	def_text_script CompText87712C8_unk25
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x1A,
	]
	ts_mugshot_show mugshot=0x1E
	ts_msg_open
	.string "What's the problem?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hurry up and get\n"
	.string "ready to go home!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87712C8_unk26
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Hmm?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're not all\n"
	.string "packed up to go\n"
	.string "home yet,right?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87712C8_unk27

	def_text_script CompText87712C8_unk28

	def_text_script CompText87712C8_unk29

	def_text_script CompText87712C8_unk30

	def_text_script CompText87712C8_unk31

	def_text_script CompText87712C8_unk32

	def_text_script CompText87712C8_unk33

	def_text_script CompText87712C8_unk34

	def_text_script CompText87712C8_unk35

	def_text_script CompText87712C8_unk36

	def_text_script CompText87712C8_unk37

	def_text_script CompText87712C8_unk38

	def_text_script CompText87712C8_unk39

	def_text_script CompText87712C8_unk40

	def_text_script CompText87712C8_unk41

	def_text_script CompText87712C8_unk42

	def_text_script CompText87712C8_unk43

	def_text_script CompText87712C8_unk44

	def_text_script CompText87712C8_unk45

	def_text_script CompText87712C8_unk46

	def_text_script CompText87712C8_unk47

	def_text_script CompText87712C8_unk48

	def_text_script CompText87712C8_unk49

	def_text_script CompText87712C8_unk50

	def_text_script CompText87712C8_unk51

	def_text_script CompText87712C8_unk52

	def_text_script CompText87712C8_unk53

	def_text_script CompText87712C8_unk54

	def_text_script CompText87712C8_unk55

	def_text_script CompText87712C8_unk56

	def_text_script CompText87712C8_unk57

	def_text_script CompText87712C8_unk58

	def_text_script CompText87712C8_unk59

	def_text_script CompText87712C8_unk60

	def_text_script CompText87712C8_unk61

	def_text_script CompText87712C8_unk62

	def_text_script CompText87712C8_unk63

	def_text_script CompText87712C8_unk64

	def_text_script CompText87712C8_unk65

	def_text_script CompText87712C8_unk66

	def_text_script CompText87712C8_unk67

	def_text_script CompText87712C8_unk68

	def_text_script CompText87712C8_unk69

	def_text_script CompText87712C8_unk70

	def_text_script CompText87712C8_unk71

	def_text_script CompText87712C8_unk72

	def_text_script CompText87712C8_unk73

	def_text_script CompText87712C8_unk74

	def_text_script CompText87712C8_unk75

	def_text_script CompText87712C8_unk76

	def_text_script CompText87712C8_unk77

	def_text_script CompText87712C8_unk78

	def_text_script CompText87712C8_unk79

	def_text_script CompText87712C8_unk80

	def_text_script CompText87712C8_unk81

	def_text_script CompText87712C8_unk82

	def_text_script CompText87712C8_unk83

	def_text_script CompText87712C8_unk84

	def_text_script CompText87712C8_unk85

	def_text_script CompText87712C8_unk86

	def_text_script CompText87712C8_unk87

	def_text_script CompText87712C8_unk88

	def_text_script CompText87712C8_unk89

	def_text_script CompText87712C8_unk90

	def_text_script CompText87712C8_unk91

	def_text_script CompText87712C8_unk92

	def_text_script CompText87712C8_unk93

	def_text_script CompText87712C8_unk94

	def_text_script CompText87712C8_unk95

	def_text_script CompText87712C8_unk96

	def_text_script CompText87712C8_unk97

	def_text_script CompText87712C8_unk98

	def_text_script CompText87712C8_unk99

	def_text_script CompText87712C8_unk100

	def_text_script CompText87712C8_unk101

	def_text_script CompText87712C8_unk102

	def_text_script CompText87712C8_unk103

	def_text_script CompText87712C8_unk104

	def_text_script CompText87712C8_unk105

	def_text_script CompText87712C8_unk106

	def_text_script CompText87712C8_unk107

	def_text_script CompText87712C8_unk108

	def_text_script CompText87712C8_unk109

	def_text_script CompText87712C8_unk110

	def_text_script CompText87712C8_unk111

	def_text_script CompText87712C8_unk112

	def_text_script CompText87712C8_unk113

	def_text_script CompText87712C8_unk114

	def_text_script CompText87712C8_unk115

	def_text_script CompText87712C8_unk116

	def_text_script CompText87712C8_unk117

	def_text_script CompText87712C8_unk118

	def_text_script CompText87712C8_unk119

	def_text_script CompText87712C8_unk120

	def_text_script CompText87712C8_unk121

	def_text_script CompText87712C8_unk122

	def_text_script CompText87712C8_unk123

	def_text_script CompText87712C8_unk124

	def_text_script CompText87712C8_unk125

	def_text_script CompText87712C8_unk126

	def_text_script CompText87712C8_unk127

	def_text_script CompText87712C8_unk128

	def_text_script CompText87712C8_unk129

	def_text_script CompText87712C8_unk130

	def_text_script CompText87712C8_unk131

	def_text_script CompText87712C8_unk132

	def_text_script CompText87712C8_unk133

	def_text_script CompText87712C8_unk134

	def_text_script CompText87712C8_unk135

	def_text_script CompText87712C8_unk136

	def_text_script CompText87712C8_unk137

	def_text_script CompText87712C8_unk138

	def_text_script CompText87712C8_unk139

	def_text_script CompText87712C8_unk140

	def_text_script CompText87712C8_unk141

	def_text_script CompText87712C8_unk142

	def_text_script CompText87712C8_unk143

	def_text_script CompText87712C8_unk144

	def_text_script CompText87712C8_unk145

	def_text_script CompText87712C8_unk146

	def_text_script CompText87712C8_unk147

	def_text_script CompText87712C8_unk148

	def_text_script CompText87712C8_unk149

	def_text_script CompText87712C8_unk150

	def_text_script CompText87712C8_unk151

	def_text_script CompText87712C8_unk152

	def_text_script CompText87712C8_unk153

	def_text_script CompText87712C8_unk154

	def_text_script CompText87712C8_unk155

	def_text_script CompText87712C8_unk156

	def_text_script CompText87712C8_unk157

	def_text_script CompText87712C8_unk158

	def_text_script CompText87712C8_unk159

	def_text_script CompText87712C8_unk160

	def_text_script CompText87712C8_unk161

	def_text_script CompText87712C8_unk162

	def_text_script CompText87712C8_unk163

	def_text_script CompText87712C8_unk164

	def_text_script CompText87712C8_unk165

	def_text_script CompText87712C8_unk166

	def_text_script CompText87712C8_unk167

	def_text_script CompText87712C8_unk168

	def_text_script CompText87712C8_unk169

	def_text_script CompText87712C8_unk170

	def_text_script CompText87712C8_unk171

	def_text_script CompText87712C8_unk172

	def_text_script CompText87712C8_unk173

	def_text_script CompText87712C8_unk174

	def_text_script CompText87712C8_unk175

	def_text_script CompText87712C8_unk176

	def_text_script CompText87712C8_unk177

	def_text_script CompText87712C8_unk178

	def_text_script CompText87712C8_unk179

	def_text_script CompText87712C8_unk180

	def_text_script CompText87712C8_unk181

	def_text_script CompText87712C8_unk182

	def_text_script CompText87712C8_unk183

	def_text_script CompText87712C8_unk184

	def_text_script CompText87712C8_unk185

	def_text_script CompText87712C8_unk186

	def_text_script CompText87712C8_unk187

	def_text_script CompText87712C8_unk188

	def_text_script CompText87712C8_unk189

	def_text_script CompText87712C8_unk190

	def_text_script CompText87712C8_unk191

	def_text_script CompText87712C8_unk192

	def_text_script CompText87712C8_unk193

	def_text_script CompText87712C8_unk194

	def_text_script CompText87712C8_unk195

	def_text_script CompText87712C8_unk196

	def_text_script CompText87712C8_unk197

	def_text_script CompText87712C8_unk198

	def_text_script CompText87712C8_unk199

	def_text_script CompText87712C8_unk200

	def_text_script CompText87712C8_unk201

	def_text_script CompText87712C8_unk202

	def_text_script CompText87712C8_unk203

	def_text_script CompText87712C8_unk204

	def_text_script CompText87712C8_unk205

	def_text_script CompText87712C8_unk206

	def_text_script CompText87712C8_unk207

	def_text_script CompText87712C8_unk208

	def_text_script CompText87712C8_unk209

	def_text_script CompText87712C8_unk210

	def_text_script CompText87712C8_unk211

	def_text_script CompText87712C8_unk212

	def_text_script CompText87712C8_unk213

	def_text_script CompText87712C8_unk214

	def_text_script CompText87712C8_unk215

	def_text_script CompText87712C8_unk216

	def_text_script CompText87712C8_unk217

	def_text_script CompText87712C8_unk218

	def_text_script CompText87712C8_unk219

	def_text_script CompText87712C8_unk220

	def_text_script CompText87712C8_unk221

	def_text_script CompText87712C8_unk222

	def_text_script CompText87712C8_unk223

	def_text_script CompText87712C8_unk224

	def_text_script CompText87712C8_unk225

	def_text_script CompText87712C8_unk226

	def_text_script CompText87712C8_unk227

	def_text_script CompText87712C8_unk228

	def_text_script CompText87712C8_unk229

	def_text_script CompText87712C8_unk230

	def_text_script CompText87712C8_unk231

	def_text_script CompText87712C8_unk232

	def_text_script CompText87712C8_unk233

	def_text_script CompText87712C8_unk234

	def_text_script CompText87712C8_unk235

	def_text_script CompText87712C8_unk236

	def_text_script CompText87712C8_unk237

	def_text_script CompText87712C8_unk238

	def_text_script CompText87712C8_unk239

	def_text_script CompText87712C8_unk240

	def_text_script CompText87712C8_unk241

	def_text_script CompText87712C8_unk242

	def_text_script CompText87712C8_unk243

	def_text_script CompText87712C8_unk244

	def_text_script CompText87712C8_unk245

	def_text_script CompText87712C8_unk246

	def_text_script CompText87712C8_unk247

	def_text_script CompText87712C8_unk248

	def_text_script CompText87712C8_unk249

	def_text_script CompText87712C8_unk250

	def_text_script CompText87712C8_unk251

	def_text_script CompText87712C8_unk252

	def_text_script CompText87712C8_unk253

	def_text_script CompText87712C8_unk254

	