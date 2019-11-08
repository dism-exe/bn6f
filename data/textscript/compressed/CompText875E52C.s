	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875E52C::
	.word 0x9200

	text_archive_start

	def_text_script CompText875E52C_unk0
	ts_check_chapter 0x44, 0x44, 0x6, 0xFF
	ts_jump 5

	def_text_script CompText875E52C_unk1

	def_text_script CompText875E52C_unk2

	def_text_script CompText875E52C_unk3

	def_text_script CompText875E52C_unk4

	def_text_script CompText875E52C_unk5
	ts_msg_open
	.string "The control panel\n"
	.string "is operating\n"
	.string "normally."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText875E52C_unk6
	ts_check_flag 0x22, 0xA, 0x5, 0xFF
	ts_check_flag 0x21, 0xA, 0xFF, 0x5
	ts_mugshot_show 0x37
	ts_msg_open
	.string "If we can normalize\n"
	.string "this......"
	ts_key_wait 0x0
	ts_clear_msg
	.string "A v-virus!!"
	ts_key_wait 0x0
	ts_flag_set 0x73, 0xA
	ts_end

	