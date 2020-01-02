	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8793DCC::
	.word 0xE5E00

	text_archive_start

	def_text_script CompText8793DCC_unk0
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "Hehe,we'll win...\n"
	.string "Just you wait!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We've had a few\n"
	.string "close calls because\n"
	.string "of Mick's operating,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but on my skills\n"
	.string "alone,we'll win!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmph,it's such a\n"
	.string "bother to have such\n"
	.string "a useless operator."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk1
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: CompText8793DCC_unk25_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "*huff... hack,hack*\n"
	.string "No... good...\n"
	.string "... Can't go on..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk2
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "... Test?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm just a tourist,\n"
	.string "so what's this about\n"
	.string "a test...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk3

	def_text_script CompText8793DCC_unk4

	def_text_script CompText8793DCC_unk5

	def_text_script CompText8793DCC_unk6

	def_text_script CompText8793DCC_unk7

	def_text_script CompText8793DCC_unk8

	def_text_script CompText8793DCC_unk9

	def_text_script CompText8793DCC_unk10
	ts_check_flag [
		flag: 0xA69,
		jumpIfTrue: CompText8793DCC_unk14_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA65,
		jumpIfTrue: CompText8793DCC_unk11_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0xA65
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I am the Level 3\n"
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
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Oh,OK..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk11
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I am the Level 3\n"
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
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Oh,OK..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk12
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Good luck...\n"
	.string "Battle START!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0xA92
	ts_end

	def_text_script CompText8793DCC_unk13
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Spleeeeendid!!\n"
	.string "Such fluid\n"
	.string "technique!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I present this to\n"
	.string "you..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_flag_set flag=0xA69
	ts_item_give [
		item: 0x12,
		amount: 0x1,
	]
	ts_player_animate_scene animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x12,
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

	def_text_script CompText8793DCC_unk14
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Spleeeeendid!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk15
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

	def_text_script CompText8793DCC_unk16
	ts_check_flag [
		flag: 0xA6A,
		jumpIfTrue: CompText8793DCC_unk20_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA66,
		jumpIfTrue: CompText8793DCC_unk17_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0xA66
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I am the Level 4\n"
	.string "judge..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Will you try 10\n"
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

	def_text_script CompText8793DCC_unk17
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I am the Level 4\n"
	.string "judge..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Will you try 10\n"
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

	def_text_script CompText8793DCC_unk18
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Think you can take\n"
	.string "on 10 consecutive\n"
	.string "battles!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle STAAAAAAART!!\n"
	.string "*huff,huff!!*"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0xA93
	ts_end

	def_text_script CompText8793DCC_unk19
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Hmm... Victory!!\n"
	.string "You breezed through\n"
	.string "that!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can see your power\n"
	.string "and speed techniques\n"
	.string "are blended well!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well then,here you\n"
	.string "are..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_flag_set flag=0xA6A
	ts_item_give [
		item: 0x13,
		amount: 0x1,
	]
	ts_player_animate_scene animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x13,
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

	def_text_script CompText8793DCC_unk20
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I have never seen\n"
	.string "such beautiful\n"
	.string "battles as yours!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk21
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

	def_text_script CompText8793DCC_unk22
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: CompText8793DCC_unk26_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xA67,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8793DCC_unk23_id,
	]
	ts_check_flag [
		flag: 0xA68,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8793DCC_unk23_id,
	]
	ts_check_flag [
		flag: 0xA69,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8793DCC_unk23_id,
	]
	ts_check_flag [
		flag: 0xA6A,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8793DCC_unk23_id,
	]
	ts_flag_set flag=0xA98
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText8793DCC_unk23
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Please search out\n"
	.string "the 4 judges in Sky\n"
	.string "Area,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and get the 4\n"
	.string "\"WinCards\"!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Good luck!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk24

	def_text_script CompText8793DCC_unk25
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "*hack,hack...*\n"
	.string "No good...\n"
	.string "Still can't stand..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk26
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "G-Go to the\n"
	.string "Undernet!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should give up!\n"
	.string "Going there!? You'll\n"
	.string "get hurt badly and"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you'll be at a huge\n"
	.string "disadvantage!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk27

	def_text_script CompText8793DCC_unk28

	def_text_script CompText8793DCC_unk29

	def_text_script CompText8793DCC_unk30
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THE REAL WORLD SEEMS\n"
	.string "TO BE IN A MESS. DID\n"
	.string "SOMETHING HAPPEN?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk31
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Heh,just when I\n"
	.string "thought the Operator\n"
	.string "Navi Selection Test"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "was over,and things\n"
	.string "would calm down,it\n"
	.string "gets noisy again."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk32

	def_text_script CompText8793DCC_unk33

	def_text_script CompText8793DCC_unk34

	def_text_script CompText8793DCC_unk35

	def_text_script CompText8793DCC_unk36

	def_text_script CompText8793DCC_unk37

	def_text_script CompText8793DCC_unk38

	def_text_script CompText8793DCC_unk39

	def_text_script CompText8793DCC_unk40
	ts_mugshot_show mugshot=0x46
	ts_msg_open
	.string "Aaaaaaaah!\n"
	.string "Whyyyyy can't\n"
	.string "I go there!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Someone teeeell me!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk41
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "... You know,I think\n"
	.string "about this from time\n"
	.string "to time..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "About how if I could\n"
	.string "freely fly around\n"
	.string "like a bird..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sure it would be\n"
	.string "fun!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk42
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "The finals of the\n"
	.string "Operator Navi\n"
	.string "Selection Test!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Wow! Great!!\n"
	.string "What an honor to\n"
	.string "make it so far!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk43

	def_text_script CompText8793DCC_unk44

	def_text_script CompText8793DCC_unk45
	ts_check_flag [
		flag: 0xC20,
		jumpIfTrue: CompText8793DCC_unk60_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1E,
		jumpIfTrue: CompText8793DCC_unk55_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC1A,
		jumpIfTrue: CompText8793DCC_unk50_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Ah! Y-You're the\n"
	.string "Navi in the\n"
	.string "commercial,right!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "U-Uh... Um..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "P-Please sign this!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk46
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Ummm...This is a\n"
	.string "strange question,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but if you could\n"
	.string "be something else,\n"
	.string "what would you be?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I would totally be\n"
	.string "a bird!! Then I\n"
	.string "could fly all over!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...I wish someone\n"
	.string "would give me wings."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk47
	ts_mugshot_show mugshot=0x46
	ts_msg_open
	.string "Arrrgggghhh!!\n"
	.string "I don't get this\n"
	.string "at all!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "How can I get\n"
	.string "over there!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk48

	def_text_script CompText8793DCC_unk49

	def_text_script CompText8793DCC_unk50
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "I'm collecting\n"
	.string "autographs from\n"
	.string "famous people."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Right now,I'm trying\n"
	.string "to get one from the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Navi in the Expo\n"
	.string "commercial."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey,you wouldn't\n"
	.string "happen to have his\n"
	.string "autograph,would you?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk51

	def_text_script CompText8793DCC_unk52

	def_text_script CompText8793DCC_unk53

	def_text_script CompText8793DCC_unk54

	def_text_script CompText8793DCC_unk55
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "An incident in\n"
	.string "Seaside Town?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I didn't hear about\n"
	.string "it...\n"
	.string "Oh,is that so..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk56

	def_text_script CompText8793DCC_unk57

	def_text_script CompText8793DCC_unk58

	def_text_script CompText8793DCC_unk59

	def_text_script CompText8793DCC_unk60
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Why is it we've had\n"
	.string "nothing but bad\n"
	.string "things happen...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why can't everyone\n"
	.string "live in peace!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8793DCC_unk61

	def_text_script CompText8793DCC_unk62

	def_text_script CompText8793DCC_unk63

	def_text_script CompText8793DCC_unk64

	def_text_script CompText8793DCC_unk65

	def_text_script CompText8793DCC_unk66

	def_text_script CompText8793DCC_unk67

	def_text_script CompText8793DCC_unk68

	def_text_script CompText8793DCC_unk69

	def_text_script CompText8793DCC_unk70

	def_text_script CompText8793DCC_unk71

	def_text_script CompText8793DCC_unk72

	def_text_script CompText8793DCC_unk73

	def_text_script CompText8793DCC_unk74

	def_text_script CompText8793DCC_unk75

	def_text_script CompText8793DCC_unk76

	def_text_script CompText8793DCC_unk77

	def_text_script CompText8793DCC_unk78

	def_text_script CompText8793DCC_unk79

	def_text_script CompText8793DCC_unk80

	def_text_script CompText8793DCC_unk81

	def_text_script CompText8793DCC_unk82

	def_text_script CompText8793DCC_unk83

	def_text_script CompText8793DCC_unk84

	def_text_script CompText8793DCC_unk85

	def_text_script CompText8793DCC_unk86

	def_text_script CompText8793DCC_unk87

	def_text_script CompText8793DCC_unk88

	def_text_script CompText8793DCC_unk89

	def_text_script CompText8793DCC_unk90

	def_text_script CompText8793DCC_unk91

	def_text_script CompText8793DCC_unk92

	def_text_script CompText8793DCC_unk93

	def_text_script CompText8793DCC_unk94

	def_text_script CompText8793DCC_unk95

	def_text_script CompText8793DCC_unk96

	def_text_script CompText8793DCC_unk97

	def_text_script CompText8793DCC_unk98

	def_text_script CompText8793DCC_unk99

	def_text_script CompText8793DCC_unk100

	def_text_script CompText8793DCC_unk101

	def_text_script CompText8793DCC_unk102

	def_text_script CompText8793DCC_unk103

	def_text_script CompText8793DCC_unk104

	def_text_script CompText8793DCC_unk105

	def_text_script CompText8793DCC_unk106

	def_text_script CompText8793DCC_unk107

	def_text_script CompText8793DCC_unk108

	def_text_script CompText8793DCC_unk109

	def_text_script CompText8793DCC_unk110

	def_text_script CompText8793DCC_unk111

	def_text_script CompText8793DCC_unk112

	def_text_script CompText8793DCC_unk113

	def_text_script CompText8793DCC_unk114

	def_text_script CompText8793DCC_unk115

	def_text_script CompText8793DCC_unk116

	def_text_script CompText8793DCC_unk117

	def_text_script CompText8793DCC_unk118

	def_text_script CompText8793DCC_unk119

	def_text_script CompText8793DCC_unk120

	def_text_script CompText8793DCC_unk121

	def_text_script CompText8793DCC_unk122

	def_text_script CompText8793DCC_unk123

	def_text_script CompText8793DCC_unk124

	def_text_script CompText8793DCC_unk125

	def_text_script CompText8793DCC_unk126

	def_text_script CompText8793DCC_unk127

	def_text_script CompText8793DCC_unk128

	def_text_script CompText8793DCC_unk129

	def_text_script CompText8793DCC_unk130

	def_text_script CompText8793DCC_unk131

	def_text_script CompText8793DCC_unk132

	def_text_script CompText8793DCC_unk133

	def_text_script CompText8793DCC_unk134

	def_text_script CompText8793DCC_unk135

	def_text_script CompText8793DCC_unk136

	def_text_script CompText8793DCC_unk137

	def_text_script CompText8793DCC_unk138

	def_text_script CompText8793DCC_unk139

	def_text_script CompText8793DCC_unk140

	def_text_script CompText8793DCC_unk141

	def_text_script CompText8793DCC_unk142

	def_text_script CompText8793DCC_unk143

	def_text_script CompText8793DCC_unk144

	def_text_script CompText8793DCC_unk145

	def_text_script CompText8793DCC_unk146

	def_text_script CompText8793DCC_unk147

	def_text_script CompText8793DCC_unk148

	def_text_script CompText8793DCC_unk149

	def_text_script CompText8793DCC_unk150

	def_text_script CompText8793DCC_unk151

	def_text_script CompText8793DCC_unk152

	def_text_script CompText8793DCC_unk153

	def_text_script CompText8793DCC_unk154

	def_text_script CompText8793DCC_unk155

	def_text_script CompText8793DCC_unk156

	def_text_script CompText8793DCC_unk157

	def_text_script CompText8793DCC_unk158

	def_text_script CompText8793DCC_unk159

	def_text_script CompText8793DCC_unk160

	def_text_script CompText8793DCC_unk161

	def_text_script CompText8793DCC_unk162

	def_text_script CompText8793DCC_unk163

	def_text_script CompText8793DCC_unk164

	def_text_script CompText8793DCC_unk165

	def_text_script CompText8793DCC_unk166

	def_text_script CompText8793DCC_unk167

	def_text_script CompText8793DCC_unk168

	def_text_script CompText8793DCC_unk169

	def_text_script CompText8793DCC_unk170

	def_text_script CompText8793DCC_unk171

	def_text_script CompText8793DCC_unk172

	def_text_script CompText8793DCC_unk173

	def_text_script CompText8793DCC_unk174

	def_text_script CompText8793DCC_unk175

	def_text_script CompText8793DCC_unk176

	def_text_script CompText8793DCC_unk177

	def_text_script CompText8793DCC_unk178

	def_text_script CompText8793DCC_unk179

	def_text_script CompText8793DCC_unk180

	def_text_script CompText8793DCC_unk181

	def_text_script CompText8793DCC_unk182

	def_text_script CompText8793DCC_unk183

	def_text_script CompText8793DCC_unk184

	def_text_script CompText8793DCC_unk185

	def_text_script CompText8793DCC_unk186

	def_text_script CompText8793DCC_unk187

	def_text_script CompText8793DCC_unk188

	def_text_script CompText8793DCC_unk189

	def_text_script CompText8793DCC_unk190

	def_text_script CompText8793DCC_unk191

	def_text_script CompText8793DCC_unk192

	def_text_script CompText8793DCC_unk193

	def_text_script CompText8793DCC_unk194

	def_text_script CompText8793DCC_unk195

	def_text_script CompText8793DCC_unk196

	def_text_script CompText8793DCC_unk197

	def_text_script CompText8793DCC_unk198

	def_text_script CompText8793DCC_unk199

	def_text_script CompText8793DCC_unk200

	def_text_script CompText8793DCC_unk201

	def_text_script CompText8793DCC_unk202

	def_text_script CompText8793DCC_unk203

	def_text_script CompText8793DCC_unk204

	def_text_script CompText8793DCC_unk205

	def_text_script CompText8793DCC_unk206

	def_text_script CompText8793DCC_unk207

	def_text_script CompText8793DCC_unk208

	def_text_script CompText8793DCC_unk209

	def_text_script CompText8793DCC_unk210

	def_text_script CompText8793DCC_unk211

	def_text_script CompText8793DCC_unk212

	def_text_script CompText8793DCC_unk213

	def_text_script CompText8793DCC_unk214

	def_text_script CompText8793DCC_unk215

	def_text_script CompText8793DCC_unk216

	def_text_script CompText8793DCC_unk217

	def_text_script CompText8793DCC_unk218

	def_text_script CompText8793DCC_unk219

	def_text_script CompText8793DCC_unk220

	def_text_script CompText8793DCC_unk221

	def_text_script CompText8793DCC_unk222

	def_text_script CompText8793DCC_unk223

	def_text_script CompText8793DCC_unk224

	def_text_script CompText8793DCC_unk225

	def_text_script CompText8793DCC_unk226

	def_text_script CompText8793DCC_unk227

	def_text_script CompText8793DCC_unk228

	def_text_script CompText8793DCC_unk229

	def_text_script CompText8793DCC_unk230

	def_text_script CompText8793DCC_unk231

	def_text_script CompText8793DCC_unk232

	def_text_script CompText8793DCC_unk233

	def_text_script CompText8793DCC_unk234

	def_text_script CompText8793DCC_unk235

	def_text_script CompText8793DCC_unk236

	def_text_script CompText8793DCC_unk237

	def_text_script CompText8793DCC_unk238

	def_text_script CompText8793DCC_unk239

	def_text_script CompText8793DCC_unk240

	def_text_script CompText8793DCC_unk241

	def_text_script CompText8793DCC_unk242

	def_text_script CompText8793DCC_unk243

	def_text_script CompText8793DCC_unk244

	def_text_script CompText8793DCC_unk245

	def_text_script CompText8793DCC_unk246

	def_text_script CompText8793DCC_unk247

	def_text_script CompText8793DCC_unk248

	def_text_script CompText8793DCC_unk249

	def_text_script CompText8793DCC_unk250

	def_text_script CompText8793DCC_unk251

	def_text_script CompText8793DCC_unk252

	def_text_script CompText8793DCC_unk253

	def_text_script CompText8793DCC_unk254

	