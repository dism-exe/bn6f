	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876E078::
	.word 0xD000

	text_archive_start

	def_text_script CompText876E078_unk0
	ts_check_flag 0x8, 0xE, 0x1, 0xFF
	ts_mugshot_show 0x17
	ts_msg_open
	.string "Grownups,like,took\n"
	.string "some girl,and like,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ran out towards\n"
	.string "the foyer!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876E078_unk1
	ts_mugshot_show 0x17
	ts_msg_open
	.string "Hmmm...should I go\n"
	.string "home soon...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876E078_unk2

	def_text_script CompText876E078_unk3

	def_text_script CompText876E078_unk4

	def_text_script CompText876E078_unk5
	ts_mugshot_show 0x4
	ts_msg_open
	.string "It isn't safe here.\n"
	.string "You must hurry..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876E078_unk6
	ts_mugshot_show 0x43
	ts_msg_open
	.string "........"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876E078_unk7

	def_text_script CompText876E078_unk8

	def_text_script CompText876E078_unk9

	def_text_script CompText876E078_unk10

	