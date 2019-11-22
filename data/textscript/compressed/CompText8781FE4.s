	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8781FE4::
	.word 0x6700

	text_archive_start

	def_text_script CompText8781FE4_unk0
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,we'll go to the\n"
	.string "Central Pavilion"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "after we finish the\n"
	.string "Stamp Rally."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8781FE4_unk1

	def_text_script CompText8781FE4_unk2

	def_text_script CompText8781FE4_unk3

	def_text_script CompText8781FE4_unk4

	def_text_script CompText8781FE4_unk5

	def_text_script CompText8781FE4_unk6

	def_text_script CompText8781FE4_unk7

	def_text_script CompText8781FE4_unk8

	def_text_script CompText8781FE4_unk9

	