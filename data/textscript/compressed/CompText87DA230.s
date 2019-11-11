	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87DA230::
	.word 0xF200

	text_archive_start

	def_text_script CompText87DA230_unk0
	ts_mugshot_show 0x3C
	ts_mugshot_palette 0x6
	ts_msg_open
	.string "AH,HOT,HOT,HOT!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "AT THIS RATE,I'LL\n"
	.string "BE BURNT TO A CRISP!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I DON'T WANNA\n"
	.string "BE DELETED!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87DA230_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Don't panic!\n"
	.string "It'll be OK!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87DA230_unk2
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "... PHEW!\n"
	.string "ANY LATER AND I\n"
	.string "WOULDA BEEN TOAST!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU BE CAREFUL,TOO,\n"
	.string "YA HEAR? DON'T GET\n"
	.string "BURNT!"
	ts_key_wait 0x0
	ts_end

	