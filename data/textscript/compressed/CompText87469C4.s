	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87469C4::
	.word 0x6700

	text_archive_start

	def_text_script CompText87469C4_unk0
	ts_check_chapter 0x20, 0x33, 0x5, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87469C4_unk1

	def_text_script CompText87469C4_unk2

	def_text_script CompText87469C4_unk3

	def_text_script CompText87469C4_unk4

	def_text_script CompText87469C4_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Things don't look\n"
	.string "too damaged from the\n"
	.string "DiveMan incident..."
	ts_key_wait 0x0
	ts_end

	