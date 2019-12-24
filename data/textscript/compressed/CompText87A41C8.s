	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A41C8::
	.word 0xBC000

	text_archive_start

	def_text_script CompText87A41C8_unk0
	ts_msg_open
	.string "That Sunday..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A41C8_unk1
	ts_mugshot_show mugshot=0x5
	ts_msg_open
	.string "Isn't it nice that\n"
	.string "everyone came to\n"
	.string "see you off,Lan?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A41C8_unk2
	ts_mugshot_show mugshot=0x5
	ts_msg_open
	.string "Thank you,Ms.Mari,\n"
	.string "and everyone else,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "for coming to\n"
	.string "see my son off."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "My family and I will\n"
	.string "be moving to a place\n"
	.string "called Cyber City."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2
	.string "But,pops,\n"
	.string "what are you\n"
	.string "gonna do there?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x5
	.string "Well,I can't give\n"
	.string "specifics,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Cyber City's mayor\n"
	.string "has asked for\n"
	.string "my help..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... That is to say,\n"
	.string "it's still under\n"
	.string "construction,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "in 6 months,an Expo\n"
	.string "about the harmony\n"
	.string "between technology"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and nature is\n"
	.string "scheduled to open."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Cyber City's Net\n"
	.string "traffic will jump"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "dramatically once\n"
	.string "the Expo opens."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Since I'm a\n"
	.string "Net specialist,\n"
	.string "I was asked to go"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and make sure the\n"
	.string "network can handle\n"
	.string "all those requests."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2
	.string "When it's over,\n"
	.string "you'll be back,\n"
	.string "right!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x5
	.string "I'll be continuing\n"
	.string "my research into\n"
	.string "next-gen Net systems"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and Cyber City is\n"
	.string "a model next-gen\n"
	.string "Net society."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So,even after it's\n"
	.string "over,we will most\n"
	.string "likely be staying..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2
	.string "... Oh..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3
	.string "........."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1
	.string "........."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x5
	.string "Now,now.\n"
	.string "Don't look so down."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's not as if you\n"
	.string "will never see each\n"
	.string "other again."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We're still in the\n"
	.string "same country. We can\n"
	.string "come and visit."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Come visit us once\n"
	.string "the Expo opens,OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87A41C8_unk3
	ts_mugshot_show mugshot=0x6
	ts_msg_open
	.string "Ms.Mari,and all of\n"
	.string "Lan's friends,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I want to thank you\n"
	.string "for all you've done."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We may be changing\n"
	.string "where we live,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but you'll always be\n"
	.string "our friends. So feel\n"
	.string "free to drop by!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A41C8_unk4
	ts_mugshot_show mugshot=0x5
	ts_msg_open
	.string "Well then,Lan,your\n"
	.string "Mom and I will be\n"
	.string "waiting by the car."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Come to the car\n"
	.string "when you're done."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A41C8_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "U-Um..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I,uh...\n"
	.string "thanks for coming\n"
	.string "today..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A41C8_unk6
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Laaaaan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "No matter where you\n"
	.string "go,I'll always be\n"
	.string "your rival!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87A41C8_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Dex..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Yeah,we'll always\n"
	.string "be rivals! Always!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87A41C8_unk8
	ts_mugshot_show mugshot=0x3
	ts_msg_open
	.string "You may think you're\n"
	.string "far away,but you'd\n"
	.string "better write to me!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'll always be\n"
	.string "connected through\n"
	.string "the Cyberworld."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You'd better come\n"
	.string "see us... *sniffle*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Waaah..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87A41C8_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yai..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK,I promise to\n"
	.string "keep in touch."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87A41C8_unk10
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "*sniffle... sniffle*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I-I thought you\n"
	.string "would all graduate\n"
	.string "together...*sniffle*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You are my first\n"
	.string "... *sniffle*...\n"
	.string "graduating class..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "so I always\n"
	.string "hoped that..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'd see you all\n"
	.string "graduate together..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... *sniffle*...\n"
	.string "I really wanted to\n"
	.string "see that..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87A41C8_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ms.Mari..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wanted to graduate\n"
	.string "from ACDC School\n"
	.string "with everyone,too..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but even when I\n"
	.string "move,you'll always\n"
	.string "be my teacher!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87A41C8_unk12
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "Lan... *sniffle*..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87A41C8_unk13
	ts_mugshot_hide
	ts_msg_open
	.string "Hey,take care,Lan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87A41C8_unk14
	ts_msg_open
	.string "Come visit a lot!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87A41C8_unk15
	ts_msg_open
	.string "It's gonna be\n"
	.string "kinda lonely..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=16

	def_text_script CompText87A41C8_unk16
	ts_msg_open
	.string "Good luck!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87A41C8_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Thanks,you guys..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've gotta go now."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87A41C8_unk18
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "Lan,I...was just\n"
	.string "thinking how great\n"
	.string "it would be if we"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "could graduate from\n"
	.string "elementary school\n"
	.string "together,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and then go to\n"
	.string "junior high school\n"
	.string "together..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It'd be so nice...\n"
	.string "being together...\n"
	.string "always..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... *sniffle*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87A41C8_unk19
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mayl..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=20

	def_text_script CompText87A41C8_unk20
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "I'm sorry..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I told myself\n"
	.string "I wouldn't cry..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A41C8_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... We'll see each\n"
	.string "other again,and"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll definitely be\n"
	.string "back someday!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So,don't cry...\n"
	.string "... *sniffle*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=22

	def_text_script CompText87A41C8_unk22
	ts_mugshot_show mugshot=0x1
	ts_msg_open
	.string "... Yeah."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=23

	def_text_script CompText87A41C8_unk23
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm glad you\n"
	.string "understand."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A41C8_unk24
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Well,everyone,I\n"
	.string "better get going..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Take care!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=25

	def_text_script CompText87A41C8_unk25
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "You betcha,Lan!!"
	ts_key_wait any=0x0
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x14,
	]
	ts_end

	