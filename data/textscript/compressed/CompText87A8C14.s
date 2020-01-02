	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A8C14::
	.word 0xBFE00

	text_archive_start

	def_text_script CompText87A8C14_unk0
	ts_msg_open
	.string "We beat BlastMan,\n"
	.string "and the whole thing\n"
	.string "at school ended."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It was decided that\n"
	.string "this time,it was\n"
	.string "an outside intruder,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "BlastMan,who caused\n"
	.string "the whole mess..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But it looks like\n"
	.string "Mick made the\n"
	.string "teachers really mad."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A8C14_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Maybe this will\n"
	.string "make him change\n"
	.string "his ways..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A8C14_unk2_id

	def_text_script CompText87A8C14_unk2
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Hmph,don't bet\n"
	.string "on it."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A8C14_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mick..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A8C14_unk4_id

	def_text_script CompText87A8C14_unk4
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "It's not like I've\n"
	.string "changed or anything,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but I've been\n"
	.string "thinking a little."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've been giving\n"
	.string "you a lotta\n"
	.string "trouble..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... That was\n"
	.string "wrong of me."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A8C14_unk5_id

	def_text_script CompText87A8C14_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mick..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's OK. How about\n"
	.string "us being friends?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I still don't have\n"
	.string "that many friends to\n"
	.string "hang out with here."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A8C14_unk6_id

	def_text_script CompText87A8C14_unk6
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "No way,freak."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's not my kind\n"
	.string "of thing."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I just wanna\n"
	.string "NetBattle sometime"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and totally own\n"
	.string "you two!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A8C14_unk7_id

	def_text_script CompText87A8C14_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ha,ha,ha..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_animation animation=0x1
	.string "(He kinda reminds\n"
	.string " me of Dex...)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_animation animation=0x2
	ts_jump target=CompText87A8C14_unk18_id

	def_text_script CompText87A8C14_unk8
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "What are you looking\n"
	.string "so serious for?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "S-Shut up!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "*ahem!*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "L-Lan..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So,all these things\n"
	.string "kinda happened since\n"
	.string "you got here,but I"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "was really impressed\n"
	.string "today. Uh,I don't\n"
	.string "like saying sorry,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "so here,take this."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A8C14_unk9_id

	def_text_script CompText87A8C14_unk9
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0xC,
	]
	ts_sound_play00 track=0x73
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0x4,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0xD,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0xE,
	]
	ts_clear_msg
	ts_jump target=CompText87A8C14_unk10_id

	def_text_script CompText87A8C14_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What's this!?\n"
	.string "Your doodles!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A8C14_unk11_id

	def_text_script CompText87A8C14_unk11
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "N-NO! And it's\n"
	.string "\"graffiti\",not\n"
	.string "\"doodles\"! I mean..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That \"graffiti's\"\n"
	.string "gonna show you where\n"
	.string "the key for the door"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "between CentralArea2\n"
	.string "and CentralArea3 is\n"
	.string "hidden!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I should know! I\n"
	.string "hid the key and\n"
	.string "wrote that note!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What a troublemaker..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "With that,you can\n"
	.string "get to the Cybeast\n"
	.string "statues"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "in CentralArea3!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A8C14_unk12_id

	def_text_script CompText87A8C14_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Cybeast...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x33
	.string "Everyone knows about\n"
	.string "Cyber City's\n"
	.string "legendary beasts!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Really...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A8C14_unk13_id

	def_text_script CompText87A8C14_unk13
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "I'll let you borrow\n"
	.string "that for now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Later,freak!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A8C14_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Heh,why can't he\n"
	.string "apologize like a\n"
	.string "normal person!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x33
	.string "He's a rebel,so him\n"
	.string "giving that to you\n"
	.string "shows he's sorry."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "... Yeah,when you\n"
	.string "put it like that,it\n"
	.string "does seem his style!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x33
	.string "Oh,it's already time\n"
	.string "to go home!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A8C14_unk15
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Actually,my house\n"
	.string "is in the Central\n"
	.string "Town chip store."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The store's called\n"
	.string "\"AsterLand\"!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We're in the middle\n"
	.string "of remodeling,so\n"
	.string "we're not open,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "once we're finished,\n"
	.string "I really hope you'll\n"
	.string "come by!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,I've gotta go\n"
	.string "home and help with\n"
	.string "the remodeling."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll see you\n"
	.string "tomorrow,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A8C14_unk16_id

	def_text_script CompText87A8C14_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah,see you\n"
	.string "tomorrow!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x33
	.string "OK!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A8C14_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Looks like school's\n"
	.string "gonna get pretty\n"
	.string "busy from now on..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,let's go check\n"
	.string "out CentralArea3 and\n"
	.string "the Cybeast statues!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "OK!\n"
	.string "Oh,before we do,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "we should look at\n"
	.string "that \""
	ts_print_item [
		item: 0x4,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "you got earlier."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can look at it\n"
	.string "in your KeyItem on\n"
	.string "the PET screen."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A8C14_unk18
	ts_mugshot_hide
	ts_msg_open
	.string "Mr.Hikari!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A8C14_unk19
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "T-Tab!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A8C14_unk20_id

	def_text_script CompText87A8C14_unk20
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Mr.Hikari!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hi! I'm Tab."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'd really like to\n"
	.string "be your friend,too!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A8C14_unk21_id

	def_text_script CompText87A8C14_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Sure,but please\n"
	.string "don't call me \"Mr.\"\n"
	.string "Call me \"Lan\"!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We're the same age,\n"
	.string "after all..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "Yeah,and don't call\n"
	.string "me,\"Mr.\"either..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A8C14_unk22_id

	def_text_script CompText87A8C14_unk22
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Oh,keep quiet for\n"
	.string "a second,Mick."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Mr.Hikari,er,Lan...\n"
	.string "I was so impressed\n"
	.string "by your NetBattle..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "especially your\n"
	.string "techniques..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The way you stayed\n"
	.string "calm during the\n"
	.string "incident..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You didn't look\n"
	.string "like a kid at all!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I really\n"
	.string "respect you!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's why I called\n"
	.string "you \"Mr.Hikari\"!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I don't respect\n"
	.string "Mick at all,so I\n"
	.string "don't call him \"Mr.\""
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "Grr..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A8C14_unk23_id

	def_text_script CompText87A8C14_unk23
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "W-Well,whatever."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... H-Hey,Lan..."
	ts_key_wait any=0x0
	ts_end

	