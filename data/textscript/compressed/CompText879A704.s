	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879A704::
	.word 0x5600

	text_archive_start

	def_text_script CompText879A704_unk0
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "CHECK INSIDE THE\n"
	.string "MAILBOX?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x1, 0xFF, 0xFF
	ts_end

	def_text_script CompText879A704_unk1
	ts_start_mailbox 0x1
	ts_end

	def_text_script CompText879A704_unk2

	def_text_script CompText879A704_unk3

	def_text_script CompText879A704_unk4

	