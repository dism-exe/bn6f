	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AD2D0::
	.word 0xCB00

	text_archive_start

	def_text_script CompText87AD2D0_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You've gotta\n"
	.string "normalize this main\n"
	.string "computer,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you can do that,\n"
	.string "we should be able\n"
	.string "to use this computer"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "to broadcast the\n"
	.string "\"Feeding Time\"\n"
	.string "chime."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's do this!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87AD2D0_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Roger!!"
	ts_key_wait any=0x0
	ts_end

	