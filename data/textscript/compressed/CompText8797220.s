	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8797220::
	.word 0x10400

	text_archive_start

	def_text_script CompText8797220_unk0
	ts_mugshot_show 0x43
	ts_msg_open
	.string "WooooOOOOOoooo..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "LAABR...\n"
	.string "...RLRLR"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8797220_unk1
	ts_check_shop_stock 0x9, 0xFF, 0x3
	ts_mugshot_show 0x43
	ts_msg_open
	.string "I'm a NetMerchant.\n"
	.string "Look at my wares?\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Look "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't look "
	ts_select 0x6, 0x0, 0xFF, 0x2, 0xFF
	ts_start_shop 0x9

	def_text_script CompText8797220_unk2
	ts_clear_msg
	.string "Come again..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8797220_unk3
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Too bad for you...\n"
	.string "We're all out of\n"
	.string "stock..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8797220_unk4
	ts_mugshot_show 0x43
	ts_msg_open
	.string "WoooOOOoooo"
	ts_key_wait 0x0
	ts_clear_msg
	.string "AAAB...\n"
	.string "...RLBAAL"
	ts_key_wait 0x0
	ts_end

	