	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875A918::
	.word 0xCAC00

	text_archive_start

	def_text_script CompText875A918_unk0
	ts_flag_set 0x4F, 0x5
	ts_msg_open
	.string "There is a recording\n"
	.string "playing."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"The alligator is a\n"
	.string " reptile that lives\n"
	.string " on land and"
	ts_key_wait 0x0
	ts_clear_msg
	.string " in water. It mostly\n"
	.string " lives in warm to\n"
	.string " tropical areas.\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_check_flag 0x54, 0x5, 0x6, 0xFF
	ts_check_flag 0x47, 0x5, 0xFF, 0x6
	ts_check_flag 0x48, 0x5, 0xFF, 0x6
	ts_check_flag 0x49, 0x5, 0xFF, 0x6
	ts_check_flag 0x4A, 0x5, 0xFF, 0x6
	ts_check_flag 0x4B, 0x5, 0xFF, 0x6
	ts_check_flag 0x4C, 0x5, 0xFF, 0x6
	ts_check_flag 0x4D, 0x5, 0xFF, 0x6
	ts_check_flag 0x4E, 0x5, 0xFF, 0x6
	ts_check_flag 0x4F, 0x5, 0xFF, 0x6
	ts_check_flag 0x50, 0x5, 0xFF, 0x6
	ts_check_flag 0x51, 0x5, 0xFF, 0x6
	ts_check_flag 0x52, 0x5, 0xFF, 0x6
	ts_check_flag 0x53, 0x5, 0xFF, 0x6
	ts_jump 5

	def_text_script CompText875A918_unk1
	ts_flag_set 0x50, 0x5
	ts_msg_open
	.string "There is a recording\n"
	.string "playing."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"The elephant seal\n"
	.string " has the largest\n"
	.string " body of all seals."
	ts_key_wait 0x0
	ts_clear_msg
	.string " It's name comes\n"
	.string " the fact that when\n"
	.string " male elephant seals"
	ts_key_wait 0x0
	ts_clear_msg
	.string " trumpet from their\n"
	.string " noses,they sound\n"
	.string " like elephants.\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_check_flag 0x54, 0x5, 0x6, 0xFF
	ts_check_flag 0x47, 0x5, 0xFF, 0x6
	ts_check_flag 0x48, 0x5, 0xFF, 0x6
	ts_check_flag 0x49, 0x5, 0xFF, 0x6
	ts_check_flag 0x4A, 0x5, 0xFF, 0x6
	ts_check_flag 0x4B, 0x5, 0xFF, 0x6
	ts_check_flag 0x4C, 0x5, 0xFF, 0x6
	ts_check_flag 0x4D, 0x5, 0xFF, 0x6
	ts_check_flag 0x4E, 0x5, 0xFF, 0x6
	ts_check_flag 0x4F, 0x5, 0xFF, 0x6
	ts_check_flag 0x50, 0x5, 0xFF, 0x6
	ts_check_flag 0x51, 0x5, 0xFF, 0x6
	ts_check_flag 0x52, 0x5, 0xFF, 0x6
	ts_check_flag 0x53, 0x5, 0xFF, 0x6
	ts_jump 5

	def_text_script CompText875A918_unk2
	ts_flag_set 0x51, 0x5
	ts_msg_open
	.string "There is a recording\n"
	.string "playing."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"Penguins are birds,\n"
	.string " however,their wings"
	ts_key_wait 0x0
	ts_clear_msg
	.string " have become useless\n"
	.string " for flying,and\n"
	.string " act more like fins."
	ts_key_wait 0x0
	ts_clear_msg
	.string " It's possible they\n"
	.string " used to fly a very\n"
	.string " long time ago.\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_check_flag 0x54, 0x5, 0x6, 0xFF
	ts_check_flag 0x47, 0x5, 0xFF, 0x6
	ts_check_flag 0x48, 0x5, 0xFF, 0x6
	ts_check_flag 0x49, 0x5, 0xFF, 0x6
	ts_check_flag 0x4A, 0x5, 0xFF, 0x6
	ts_check_flag 0x4B, 0x5, 0xFF, 0x6
	ts_check_flag 0x4C, 0x5, 0xFF, 0x6
	ts_check_flag 0x4D, 0x5, 0xFF, 0x6
	ts_check_flag 0x4E, 0x5, 0xFF, 0x6
	ts_check_flag 0x4F, 0x5, 0xFF, 0x6
	ts_check_flag 0x50, 0x5, 0xFF, 0x6
	ts_check_flag 0x51, 0x5, 0xFF, 0x6
	ts_check_flag 0x52, 0x5, 0xFF, 0x6
	ts_check_flag 0x53, 0x5, 0xFF, 0x6
	ts_jump 5

	def_text_script CompText875A918_unk3
	ts_flag_set 0x52, 0x5
	ts_msg_open
	.string "There is a recording\n"
	.string "playing."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"There are 300 to\n"
	.string " 400 kinds of sharks\n"
	.string " in the world."
	ts_key_wait 0x0
	ts_clear_msg
	.string " \"Shark fin soup\" is\n"
	.string " a famous food that\n"
	.string " really has sharks'"
	ts_key_wait 0x0
	ts_clear_msg
	.string " fins in it!\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_check_flag 0x54, 0x5, 0x6, 0xFF
	ts_check_flag 0x47, 0x5, 0xFF, 0x6
	ts_check_flag 0x48, 0x5, 0xFF, 0x6
	ts_check_flag 0x49, 0x5, 0xFF, 0x6
	ts_check_flag 0x4A, 0x5, 0xFF, 0x6
	ts_check_flag 0x4B, 0x5, 0xFF, 0x6
	ts_check_flag 0x4C, 0x5, 0xFF, 0x6
	ts_check_flag 0x4D, 0x5, 0xFF, 0x6
	ts_check_flag 0x4E, 0x5, 0xFF, 0x6
	ts_check_flag 0x4F, 0x5, 0xFF, 0x6
	ts_check_flag 0x50, 0x5, 0xFF, 0x6
	ts_check_flag 0x51, 0x5, 0xFF, 0x6
	ts_check_flag 0x52, 0x5, 0xFF, 0x6
	ts_check_flag 0x53, 0x5, 0xFF, 0x6
	ts_jump 5

	def_text_script CompText875A918_unk4
	ts_flag_set 0x53, 0x5
	ts_msg_open
	.string "There is a recording\n"
	.string "playing."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"Dolphins are in\n"
	.string " actuality,related\n"
	.string " to whales."
	ts_key_wait 0x0
	ts_clear_msg
	.string " Dolphins are less\n"
	.string " than 12 feet long,"
	ts_key_wait 0x0
	ts_clear_msg
	.string " while anything over\n"
	.string " that is considered\n"
	.string " a whale.\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_check_flag 0x54, 0x5, 0x6, 0xFF
	ts_check_flag 0x47, 0x5, 0xFF, 0x6
	ts_check_flag 0x48, 0x5, 0xFF, 0x6
	ts_check_flag 0x49, 0x5, 0xFF, 0x6
	ts_check_flag 0x4A, 0x5, 0xFF, 0x6
	ts_check_flag 0x4B, 0x5, 0xFF, 0x6
	ts_check_flag 0x4C, 0x5, 0xFF, 0x6
	ts_check_flag 0x4D, 0x5, 0xFF, 0x6
	ts_check_flag 0x4E, 0x5, 0xFF, 0x6
	ts_check_flag 0x4F, 0x5, 0xFF, 0x6
	ts_check_flag 0x50, 0x5, 0xFF, 0x6
	ts_check_flag 0x51, 0x5, 0xFF, 0x6
	ts_check_flag 0x52, 0x5, 0xFF, 0x6
	ts_check_flag 0x53, 0x5, 0xFF, 0x6
	ts_jump 5

	def_text_script CompText875A918_unk5
	ts_flag_set 0x54, 0x5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Wow!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There are all sorts\n"
	.string "of things that live\n"
	.string "in the water!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I could stare at\n"
	.string "them all day!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x4F, 0x1
	.string "*ding,dong,\n"
	.string "    ding,doooong*"
	ts_wait 0x62, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Oh,an announcement!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Attention all\n"
	.string "visitors."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The Dolphin and\n"
	.string "Seal's Show will\n"
	.string "begin shortly."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We hope to see you\n"
	.string "there!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Sounds like there's\n"
	.string "a show!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It might be fun!\n"
	.string "Let's check it out!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875A918_unk6
	ts_end

	def_text_script CompText875A918_unk7
	ts_check_chapter 0x22, 0x23, 0xD, 0xFF
	ts_msg_open
	.string "There is a large\n"
	.string "monitor installed\n"
	.string "into the wall here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "A short movie,\n"
	.string "\"Mysteries of the\n"
	.string " Deep\" is showing."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can jack in to\n"
	.string "the monitor!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875A918_unk8
	ts_msg_open
	.string "\"This way to the\n"
	.string " show stage!\""
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875A918_unk9
	ts_msg_open
	.string "There is a bench\n"
	.string "next to these three\n"
	.string "vending machines."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The bench is for\n"
	.string "people when they\n"
	.string "need to take a rest."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875A918_unk10
	ts_check_flag 0x30, 0x5, 0xF, 0xFF
	ts_check_flag 0x1A, 0x5, 0x10, 0xFF
	ts_jump 15

	def_text_script CompText875A918_unk11
	ts_check_flag 0x30, 0x5, 0x11, 0xFF
	ts_check_flag 0x1A, 0x5, 0x12, 0xFF
	ts_jump 17

	def_text_script CompText875A918_unk12
	ts_msg_open
	.string "It's the monitor's\n"
	.string "speaker."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"The sea is the\n"
	.string " mother of all\n"
	.string " living things..."
	ts_key_wait 0x0
	ts_clear_msg
	.string " All 7 continents\n"
	.string " are surrounded by\n"
	.string " the oceans...\""
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875A918_unk13
	ts_msg_open
	.string "The image on the\n"
	.string "monitor is a mess."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It seems to be\n"
	.string "broken. You also\n"
	.string "can't jack in."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875A918_unk14
	ts_msg_open
	.string "There is a bench\n"
	.string "next to these three\n"
	.string "vending machines."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The bench is for\n"
	.string "people when they\n"
	.string "need to take a rest."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875A918_unk15
	ts_msg_open
	.string "You can see the\n"
	.string "dolphins underwater\n"
	.string "from here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Their beauty makes\n"
	.string "it easy to lose\n"
	.string "track of time."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875A918_unk16
	ts_msg_open
	.string "The dolphins are\n"
	.string "missing from their\n"
	.string "tank..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875A918_unk17
	ts_msg_open
	.string "The alligator cage\n"
	.string "is locked tight."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875A918_unk18
	ts_msg_open
	.string "The cage door is\n"
	.string "hanging wide open..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875A918_unk19

	def_text_script CompText875A918_unk20
	ts_check_flag 0x63, 0x1, 0xE, 0xFF
	ts_check_flag 0x1F, 0x1, 0x1B, 0xFF
	ts_check_flag 0xE0, 0xC, 0xFF, 0x18
	ts_check_flag 0xE3, 0xC, 0x15, 0xFF
	ts_flag_set 0xE3, 0xC
	ts_jump 22

	def_text_script CompText875A918_unk21
	ts_check_flag 0x1D, 0x17, 0xFF, 0x19
	ts_check_game_version 0xFF, 0x17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Operate ChargeMan\n"
	.string "from this vending\n"
	.string "machine?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No\n"
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_end

	def_text_script CompText875A918_unk22
	ts_flag_set 0xE2, 0xC
	ts_end

	def_text_script CompText875A918_unk23
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Operate DustMan\n"
	.string "from this vending\n"
	.string "machine?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No\n"
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_end

	def_text_script CompText875A918_unk24
	ts_check_flag 0x20, 0x1, 0xFF, 0xE
	ts_check_flag 0xE1, 0xC, 0x15, 0xFF
	ts_jump 14

	def_text_script CompText875A918_unk25
	ts_check_game_version 0xFF, 0x1A
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "Choo,choooo!!\n"
	.string "Is it departure\n"
	.string "time?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No\n"
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_end

	def_text_script CompText875A918_unk26
	ts_mugshot_show 0x4E
	ts_msg_open
	.string "Gahahahaha!!\n"
	.string "Is it time to take\n"
	.string "out the trash!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No\n"
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_end

	def_text_script CompText875A918_unk27
	ts_check_game_version 0xFF, 0x1C
	ts_mugshot_show 0x37
	ts_msg_open
	.string "What are you doing,\n"
	.string "Lan!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mr.Ferry's final\n"
	.string "exam is waiting!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875A918_unk28
	ts_mugshot_show 0x37
	ts_msg_open
	.string "What are you doing,\n"
	.string "Lan!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mr.Press's final\n"
	.string "exam is waiting!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875A918_unk29

	