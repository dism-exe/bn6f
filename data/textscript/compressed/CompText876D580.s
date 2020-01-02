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
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It got damaged by an\n"
	.string "attack in battle...\n"
	.string "It can't move..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876D580_unk1
	ts_check_flag [
		flag: 0xE7A,
		jumpIfTrue: CompText876D580_unk0_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Don't like it here!?\n"
	.string "Too bad!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xE79
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText876D580_unk2

	def_text_script CompText876D580_unk3

	def_text_script CompText876D580_unk4

	