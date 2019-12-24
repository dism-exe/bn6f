	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BC58C::
	.word 0xE500

	text_archive_start

	def_text_script CompText87BC58C_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK,got all 4!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87BC58C_unk1
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Yes! And you are\n"
	.string "getting better!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87BC58C_unk2
	ts_mugshot_show mugshot=0x23
	ts_msg_open
	.string "Ho,ho,ho,ho!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Your final test\n"
	.string "waits for you now..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Jack out and\n"
	.string "face it!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87BC58C_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "This is it --\n"
	.string "the final test..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'd better\n"
	.string "calm down!"
	ts_key_wait any=0x0
	ts_end

	