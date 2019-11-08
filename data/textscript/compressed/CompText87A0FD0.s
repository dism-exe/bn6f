	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A0FD0::
	.word 0xA100

	text_archive_start

	def_text_script CompText87A0FD0_unk0
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "I JUST WANT TO SAY\n"
	.string "ONE THING..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I WON'T LOSE TO THE\n"
	.string "PROGRAM IN THE\n"
	.string "COMPUTER THAT'S IN"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE ROOM NEXT DOOR!\n"
	.string "I'M SMARTER!! NOT\n"
	.string "GONNA LOSE! NEVER!!"
	ts_key_wait 0x0
	ts_end

	