	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876E874::
	.word 0xA900

	text_archive_start

	def_text_script CompText876E874_unk0

	def_text_script CompText876E874_unk1

	def_text_script CompText876E874_unk2

	def_text_script CompText876E874_unk3

	def_text_script CompText876E874_unk4

	def_text_script CompText876E874_unk5
	ts_mugshot_show 0x10
	ts_msg_open
	.string "OK,see you,later!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Things have been\n"
	.string "dangerous lately,so\n"
	.string "hurry on home!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876E874_unk6
	ts_mugshot_show 0xB
	ts_msg_open
	.string "Later!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876E874_unk7
	ts_mugshot_show 0x8
	ts_msg_open
	.string "Bye bye!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876E874_unk8

	def_text_script CompText876E874_unk9

	def_text_script CompText876E874_unk10
	ts_mugshot_show 0x43
	ts_msg_open
	.string "........"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876E874_unk11

	def_text_script CompText876E874_unk12

	def_text_script CompText876E874_unk13

	def_text_script CompText876E874_unk14

	def_text_script CompText876E874_unk15

	def_text_script CompText876E874_unk16

	def_text_script CompText876E874_unk17

	def_text_script CompText876E874_unk18

	def_text_script CompText876E874_unk19

	