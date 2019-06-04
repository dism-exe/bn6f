	text_script_start unk_0

text_script_rel_pointers 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3
text_script_rel_pointers 4, 4, 4, 4, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
text_script_rel_pointers 16, 17, 18, 19, 20, 21, 22, 23
	text_script 0, scr_0
		ts_mugshot_show 0x4D
		ts_msg_open
		.string "Whaaaaaaaaaa!!"
		ts_key_wait 0x0
		ts_end
	text_script 1, scr_1
		ts_mugshot_show 0x4D
		ts_msg_open
		.string "Hey,hang tough,Lan!!"
		ts_key_wait 0x0
		ts_end
	text_script 2, scr_2
		ts_mugshot_show 0x3C
		ts_msg_open
		ts_text_speed 0x1
		.string "OWWWWWWWWWWWWW!!!"
		ts_key_wait 0x0
		ts_clear_msg
		ts_text_speed 0x1
		.string "AND JUST WHERE IN\n"
		.string "THE WORLD WERE YOU\n"
		.string "LOOKING!?!?"
		ts_key_wait 0x0
		ts_clear_msg
		.string "AND ANOTHER THING!\n"
		.string "DON'T THEY TELL YOU\n"
		.string "TO TREAT CITIZENS..."
		ts_key_wait 0x0
		ts_clear_msg
		ts_text_speed 0x2
		ts_store_timer 0x2, 0x80
		ts_mugshot_show 0x4D
		.string "OK,OK,I got it!\n"
		.string "Yeesh!\n"
		.string "(Ah,my time limit!)"
		ts_key_wait 0x0
		ts_wait_o_w_var 0x2, 0x81
		ts_end
	text_script 3, scr_3
		ts_mugshot_show 0x0
		ts_msg_open
		.string "Mr.Prog's in the\n"
		.string "way. We'd better say\n"
		.string "something to him!"
		ts_key_wait 0x0
		ts_end
	text_script 4, scr_4
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "HUH? I'M IN THE WAY?\n"
		.string "OKOK,I'LL MOVE...\n"
		.string "*SIGH*"
		ts_key_wait 0x0
		ts_flag_set 0x98, 0xD
		ts_end
	text_script 5, scr_5
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "IN THE WAY?\n"
		.string "OH,I'M SORRY!"
		ts_key_wait 0x0
		ts_flag_set 0x99, 0xD
		ts_end
	text_script 6, scr_6
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "I'M WHAT!? SPEAK UP!\n"
		.string "IN THE WAY!? WHY\n"
		.string "DIDN'T YOU SAY SO!"
		ts_key_wait 0x0
		ts_flag_set 0x9A, 0xD
		ts_end
	text_script 7, scr_7
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "AM I BLOCKING YOU?\n"
		.string "OH,TERRIBLY SORRY."
		ts_key_wait 0x0
		ts_flag_set 0x9B, 0xD
		ts_end
	text_script 8, scr_8
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "I'M A BLOCK\n"
		.string "TO YOUR ROCKS?\n"
		.string "HEY,THAT RHYMED!"
		ts_key_wait 0x0
		ts_flag_set 0x9C, 0xD
		ts_end
	text_script 9, scr_9
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "DON'T YOU HATE IT\n"
		.string "WHEN SOMEONE'S IN\n"
		.string "THE WAY? OH,SORRY..."
		ts_key_wait 0x0
		ts_flag_set 0x9D, 0xD
		ts_end
	text_script 10, scr_10
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "YOU WANT ME TO MOVE?\n"
		.string "MAKE ME! ... ON 2ND\n"
		.string "THOUGHT,YOU WIN..."
		ts_key_wait 0x0
		ts_flag_set 0x9E, 0xD
		ts_end
	text_script 11, scr_11
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "OH,I'M TERRIBLY\n"
		.string "SORRY FOR BLOCKING\n"
		.string "YOUR WAY..."
		ts_key_wait 0x0
		ts_flag_set 0x9F, 0xD
		ts_end
	text_script 12, scr_12
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "DO YOU NEED TO GET\n"
		.string "BY HERE? SHALL I\n"
		.string "MOVE OUT OF THE WAY?"
		ts_key_wait 0x0
		ts_flag_set 0xA0, 0xD
		ts_end
	text_script 13, scr_13
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "AH,I WAS ONLY TRYING\n"
		.string "TO HELP. I'LL GO\n"
		.string "NOW... *SNIFFLE*"
		ts_key_wait 0x0
		ts_flag_set 0xA1, 0xD
		ts_end
	text_script 14, scr_14
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "WOW,A PRO! I WANT TO\n"
		.string "BE A DRILLING PRO\n"
		.string "SOMEDAY!"
		ts_key_wait 0x0
		ts_flag_set 0xA2, 0xD
		ts_end
	text_script 15, scr_15
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "I'M BLOCKING YOU?\n"
		.string "ARE YOU SURE YOU'RE\n"
		.string "NOT BLOCKING ME?"
		ts_key_wait 0x0
		ts_flag_set 0xA3, 0xD
		ts_end
	text_script 16, scr_16
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "I DON'T KNOW HOW TO\n"
		.string "GET OUT OF THE WAY!\n"
		.string "... HEY,PUT ME DOWN!"
		ts_key_wait 0x0
		ts_flag_set 0xA4, 0xD
		ts_end
	text_script 17, scr_17
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "THANK YOU FOR\n"
		.string "RESCUING ME!\n"
		.string "HEE,HEE!"
		ts_key_wait 0x0
		ts_flag_set 0xA5, 0xD
		ts_end
	text_script 18, scr_18
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "DO YOU THINK I'M\n"
		.string "ANNOYING? ... NO?\n"
		.string "WOW,THANKS BUDDY!"
		ts_key_wait 0x0
		ts_flag_set 0xA6, 0xD
		ts_end
	text_script 19, scr_19
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "THOU REQUIRES THAT\n"
		.string "I MOVE? SO BE IT\n"
		.string "THEN."
		ts_key_wait 0x0
		ts_flag_set 0xA7, 0xD
		ts_end
	text_script 20, scr_20
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "WHAT'S SO IMPORTANT\n"
		.string "ABOUT SOME ROCKS\n"
		.string "ANYWAY...?"
		ts_key_wait 0x0
		ts_flag_set 0xA8, 0xD
		ts_end
	text_script 21, scr_21
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "YOU LOOKIN' AT ME?\n"
		.string "...... 'EY,ALRIGHT,\n"
		.string "I GET IT,I GET IT!"
		ts_key_wait 0x0
		ts_flag_set 0xA9, 0xD
		ts_end
	text_script 22, scr_22
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "OH,JULIET,JULIET...\n"
		.string "WAIT,YOU'RE NOT HER!\n"
		.string "WHERE IS MY JULIET!?"
		ts_key_wait 0x0
		ts_flag_set 0xAA, 0xD
		ts_end
	text_script 23, scr_23
		ts_mugshot_show 0x3C
		ts_msg_open
		.string "TO BLOCK,OR NOT TO\n"
		.string "BLOCK: THAT IS THE\n"
		.string "QUESTION... OR NOT!"
		ts_key_wait 0x0
		ts_flag_set 0xAB, 0xD
		ts_end
0x658