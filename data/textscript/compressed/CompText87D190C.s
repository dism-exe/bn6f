	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D190C::
	.word 0x15000

	text_archive_start

	def_text_script CompText87D190C_unk0
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "I wonder where\n"
	.string "they're keeping\n"
	.string "Iris..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87D190C_unk1
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "But even if we knew,\n"
	.string "we can't do anything\n"
	.string "to help..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87D190C_unk2
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Shaddup!\n"
	.string "No talking!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87D190C_unk3
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "Eek!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87D190C_unk4
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Hey,Mick..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87D190C_unk5
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "What...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87D190C_unk6
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Tell me how to use\n"
	.string "a CopyBot..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87D190C_unk7
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Why are you asking\n"
	.string "me...\n"
	.string "Oh,I get it."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D190C_unk8
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "*whisper,whisper...*"
	ts_key_wait any=0x0
	ts_end

	