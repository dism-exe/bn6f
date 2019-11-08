	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8769148::
	.word 0xC600

	text_archive_start

	def_text_script CompText8769148_unk0
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,\n"
	.string "We'll go after you\n"
	.string "talk to Mom and Dad!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769148_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,\n"
	.string "Let's go to bed\n"
	.string "already!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769148_unk2
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Where's the guest?\n"
	.string "Let's ask Mom!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769148_unk3

	def_text_script CompText8769148_unk4
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,\n"
	.string "We'll go after you\n"
	.string "talk to Mom."
	ts_key_wait 0x0
	ts_end

	