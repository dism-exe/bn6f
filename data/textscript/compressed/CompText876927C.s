	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876927C::
	.word 0x2900

	text_archive_start

	def_text_script CompText876927C_unk0
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,read your mail!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876927C_unk1

	def_text_script CompText876927C_unk2

	def_text_script CompText876927C_unk3

	def_text_script CompText876927C_unk4

	