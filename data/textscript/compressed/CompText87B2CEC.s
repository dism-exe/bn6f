	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B2CEC::
	.word 0x3BF00

	text_archive_start

	def_text_script CompText87B2CEC_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Who are you!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What are you up to!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87B2CEC_unk1
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ah,we meet at last!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "How do you do?\n"
	.string "I'm CircusMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I thought if I set\n"
	.string "my tent up here,I'd\n"
	.string "get your attention!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey,I've got a\n"
	.string "question for you,\n"
	.string "kid..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "A question?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x54
	.string "Where'd you hide it?\n"
	.string "You know,the\n"
	.string "Cybeast."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87B2CEC_unk2
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... It's inside me!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87B2CEC_unk3
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "... Not funny at\n"
	.string "all. And trust me,\n"
	.string "I know funny."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now,see,a Navi like\n"
	.string "me can store a\n"
	.string "fierce creature like"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "a Cybeast. But a\n"
	.string "shrimp like you!?\n"
	.string "Impossible!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87B2CEC_unk4
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "What do you guys\n"
	.string "want!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87B2CEC_unk5
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "I'll ask the\n"
	.string "questions,thank you\n"
	.string "very much!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Where did you hide\n"
	.string "the Cybeast!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And don't even think\n"
	.string "about lying to me,\n"
	.string "kid."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87B2CEC_unk6
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I know you don't\n"
	.string "believe me,but\n"
	.string "I'm not lying!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87B2CEC_unk7
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "... Hmm,if that's\n"
	.string "really true..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "then you won't mind\n"
	.string "if I bring out the\n"
	.string "animal in you!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87B2CEC_unk8
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Here he comes,Lan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87B2CEC_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Gotcha!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87B2CEC_unk10
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87B2CEC_unk11
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_end

	