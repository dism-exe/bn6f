	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C54A8::
	.word 0x28700

	text_archive_start

	def_text_script CompText87C54A8_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "......\n"
	.string "What are they going\n"
	.string "to do to MegaMan...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C54A8_unk1
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "... Lan,I'm sorry..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's because of our\n"
	.string "Navis that this\n"
	.string "happened."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C54A8_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "No,it's not your\n"
	.string "fault."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They've been after\n"
	.string "MegaMan for a while."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Actually,everyone\n"
	.string "was in danger\n"
	.string "because of us..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I should be the one\n"
	.string "saying sorry..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87C54A8_unk3
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Hey,don't beat\n"
	.string "yourself up,Lan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87C54A8_unk4
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "He'll never change.\n"
	.string "Always quick to\n"
	.string "blame himself."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But the real problem\n"
	.string "is,what do we do\n"
	.string "now?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87C54A8_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hmm... For now,I\n"
	.string "should go back to\n"
	.string "Cyber City."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I think I can get\n"
	.string "info on MegaMan's\n"
	.string "status there."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sorry. I came\n"
	.string "here to have fun,and\n"
	.string "then this happened."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87C54A8_unk6
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "Lan..."
	ts_key_wait any=0x0
	ts_end

	