	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879E598::
	.word 0xB700

	text_archive_start

	def_text_script CompText879E598_unk0

	def_text_script CompText879E598_unk1

	def_text_script CompText879E598_unk2

	def_text_script CompText879E598_unk3

	def_text_script CompText879E598_unk4

	def_text_script CompText879E598_unk5

	def_text_script CompText879E598_unk6

	def_text_script CompText879E598_unk7

	def_text_script CompText879E598_unk8

	def_text_script CompText879E598_unk9

	def_text_script CompText879E598_unk10
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS IS THE CLASS\n"
	.string "6-1 COMP,MAINLY"
	ts_key_wait 0x0
	ts_clear_msg
	.string "USED FOR VIRUS\n"
	.string "BUSTING CLASS!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WE'VE NURTURED MANY\n"
	.string "GREAT NETBATTLERS\n"
	.string "HERE!"
	ts_key_wait 0x0
	ts_end

	