	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BEC8C::
	.word 0xEE00

	text_archive_start

	def_text_script CompText87BEC8C_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I'm home!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mom!\n"
	.string "The weather's gone\n"
	.string "crazy!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87BEC8C_unk1
	ts_mugshot_show 0x6
	ts_msg_open
	.string "Welcome home!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan,can you come\n"
	.string "here?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87BEC8C_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What's up...!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BEC8C_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Mom,what's wrong?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87BEC8C_unk4
	ts_mugshot_show 0x6
	ts_msg_open
	.string "Oh,it's terrible!\n"
	.string "Take a look at\n"
	.string "the news!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87BEC8C_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The news?"
	ts_key_wait 0x0
	ts_end

	