	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879A77C::
	.word 0x4C200

	text_archive_start

	def_text_script CompText879A77C_unk0
	ts_check_flag [
		flag: 0xCD3,
		jumpIfTrue: CompText879A77C_unk2_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD0,
		jumpIfTrue: CompText879A77C_unk1_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Roll!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x38
	.string "It's been a long\n"
	.string "time,MegaMan!\n"
	.string "Are you doing well!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Yeah!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But anyway,wasn't\n"
	.string "the meeting place in\n"
	.string "ACDC Area?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What are you doing\n"
	.string "hanging out here?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x38
	.string "Well,I asked Mr.Prog\n"
	.string "to run an errand for\n"
	.string "me,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "he's really late...\n"
	.string "He hasn't come back\n"
	.string "yet..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I thought maybe he\n"
	.string "got lost,so I was\n"
	.string "looking for him."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "A lost Mr.Prog,huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK,I'll help you\n"
	.string "look for him!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x38
	.string "Really?\n"
	.string "That would be a big\n"
	.string "help!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xCD0
	ts_end

	def_text_script CompText879A77C_unk1
	ts_mugshot_show mugshot=0x38
	ts_msg_open
	.string "I asked Mr.Prog to\n"
	.string "run an errand for\n"
	.string "me,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "he's really late...\n"
	.string "He hasn't come back\n"
	.string "yet..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I think he might\n"
	.string "be lost,so..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879A77C_unk2
	ts_check_flag [
		flag: 0xCD4,
		jumpIfTrue: CompText879A77C_unk3_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Here you go,Roll.\n"
	.string "This is the thing\n"
	.string "you wanted,right...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x38
	.string "Ah,yes!\n"
	.string "Thank you,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... But,you know,\n"
	.string "this isn't for me."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "... HUH!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x38
	.string "... This is a\n"
	.string "present for you,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "For me!?\n"
	.string "Really!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x38
	.string "They just finished\n"
	.string "the road between\n"
	.string "Cyber City"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and ACDC Area,and\n"
	.string "with this passport\n"
	.string "you can move"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "between both areas\n"
	.string "freely. This way,we\n"
	.string "can see each other"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "whenever we want!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Thank you,Roll!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x38
	.string "Come on,let's go to\n"
	.string "the meeting place."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Everyone's probably\n"
	.string "already waiting for\n"
	.string "us there!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xCD4
	ts_end

	def_text_script CompText879A77C_unk3
	ts_mugshot_show mugshot=0x38
	ts_msg_open
	.string "Come on,let's go to\n"
	.string "the meeting place."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Everyone's probably\n"
	.string "already waiting for\n"
	.string "us there!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879A77C_unk4

	