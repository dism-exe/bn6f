	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877A7FC::
	.word 0x352300

	text_archive_start

	def_text_script CompText877A7FC_unk0
	ts_check_flag [
		flag: 0x163,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x120,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x9,
	]
	ts_check_flag [
		flag: 0x834,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_check_chapter [
		lower: 0x32,
		upper: 0x33,
		jumpIfInRange: 0x78,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_flag [
		flag: 0x87E,
		jumpIfTrue: 0x7,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x87E,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Ummm... Ms.Fahran!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Wow... I'm surprised\n"
	.string "to see you here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You have something\n"
	.string "to do in Green Town?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Yeah,something like\n"
	.string "that."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "What are you doing\n"
	.string "in Green Town,\n"
	.string "Ms.Fahran?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Well,I started a\n"
	.string "cooking class here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Oh,perfect timing!\n"
	.string "How would you like\n"
	.string "to take my class?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Take Ms.Fahran's\n"
	.string "class...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0xA,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Sure  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No thanks"
	ts_select 0x6, 0x80, 0xFF, 0x6, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x22,
	]
	.string "Once class starts,\n"
	.string "you aren't allowed\n"
	.string "to quit,and you"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "must stay here\n"
	.string "until class is\n"
	.string "over. Is that OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x6, 0xFF
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x833,
	]
	ts_flag_set [
		flag: 0x102,
	]
	ts_end

	def_text_script CompText877A7FC_unk1
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Show me your true\n"
	.string "cooking skill!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk2
	ts_check_flag [
		flag: 0x848,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "We'll use the\n"
	.string "veggies you brought\n"
	.string "as ingredients,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and make some\n"
	.string "tasty cybersoup!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It will take a\n"
	.string "while until it's\n"
	.string "ready,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "so in the mean time,\n"
	.string "shall we move on to\n"
	.string "the last lesson?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The final lesson\n"
	.string "will be a battle"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "between your Navi,\n"
	.string "and my Navi,\n"
	.string "SlashMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Are you ready to\n"
	.string "begin?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0x5, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x22,
	]
	.string "What's the matter?\n"
	.string "Don't lose your\n"
	.string "nerve to battle now!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk3
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Would you like to\n"
	.string "try fighting\n"
	.string "SlashMan again?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0x5, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x22,
	]
	.string "What's the matter?\n"
	.string "Don't lose your\n"
	.string "nerve to battle now!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk4
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Not quite there yet!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You're not quite\n"
	.string "ready to make a\n"
	.string "gourmet meal!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Would you like to\n"
	.string "try fighting\n"
	.string "SlashMan again?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0x5, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x22,
	]
	.string "What's the matter?\n"
	.string "Don't lose your\n"
	.string "nerve to battle now!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk5
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Let's go!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x875,
	]
	ts_end

	def_text_script CompText877A7FC_unk6
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Come back if\n"
	.string "you feel like it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk7
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Well,I started a\n"
	.string "cooking class here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Oh,perfect timing!\n"
	.string "How would you like\n"
	.string "to take my class?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Take Ms.Fahran's\n"
	.string "class...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Sure  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No thanks"
	ts_select 0x6, 0x80, 0xFF, 0x6, 0xFF
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Once class starts,\n"
	.string "you aren't allowed\n"
	.string "to quit,and you"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "must stay here\n"
	.string "until class is\n"
	.string "over. Is that OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x6, 0xFF
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x833,
	]
	ts_flag_set [
		flag: 0x102,
	]
	ts_end

	def_text_script CompText877A7FC_unk8
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "If you want to\n"
	.string "use SlashMan,just\n"
	.string "come back here!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Because he's always\n"
	.string "inside this recipe\n"
	.string "book!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk9
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Sorry,but right\n"
	.string "now I don't have\n"
	.string "class..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Come back another\n"
	.string "time,OK!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk10
	ts_check_flag [
		flag: 0x163,
		jumpIfTrue: 0x13,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x120,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x13,
	]
	ts_check_flag [
		flag: 0x849,
		jumpIfTrue: 0xB,
		jumpIfFalse: 0xFF,
	]
	ts_check_chapter [
		lower: 0x32,
		upper: 0x33,
		jumpIfInRange: 0x7A,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_flag [
		flag: 0x87F,
		jumpIfTrue: 0x11,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x87F,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Hey! It's Master\n"
	.string "Feng-Tian!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho! Funny\n"
	.string "to run into you,\n"
	.string "grasshopper!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "What are you\n"
	.string "doing here,Master?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x23,
	]
	.string "Ho,ho,ho,ho..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm teaching a\n"
	.string "special friend the"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "way to control the\n"
	.string "wind."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...Oh,yes..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You and I met here\n"
	.string "due to the winds\n"
	.string "of fate."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Thus,would you\n"
	.string "like to take my\n"
	.string "class?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Take Master\n"
	.string "Feng-Tian's\n"
	.string "class...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0xA,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Sure  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No thanks"
	ts_select 0x6, 0x80, 0xFF, 0x10, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x23,
	]
	.string "Once class has\n"
	.string "begun you may not\n"
	.string "quit,grasshopper!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And you must stay\n"
	.string "here until class\n"
	.string "is completed..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Is that understood,\n"
	.string "grasshopper?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x10, 0xFF
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x849,
	]
	ts_flag_set [
		flag: 0x103,
	]
	ts_end

	def_text_script CompText877A7FC_unk11
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho,ho!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm watching all\n"
	.string "of your movements!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk12
	ts_check_flag [
		flag: 0x856,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho,ho,\n"
	.string "the final lesson."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I want you to\n"
	.string "defeat my Navi,\n"
	.string "TenguMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Are you ready?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0xF, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x23,
	]
	.string "Ho,ho,ho,ho...\n"
	.string "Are you frightened\n"
	.string "grasshopper?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk13
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho,ho!\n"
	.string "Try again,\n"
	.string "grasshopper?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0xF, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x23,
	]
	.string "Ho,ho,ho,ho...\n"
	.string "Are you frightened\n"
	.string "grasshopper?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk14
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "You still have\n"
	.string "unnecessary\n"
	.string "movements."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ho,ho,ho,ho...\n"
	.string "Try one more time?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0xF, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x23,
	]
	.string "Ho,ho,ho,ho...\n"
	.string "Are you frightened\n"
	.string "grasshopper?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk15
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Let's begin!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x877,
	]
	ts_end

	def_text_script CompText877A7FC_unk16
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho,ho,you\n"
	.string "should come back if\n"
	.string "you so desire."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk17
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Meeting you here\n"
	.string "is thanks to the\n"
	.string "winds of fate..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Would you like to\n"
	.string "take my class,\n"
	.string "grasshopper?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Take Master\n"
	.string "Feng-Tian's\n"
	.string "class...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0xA,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Sure  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No thanks"
	ts_select 0x6, 0x80, 0xFF, 0x10, 0xFF
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Once class has\n"
	.string "begun you may not\n"
	.string "quit,grasshopper!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And you must stay\n"
	.string "here until class\n"
	.string "is completed..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Is that understood,\n"
	.string "grasshopper?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0xA,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x10, 0xFF
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x849,
	]
	ts_flag_set [
		flag: 0x103,
	]
	ts_end

	def_text_script CompText877A7FC_unk18
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "If you'd like to\n"
	.string "use TenguMan,\n"
	.string "come back here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He is always in\n"
	.string "this book of\n"
	.string "nature!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk19
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Sorry,but I'm\n"
	.string "not holding\n"
	.string "class today."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Come back another\n"
	.string "time,please."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk20
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan! Let's stop\n"
	.string "the JudgeTree!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk21
	ts_flag_set [
		flag: 0x872,
	]
	ts_check_flag [
		flag: 0x873,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x19,
	]
	ts_msg_open
	.string "..."
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x19E,
	]
	.string "*beep,beep,beep!*"
	ts_wait [
		frames: 0xA,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "To open this door,\n"
	.string "please enter the\n"
	.string "password."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"The law governing\n"
	.string " NetNavi rights is"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " what Green Town\n"
	.string " law number?\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Enter Password:"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_option [
		brackets: 0x1,
		right: 0x1,
		left: 0x3,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	ts_menu_option_number_trader [
		char: 0x0,
	]
	.string "0"
	ts_option [
		brackets: 0x1,
		right: 0x2,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	ts_menu_option_number_trader [
		char: 0x1,
	]
	.string "0"
	ts_option [
		brackets: 0x1,
		right: 0x3,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space [
		count: 0x1,
	]
	ts_menu_option_number_trader [
		char: 0x2,
	]
	.string "0    "
	ts_option [
		brackets: 0x1,
		right: 0x0,
		left: 0x2,
		down: 0x3,
		up: 0x3,
	]
	ts_space [
		count: 0x1,
	]
	.string " OK\n"
	.string "(UP/DOWN:Number\n"
	.string " LEFT/RIGHT:Cursor)"
	ts_menu_select_password [
		jumpIfCorrect: 0x16,
		jumpIfIncorrect: 0x17,
		jumpIfCancelled: 0x18,
		password: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk22
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x151,
	]
	.string "*beep* "
	ts_wait [
		frames: 0x14,
	]
	ts_sound_play00 [
		track: 0x176,
	]
	.string "*click!!*"
	ts_wait [
		frames: 0x14,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You May Proceed"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x879,
	]
	ts_flag_set [
		flag: 0x1726,
	]
	ts_end

	def_text_script CompText877A7FC_unk23
	ts_msg_open
	ts_sound_play00 [
		track: 0xD2,
	]
	.string "Password Incorrect"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk24
	ts_msg_open
	.string "Cancel Entry"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk25
	ts_msg_open
	.string "..."
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x19E,
	]
	.string "*beep,beep,beep!*"
	ts_wait [
		frames: 0xA,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "To open this door,\n"
	.string "please enter the\n"
	.string "password."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"The law governing\n"
	.string " NetNavi rights is"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " what law number?\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Navi rights law is\n"
	.string "what number?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I have no idea!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk26

	def_text_script CompText877A7FC_unk27

	def_text_script CompText877A7FC_unk28
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,let's take\n"
	.string "a class!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk29

	def_text_script CompText877A7FC_unk30
	ts_check_flag [
		flag: 0x1141,
		jumpIfTrue: 0x21,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1143,
		jumpIfTrue: 0x20,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1140,
		jumpIfTrue: 0x1F,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x1140,
	]
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "You must be the\n"
	.string "one who answered\n"
	.string "my request?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The truth is I'm\n"
	.string "a little worried..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It seems my\n"
	.string "daughter has gotten\n"
	.string "herself a boyfriend."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "She's my only\n"
	.string "daughter,so this\n"
	.string "worries me..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So this is my\n"
	.string "request..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I want you to make\n"
	.string "sure this guy is\n"
	.string "OK for my daughter."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I thought about how\n"
	.string "to do this..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Today my daughter\n"
	.string "is on a date on the\n"
	.string "Net..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So I want you to\n"
	.string "go and try to get\n"
	.string "her to go with you."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I want you to see\n"
	.string "what her boyfriend"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "does in this kind\n"
	.string "of situation."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I hear they are\n"
	.string "on a date in the\n"
	.string "SeasideArea."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm sorry to make\n"
	.string "you a bad guy,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "but it's for my\n"
	.string "daughter!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk31
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "Today my daughter\n"
	.string "is on a date on the\n"
	.string "Net..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So I want you to\n"
	.string "go and try to get\n"
	.string "her to go with you."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I want you to see\n"
	.string "what her boyfriend"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "does in this kind\n"
	.string "of situation."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I hear they are\n"
	.string "on a date in the\n"
	.string "SeasideArea."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm sorry to make\n"
	.string "you a bad guy,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "but it's for my\n"
	.string "daughter!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk32
	ts_flag_set [
		flag: 0x1141,
	]
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "...How did it go?\n"
	.string "What kind of guy\n"
	.string "is he?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "My daughter says she\n"
	.string "isn't a little kid\n"
	.string "anymore?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "I see..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I guess I just\n"
	.string "couldn't let\n"
	.string "her go..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sorry to involve\n"
	.string "you in all of this."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Here is a reward\n"
	.string "to thank you."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_item_give [
		item: 0x72,
		amount: 0x1,
	]
	ts_mugshot_hide
	ts_player_animate_object [
		animation: 0x18,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0x72,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Regular memory\n"
	.string "increased by\n"
	.string "1 MB!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0xF,
	]
	.string "My baby girl is\n"
	.string "all grown up..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm happy...\n"
	.string "and a bit sad too."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	.string "Request Point\n"
	ts_call_request_points_buffer
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " Points!"
	ts_key_wait [
		any: 0x0,
	]
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText877A7FC_unk33
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "My baby girl is\n"
	.string "all grown up..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm happy...\n"
	.string "and a bit sad too."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk34

	def_text_script CompText877A7FC_unk35
	ts_check_flag [
		flag: 0x1187,
		jumpIfTrue: 0x26,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1181,
		jumpIfTrue: 0x25,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1180,
		jumpIfTrue: 0x24,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x1180,
	]
	ts_mugshot_show [
		mugshot: 0x15,
	]
	ts_msg_open
	.string "Ahh,yes,I'm the\n"
	.string "requestor."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I was hoping you'd\n"
	.string "listen to my\n"
	.string "request..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I would like for\n"
	.string "you to find a\n"
	.string "TimeCpsl I buried"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "many years ago in\n"
	.string "Green Area and to\n"
	.string "bring it back to me."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You may think that\n"
	.string "since I buried it,\n"
	.string "I could find it..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But I don't remember\n"
	.string "where I buried it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Not to mention,there\n"
	.string "are phoney TimeCpsls"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "that will spring a\n"
	.string "virus if you uncover\n"
	.string "them!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You should look for\n"
	.string "TimeCpsls at the\n"
	.string "base of cybertrees."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Good luck!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk36
	ts_mugshot_show [
		mugshot: 0x15,
	]
	ts_msg_open
	.string "Let me tell you\n"
	.string "about my request..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I would like for\n"
	.string "you to dig up a\n"
	.string "TimeCpsl I buried"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "many years ago in\n"
	.string "Green Area and to\n"
	.string "bring it back to me."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There are also\n"
	.string "phoney TimeCpsls\n"
	.string "buried,so beware!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "TimeCpsls are buried\n"
	.string "at the base of\n"
	.string "cybertrees."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Thanks for\n"
	.string "your help!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk37
	ts_flag_set [
		flag: 0x1187,
	]
	ts_item_take [
		item: 0x26,
		amount: 0x1,
	]
	ts_mugshot_show [
		mugshot: 0x15,
	]
	ts_msg_open
	.string "AHHH!!\n"
	.string "This is my\n"
	.string "TimeCpsl!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You've helped me\n"
	.string "out so much..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "3 friends and I had\n"
	.string "planned to dig up\n"
	.string "this TimeCpsl."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "1 is a guy and 2 are\n"
	.string "girls..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Anyways,inside this\n"
	.string "TimeCpsl,I wrote the\n"
	.string "name of a girl..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You've probably\n"
	.string "already guessed,but\n"
	.string "I loved this girl..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "She was the girl in\n"
	.string "our group of 4\n"
	.string "friends..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Recently,she got\n"
	.string "married to one of\n"
	.string "the other guys..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If he knew that I\n"
	.string "was in love with\n"
	.string "her..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Well... I think it\n"
	.string "would be bad,\n"
	.string "don't you?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So I had you get\n"
	.string "this so I could\n"
	.string "write another name!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hopefully,writing\n"
	.string "another name will\n"
	.string "lead to a new love!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Oh,I forgot about\n"
	.string "your reward!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x70,
		amount: 0x1,
	]
	ts_player_animate_object [
		animation: 0x18,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0x70,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x15,
	]
	.string "Thank you!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm so relieved!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	.string "Request Point\n"
	ts_call_request_points_buffer
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " Points!"
	ts_key_wait [
		any: 0x0,
	]
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText877A7FC_unk38
	ts_mugshot_show [
		mugshot: 0x15,
	]
	ts_msg_open
	.string "Yep! I'll work hard\n"
	.string "to start a new love!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk39

	def_text_script CompText877A7FC_unk40

	def_text_script CompText877A7FC_unk41

	def_text_script CompText877A7FC_unk42

	def_text_script CompText877A7FC_unk43

	def_text_script CompText877A7FC_unk44

	def_text_script CompText877A7FC_unk45

	def_text_script CompText877A7FC_unk46

	def_text_script CompText877A7FC_unk47

	def_text_script CompText877A7FC_unk48

	def_text_script CompText877A7FC_unk49

	def_text_script CompText877A7FC_unk50
	ts_check_flag [
		flag: 0x120,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x46,
	]
	ts_check_flag [
		flag: 0x1302,
		jumpIfTrue: 0x33,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x1302,
	]
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Ahhh! You're here,\n"
	.string "young man!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Have you come\n"
	.string "to battle with\n"
	.string "SlashMan?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I can see the\n"
	.string "will to fight\n"
	.string "in your eyes!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Shall we start\n"
	.string "now?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0x34, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x22,
	]
	.string "I see...\n"
	.string "Well,we can do\n"
	.string "this anytime."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk51
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "You're here for\n"
	.string "a NetBattle I\n"
	.string "suppose?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm ready anytime.\n"
	.string "Shall we begin?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0x34, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x22,
	]
	.string "I see...\n"
	.string "That is a tad bit\n"
	.string "disappointing..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk52
	ts_check_chapter [
		lower: 0x60,
		upper: 0xFF,
		jumpIfInRange: 0x37,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x40,
		upper: 0x5F,
		jumpIfInRange: 0x36,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x30,
		upper: 0x3F,
		jumpIfInRange: 0x35,
		jumpIfOutOfRange: 0xFF,
	]
	ts_end

	def_text_script CompText877A7FC_unk53
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "SlashMan,\n"
	.string "Focus your spirit!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...Go on!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Whoa... He's got\n"
	.string "some serious energy!\n"
	.string "We gotta be careful!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4B,
	]
	.string "C'mon!!\n"
	.string "YAAAAAAHHHHH!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x1314,
	]
	ts_end

	def_text_script CompText877A7FC_unk54
	ts_check_flag [
		flag: 0x1318,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x35,
	]
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "SlashMan,\n"
	.string "give everything\n"
	.string "you've got!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...Go!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "He's coming!\n"
	.string "Get ready!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4B,
	]
	.string "C'mon!!\n"
	.string "YAAAAAAHHHHH!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x1315,
	]
	ts_end

	def_text_script CompText877A7FC_unk55
	ts_check_flag [
		flag: 0x30E,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x36,
	]
	ts_check_flag [
		flag: 0x1318,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x35,
	]
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	ts_mugshot_animation [
		animation: 0x1,
	]
	.string "Powerrrrrrr...\n"
	ts_mugshot_animation [
		animation: 0x2,
	]
	.string "...Go!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "What incredible\n"
	.string "energy! But we won't\n"
	.string "lose this one!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4B,
	]
	.string "C'mon!!\n"
	.string "YAAAAAAHHHHH!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x1316,
	]
	ts_end

	def_text_script CompText877A7FC_unk56

	def_text_script CompText877A7FC_unk57
	ts_check_flag [
		flag: 0x1318,
		jumpIfTrue: 0x3A,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x1318,
	]
	ts_jump [
		target: 58,
	]

	def_text_script CompText877A7FC_unk58
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Ahhh...we lost...\n"
	.string "But this won't\n"
	.string "happen next time!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk59
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Not enough practice,\n"
	.string "huh? Well,have some\n"
	.string "soup and try again!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk60
	ts_check_flag [
		flag: 0x120,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x47,
	]
	ts_check_flag [
		flag: 0x1303,
		jumpIfTrue: 0x3D,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x1303,
	]
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho,ho...\n"
	.string "You've come to face\n"
	.string "the master...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0x3E, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x23,
	]
	.string "Well,well...\n"
	.string "Progress comes\n"
	.string "through effort..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk61
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho,ho...\n"
	.string "You've come to face\n"
	.string "the master...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0x3E, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x23,
	]
	.string "Well,well...\n"
	.string "Progress comes\n"
	.string "through effort..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk62
	ts_check_chapter [
		lower: 0x60,
		upper: 0xFF,
		jumpIfInRange: 0x41,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x40,
		upper: 0x5F,
		jumpIfInRange: 0x40,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x30,
		upper: 0x3F,
		jumpIfInRange: 0x3F,
		jumpIfOutOfRange: 0xFF,
	]
	ts_end

	def_text_script CompText877A7FC_unk63
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho,ho...\n"
	.string "Your idle thoughts\n"
	.string "will ruin you!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Idle thoughts..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I have to focus..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	.string "You will see my\n"
	.string "full strength now!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x1319,
	]
	ts_end

	def_text_script CompText877A7FC_unk64
	ts_check_flag [
		flag: 0x131D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x3F,
	]
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho,ho..Do\n"
	.string "you have the skill\n"
	.string "to defeat TenguMan?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Let's give TenguMan\n"
	.string "the shock of his\n"
	.string "life!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	.string "Hah! Show me what\n"
	.string "you can really do,\n"
	.string "grasshopper!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x131A,
	]
	ts_end

	def_text_script CompText877A7FC_unk65
	ts_check_flag [
		flag: 0x32C,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x40,
	]
	ts_check_flag [
		flag: 0x131D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x3F,
	]
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho,ho...\n"
	.string "Now is the time to\n"
	.string "show your skill..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "I won't be easy to\n"
	.string "beat!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	.string "Are you ready!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This will be\n"
	.string "business as usual\n"
	.string "for me... FIGHT!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x131B,
	]
	ts_end

	def_text_script CompText877A7FC_unk66

	def_text_script CompText877A7FC_unk67
	ts_check_flag [
		flag: 0x131D,
		jumpIfTrue: 0x44,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x131D,
	]
	ts_jump [
		target: 68,
	]

	def_text_script CompText877A7FC_unk68
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho,ho...\n"
	.string "Quite skillful,\n"
	.string "grasshopper..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk69
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho,ho...\n"
	.string "It seems you've\n"
	.string "neglected class..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk70
	ts_check_chapter [
		lower: 0x52,
		upper: 0x52,
		jumpIfInRange: 0x48,
		jumpIfOutOfRange: 0xFF,
	]
	ts_jump [
		target: 76,
	]

	def_text_script CompText877A7FC_unk71
	ts_check_chapter [
		lower: 0x52,
		upper: 0x52,
		jumpIfInRange: 0x49,
		jumpIfOutOfRange: 0xFF,
	]
	ts_jump [
		target: 77,
	]

	def_text_script CompText877A7FC_unk72
	ts_check_flag [
		flag: 0xC1F,
		jumpIfTrue: 0x4A,
		jumpIfFalse: 0xFF,
	]
	ts_jump [
		target: 76,
	]

	def_text_script CompText877A7FC_unk73
	ts_check_flag [
		flag: 0xC1F,
		jumpIfTrue: 0x4B,
		jumpIfFalse: 0xFF,
	]
	ts_jump [
		target: 77,
	]

	def_text_script CompText877A7FC_unk74
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Huh,MegaMan is...!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...It's OK\n"
	.string "to use SlashMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "SlashMan is your\n"
	.string "LinkNavi after all!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk75
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Hmmm...\n"
	.string "MegaMan is...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You may use\n"
	.string "TenguMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "TenguMan is\n"
	.string "your LinkNavi,\n"
	.string "grasshopper!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk76
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Without MegaMan,\n"
	.string "you can't do any\n"
	.string "NetBattling!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So go ahead and use\n"
	.string "SlashMan anytime!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk77
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho,ho..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "NetBattling without\n"
	.string "MegaMan is like fire\n"
	.string "without smoke."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Impossible!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You may use\n"
	.string "TenguMan anytime,\n"
	.string "grasshopper!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk78

	def_text_script CompText877A7FC_unk79

	def_text_script CompText877A7FC_unk80

	def_text_script CompText877A7FC_unk81

	def_text_script CompText877A7FC_unk82

	def_text_script CompText877A7FC_unk83

	def_text_script CompText877A7FC_unk84

	def_text_script CompText877A7FC_unk85

	def_text_script CompText877A7FC_unk86

	def_text_script CompText877A7FC_unk87

	def_text_script CompText877A7FC_unk88

	def_text_script CompText877A7FC_unk89

	def_text_script CompText877A7FC_unk90

	def_text_script CompText877A7FC_unk91

	def_text_script CompText877A7FC_unk92

	def_text_script CompText877A7FC_unk93

	def_text_script CompText877A7FC_unk94

	def_text_script CompText877A7FC_unk95

	def_text_script CompText877A7FC_unk96

	def_text_script CompText877A7FC_unk97

	def_text_script CompText877A7FC_unk98

	def_text_script CompText877A7FC_unk99

	def_text_script CompText877A7FC_unk100
	ts_check_shop_stock [
		shop: 0xD,
		jumpIfStocked: 0xFF,
		jumpIfSoldOut: 0x66,
	]
	ts_mugshot_show [
		mugshot: 0x10,
	]
	ts_msg_open
	.string "I'm going to offload\n"
	.string "my SubChips soon..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Want to look?\n"
	ts_position_option_horizontal [
		width: 0xB,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Look  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " Don't look"
	ts_select 0x6, 0x0, 0xFF, 0x65, 0xFF
	ts_start_shop [
		shop: 0xD,
	]

	def_text_script CompText877A7FC_unk101
	ts_clear_msg
	.string "They say,\"Giving is\n"
	.string "its own reward\"..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Too bad you don't\n"
	.string "want anything..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk102
	ts_mugshot_show [
		mugshot: 0x10,
	]
	ts_msg_open
	.string "Ahhh... Now that I\n"
	.string "think about it...\n"
	.string "I don't have that."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk103

	def_text_script CompText877A7FC_unk104

	def_text_script CompText877A7FC_unk105

	def_text_script CompText877A7FC_unk106

	def_text_script CompText877A7FC_unk107

	def_text_script CompText877A7FC_unk108

	def_text_script CompText877A7FC_unk109

	def_text_script CompText877A7FC_unk110
	ts_check_flag [
		flag: 0x115B,
		jumpIfTrue: 0x72,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x115C,
		jumpIfTrue: 0x71,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x115E,
		jumpIfTrue: 0x70,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x115D,
		jumpIfTrue: 0x6F,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x115D,
	]
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "How about some\n"
	.string "flowers grown in\n"
	.string "Green Town?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Huh? You want to\n"
	.string "know about a man who\n"
	.string "bought flowers here"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "10 years ago\n"
	.string "to propose to\n"
	.string "someone?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm sorry...\n"
	.string "I don't know..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I wasn't the one\n"
	.string "working here\n"
	.string "10 years ago..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hmm... Maybe you\n"
	.string "should ask the\n"
	.string "owner about it..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The owner always\n"
	.string "remembers all of\n"
	.string "our customers..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "She is making a\n"
	.string "delivery right\n"
	.string "now..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "She said she'd be\n"
	.string "late,so it must be\n"
	.string "a far off delivery!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk111
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "Huh? You want to\n"
	.string "know about a man who\n"
	.string "bought flowers here"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "10 years ago\n"
	.string "to propose to\n"
	.string "someone?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hmm... Maybe you\n"
	.string "should ask the\n"
	.string "owner about it..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "She is making a\n"
	.string "delivery right\n"
	.string "now..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "She said she'd be\n"
	.string "late,so it must be\n"
	.string "a far off delivery!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk112
	ts_flag_set [
		flag: 0x115C,
	]
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "How did it go?\n"
	.string "Did you meet with\n"
	.string "the owner?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "What!?\n"
	.string "She remembered!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The man bought\n"
	.string "tulips 10 years\n"
	.string "ago..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That's the owner\n"
	.string "alright! She's got\n"
	.string "a great memory!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Umm... Why are you\n"
	.string "trying to find out"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "what a customer\n"
	.string "bought 10 years ago?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I see... Reminding\n"
	.string "someone of the\n"
	.string "past,huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If that's the case,\n"
	.string "our shop will have"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "to do something\n"
	.string "special!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We will give you\n"
	.string "one of our shop's\n"
	.string "tulips for free!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x2E,
		amount: 0x1,
	]
	ts_player_animate_object [
		animation: 0x18,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0x2E,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0xE,
	]
	.string "I hope that couple\n"
	.string "gets back together!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk113
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "I hope seeing the\n"
	.string "tulip will bring\n"
	.string "back old memories!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk114
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "Was the tulip\n"
	.string "useful?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877A7FC_unk115

	def_text_script CompText877A7FC_unk116

	def_text_script CompText877A7FC_unk117

	def_text_script CompText877A7FC_unk118

	def_text_script CompText877A7FC_unk119

	def_text_script CompText877A7FC_unk120
	ts_check_flag [
		flag: 0x11E,
		jumpIfTrue: 0x79,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x11E,
	]
	ts_flag_set [
		flag: 0x87E,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Umm... Ms.Fahran..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Wow... I'm surprised\n"
	.string "to see you here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "What's the matter?\n"
	.string "You're making a\n"
	.string "rather grim face..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Well..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "...That's a shame..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll help you out!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Actually,I started a\n"
	.string "cooking class here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...I think that my\n"
	.string "class would really\n"
	.string "give you a boost!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Would you like to\n"
	.string "take my class?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Take Ms.Fahran's\n"
	.string "class? Hmmm..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0xA,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Sure  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No thanks"
	ts_select 0x6, 0x80, 0xFF, 0x6, 0xFF
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "You must stay here\n"
	.string "until class is\n"
	.string "over..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You sure that's OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x6, 0xFF
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x833,
	]
	ts_flag_set [
		flag: 0x102,
	]
	ts_end

	def_text_script CompText877A7FC_unk121
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "...I think that my\n"
	.string "class would really\n"
	.string "give you a boost!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Would you like to\n"
	.string "take my class?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Take Ms.Fahran's\n"
	.string "class? Hmmm..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0xA,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Sure  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No thanks"
	ts_select 0x6, 0x80, 0xFF, 0x6, 0xFF
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "You must stay here\n"
	.string "until class is\n"
	.string "over..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You sure that's OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x6, 0xFF
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x833,
	]
	ts_flag_set [
		flag: 0x102,
	]
	ts_end

	def_text_script CompText877A7FC_unk122
	ts_check_flag [
		flag: 0x11E,
		jumpIfTrue: 0x7B,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x87F,
	]
	ts_flag_set [
		flag: 0x11E,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Huh? It's Master\n"
	.string "Feng-Tian..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Ho,ho,ho! Funny\n"
	.string "to run into you,\n"
	.string "grasshopper!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "What's the matter?\n"
	.string "You look like a\n"
	.string "sad lotus blossom..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Well..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "That's worse than\n"
	.string "losing your bamboo\n"
	.string "to a panda..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "However,at times\n"
	.string "like these you must\n"
	.string "not be confused..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You must never\n"
	.string "ying when you\n"
	.string "should yang..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I am giving a\n"
	.string "special lecture\n"
	.string "today..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A lecture on the\n"
	.string "proper way to\n"
	.string "control the wind."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I feel my lecture\n"
	.string "would be good for\n"
	.string "you,grasshopper..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Would you like to\n"
	.string "join my class?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Take Master\n"
	.string "Feng-Tian's\n"
	.string "class,huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0xA,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Sure  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No thanks"
	ts_select 0x6, 0x80, 0xFF, 0x10, 0xFF
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Once class has begun\n"
	.string "you must stay here\n"
	.string "until it ends..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Is that alright,\n"
	.string "grasshopper?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0xA,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x10, 0xFF
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x849,
	]
	ts_flag_set [
		flag: 0x103,
	]
	ts_end

	def_text_script CompText877A7FC_unk123
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Actually,I am\n"
	.string "giving a special\n"
	.string "lecture today..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A lecture on the\n"
	.string "proper way to\n"
	.string "control the wind."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I feel my lecture\n"
	.string "would be good for\n"
	.string "you,grasshopper..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Would you like to\n"
	.string "join my class?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Take Master\n"
	.string "Feng-Tian's\n"
	.string "class,huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0xA,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Sure  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No thanks"
	ts_select 0x6, 0x80, 0xFF, 0x10, 0xFF
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Once class has begun\n"
	.string "you must stay here\n"
	.string "until it ends..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Is that alright,\n"
	.string "grasshopper?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0xA,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x10, 0xFF
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x849,
	]
	ts_flag_set [
		flag: 0x103,
	]
	ts_end

	