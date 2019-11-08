	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8771268::
	.word 0x5B00

	text_archive_start

	def_text_script CompText8771268_unk0

	def_text_script CompText8771268_unk1

	def_text_script CompText8771268_unk2

	def_text_script CompText8771268_unk3

	def_text_script CompText8771268_unk4

	def_text_script CompText8771268_unk5

	def_text_script CompText8771268_unk6

	def_text_script CompText8771268_unk7

	def_text_script CompText8771268_unk8

	def_text_script CompText8771268_unk9

	def_text_script CompText8771268_unk10
	ts_mugshot_show 0x4
	ts_msg_open
	.string "... Stay alert,Lan."
	ts_key_wait 0x0
	ts_end

	