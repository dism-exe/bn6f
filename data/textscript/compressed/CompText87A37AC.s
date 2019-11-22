	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A37AC::
	.word 0x2D100

	text_archive_start

	def_text_script CompText87A37AC_unk0
	ts_check_flag 0x18, 0x12, 0x2, 0xFF
	ts_mugshot_show 0x45
	ts_msg_open
	.string "This is the\n"
	.string "StfToySpComp!\n"
	.string "Welcome!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can now\n"
	.string "reserve the new"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"CyberWarrior Cybo\"!\n"
	.string "figure!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You have to leave\n"
	.string "a 3000 Zenny\n"
	.string "deposit? OK?"
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
	ts_select 0x6, 0x80, 0x1, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x45
	ts_msg_open
	.string "Come back soon,OK!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A37AC_unk1
	ts_check_take_zenny 0xB8, 0xB, 0x0, 0x0, 0xFF, 0x3, 0x3
	ts_mugshot_show 0x45
	ts_msg_open
	.string "Thank you for\n"
	.string "reserving!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here is your\n"
	.string "reservation ticket!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_flag_set 0x18, 0x12
	ts_mugshot_hide
	ts_item_give 0x43, 0x1
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x43, 0x0
	.string "\"!!\n"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x45
	.string "Please come back\n"
	.string "when the figure is\n"
	.string "finally released!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A37AC_unk2
	ts_mugshot_show 0x45
	ts_msg_open
	.string "Thank you for\n"
	.string "reserving!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please come back\n"
	.string "when the figure is\n"
	.string "finally on sale!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A37AC_unk3
	ts_mugshot_show 0x45
	ts_msg_open
	.string "I sincerely\n"
	.string "apologize,but\n"
	.string "it seems you are"
	ts_key_wait 0x0
	ts_clear_msg
	.string "a bit short on\n"
	.string "Zennys."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A37AC_unk4

	def_text_script CompText87A37AC_unk5
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WELCOME WELCOME!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THIS IS THE\n"
	.string "STUFFED TOY SHOP\n"
	.string "COMP!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WHEN YOU ARE IN\n"
	.string "SEASIDE TOWN,YOU\n"
	.string "SHOULD VISIT THE"
	ts_key_wait 0x0
	ts_clear_msg
	.string "STUFFED TOY SHOP\n"
	.string "IN THE REAL WORLD!"
	ts_key_wait 0x0
	ts_end

	