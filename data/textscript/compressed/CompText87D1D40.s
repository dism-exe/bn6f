	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D1D40::
	.word 0x8C00

	text_archive_start

	def_text_script CompText87D1D40_unk0
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x51, 0x1
	.string "*beep!*"
	ts_wait 0x14, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1D40_unk1
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0xD3, 0x0
	.string "*click!*"
	ts_wait 0x2D, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1D40_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Alright!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Jack out,MegaMan!\n"
	.string "Let's get going!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87D1D40_unk3
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Roger!"
	ts_key_wait 0x0
	ts_end

	