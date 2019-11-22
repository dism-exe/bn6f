	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8760910::
	.word 0x5F600

	text_archive_start

	def_text_script CompText8760910_unk0
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "Sky Area1 on it."
	ts_key_wait 0x0
	ts_start_map 0x8
	ts_end

	def_text_script CompText8760910_unk1
	ts_end

	def_text_script CompText8760910_unk2
	ts_end

	def_text_script CompText8760910_unk3
	ts_check_chapter 0x48, 0x48, 0x10, 0xFF
	ts_msg_open
	.string "\"Welcome\n"
	.string "       to the\n"
	.string "            NetCafe\""
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8760910_unk4
	ts_check_navi_all 0xFF, 0xFF, 0x6, 0xFF, 0x7, 0xFF, 0xFF, 0x8, 0xFF, 0xFF, 0x9, 0xFF
	ts_check_item07 0x1C, 0x1, 0x11, 0x11, 0xFF
	ts_msg_open
	.string "A thick,dense cloud\n"
	.string "is blocking the way!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8760910_unk5
	ts_check_navi_all 0xFF, 0xB, 0xFF, 0xC, 0xFF, 0xFF, 0xFF, 0xD, 0xFF, 0xE, 0xFF, 0xFF
	ts_check_item07 0x42, 0x1, 0x12, 0x12, 0xFF
	ts_msg_open
	.string "A strong-looking\n"
	.string "cybertree is\n"
	.string "blocking the way..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8760910_unk6
	ts_mugshot_show 0x49
	ts_msg_open
	.string "These thunderclouds\n"
	.string "are just what I\n"
	.string "like..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Zaaaaaap!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xC6, 0x0
	ts_wait 0x1E, 0x0
	.string "ElecMan's lightning\n"
	.string "dispersed the cloud!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText8760910_unk7
	ts_mugshot_show 0x50
	ts_msg_open
	.string "Hiyahaha!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "My Hex Sickle can\n"
	.string "cut even shapeless\n"
	.string "things!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xC7, 0x0
	ts_wait 0x1E, 0x0
	.string "EraseMan's Hex\n"
	.string "Sickle cut through\n"
	.string "the cloud!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText8760910_unk8
	ts_mugshot_show 0x4A
	ts_msg_open
	.string "Hey,cloud!\n"
	.string "Here's a Tomahawk\n"
	.string "Swing for you!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xA, 0x1
	ts_wait 0x1E, 0x0
	.string "The Tomahawk Swing's\n"
	.string "strong wind blew the\n"
	.string "cloud away!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText8760910_unk9
	ts_mugshot_show 0x4E
	ts_msg_open
	.string "This cloud's just\n"
	.string "like that junk over\n"
	.string "there!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xAD, 0x0
	ts_wait 0x1E, 0x0
	.string "DustMan sucked up\n"
	.string "the cloud!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText8760910_unk10
	ts_flag_clear 0x79, 0x1
	ts_end

	def_text_script CompText8760910_unk11
	ts_mugshot_show 0x47
	ts_msg_open
	.string "This tree is toast!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Burn,baby,burn!\n"
	.string "Yeah!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xF7, 0x0
	ts_wait 0x1E, 0x0
	.string "HeatMan's raging\n"
	.string "flames burned the\n"
	.string "cybertree to ashes!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText8760910_unk12
	ts_mugshot_show 0x4B
	ts_msg_open
	.string "Slice and dice!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Slaaaaaaaash!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xFA, 0x0
	ts_wait 0x1E, 0x0
	.string "SlashMan's powerful\n"
	.string "attack cut the\n"
	.string "cybertree down!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText8760910_unk13
	ts_mugshot_show 0x4A
	ts_msg_open
	.string "Heh,this tree will\n"
	.string "fall in no time\n"
	.string "flat!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Tomahawk Swing!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xA, 0x1
	ts_wait 0x1E, 0x0
	.string "The cybertree was\n"
	.string "split into two!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText8760910_unk14
	ts_mugshot_show 0x4D
	ts_msg_open
	.string "Whiiiiiir!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll uproot this\n"
	.string "tree from the bottom\n"
	.string "up!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Whiiiiiir!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xBF, 0x1
	ts_wait 0x1E, 0x0
	.string "GroundMan's charge\n"
	.string "dug the cybertree\n"
	.string "out,roots and all!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText8760910_unk15
	ts_flag_clear 0x6A, 0x1
	ts_end

	def_text_script CompText8760910_unk16
	ts_msg_open
	.string "It seems to have\n"
	.string "run out of energy,\n"
	.string "so it's not lit..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8760910_unk17
	ts_msg_open
	.string "A thick,dense cloud\n"
	.string "is blocking the way!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's too thick for\n"
	.string "the "
	ts_print_item 0x1C, 0x0
	.string " to\n"
	.string "suck up."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8760910_unk18
	ts_msg_open
	.string "A strong-looking\n"
	.string "cybertree is\n"
	.string "blocking the way..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "and the "
	ts_print_item 0x42, 0x0
	.string "\n"
	.string "is too weak to cut\n"
	.string "it down."
	ts_key_wait 0x0
	ts_end

	