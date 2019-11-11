	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AD5D8::
	.word 0x11000

	text_archive_start

	def_text_script CompText87AD5D8_unk0
	ts_mugshot_show 0x52
	ts_msg_open
	.string "I'm s-sinking..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... I'm sorry,\n"
	.string "C-Capt'n.\n"
	.string "Awooga..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AD5D8_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Great job,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now,play the\n"
	.string "\"Feeding Time\" chime\n"
	.string "as loud as you can!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87AD5D8_unk2
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Got it!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AD5D8_unk3
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's see...\n"
	.string "This should do it!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AD5D8_unk4
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x8F, 0x1
	.string "*bring,bring,bring,\n"
	.string " bring,bring!!*"
	ts_wait 0x50, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_end

	