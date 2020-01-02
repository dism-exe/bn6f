	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText86CE724::
	.word 0x8000

	text_archive_start

	def_text_script CompText86CE724_unk0

	def_text_script CompText86CE724_unk1

	def_text_script CompText86CE724_unk2

	def_text_script CompText86CE724_unk3

	def_text_script CompText86CE724_unk4

	def_text_script CompText86CE724_unk5

	def_text_script CompText86CE724_unk6

	def_text_script CompText86CE724_unk7

	def_text_script CompText86CE724_unk8
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	ts_text_speed delay=0x0
	.string "You can't equip this\n"
	.string "Folder. Re-edit then\n"
	.string "equip."
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText86CE724_unk9
	ts_msg_open_menu
	ts_mugshot_show mugshot=0x37
	ts_text_speed delay=0x0
	.string "You can't equip this\n"
	.string "Folder."
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	