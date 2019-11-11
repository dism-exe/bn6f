// 87DBE98
TextScript87DBE98::
	text_script_start TextScript87DBE98

	text_script_rel_pointers 0, 1, 2, 3, 4, 5, 6

	text_script 0, scr_0
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_sound_play00 0xCD, 0x0
	.string "*BEEP! "
	ts_wait 0x20, 0x0
	ts_sound_play00 0xCD, 0x0
	.string "BEEP! "
	ts_wait 0x20, 0x0
	ts_sound_play00 0xCD, 0x0
	.string "BEEP!*"
	ts_wait 0x20, 0x0
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_enable_text_sfx
	.string "A LAWBREAKER HAS\n"
	.string "BEEN DISCOVERED!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ARREST IMMEDIATELY!!"
	ts_key_wait 0x0
	ts_end

	text_script 1, scr_1
	ts_msg_open
	.string "The culprit is\n"
	.string "present!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The trial will\n"
	.string "now begin!!"
	ts_key_wait 0x0
	ts_end

	text_script 2, scr_2
	ts_msg_open
	.string "You,the defendant..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "have trampled on the\n"
	.string "grass and flowers\n"
	ts_print_buffer03 0x80, 0x1
	.string " times!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Trampling on flowers\n"
	.string "is forbidden here!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"Retracing your\n"
	.string "steps\" is a very\n"
	.string "serious crime!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string " I have decided!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The offender will\n"
	.string "be punished by the\n"
	.string "Big Gavel!!"
	ts_key_wait 0x0
	ts_end

	text_script 3, scr_3
	ts_msg_open
	.string "You will be bopped\n"
	.string "on the head in a\n"
	.string "detention cell!"
	ts_key_wait 0x0
	ts_end

	text_script 4, scr_4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Are you OK,MegaMan!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 0x5

	text_script 5, scr_5
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Y-Yeah...\n"
	.string "more or less..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Don't worry about\n"
	.string "me! We've gotta keep\n"
	.string "on moving forward!!"
	ts_key_wait 0x0
	ts_end

	text_script 6, scr_6
	ts_msg_open
	.string "The security door\n"
	.string "has been unlocked!!"
	ts_key_wait 0x0
	ts_end

	.balign 4,0

