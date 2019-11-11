	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BEE84::
	.word 0x16900

	text_archive_start

	def_text_script CompText87BEE84_unk0
	ts_mugshot_show 0x6
	ts_msg_open
	.string "It looks like we\n"
	.string "can't go outside\n"
	.string "for a while..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I guess I'll go\n"
	.string "tidy up a bit."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BEE84_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hey,MegaMan...\n"
	.string "That was Iris on TV,\n"
	.string "wasn't it?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87BEE84_unk2
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Yeah,but I have no\n"
	.string "idea why she'd be\n"
	.string "there."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Isn't it dangerous\n"
	.string "to be in Sky Town by\n"
	.string "yourself right now?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87BEE84_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "That's what I was\n"
	.string "thinking..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go to\n"
	.string "Sky Town,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87BEE84_unk4
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Yeah!"
	ts_key_wait 0x0
	ts_end

	