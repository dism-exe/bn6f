	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8793DCC::
	.word 0xE5E00

	text_archive_start

	def_text_script CompText8793DCC_unk0
	ts_mugshot_show 0x57
	ts_msg_open
	.string "Hehe,we'll win...\n"
	.string "Just you wait!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We've had a few\n"
	.string "close calls because\n"
	.string "of Mick's operating,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but on my skills\n"
	.string "alone,we'll win!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hmph,it's such a\n"
	.string "bother to have such\n"
	.string "a useless operator."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk1
	ts_check_chapter 0x42, 0x42, 0x19, 0xFF
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "*huff... hack,hack*\n"
	.string "No... good...\n"
	.string "... Can't go on..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk2
	ts_mugshot_show 0x42
	ts_msg_open
	.string "... Test?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm just a tourist,\n"
	.string "so what's this about\n"
	.string "a test...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk3

	def_text_script CompText8793DCC_unk4

	def_text_script CompText8793DCC_unk5

	def_text_script CompText8793DCC_unk6

	def_text_script CompText8793DCC_unk7

	def_text_script CompText8793DCC_unk8

	def_text_script CompText8793DCC_unk9

	def_text_script CompText8793DCC_unk10
	ts_check_flag 0x69, 0xA, 0xE, 0xFF
	ts_check_flag 0x65, 0xA, 0xB, 0xFF
	ts_flag_set 0x65, 0xA
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I am the Level 3\n"
	.string "judge..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Will you try 5\n"
	.string "consecutive virus\n"
	.string "battles?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Oh,OK..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk11
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I am the Level 3\n"
	.string "judge..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Will you try 5\n"
	.string "consecutive virus\n"
	.string "battles?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Oh,OK..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk12
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Good luck...\n"
	.string "Battle START!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x92, 0xA
	ts_end

	def_text_script CompText8793DCC_unk13
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Spleeeeendid!!\n"
	.string "Such fluid\n"
	.string "technique!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I present this to\n"
	.string "you..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_flag_set 0x69, 0xA
	ts_item_give 0x12, 0x1
	ts_player_animate_scene 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x1, 0x20
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Alright!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk14
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Spleeeeendid!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk15
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Too bad!\n"
	.string "Would you like to\n"
	.string "try again?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Oh,OK..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk16
	ts_check_flag 0x6A, 0xA, 0x14, 0xFF
	ts_check_flag 0x66, 0xA, 0x11, 0xFF
	ts_flag_set 0x66, 0xA
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I am the Level 4\n"
	.string "judge..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Will you try 10\n"
	.string "consecutive virus\n"
	.string "battles?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x12, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Oh,OK..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk17
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I am the Level 4\n"
	.string "judge..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Will you try 10\n"
	.string "consecutive virus\n"
	.string "battles?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x12, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Oh,OK..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk18
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Think you can take\n"
	.string "on 10 consecutive\n"
	.string "battles!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Battle STAAAAAAART!!\n"
	.string "*huff,huff!!*"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x93, 0xA
	ts_end

	def_text_script CompText8793DCC_unk19
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Hmm... Victory!!\n"
	.string "You breezed through\n"
	.string "that!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can see your power\n"
	.string "and speed techniques\n"
	.string "are blended well!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well then,here you\n"
	.string "are..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_flag_set 0x6A, 0xA
	ts_item_give 0x13, 0x1
	ts_player_animate_scene 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x1, 0x30
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Alright!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk20
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I have never seen\n"
	.string "such beautiful\n"
	.string "battles as yours!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk21
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Too bad!\n"
	.string "Would you like to\n"
	.string "try again?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x12, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Oh,OK..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk22
	ts_check_chapter 0x42, 0x42, 0x1A, 0xFF
	ts_check_flag 0x67, 0xA, 0xFF, 0x17
	ts_check_flag 0x68, 0xA, 0xFF, 0x17
	ts_check_flag 0x69, 0xA, 0xFF, 0x17
	ts_check_flag 0x6A, 0xA, 0xFF, 0x17
	ts_flag_set 0x98, 0xA
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText8793DCC_unk23
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Please search out\n"
	.string "the 4 judges in Sky\n"
	.string "Area,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and get the 4\n"
	.string "\"WinCards\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Good luck!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk24

	def_text_script CompText8793DCC_unk25
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "*hack,hack...*\n"
	.string "No good...\n"
	.string "Still can't stand..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk26
	ts_mugshot_show 0x41
	ts_msg_open
	.string "G-Go to the\n"
	.string "Undernet!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You should give up!\n"
	.string "Going there!? You'll\n"
	.string "get hurt badly and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you'll be at a huge\n"
	.string "disadvantage!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk27

	def_text_script CompText8793DCC_unk28

	def_text_script CompText8793DCC_unk29

	def_text_script CompText8793DCC_unk30
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THE REAL WORLD SEEMS\n"
	.string "TO BE IN A MESS. DID\n"
	.string "SOMETHING HAPPEN?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk31
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Heh,just when I\n"
	.string "thought the Operator\n"
	.string "Navi Selection Test"
	ts_key_wait 0x0
	ts_clear_msg
	.string "was over,and things\n"
	.string "would calm down,it\n"
	.string "gets noisy again."
	ts_key_wait 0x0
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
	ts_mugshot_show 0x46
	ts_msg_open
	.string "Aaaaaaaah!\n"
	.string "Whyyyyy can't\n"
	.string "I go there!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Someone teeeell me!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk41
	ts_mugshot_show 0x41
	ts_msg_open
	.string "... You know,I think\n"
	.string "about this from time\n"
	.string "to time..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "About how if I could\n"
	.string "freely fly around\n"
	.string "like a bird..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm sure it would be\n"
	.string "fun!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk42
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "The finals of the\n"
	.string "Operator Navi\n"
	.string "Selection Test!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Wow! Great!!\n"
	.string "What an honor to\n"
	.string "make it so far!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk43

	def_text_script CompText8793DCC_unk44

	def_text_script CompText8793DCC_unk45
	ts_check_flag 0x20, 0xC, 0x3C, 0xFF
	ts_check_flag 0x1E, 0xC, 0x37, 0xFF
	ts_check_flag 0x1A, 0xC, 0x32, 0xFF
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Ah! Y-You're the\n"
	.string "Navi in the\n"
	.string "commercial,right!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "U-Uh... Um..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "P-Please sign this!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk46
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Ummm...This is a\n"
	.string "strange question,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but if you could\n"
	.string "be something else,\n"
	.string "what would you be?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I would totally be\n"
	.string "a bird!! Then I\n"
	.string "could fly all over!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...I wish someone\n"
	.string "would give me wings."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk47
	ts_mugshot_show 0x46
	ts_msg_open
	.string "Arrrgggghhh!!\n"
	.string "I don't get this\n"
	.string "at all!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How can I get\n"
	.string "over there!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk48

	def_text_script CompText8793DCC_unk49

	def_text_script CompText8793DCC_unk50
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "I'm collecting\n"
	.string "autographs from\n"
	.string "famous people."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Right now,I'm trying\n"
	.string "to get one from the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Navi in the Expo\n"
	.string "commercial."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hey,you wouldn't\n"
	.string "happen to have his\n"
	.string "autograph,would you?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk51

	def_text_script CompText8793DCC_unk52

	def_text_script CompText8793DCC_unk53

	def_text_script CompText8793DCC_unk54

	def_text_script CompText8793DCC_unk55
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "An incident in\n"
	.string "Seaside Town?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I didn't hear about\n"
	.string "it...\n"
	.string "Oh,is that so..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8793DCC_unk56

	def_text_script CompText8793DCC_unk57

	def_text_script CompText8793DCC_unk58

	def_text_script CompText8793DCC_unk59

	def_text_script CompText8793DCC_unk60
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Why is it we've had\n"
	.string "nothing but bad\n"
	.string "things happen...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Why can't everyone\n"
	.string "live in peace!?"
	ts_key_wait 0x0
	ts_end

	