	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BA318::
	.word 0x17000

	text_archive_start

	def_text_script CompText87BA318_unk0
	ts_msg_open
	.string "EVERYONE COME ALONG\n"
	.string "QUIETLY! DO NOT\n"
	.string "RESIST ARREST!!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87BA318_unk1
	ts_mugshot_show 0xA
	ts_msg_open
	.string "What's going on!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I haven't done\n"
	.string "anything wrong!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Well,I guess I\n"
	.string "do like to sneak\n"
	.string "food here and there."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x33
	.string "I don't remember\n"
	.string "doing anything that\n"
	.string "was that bad!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87BA318_unk2
	ts_mugshot_show 0x18
	ts_msg_open
	.string "Tell me what I did\n"
	.string "wrong!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87BA318_unk3
	ts_mugshot_show 0xC
	ts_msg_open
	.string "No!!\n"
	.string "Help me!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87BA318_unk4
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Wah,wah,wah!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What's gonna happen\n"
	.string "to all of us!?"
	ts_key_wait 0x0
	ts_end

	