	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879A704::
	.word 0x5600

	text_archive_start

	def_text_script CompText879A704_unk0
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "CHECK INSIDE THE\n"
	.string "MAILBOX?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0x1, 0xFF, 0xFF
	ts_end

	def_text_script CompText879A704_unk1
	ts_start_mailbox [
		homepage: 0x1,
	]
	ts_end

	def_text_script CompText879A704_unk2

	def_text_script CompText879A704_unk3

	def_text_script CompText879A704_unk4

	