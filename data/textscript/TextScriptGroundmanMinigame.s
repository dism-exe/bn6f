TextScriptGroundmanMinigame::
	text_archive_start

	def_text_script TextScriptGroundmanMinigame_unk0
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whaaaaaaaaaa!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk1

	def_text_script TextScriptGroundmanMinigame_unk2

	def_text_script TextScriptGroundmanMinigame_unk3

	def_text_script TextScriptGroundmanMinigame_unk4

	def_text_script TextScriptGroundmanMinigame_unk5
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Hey,hang tough,Lan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk6

	def_text_script TextScriptGroundmanMinigame_unk7

	def_text_script TextScriptGroundmanMinigame_unk8

	def_text_script TextScriptGroundmanMinigame_unk9

	def_text_script TextScriptGroundmanMinigame_unk10
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	ts_text_speed delay=0x1
	.string "OWWWWWWWWWWWWW!!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_text_speed delay=0x1
	.string "AND JUST WHERE IN\n"
	.string "THE WORLD WERE YOU\n"
	.string "LOOKING!?!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "AND ANOTHER THING!\n"
	.string "DON'T THEY TELL YOU\n"
	.string "TO TREAT CITIZENS..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_text_speed delay=0x2
	ts_store_timer [
		timer: 0x2,
		value: 0x80,
	]
	ts_mugshot_show mugshot=0x4D
	.string "OK,OK,I got it!\n"
	.string "Yeesh!\n"
	.string "(Ah,my time limit!)"
	ts_key_wait any=0x0
	ts_wait_o_w_var [
		variable: 0x2,
		value: 0x81,
	]
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk11

	def_text_script TextScriptGroundmanMinigame_unk12

	def_text_script TextScriptGroundmanMinigame_unk13

	def_text_script TextScriptGroundmanMinigame_unk14

	def_text_script TextScriptGroundmanMinigame_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mr.Prog's in the\n"
	.string "way. We'd better say\n"
	.string "something to him!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk16

	def_text_script TextScriptGroundmanMinigame_unk17

	def_text_script TextScriptGroundmanMinigame_unk18

	def_text_script TextScriptGroundmanMinigame_unk19

	def_text_script TextScriptGroundmanMinigame_unk20
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "HUH? I'M IN THE WAY?\n"
	.string "OKOK,I'LL MOVE...\n"
	.string "*SIGH*"
	ts_key_wait any=0x0
	ts_flag_set flag=0xD98
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk21
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "IN THE WAY?\n"
	.string "OH,I'M SORRY!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xD99
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk22
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "I'M WHAT!? SPEAK UP!\n"
	.string "IN THE WAY!? WHY\n"
	.string "DIDN'T YOU SAY SO!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xD9A
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk23
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "AM I BLOCKING YOU?\n"
	.string "OH,TERRIBLY SORRY."
	ts_key_wait any=0x0
	ts_flag_set flag=0xD9B
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk24
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "I'M A BLOCK\n"
	.string "TO YOUR ROCKS?\n"
	.string "HEY,THAT RHYMED!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xD9C
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk25
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "DON'T YOU HATE IT\n"
	.string "WHEN SOMEONE'S IN\n"
	.string "THE WAY? OH,SORRY..."
	ts_key_wait any=0x0
	ts_flag_set flag=0xD9D
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk26
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "YOU WANT ME TO MOVE?\n"
	.string "MAKE ME! ... ON 2ND\n"
	.string "THOUGHT,YOU WIN..."
	ts_key_wait any=0x0
	ts_flag_set flag=0xD9E
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk27
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "OH,I'M TERRIBLY\n"
	.string "SORRY FOR BLOCKING\n"
	.string "YOUR WAY..."
	ts_key_wait any=0x0
	ts_flag_set flag=0xD9F
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk28
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "DO YOU NEED TO GET\n"
	.string "BY HERE? SHALL I\n"
	.string "MOVE OUT OF THE WAY?"
	ts_key_wait any=0x0
	ts_flag_set flag=0xDA0
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk29
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "AH,I WAS ONLY TRYING\n"
	.string "TO HELP. I'LL GO\n"
	.string "NOW... *SNIFFLE*"
	ts_key_wait any=0x0
	ts_flag_set flag=0xDA1
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk30
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WOW,A PRO! I WANT TO\n"
	.string "BE A DRILLING PRO\n"
	.string "SOMEDAY!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xDA2
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk31
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "I'M BLOCKING YOU?\n"
	.string "ARE YOU SURE YOU'RE\n"
	.string "NOT BLOCKING ME?"
	ts_key_wait any=0x0
	ts_flag_set flag=0xDA3
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk32
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "I DON'T KNOW HOW TO\n"
	.string "GET OUT OF THE WAY!\n"
	.string "... HEY,PUT ME DOWN!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xDA4
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk33
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THANK YOU FOR\n"
	.string "RESCUING ME!\n"
	.string "HEE,HEE!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xDA5
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk34
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "DO YOU THINK I'M\n"
	.string "ANNOYING? ... NO?\n"
	.string "WOW,THANKS BUDDY!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xDA6
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk35
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THOU REQUIRES THAT\n"
	.string "I MOVE? SO BE IT\n"
	.string "THEN."
	ts_key_wait any=0x0
	ts_flag_set flag=0xDA7
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk36
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WHAT'S SO IMPORTANT\n"
	.string "ABOUT SOME ROCKS\n"
	.string "ANYWAY...?"
	ts_key_wait any=0x0
	ts_flag_set flag=0xDA8
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk37
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "YOU LOOKIN' AT ME?\n"
	.string "...... 'EY,ALRIGHT,\n"
	.string "I GET IT,I GET IT!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xDA9
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk38
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "OH,JULIET,JULIET...\n"
	.string "WAIT,YOU'RE NOT HER!\n"
	.string "WHERE IS MY JULIET!?"
	ts_key_wait any=0x0
	ts_flag_set flag=0xDAA
	ts_end

	def_text_script TextScriptGroundmanMinigame_unk39
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "TO BLOCK,OR NOT TO\n"
	.string "BLOCK: THAT IS THE\n"
	.string "QUESTION... OR NOT!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xDAB
	ts_end

	.balign 4, 0
