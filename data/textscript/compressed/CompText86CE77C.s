	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText86CE77C::
	.word 0x7A00

	text_archive_start

	def_text_script CompText86CE77C_unk0

	def_text_script CompText86CE77C_unk1

	def_text_script CompText86CE77C_unk2

	def_text_script CompText86CE77C_unk3

	def_text_script CompText86CE77C_unk4

	def_text_script CompText86CE77C_unk5

	def_text_script CompText86CE77C_unk6

	def_text_script CompText86CE77C_unk7

	def_text_script CompText86CE77C_unk8
	ts_msg_open_menu
	ts_text_speed [
		delay: 0x0,
	]
	.string "You can't equip this\n"
	.string "Folder. Re-edit,then\n"
	.string "equip."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText86CE77C_unk9
	ts_msg_open_menu
	ts_text_speed [
		delay: 0x0,
	]
	.string "You can't equip this\n"
	.string "Folder."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	