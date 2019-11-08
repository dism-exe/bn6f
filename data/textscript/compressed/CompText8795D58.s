	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8795D58::
	.word 0xF000

	text_archive_start

	def_text_script CompText8795D58_unk0
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Who are you! I've\n"
	.string "never seen you\n"
	.string "before!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What are you doing\n"
	.string "here!?\n"
	.string "Get lost!!"
	ts_key_wait 0x0
	ts_flag_set 0x55, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText8795D58_unk1
	ts_mugshot_show 0x43
	ts_msg_open
	.string "I'm bored...\n"
	.string "Hey ugly!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Deleting you should\n"
	.string "help pass the time!"
	ts_key_wait 0x0
	ts_flag_set 0x56, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	