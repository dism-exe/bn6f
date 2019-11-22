	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C3E48::
	.word 0x46B00

	text_archive_start

	def_text_script CompText87C3E48_unk0
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "Lan's late.\n"
	.string "What's he doing\n"
	.string "anyway!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87C3E48_unk1
	ts_mugshot_show [
		mugshot: 0x3,
	]
	ts_msg_open
	.string "... Looks like his\n"
	.string "trademark lateness\n"
	.string "hasn't changed."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87C3E48_unk2
	ts_mugshot_show [
		mugshot: 0x1,
	]
	ts_msg_open
	.string "Well,he can't help\n"
	.string "it. It's really far\n"
	.string "between ACDC Town"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and Cyber City.\n"
	.string "He'll be here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Ah!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C3E48_unk3
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	ts_text_speed [
		delay: 0x3,
	]
	.string "H-Hey,everyone..."
	ts_text_speed [
		delay: 0x2,
	]
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C3E48_unk4
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "Whoooooa!\n"
	.string "L-Laaaaan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87C3E48_unk5
	ts_mugshot_show [
		mugshot: 0x3,
	]
	ts_msg_open
	.string "Hey,Lan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87C3E48_unk6
	ts_mugshot_show [
		mugshot: 0x1,
	]
	ts_msg_open
	.string "Welcome back,Lan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87C3E48_unk7
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Dex,Yai,\n"
	.string "...Mayl..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's good to\n"
	.string "be back!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Ehehehe,it's\n"
	.string "kinda embarrassing."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C3E48_unk8
	ts_msg_open
	.string "We talked about all\n"
	.string "sorts of things\n"
	.string "after that -- about"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Cyber City,my new\n"
	.string "school and friends,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "things that happened\n"
	.string "after I left,and of\n"
	.string "course,ACDC school."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We had so much to\n"
	.string "talk about that"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "time just flew by\n"
	.string "without us realizing\n"
	.string "it."
	ts_key_wait [
		any: 0x0,
	]
	ts_sound_play_bgm [
		track: 0x24,
	]
	ts_end

	def_text_script CompText87C3E48_unk9
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... And this guy,\n"
	.string "Mick,he's just like\n"
	.string "Dex!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 10,
	]

	def_text_script CompText87C3E48_unk10
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "Then he's gotta be\n"
	.string "a strong NetBattler!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 11,
	]

	def_text_script CompText87C3E48_unk11
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Ummmm...\n"
	.string "... Well,not really."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script CompText87C3E48_unk12
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "... Ugh!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 13,
	]

	def_text_script CompText87C3E48_unk13
	ts_mugshot_show [
		mugshot: 0x3,
	]
	ts_msg_open
	.string "Hahaha,there are\n"
	.string "people like Dex no\n"
	.string "matter where you go!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 14,
	]

	def_text_script CompText87C3E48_unk14
	ts_mugshot_show [
		mugshot: 0x1,
	]
	ts_msg_open
	.string "Hey,Lan,why don't\n"
	.string "you take a walk\n"
	.string "around town?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm sure people\n"
	.string "would love to say\n"
	.string "hi to you!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87C3E48_unk15
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Oh,yeah! OK!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C3E48_unk16
	ts_msg_open
	.string "Lan rode the LevBus\n"
	.string "to ACDC Town.\n"
	.string "A few hours later,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "in ACDC Town..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	