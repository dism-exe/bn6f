	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D10D0::
	.word 0x6700

	text_archive_start

	def_text_script CompText87D10D0_unk0
	ts_msg_open
	.string "An hour after Lan\n"
	.string "and Chaud narrowly\n"
	.string "escaped the Expo..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D10D0_unk1
	ts_mugshot_show 0x43
	ts_msg_open
	.string "WHERE...\n"
	.string "LAN... HIKARI...?"
	ts_key_wait 0x0
	ts_end

	