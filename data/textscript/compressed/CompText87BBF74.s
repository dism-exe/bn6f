	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BBF74::
	.word 0x17700

	text_archive_start

	def_text_script CompText87BBF74_unk0
	ts_mugshot_show 0x4C
	ts_msg_open
	.string "I am TenguMan."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I use the natural\n"
	.string "power of the wind."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Are you the one\n"
	.string "I will be working\n"
	.string "with?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here's to our first\n"
	.string "mission together."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87BBF74_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Yeah,good luck to\n"
	.string "us both!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87BBF74_unk2
	ts_mugshot_show 0x23
	ts_msg_open
	ts_jump 3

	def_text_script CompText87BBF74_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	ts_jump 4

	def_text_script CompText87BBF74_unk4
	ts_mugshot_show 0x23
	ts_msg_open
	.string "Let us begin our\n"
	.string "class,grasshopper."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Make your way to\n"
	.string "Green Area1."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There,we will have\n"
	.string "your first lesson."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ho,ho,ho,ho!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87BBF74_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Green Area1?\n"
	.string "Roger!"
	ts_key_wait 0x0
	ts_end

	