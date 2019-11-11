	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B330C::
	.word 0x4F700

	text_archive_start

	def_text_script CompText87B330C_unk0
	ts_mugshot_show 0x1F
	ts_msg_open
	.string "Thank you for\n"
	.string "coming,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I want to teach you\n"
	.string "about the power of\n"
	.string "water,and about how"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to use water in\n"
	.string "your NetBattles."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh,by the way,do\n"
	.string "you know about the\n"
	.string "CrossSystem,Lan?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "CrossSystem...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Uh,nope."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x1F
	.string "The CrossSystem is\n"
	.string "something that was\n"
	.string "recently developed."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's a new\n"
	.string "technology that\n"
	.string "allows one Navi"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to use another\n"
	.string "Navi's skills."
	ts_key_wait 0x0
	ts_clear_msg
	.string "To put it simply,\n"
	.string "with this system,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "MegaMan can use\n"
	.string "SpoutMan's various\n"
	.string "water powers!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Hey,that's\n"
	.string "pretty neat!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x1F
	.string "Yes,but to get\n"
	.string "another Navi's\n"
	.string "skills,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and make them your\n"
	.string "own,you have to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "learn some basic\n"
	.string "knowledge and\n"
	.string "techniques first."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "So,this class we're\n"
	.string "having is for me to\n"
	.string "learn the basics!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x1F
	.string "Right! You're a\n"
	.string "smart cookie!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87B330C_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hey,you almost sound\n"
	.string "like a real teacher!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87B330C_unk2
	ts_mugshot_show 0x1F
	ts_msg_open
	.string "Ehehehe,don't say\n"
	.string "that! You're making\n"
	.string "me blush..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87B330C_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Yo,Ms.Shuko!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87B330C_unk4
	ts_mugshot_show 0x1F
	ts_msg_open
	.string "Aw,come on,I'm\n"
	.string "serious!\n"
	.string "No more teasing!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's start our\n"
	.string "lesson,OK?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87B330C_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "OK!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87B330C_unk6
	ts_mugshot_show 0x1F
	ts_msg_open
	.string "OK,I'm gonna have\n"
	.string "you operate SpoutMan"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to teach you how to\n"
	.string "use water in battle."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now,please step over\n"
	.string "to this computer and\n"
	.string "say hi to SpoutMan."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Oh! I almost\n"
	.string "forgot! Here,take\n"
	.string "this!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87B330C_unk7
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer 0x0, 0x80
	ts_sound_play00 0x73, 0x0
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x6, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_wait_o_w_var 0x0, 0x81
	ts_store_timer 0x0, 0x82
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87B330C_unk8
	ts_mugshot_show 0x1F
	ts_msg_open
	.string "OK,now we're ready!\n"
	.string "Please go to that\n"
	.string "computer over there!"
	ts_key_wait 0x0
	ts_end

	