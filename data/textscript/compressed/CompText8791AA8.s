	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8791AA8::
	.word 0xD4C00

	text_archive_start

	def_text_script CompText8791AA8_unk0
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: CompText8791AA8_unk25_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "I'll show you my\n"
	.string "true power!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk1
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "Hey,isn't the test\n"
	.string "this time a little\n"
	.string "too hard!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There's no way I\n"
	.string "can win!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk2
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: CompText8791AA8_unk26_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "*gasp!*\n"
	.string "Five consecutive\n"
	.string "battles!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder if I'm up\n"
	.string "to it..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk3

	def_text_script CompText8791AA8_unk4

	def_text_script CompText8791AA8_unk5

	def_text_script CompText8791AA8_unk6

	def_text_script CompText8791AA8_unk7

	def_text_script CompText8791AA8_unk8

	def_text_script CompText8791AA8_unk9

	def_text_script CompText8791AA8_unk10
	ts_check_flag [
		flag: 0xA67,
		jumpIfTrue: CompText8791AA8_unk14_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA63,
		jumpIfTrue: CompText8791AA8_unk11_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0xA63
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I am the Level 1\n"
	.string "judge..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Will you try 3\n"
	.string "consecutive virus\n"
	.string "battles?"
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
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Oh,OK..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk11
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I am the Level 1\n"
	.string "judge..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Will you try 3\n"
	.string "consecutive virus\n"
	.string "battles?"
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
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Oh,OK..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk12
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Here it comes!\n"
	.string "Battle START!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0xA90
	ts_end

	def_text_script CompText8791AA8_unk13
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "You're a natural!!\n"
	.string "Congratulations!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Please take this!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_flag_set flag=0xA67
	ts_item_give [
		item: 0x10,
		amount: 0x1,
	]
	ts_player_animate_scene animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x10,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Alright!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk14
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Those were some\n"
	.string "super techniques!\n"
	.string "Congratulations!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk15
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Too bad!\n"
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
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Oh,OK..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk16
	ts_check_flag [
		flag: 0xA68,
		jumpIfTrue: CompText8791AA8_unk20_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA64,
		jumpIfTrue: CompText8791AA8_unk17_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0xA64
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I am the Level 2\n"
	.string "judge..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Will you try 5\n"
	.string "consecutive virus\n"
	.string "battles?"
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
	ts_mugshot_show mugshot=0x42
	.string "Oh,OK..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk17
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I am the Level 2\n"
	.string "judge..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Will you try 5\n"
	.string "consecutive virus\n"
	.string "battles?"
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
	ts_mugshot_show mugshot=0x42
	.string "Oh,OK..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk18
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Ready!?\n"
	.string "Battle START!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0xA91
	ts_end

	def_text_script CompText8791AA8_unk19
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Congratulations!\n"
	.string "You're really good!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,here you are!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_flag_set flag=0xA68
	ts_item_give [
		item: 0x11,
		amount: 0x1,
	]
	ts_player_animate_scene animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x11,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Alright!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk20
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Congratulations!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk21
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Too bad!\n"
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
	ts_mugshot_show mugshot=0x42
	.string "Oh,OK..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk22

	def_text_script CompText8791AA8_unk23

	def_text_script CompText8791AA8_unk24

	def_text_script CompText8791AA8_unk25
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "*huff,huff...*\n"
	.string "Consecutive...\n"
	.string "... battles"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can't... take\n"
	.string "... any more..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk26
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Curses!\n"
	.string "If only I had saved\n"
	.string "that chip..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk27

	def_text_script CompText8791AA8_unk28

	def_text_script CompText8791AA8_unk29

	def_text_script CompText8791AA8_unk30
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I'm a little worried\n"
	.string "since I heard..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Is Sky Town alright?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk31
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "To stop outsiders\n"
	.string "from hacking in,Sky\n"
	.string "Town has moved its"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "HP from the Main\n"
	.string "System to \"that\"\n"
	.string "place."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That stops intruders\n"
	.string "from getting in,but\n"
	.string "at the same time,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "it stops our own\n"
	.string "people from getting\n"
	.string "in..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmm,maybe it's not\n"
	.string "quite as alright as\n"
	.string "it sounds..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk32

	def_text_script CompText8791AA8_unk33

	def_text_script CompText8791AA8_unk34

	def_text_script CompText8791AA8_unk35

	def_text_script CompText8791AA8_unk36

	def_text_script CompText8791AA8_unk37

	def_text_script CompText8791AA8_unk38

	def_text_script CompText8791AA8_unk39

	def_text_script CompText8791AA8_unk40
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "COME! YOU TOO CAN\n"
	.string "FLAP YOUR WINGS IN\n"
	.string "SKY AREA!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WE CAN FLY!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk41
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Hey,did you hear?\n"
	.string "People say the Force\n"
	.string "Program was stolen."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk42
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "What!? Isn't that\n"
	.string "really bad!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Isn't that bad for\n"
	.string "this area too...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk43
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Sky Area is full of\n"
	.string "big hills that make\n"
	.string "my life difficult!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder if they can\n"
	.string "make it easier for\n"
	.string "an old Navi like me?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk44

	def_text_script CompText8791AA8_unk45
	ts_check_flag [
		flag: 0xC20,
		jumpIfTrue: CompText8791AA8_unk60_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1E,
		jumpIfTrue: CompText8791AA8_unk55_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1A,
		jumpIfTrue: CompText8791AA8_unk50_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Have you seen the\n"
	.string "Expo commercial?\n"
	.string "Isn't it cool!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x45
	.string "Yeah! Totally!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm getting\n"
	.string "impatient waiting\n"
	.string "for it to open!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk46
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "I WILL NOT LOSE TO\n"
	.string "THE EXPO COMMERCIAL!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "SKY AREA IS WORKING\n"
	.string "ENTHUSIASTICALLY\n"
	.string "TOO!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... COME,LET'S ALL\n"
	.string "YELL IT TOGETHER!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WE CAN FLY!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk47
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Phew,I finally made\n"
	.string "it up here."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This area is really\n"
	.string "too much for an old\n"
	.string "Navi like me..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk48

	def_text_script CompText8791AA8_unk49

	def_text_script CompText8791AA8_unk50
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Have you seen the\n"
	.string "Expo commercial?\n"
	.string "It's sooooooo cool!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x45
	.string "Yeah! I've even\n"
	.string "recorded it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've watched it so\n"
	.string "much that I've lost\n"
	.string "count!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk51

	def_text_script CompText8791AA8_unk52

	def_text_script CompText8791AA8_unk53

	def_text_script CompText8791AA8_unk54

	def_text_script CompText8791AA8_unk55
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Huh!? There's some-\n"
	.string "thing going on in\n"
	.string "the real world!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x45
	.string "Yeah... I hear a\n"
	.string "Navi in a CopyBot\n"
	.string "is going nuts."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk56

	def_text_script CompText8791AA8_unk57

	def_text_script CompText8791AA8_unk58

	def_text_script CompText8791AA8_unk59

	def_text_script CompText8791AA8_unk60
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Seaside Town sounds\n"
	.string "like it had a tough\n"
	.string "time."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x45
	.string "Yes,but thankfully\n"
	.string "and luckily,no one\n"
	.string "was hurt."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8791AA8_unk61

	def_text_script CompText8791AA8_unk62

	def_text_script CompText8791AA8_unk63

	def_text_script CompText8791AA8_unk64

	def_text_script CompText8791AA8_unk65

	def_text_script CompText8791AA8_unk66

	def_text_script CompText8791AA8_unk67

	def_text_script CompText8791AA8_unk68

	def_text_script CompText8791AA8_unk69

	def_text_script CompText8791AA8_unk70

	def_text_script CompText8791AA8_unk71

	def_text_script CompText8791AA8_unk72

	def_text_script CompText8791AA8_unk73

	def_text_script CompText8791AA8_unk74

	def_text_script CompText8791AA8_unk75

	def_text_script CompText8791AA8_unk76

	def_text_script CompText8791AA8_unk77

	def_text_script CompText8791AA8_unk78

	def_text_script CompText8791AA8_unk79

	def_text_script CompText8791AA8_unk80

	def_text_script CompText8791AA8_unk81

	def_text_script CompText8791AA8_unk82

	def_text_script CompText8791AA8_unk83

	def_text_script CompText8791AA8_unk84

	def_text_script CompText8791AA8_unk85

	def_text_script CompText8791AA8_unk86

	def_text_script CompText8791AA8_unk87

	def_text_script CompText8791AA8_unk88

	def_text_script CompText8791AA8_unk89

	def_text_script CompText8791AA8_unk90

	def_text_script CompText8791AA8_unk91

	def_text_script CompText8791AA8_unk92

	def_text_script CompText8791AA8_unk93

	def_text_script CompText8791AA8_unk94

	def_text_script CompText8791AA8_unk95

	def_text_script CompText8791AA8_unk96

	def_text_script CompText8791AA8_unk97

	def_text_script CompText8791AA8_unk98

	def_text_script CompText8791AA8_unk99

	def_text_script CompText8791AA8_unk100

	def_text_script CompText8791AA8_unk101

	def_text_script CompText8791AA8_unk102

	def_text_script CompText8791AA8_unk103

	def_text_script CompText8791AA8_unk104

	def_text_script CompText8791AA8_unk105

	def_text_script CompText8791AA8_unk106

	def_text_script CompText8791AA8_unk107

	def_text_script CompText8791AA8_unk108

	def_text_script CompText8791AA8_unk109

	def_text_script CompText8791AA8_unk110

	def_text_script CompText8791AA8_unk111

	def_text_script CompText8791AA8_unk112

	def_text_script CompText8791AA8_unk113

	def_text_script CompText8791AA8_unk114

	def_text_script CompText8791AA8_unk115

	def_text_script CompText8791AA8_unk116

	def_text_script CompText8791AA8_unk117

	def_text_script CompText8791AA8_unk118

	def_text_script CompText8791AA8_unk119

	def_text_script CompText8791AA8_unk120

	def_text_script CompText8791AA8_unk121

	def_text_script CompText8791AA8_unk122

	def_text_script CompText8791AA8_unk123

	def_text_script CompText8791AA8_unk124

	def_text_script CompText8791AA8_unk125

	def_text_script CompText8791AA8_unk126

	def_text_script CompText8791AA8_unk127

	def_text_script CompText8791AA8_unk128

	def_text_script CompText8791AA8_unk129

	def_text_script CompText8791AA8_unk130

	def_text_script CompText8791AA8_unk131

	def_text_script CompText8791AA8_unk132

	def_text_script CompText8791AA8_unk133

	def_text_script CompText8791AA8_unk134

	def_text_script CompText8791AA8_unk135

	def_text_script CompText8791AA8_unk136

	def_text_script CompText8791AA8_unk137

	def_text_script CompText8791AA8_unk138

	def_text_script CompText8791AA8_unk139

	def_text_script CompText8791AA8_unk140

	def_text_script CompText8791AA8_unk141

	def_text_script CompText8791AA8_unk142

	def_text_script CompText8791AA8_unk143

	def_text_script CompText8791AA8_unk144

	def_text_script CompText8791AA8_unk145

	def_text_script CompText8791AA8_unk146

	def_text_script CompText8791AA8_unk147

	def_text_script CompText8791AA8_unk148

	def_text_script CompText8791AA8_unk149

	def_text_script CompText8791AA8_unk150

	def_text_script CompText8791AA8_unk151

	def_text_script CompText8791AA8_unk152

	def_text_script CompText8791AA8_unk153

	def_text_script CompText8791AA8_unk154

	def_text_script CompText8791AA8_unk155

	def_text_script CompText8791AA8_unk156

	def_text_script CompText8791AA8_unk157

	def_text_script CompText8791AA8_unk158

	def_text_script CompText8791AA8_unk159

	def_text_script CompText8791AA8_unk160

	def_text_script CompText8791AA8_unk161

	def_text_script CompText8791AA8_unk162

	def_text_script CompText8791AA8_unk163

	def_text_script CompText8791AA8_unk164

	def_text_script CompText8791AA8_unk165

	def_text_script CompText8791AA8_unk166

	def_text_script CompText8791AA8_unk167

	def_text_script CompText8791AA8_unk168

	def_text_script CompText8791AA8_unk169

	def_text_script CompText8791AA8_unk170

	def_text_script CompText8791AA8_unk171

	def_text_script CompText8791AA8_unk172

	def_text_script CompText8791AA8_unk173

	def_text_script CompText8791AA8_unk174

	def_text_script CompText8791AA8_unk175

	def_text_script CompText8791AA8_unk176

	def_text_script CompText8791AA8_unk177

	def_text_script CompText8791AA8_unk178

	def_text_script CompText8791AA8_unk179

	def_text_script CompText8791AA8_unk180

	def_text_script CompText8791AA8_unk181

	def_text_script CompText8791AA8_unk182

	def_text_script CompText8791AA8_unk183

	def_text_script CompText8791AA8_unk184

	def_text_script CompText8791AA8_unk185

	def_text_script CompText8791AA8_unk186

	def_text_script CompText8791AA8_unk187

	def_text_script CompText8791AA8_unk188

	def_text_script CompText8791AA8_unk189

	def_text_script CompText8791AA8_unk190

	def_text_script CompText8791AA8_unk191

	def_text_script CompText8791AA8_unk192

	def_text_script CompText8791AA8_unk193

	def_text_script CompText8791AA8_unk194

	def_text_script CompText8791AA8_unk195

	def_text_script CompText8791AA8_unk196

	def_text_script CompText8791AA8_unk197

	def_text_script CompText8791AA8_unk198

	def_text_script CompText8791AA8_unk199

	def_text_script CompText8791AA8_unk200

	def_text_script CompText8791AA8_unk201

	def_text_script CompText8791AA8_unk202

	def_text_script CompText8791AA8_unk203

	def_text_script CompText8791AA8_unk204

	def_text_script CompText8791AA8_unk205

	def_text_script CompText8791AA8_unk206

	def_text_script CompText8791AA8_unk207

	def_text_script CompText8791AA8_unk208

	def_text_script CompText8791AA8_unk209

	def_text_script CompText8791AA8_unk210

	def_text_script CompText8791AA8_unk211

	def_text_script CompText8791AA8_unk212

	def_text_script CompText8791AA8_unk213

	def_text_script CompText8791AA8_unk214

	def_text_script CompText8791AA8_unk215

	def_text_script CompText8791AA8_unk216

	def_text_script CompText8791AA8_unk217

	def_text_script CompText8791AA8_unk218

	def_text_script CompText8791AA8_unk219

	def_text_script CompText8791AA8_unk220

	def_text_script CompText8791AA8_unk221

	def_text_script CompText8791AA8_unk222

	def_text_script CompText8791AA8_unk223

	def_text_script CompText8791AA8_unk224

	def_text_script CompText8791AA8_unk225

	def_text_script CompText8791AA8_unk226

	def_text_script CompText8791AA8_unk227

	def_text_script CompText8791AA8_unk228

	def_text_script CompText8791AA8_unk229

	def_text_script CompText8791AA8_unk230

	def_text_script CompText8791AA8_unk231

	def_text_script CompText8791AA8_unk232

	def_text_script CompText8791AA8_unk233

	def_text_script CompText8791AA8_unk234

	def_text_script CompText8791AA8_unk235

	def_text_script CompText8791AA8_unk236

	def_text_script CompText8791AA8_unk237

	def_text_script CompText8791AA8_unk238

	def_text_script CompText8791AA8_unk239

	def_text_script CompText8791AA8_unk240

	def_text_script CompText8791AA8_unk241

	def_text_script CompText8791AA8_unk242

	def_text_script CompText8791AA8_unk243

	def_text_script CompText8791AA8_unk244

	def_text_script CompText8791AA8_unk245

	def_text_script CompText8791AA8_unk246

	def_text_script CompText8791AA8_unk247

	def_text_script CompText8791AA8_unk248

	def_text_script CompText8791AA8_unk249

	def_text_script CompText8791AA8_unk250

	def_text_script CompText8791AA8_unk251

	def_text_script CompText8791AA8_unk252

	def_text_script CompText8791AA8_unk253

	def_text_script CompText8791AA8_unk254

	