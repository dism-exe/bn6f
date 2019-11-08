	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A0700::
	.word 0xC200

	text_archive_start

	def_text_script CompText87A0700_unk0
	ts_check_flag 0x70, 0xA, 0x1, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "It's been completely\n"
	.string "taken over by\n"
	.string "viruses..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan,let's start some\n"
	.string "serious Virus\n"
	.string "Busting!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Got it!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Here we go!"
	ts_key_wait 0x0
	ts_flag_set 0x6F, 0xA
	ts_end

	def_text_script CompText87A0700_unk1
	ts_msg_open
	.string "The control panel\n"
	.string "is functioning\n"
	.string "normally."
	ts_key_wait 0x0
	ts_end

	