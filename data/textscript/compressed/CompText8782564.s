	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8782564::
	.word 0x5300

	text_archive_start

	def_text_script CompText8782564_unk0
	ts_mugshot_show 0x37
	ts_msg_open
	.string "This looks like an\n"
	.string "emergency exit,but\n"
	.string "it's locked!!"
	ts_key_wait 0x0
	ts_end

	