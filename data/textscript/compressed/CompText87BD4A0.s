	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BD4A0::
	.word 0x63A00

	text_archive_start

	def_text_script CompText87BD4A0_unk0
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	.string "IT SEEMS THAT YOU\n"
	.string "HAVE FINISHED\n"
	.string "ALL THE TESTS!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "NOW PLEASE SHOW ME\n"
	.string "THE CARDS YOU HAVE\n"
	.string "COLLECTED."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87BD4A0_unk1
	ts_mugshot_hide
	ts_msg_open
	.string "MegaMan showed:\n"
	.string "\""
	ts_print_item [
		item: 0x10,
		buffer: 0x0,
	]
	.string "\",\n"
	.string "\""
	ts_print_item [
		item: 0x11,
		buffer: 0x0,
	]
	.string "\","
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\""
	ts_print_item [
		item: 0x12,
		buffer: 0x0,
	]
	.string "\",\n"
	.string "and\n"
	.string "\""
	ts_print_item [
		item: 0x13,
		buffer: 0x0,
	]
	.string "\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87BD4A0_unk2
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	.string "HMM,HMM...\n"
	.string "VERY NICE!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "YOU PASSED WITH\n"
	.string "FLYING COLORS!\n"
	.string "CONGRATULATIONS!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "WE WILL SEND YOU A\n"
	.string "NOTICE ABOUT THE\n"
	.string "FINAL ROUND SOON."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "GOOD LUCK ON\n"
	.string "BECOMING AN OPERATOR\n"
	.string "NAVI!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "GIVE THE FINAL ROUND\n"
	.string "YOUR ALL! AS A\n"
	.string "BONUS,TAKE THIS."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "WITH THIS,YOU CAN\n"
	.string "REMOVE THE CLOUDS IN\n"
	.string "CENTRALAREA3."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_store_timer [
		timer: 0x0,
		value: 0x81,
	]
	ts_sound_play00 [
		track: 0x73,
	]
	.string "MegaMan got:\n"
	.string "\""
	ts_print_item [
		item: 0x1C,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x82,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x83,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87BD4A0_unk3
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "We did it,Lan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87BD4A0_unk4
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Yeah,we did!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The next round is\n"
	.string "the final...\n"
	.string "I'm so excited!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I wonder how Mick\n"
	.string "and the others did?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87BD4A0_unk5
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Ah!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87BD4A0_unk6
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "So...\n"
	.string "How did you do?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87BD4A0_unk7
	ts_mugshot_show [
		mugshot: 0x57,
	]
	ts_msg_open
	.string "What do you think!?\n"
	.string "Does it look like\n"
	.string "I won!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I totally lost!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I made it to the 4th\n"
	.string "guy's 8th battle..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and then Mick,the\n"
	.string "idiot,had to go and\n"
	.string "mess it all up!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87BD4A0_unk8
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Shut up! You're the\n"
	.string "one that missed with\n"
	.string "the WideSwrd there!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87BD4A0_unk9
	ts_mugshot_show [
		mugshot: 0x57,
	]
	ts_msg_open
	.string "What!? You're the\n"
	.string "one with no skill\n"
	.string "and you blame me!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 10,
	]

	def_text_script CompText87BD4A0_unk10
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Come on,now...\n"
	.string "Don't fight..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We should start\n"
	.string "heading home,\n"
	.string "right...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87BD4A0_unk11
	ts_mugshot_show [
		mugshot: 0x57,
	]
	ts_msg_open
	.string "Hmph,same old,\n"
	.string "same old."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm outta here."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87BD4A0_unk12
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "He's gone..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 13,
	]

	def_text_script CompText87BD4A0_unk13
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	.string "THAT NAVI SHOULD BE\n"
	.string "ABLE TO TAKE CARE OF\n"
	.string "HIMSELF,BUT"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THERE IS AN ENTRANCE\n"
	.string "TO THE UNDERNET\n"
	.string "AROUND HERE..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 14,
	]

	def_text_script CompText87BD4A0_unk14
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_call_p_e_t_effect [
		effect: 0x3,
	]
	.string "RRRRRR!!"
	ts_wait [
		frames: 0x80,
	]
	ts_call_p_e_t_effect [
		effect: 0x1,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_end

	def_text_script CompText87BD4A0_unk15
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "It's your\n"
	.string "autophone,Lan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 16,
	]

	def_text_script CompText87BD4A0_unk16
	ts_sound_play_bgm [
		track: 0x63,
	]
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "L-Lan!\n"
	.string "Help!!\n"
	.string "My Navi..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He got taken by some\n"
	.string "strange Navis from\n"
	.string "the Undernet!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 17,
	]

	def_text_script CompText87BD4A0_unk17
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "No way!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 18,
	]

	def_text_script CompText87BD4A0_unk18
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Please...\n"
	.string "Help me..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 19,
	]

	def_text_script CompText87BD4A0_unk19
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "OK,leave it to us!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "MegaMan,let's go\n"
	.string "to the Undernet!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 20,
	]

	def_text_script CompText87BD4A0_unk20
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "OK!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	