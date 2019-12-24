	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BAD5C::
	.word 0x3F300

	text_archive_start

	def_text_script CompText87BAD5C_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan,you've gotta\n"
	.string "find some way to\n"
	.string "stop the JudgeTree!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That should stop\n"
	.string "Dad's punishment\n"
	.string "and the Robots!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BAD5C_unk1_id

	def_text_script CompText87BAD5C_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Roge."
	ts_wait frames=0xF
	.string "."
	ts_wait frames=0xF
	.string "."
	ts_wait frames=0xF
	ts_sound_play_bgm track=0x63
	.string " rr!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "... Ha... lt..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "I-I hear a voice..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Halt. You'll go\n"
	.string "no further..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... MegaMan,why do\n"
	.string "you fight so hard\n"
	.string "against us?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "W-Who...\n"
	.string "Where are you!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "You will answer...\n"
	.string "Why do you fight so\n"
	.string "hard against us?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Why...?\n"
	.string "Isn't it obvious!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Because it's the\n"
	.string "right thing to do!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Such a showy reason.\n"
	.string "I'll feel no regret\n"
	.string "in deleting you."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright,then! We'll\n"
	.string "crush you with our\n"
	.string "strength! Get ready!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "... Wait!!\n"
	.string "You... You're...!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... No good,\n"
	.string "he's already gone."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "That was probably\n"
	.string "Prosecutor Ito's\n"
	.string "Navi just now..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "No,I don't think\n"
	.string "that was him..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But...it did sound\n"
	.string "like... But that\n"
	.string "can't be...!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What's wrong? Have\n"
	.string "you heard that voice\n"
	.string "somewhere before...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "... No,I'm sorry,\n"
	.string "Lan. I must've heard\n"
	.string "wrong."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I mean,it's not\n"
	.string "possible..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Anyway,we'd better\n"
	.string "get going and stop\n"
	.string "this JudgeTree!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Y-Yeah..."
	ts_key_wait any=0x0
	ts_end

	