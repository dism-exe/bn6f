	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D7318::
	.word 0x9F100

	text_archive_start

	def_text_script CompText87D7318_unk0
	ts_msg_open
	.string "20 years later..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "With his active\n"
	.string "cooperation,Dr.Wily\n"
	.string "created"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "a new \"Colonel\" and\n"
	.string "a new \"Iris\" as"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "a Net Reinforcement\n"
	.string "System while serving\n"
	.string "his time."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"Colonel\" is an\n"
	.string "active attack system\n"
	.string "that automatically"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "finds and deletes\n"
	.string "viruses and criminals\n"
	.string "on the Net."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"Iris\" is a Net\n"
	.string "Recovery System that\n"
	.string "searches for damage"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "to the Net and\n"
	.string "repairs it."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Starting with these\n"
	.string "two systems,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Net society was able\n"
	.string "to grow by leaps\n"
	.string "and bounds..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And now,1 scientist\n"
	.string "is working hard"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "to lay the\n"
	.string "foundations for a\n"
	.string "new Net society..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D7318_unk1
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x18B,
	]
	.string "*thump,thump...*"
	ts_wait [
		frames: 0x50,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ah!\n"
	.string "I overslept again!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Patch!! If you don't\n"
	.string "hurry up,you're\n"
	.string "gonna be late!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "OK!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Morning,Dad,Mom!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ah! I've gotta\n"
	.string "wash my face!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x18B,
	]
	.string "*thump,thump...*"
	ts_wait [
		frames: 0x50,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ahahaha..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So who do you think\n"
	.string "he takes after more?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hmm... When it comes\n"
	.string "to sleeping in,that\n"
	.string "would be me."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But I wish he wasn't\n"
	.string "so stubborn like his\n"
	.string "mother..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Who's the stubborn\n"
	.string "one? Guess you don't\n"
	.string "want dinner tonight!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ack!! No!!\n"
	.string "I didn't mean it!\n"
	.string "Forgive me,Mayl!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Lan,Lan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Stop dawdling and\n"
	.string "get going too,or\n"
	.string "you'll be late!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Don't you have a\n"
	.string "scientists' meeting\n"
	.string "today?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ah,that's right!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Why didn't you say\n"
	.string "something earlier,\n"
	.string "MegaMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Chaud's coming from\n"
	.string "Netopia for this\n"
	.string "meeting today!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If I'm late,who\n"
	.string "knows what he'll\n"
	.string "say!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sorry! Well,you'd\n"
	.string "better run or you'll\n"
	.string "miss the Metroline!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Waaaaaaaaaaa!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Patch!!\n"
	.string "Let's go!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Coming!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Mayl,we're leaving!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Have a good day,Mom!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "OK! Have a good day,\n"
	.string "you two!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D7318_unk2
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x1B7,
	]
	.string "*thump,thump...*"
	ts_wait [
		frames: 0x50,
	]
	.string "\n"
	ts_sound_play00 [
		track: 0x1BC,
	]
	.string "*slam!!*"
	ts_wait [
		frames: 0x28,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hey,Patch,MegaMan,\n"
	.string "let's race to the\n"
	.string "station!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "OK!\n"
	.string "Let's go,Lan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hey! No fair!\n"
	.string "Wait up,Dad!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D7318_unk3
	ts_msg_open
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string " Has it really\n"
	.string "been 20 years?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Dex became the Mayor\n"
	.string "of ACDC Town.I still\n"
	.string "can't believe it."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Yai became the\n"
	.string "president of her\n"
	.string "father's company."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Mick became an\n"
	.string "elementary school\n"
	.string "teacher,and"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Tab is working hard\n"
	.string "to make his store\n"
	.string "a success."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Chaud became the\n"
	.string "International\n"
	.string "Officials' leader."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Mayl became my\n"
	.string "wife..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...... As for me,\n"
	.string "we're working for\n"
	.string "a better future..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "the future that Dad,\n"
	.string "Grandpa,and Dr.Wily\n"
	.string "envisioned..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We're going to make\n"
	.string "an even brighter\n"
	.string "future..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sure,there are\n"
	.string "uncertainties,but\n"
	.string "we'll be OK!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Yeah,we've overcome\n"
	.string "all the things that\n"
	.string "came our way before!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That's right...\n"
	.string "We can do anything!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Come on,Lan,let's\n"
	.string "go! Onward to a\n"
	.string "great future!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Yeah!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's make the\n"
	.string "future of our\n"
	.string "dreams!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87D7318_unk4
	ts_msg_open
	.string "Jack in!"
	ts_wait [
		frames: 0xA,
	]
	.string "\n"
	.string "MegaMan,"
	ts_wait [
		frames: 0xA,
	]
	.string "\n"
	.string "Execute!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_msg_close
	ts_wait [
		frames: 0xB4,
	]
	ts_msg_open
	ts_wait [
		frames: 0x78,
	]
	ts_position_option_horizontal [
		width: 0x5,
	]
	.string "M"
	ts_wait [
		frames: 0xA,
	]
	.string "e"
	ts_wait [
		frames: 0xA,
	]
	.string "g"
	ts_wait [
		frames: 0xA,
	]
	.string "a"
	ts_wait [
		frames: 0xA,
	]
	.string "M"
	ts_wait [
		frames: 0xA,
	]
	.string "a"
	ts_wait [
		frames: 0xA,
	]
	.string "n"
	ts_wait [
		frames: 0xA,
	]
	.string "\n"
	ts_position_option_horizontal [
		width: 0x9,
	]
	.string "Battle"
	ts_wait [
		frames: 0xA,
	]
	.string " Network\n"
	ts_wait [
		frames: 0x1E,
	]
	ts_position_option_horizontal [
		width: 0x2,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "E"
	ts_wait [
		frames: 0x1E,
	]
	.string "N"
	ts_wait [
		frames: 0x1E,
	]
	.string "D"
	ts_wait_hold [
		unused: 0x0,
	]

	