	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CCC70::
	.word 0x1F900

	text_archive_start

	def_text_script CompText87CCC70_unk0
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "To think that even\n"
	.string "Colonel was\n"
	.string "defeated..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I did not expect\n"
	.string "things to turn\n"
	.string "out like this..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but my plan will\n"
	.string "continue to move\n"
	.string "forward."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCC70_unk1
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "A certain thing\n"
	.string "will happen tonight."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If it is\n"
	.string "successful...\n"
	.string "... *cackle*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCC70_unk2
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "Lan,MegaMan...\n"
	.string "Come to me!\n"
	.string "Ah,it will be"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "just like that one\n"
	.string "time--the end of the\n"
	.string "world is here!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Wahahahahahahaha!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CCC70_unk3
	ts_mugshot_show mugshot=0x1D
	ts_msg_open
	.string "*huff,huff...*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But the control\n"
	.string "system..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "She had better\n"
	.string "come back soon..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "According to my\n"
	.string "calculations,we can\n"
	.string "move shortly..."
	ts_key_wait any=0x0
	ts_end

	