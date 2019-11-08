	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8746E38::
	.word 0x26000

	text_archive_start

	def_text_script CompText8746E38_unk0
	ts_check_chapter 0x50, 0x53, 0x5, 0xFF
	ts_check_chapter 0x40, 0x46, 0x5, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8746E38_unk1

	def_text_script CompText8746E38_unk2

	def_text_script CompText8746E38_unk3

	def_text_script CompText8746E38_unk4

	def_text_script CompText8746E38_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Things don't look\n"
	.string "too damaged from the\n"
	.string "JudgeMan incident..."
	ts_key_wait 0x0
	ts_end

	