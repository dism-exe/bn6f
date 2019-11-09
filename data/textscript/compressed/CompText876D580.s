	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876D580::
	.word 0x8F00

	text_archive_start

	def_text_script CompText876D580_unk0
	ts_msg_open
	.string "A CopyBot..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It got damaged by an\n"
	.string "attack in battle...\n"
	.string "It can't move..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876D580_unk1
	ts_check_flag 0x7A, 0xE, 0x0, 0xFF
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Don't like it here!?\n"
	.string "Too bad!!"
	ts_key_wait 0x0
	ts_flag_set 0x79, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText876D580_unk2

	def_text_script CompText876D580_unk3

	def_text_script CompText876D580_unk4

	