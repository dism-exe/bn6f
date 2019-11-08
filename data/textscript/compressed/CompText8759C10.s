	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8759C10::
	.word 0x42800

	text_archive_start

	def_text_script CompText8759C10_unk0
	ts_jump 1

	def_text_script CompText8759C10_unk1
	ts_msg_open
	.string "The teachers use the\n"
	.string "computer in this\n"
	.string "room for research."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's running an OS\n"
	.string "you've never seen\n"
	.string "before."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8759C10_unk2
	ts_msg_open
	.string "This box is still\n"
	.string "sealed shut."
	ts_key_wait 0x0
	ts_clear_msg
	.string "What could be inside\n"
	.string "it? New materials\n"
	.string "for class...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8759C10_unk3
	ts_msg_open
	.string "There are two stools\n"
	.string "connected together\n"
	.string "here."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8759C10_unk4
	ts_msg_open
	.string "This computer is\n"
	.string "taking a long time\n"
	.string "computing something."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8759C10_unk5
	ts_msg_open
	.string "Important papers are\n"
	.string "piled up on this\n"
	.string "bookshelf."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The sliding doors\n"
	.string "are locked tight."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8759C10_unk6
	ts_msg_open
	.string "There are new\n"
	.string "materials for\n"
	.string "class in this box."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8759C10_unk7

	def_text_script CompText8759C10_unk8

	def_text_script CompText8759C10_unk9

	def_text_script CompText8759C10_unk10

	def_text_script CompText8759C10_unk11

	def_text_script CompText8759C10_unk12

	def_text_script CompText8759C10_unk13

	def_text_script CompText8759C10_unk14

	def_text_script CompText8759C10_unk15

	def_text_script CompText8759C10_unk16

	def_text_script CompText8759C10_unk17

	def_text_script CompText8759C10_unk18

	def_text_script CompText8759C10_unk19

	def_text_script CompText8759C10_unk20
	ts_check_flag 0x63, 0x1, 0x4, 0xFF
	ts_check_flag 0x1F, 0x1, 0x1B, 0xFF
	ts_check_flag 0xDC, 0xC, 0xFF, 0x18
	ts_check_flag 0xDF, 0xC, 0x15, 0xFF
	ts_flag_set 0xDF, 0xC
	ts_jump 22

	def_text_script CompText8759C10_unk21
	ts_check_flag 0x1D, 0x17, 0xFF, 0x19
	ts_check_game_version 0xFF, 0x17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Use this computer to\n"
	.string "operate EraseMan?"
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

	def_text_script CompText8759C10_unk22
	ts_flag_set 0xDE, 0xC
	ts_end

	def_text_script CompText8759C10_unk23
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Use this computer to\n"
	.string "operate GroundMan?"
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

	def_text_script CompText8759C10_unk24
	ts_check_flag 0x20, 0x1, 0xFF, 0x4
	ts_check_flag 0xDD, 0xC, 0x15, 0xFF
	ts_jump 4

	def_text_script CompText8759C10_unk25
	ts_check_game_version 0xFF, 0x1A
	ts_mugshot_show 0x50
	ts_msg_open
	.string "Hiyahahaha!!\n"
	.string "Is it time for\n"
	.string "some deleting!?"
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

	def_text_script CompText8759C10_unk26
	ts_mugshot_show 0x4D
	ts_msg_open
	.string "Whiiiiiir!!\n"
	.string "We gonna do some\n"
	.string "drilling!?"
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

	def_text_script CompText8759C10_unk27
	ts_check_game_version 0xFF, 0x1C
	ts_mugshot_show 0x37
	ts_msg_open
	.string "What are you doing,\n"
	.string "Lan!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Dark Scyth's final\n"
	.string "exam is waiting!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8759C10_unk28
	ts_mugshot_show 0x37
	ts_msg_open
	.string "What are you doing,\n"
	.string "Lan!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Moliarty's final\n"
	.string "exam is waiting!!"
	ts_key_wait 0x0
	ts_end

	