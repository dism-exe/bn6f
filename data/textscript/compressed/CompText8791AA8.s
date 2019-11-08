	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8791AA8::
	.word 0xD4C00

	text_archive_start

	def_text_script CompText8791AA8_unk0
	ts_check_chapter 0x42, 0x42, 0x19, 0xFF
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "I'll show you my\n"
	.string "true power!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk1
	ts_mugshot_show 0x45
	ts_msg_open
	.string "Hey,isn't the test\n"
	.string "this time a little\n"
	.string "too hard!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There's no way I\n"
	.string "can win!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk2
	ts_check_chapter 0x42, 0x42, 0x1A, 0xFF
	ts_mugshot_show 0x41
	ts_msg_open
	.string "*gasp!*\n"
	.string "Five consecutive\n"
	.string "battles!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder if I'm up\n"
	.string "to it..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk3

	def_text_script CompText8791AA8_unk4

	def_text_script CompText8791AA8_unk5

	def_text_script CompText8791AA8_unk6

	def_text_script CompText8791AA8_unk7

	def_text_script CompText8791AA8_unk8

	def_text_script CompText8791AA8_unk9

	def_text_script CompText8791AA8_unk10
	ts_check_flag 0x67, 0xA, 0xE, 0xFF
	ts_check_flag 0x63, 0xA, 0xB, 0xFF
	ts_flag_set 0x63, 0xA
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I am the Level 1\n"
	.string "judge..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Will you try 3\n"
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

	def_text_script CompText8791AA8_unk11
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I am the Level 1\n"
	.string "judge..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Will you try 3\n"
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

	def_text_script CompText8791AA8_unk12
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Here it comes!\n"
	.string "Battle START!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x90, 0xA
	ts_end

	def_text_script CompText8791AA8_unk13
	ts_mugshot_show 0x42
	ts_msg_open
	.string "You're a natural!!\n"
	.string "Congratulations!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please take this!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_flag_set 0x67, 0xA
	ts_item_give 0x10, 0x1
	ts_player_animate_scene 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x1, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Alright!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk14
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Those were some\n"
	.string "super techniques!\n"
	.string "Congratulations!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk15
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

	def_text_script CompText8791AA8_unk16
	ts_check_flag 0x68, 0xA, 0x14, 0xFF
	ts_check_flag 0x64, 0xA, 0x11, 0xFF
	ts_flag_set 0x64, 0xA
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I am the Level 2\n"
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
	ts_select 0x6, 0x80, 0x12, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Oh,OK..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk17
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I am the Level 2\n"
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
	ts_select 0x6, 0x80, 0x12, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x42
	.string "Oh,OK..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk18
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Ready!?\n"
	.string "Battle START!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0x91, 0xA
	ts_end

	def_text_script CompText8791AA8_unk19
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Congratulations!\n"
	.string "You're really good!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,here you are!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_flag_set 0x68, 0xA
	ts_item_give 0x11, 0x1
	ts_player_animate_scene 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x1, 0x10
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Alright!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk20
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Congratulations!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk21
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

	def_text_script CompText8791AA8_unk22

	def_text_script CompText8791AA8_unk23

	def_text_script CompText8791AA8_unk24

	def_text_script CompText8791AA8_unk25
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "*huff,huff...*\n"
	.string "Consecutive...\n"
	.string "... battles"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can't... take\n"
	.string "... any more..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk26
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Curses!\n"
	.string "If only I had saved\n"
	.string "that chip..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk27

	def_text_script CompText8791AA8_unk28

	def_text_script CompText8791AA8_unk29

	def_text_script CompText8791AA8_unk30
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I'm a little worried\n"
	.string "since I heard..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Is Sky Town alright?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk31
	ts_mugshot_show 0x42
	ts_msg_open
	.string "To stop outsiders\n"
	.string "from hacking in,Sky\n"
	.string "Town has moved its"
	ts_key_wait 0x0
	ts_clear_msg
	.string "HP from the Main\n"
	.string "System to \"that\"\n"
	.string "place."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That stops intruders\n"
	.string "from getting in,but\n"
	.string "at the same time,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it stops our own\n"
	.string "people from getting\n"
	.string "in..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hmm,maybe it's not\n"
	.string "quite as alright as\n"
	.string "it sounds..."
	ts_key_wait 0x0
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
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "COME! YOU TOO CAN\n"
	.string "FLAP YOUR WINGS IN\n"
	.string "SKY AREA!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WE CAN FLY!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk41
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Hey,did you hear?\n"
	.string "People say the Force\n"
	.string "Program was stolen."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk42
	ts_mugshot_show 0x45
	ts_msg_open
	.string "What!? Isn't that\n"
	.string "really bad!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Isn't that bad for\n"
	.string "this area too...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk43
	ts_mugshot_show 0x40
	ts_msg_open
	.string "Sky Area is full of\n"
	.string "big hills that make\n"
	.string "my life difficult!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder if they can\n"
	.string "make it easier for\n"
	.string "an old Navi like me?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk44

	def_text_script CompText8791AA8_unk45
	ts_check_flag 0x20, 0xC, 0x3C, 0xFF
	ts_check_flag 0x1E, 0xC, 0x37, 0xFF
	ts_check_flag 0x1A, 0xC, 0x32, 0xFF
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Have you seen the\n"
	.string "Expo commercial?\n"
	.string "Isn't it cool!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x45
	.string "Yeah! Totally!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm getting\n"
	.string "impatient waiting\n"
	.string "for it to open!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk46
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "I WILL NOT LOSE TO\n"
	.string "THE EXPO COMMERCIAL!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "SKY AREA IS WORKING\n"
	.string "ENTHUSIASTICALLY\n"
	.string "TOO!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... COME,LET'S ALL\n"
	.string "YELL IT TOGETHER!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WE CAN FLY!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk47
	ts_mugshot_show 0x40
	ts_msg_open
	.string "Phew,I finally made\n"
	.string "it up here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This area is really\n"
	.string "too much for an old\n"
	.string "Navi like me..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk48

	def_text_script CompText8791AA8_unk49

	def_text_script CompText8791AA8_unk50
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Have you seen the\n"
	.string "Expo commercial?\n"
	.string "It's sooooooo cool!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x45
	.string "Yeah! I've even\n"
	.string "recorded it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've watched it so\n"
	.string "much that I've lost\n"
	.string "count!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk51

	def_text_script CompText8791AA8_unk52

	def_text_script CompText8791AA8_unk53

	def_text_script CompText8791AA8_unk54

	def_text_script CompText8791AA8_unk55
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Huh!? There's some-\n"
	.string "thing going on in\n"
	.string "the real world!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x45
	.string "Yeah... I hear a\n"
	.string "Navi in a CopyBot\n"
	.string "is going nuts."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8791AA8_unk56

	def_text_script CompText8791AA8_unk57

	def_text_script CompText8791AA8_unk58

	def_text_script CompText8791AA8_unk59

	def_text_script CompText8791AA8_unk60
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Seaside Town sounds\n"
	.string "like it had a tough\n"
	.string "time."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x45
	.string "Yes,but thankfully\n"
	.string "and luckily,no one\n"
	.string "was hurt."
	ts_key_wait 0x0
	ts_end

	