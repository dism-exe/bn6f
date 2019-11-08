	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875BFD8::
	.word 0x33C00

	text_archive_start

	def_text_script CompText875BFD8_unk0
	ts_msg_open
	.string "The elevator's core.\n"
	.string "For maintenance\n"
	.string "reasons,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "there is a port for\n"
	.string "jacking in."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875BFD8_unk1
	ts_msg_open
	.string "You can almost see\n"
	.string "what is inside\n"
	.string "through this window."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875BFD8_unk2
	ts_msg_open
	.string "It's locked...\n"
	.string "No unauthorized\n"
	.string "personnel allowed."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875BFD8_unk3
	ts_msg_open
	.string "A control panel for\n"
	.string "the helipad."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875BFD8_unk4

	def_text_script CompText875BFD8_unk5

	def_text_script CompText875BFD8_unk6

	def_text_script CompText875BFD8_unk7

	def_text_script CompText875BFD8_unk8

	def_text_script CompText875BFD8_unk9

	def_text_script CompText875BFD8_unk10

	def_text_script CompText875BFD8_unk11

	def_text_script CompText875BFD8_unk12

	def_text_script CompText875BFD8_unk13

	def_text_script CompText875BFD8_unk14

	def_text_script CompText875BFD8_unk15

	def_text_script CompText875BFD8_unk16

	def_text_script CompText875BFD8_unk17

	def_text_script CompText875BFD8_unk18

	def_text_script CompText875BFD8_unk19

	def_text_script CompText875BFD8_unk20
	ts_check_flag 0x63, 0x1, 0x3, 0xFF
	ts_check_flag 0x1F, 0x1, 0x1B, 0xFF
	ts_check_flag 0xBA, 0xA, 0xFF, 0x18
	ts_check_flag 0xBD, 0xA, 0x15, 0xFF
	ts_flag_set 0xBD, 0xA
	ts_jump 22

	def_text_script CompText875BFD8_unk21
	ts_check_flag 0x1D, 0x17, 0xFF, 0x19
	ts_check_game_version 0xFF, 0x17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Operate ElecMan from\n"
	.string "this control panel?"
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

	def_text_script CompText875BFD8_unk22
	ts_flag_set 0xBC, 0xA
	ts_end

	def_text_script CompText875BFD8_unk23
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Operate TomahawkMan\n"
	.string "from this control\n"
	.string "panel?"
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

	def_text_script CompText875BFD8_unk24
	ts_check_flag 0x20, 0x1, 0xFF, 0x3
	ts_check_flag 0xBB, 0xA, 0x15, 0xFF
	ts_jump 3

	def_text_script CompText875BFD8_unk25
	ts_check_game_version 0xFF, 0x1A
	ts_mugshot_show 0x49
	ts_msg_open
	.string "... What? Are you\n"
	.string "going to operate me?"
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

	def_text_script CompText875BFD8_unk26
	ts_mugshot_show 0x4A
	ts_msg_open
	.string "Yo,Lan!\n"
	.string "Do you need my help?"
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

	def_text_script CompText875BFD8_unk27
	ts_check_game_version 0xFF, 0x1C
	ts_mugshot_show 0x37
	ts_msg_open
	.string "What are you doing,\n"
	.string "Lan!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ms.Zap's final exam\n"
	.string "is waiting!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875BFD8_unk28
	ts_mugshot_show 0x37
	ts_msg_open
	.string "What are you doing,\n"
	.string "Lan!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Dingo's final exam\n"
	.string "is waiting!!"
	ts_key_wait 0x0
	ts_end

	