	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D7B28::
	.word 0x4400

	text_archive_start

	def_text_script CompText87D7B28_unk0
	ts_msg_open
	.string "Green Town..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D7B28_unk1
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "The JudgeTree...\n"
	.string "The JudgeTree...!"
	ts_key_wait any=0x0
	ts_end

	