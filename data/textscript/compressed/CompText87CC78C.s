	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CC78C::
	.word 0x9F00

	text_archive_start

	def_text_script CompText87CC78C_unk0
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	.string "*whooooo,whoooooo*"
	ts_wait frames=0x2D
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x4F
	.string "We will be departing\n"
	.string "shortly..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Please do not rush\n"
	.string "onto the train."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CC78C_unk1
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Now departing!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Full speed ahead!"
	ts_key_wait any=0x0
	ts_end

	