	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D17DC::
	.word 0x14F00

	text_archive_start

	def_text_script CompText87D17DC_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Huh? This book is\n"
	.string "the only one that's\n"
	.string "really worn out..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87D17DC_unk1
	ts_mugshot_hide
	ts_msg_open
	.string "Lan pulled on\n"
	.string "the book!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87D17DC_unk2
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0xD3, 0x0
	ts_store_timer 0x0, 0x80
	.string "*creak!!*"
	ts_wait 0x28, 0x0
	ts_wait_o_w_var 0x0, 0x81
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87D17DC_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	ts_store_timer 0x0, 0x1
	.string "Waaa!!"
	ts_wait_o_w_var 0x0, 0x2
	ts_key_wait 0x0
	ts_clear_msg
	.string "What was that!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D17DC_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ah!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D17DC_unk5
	ts_mugshot_show 0x37
	ts_msg_open
	.string "This is the hidden\n"
	.string "passageway Mr.Mach\n"
	.string "was talking about..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87D17DC_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "This leads to the\n"
	.string "Expo Site..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "OK,let's go!!"
	ts_key_wait 0x0
	ts_end

	