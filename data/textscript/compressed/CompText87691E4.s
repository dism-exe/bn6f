	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87691E4::
	.word 0x8000

	text_archive_start

	def_text_script CompText87691E4_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "You OK,MegaMan!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Yeah!\n"
	.string "Lan,let's try\n"
	.string "again!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Let's do this!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87691E4_unk1
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Lan!\n"
	.string "Be careful!!"
	ts_key_wait 0x0
	ts_end

	