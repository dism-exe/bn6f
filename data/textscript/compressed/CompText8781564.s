	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8781564::
	.word 0x32400

	text_archive_start

	def_text_script CompText8781564_unk0
	ts_check_chapter 0x45, 0x46, 0x2, 0xFF
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Ahh! Don't go over\n"
	.string "there yet!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781564_unk1
	ts_check_chapter 0x42, 0x42, 0x3, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,this isn't the\n"
	.string "right way,is it?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781564_unk2
	ts_msg_open
	.string "The elevator is\n"
	.string "stopped..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781564_unk3
	ts_msg_open
	.string "The elevator won't\n"
	.string "move..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781564_unk4

	def_text_script CompText8781564_unk5
	ts_check_flag 0x2E, 0x11, 0x9, 0xFF
	ts_check_flag 0x2D, 0x11, 0x6, 0xFF
	ts_mugshot_show 0x16
	ts_msg_open
	ts_flag_set 0x2D, 0x11
	.string "I'm looking for a\n"
	.string "\""
	ts_print_chip1 0xA5, 0x0
	.string " "
	ts_print_code 0x8, 0x0
	.string "\" chip\n"
	.string "to give as a gift."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you've got one,\n"
	.string "would you like to\n"
	.string "trade for a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\""
	ts_print_chip1 0xCA, 0x0
	.string " "
	ts_print_code 0xE, 0x0
	.string "\"!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Sure  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x7, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "That's too bad..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781564_unk6
	ts_mugshot_show 0x16
	ts_msg_open
	.string "I'm looking for a\n"
	.string "\""
	ts_print_chip1 0xA5, 0x0
	.string " "
	ts_print_code 0x8, 0x0
	.string "\" chip\n"
	.string "to give as a gift."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you've got one,\n"
	.string "would you like to\n"
	.string "trade for a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\""
	ts_print_chip1 0xCA, 0x0
	.string " "
	ts_print_code 0xE, 0x0
	.string "\"!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Sure  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x7, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "That's too bad..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781564_unk7
	ts_check_pack_chip_code 0xA5, 0x0, 0x8, 0x1, 0xFF, 0xFF, 0x8
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Awesome! Thanks!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip 0xCA, 0x0, 0xE, 0x1
	ts_item_take_chip 0xA5, 0x0, 0x8, 0x1
	ts_player_animate_scene 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 0xCA, 0x0
	.string " "
	ts_print_code 0xE, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "My friend is going\n"
	.string "to be very happy!"
	ts_key_wait 0x0
	ts_flag_set 0x2E, 0x11
	ts_end

	def_text_script CompText8781564_unk8
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Huh...?\n"
	.string "You don't have one?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781564_unk9
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Thanks so much!\n"
	.string "My friend is going\n"
	.string "to be so happy!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781564_unk10

	def_text_script CompText8781564_unk11

	def_text_script CompText8781564_unk12

	def_text_script CompText8781564_unk13

	def_text_script CompText8781564_unk14

	def_text_script CompText8781564_unk15

	def_text_script CompText8781564_unk16

	def_text_script CompText8781564_unk17

	def_text_script CompText8781564_unk18

	def_text_script CompText8781564_unk19

	