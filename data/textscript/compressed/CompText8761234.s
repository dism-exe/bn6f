	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8761234::
	.word 0x57900

	text_archive_start

	def_text_script CompText8761234_unk0
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "ACDC Area on it."
	ts_key_wait any=0x0
	ts_start_map map=0xA
	ts_end

	def_text_script CompText8761234_unk1
	ts_end

	def_text_script CompText8761234_unk2
	ts_check_flag [
		flag: 0xCD2,
		jumpIfTrue: CompText8761234_unk4_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD1,
		jumpIfTrue: CompText8761234_unk3_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0xCD1
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WAAAH..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "What's wrong?\n"
	.string "What are you doing\n"
	.string "over there...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "HEY,YOU'RE\n"
	.string "MR.MEGAMAN!\n"
	.string "IT'S BEEN A WHILE!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "SO ACTUALLY,I HAVE\n"
	.string "TO GIVE MS.ROLL HER\n"
	.string "PACKAGE..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "You're the one?\n"
	.string "Roll's been looking\n"
	.string "all over for you!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "O-OH..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I WAS BRINGING HER\n"
	.string "THIS PACKAGE,AND\n"
	.string "WHEN I CAME BACK,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THE DOOR JUST UP AND\n"
	.string "LOCKED ITSELF,JUST\n"
	.string "LIKE THAT!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I BET THIS IS\n"
	.string "SOMEONE'S IDEA OF\n"
	.string "A JOKE!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "A joke?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... It feels like\n"
	.string "I've seen this joke\n"
	.string "somewhere before..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Then again..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I guess there are\n"
	.string "other people who\n"
	.string "think like Mick..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Anyway,let's help\n"
	.string "this guy out,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Roger!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This door has a\n"
	.string "lock,so let's find\n"
	.string "the key!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "OH,THANK YOU!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8761234_unk3
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "I WONDER WHO'S THE\n"
	.string "ONE CAUSING ALL\n"
	.string "THIS TROUBLE...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8761234_unk4
	ts_msg_open
	.string "MegaMan used:\n"
	.string "\""
	ts_print_item [
		item: 0x1A,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_flag_clear flag=0xCE6
	ts_end

	def_text_script CompText8761234_unk5
	ts_check_flag [
		flag: 0xCD2,
		jumpIfTrue: CompText8761234_unk6_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xCD1,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8761234_unk6_id,
	]
	ts_msg_open
	.string "Dex's symbol,an\n"
	.string "image of a Japanese\n"
	.string "chess piece."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "... Hey,someone\n"
	.string "dropped something."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x1A,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x1A,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_flag_set flag=0xCD2
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "If the key's here..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "then the person that\n"
	.string "locked the door has\n"
	.string "to be Dex..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Dex and Mick..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They really are\n"
	.string "the same."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8761234_unk6
	ts_msg_open
	.string "Dex's symbol,an\n"
	.string "image of a Japanese\n"
	.string "chess piece."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8761234_unk7
	ts_msg_open
	.string "It's a BBS..."
	ts_key_wait any=0x0
	ts_start_b_b_s bbs=0x3
	ts_end

	def_text_script CompText8761234_unk8
	ts_msg_open
	.string "It's the image of\n"
	.string "Mayl's favorite\n"
	.string "stuffed bear."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8761234_unk9
	ts_msg_open
	.string "It's an image of the\n"
	.string "cute ducks that Yai\n"
	.string "likes."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8761234_unk10
	ts_check_item07 [
		item: 0x44,
		amount: 0x1,
		jumpIfEqual: TS_CONTINUE,
		jumpIfGreater: TS_CONTINUE,
		jumpIfLess: CompText8761234_unk11_id,
	]
	ts_msg_open
	ts_print_current_navi_ow
	.string " used:\n"
	.string "\""
	ts_print_item [
		item: 0x44,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_flag_clear flag=0x77
	ts_end

	def_text_script CompText8761234_unk11
	ts_msg_open
	.string "The door is sealed\n"
	.string "tight. You can't get\n"
	.string "through it!"
	ts_key_wait any=0x0
	ts_end

	