	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876E900::
	.word 0x95700

	text_archive_start

	def_text_script CompText876E900_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Gotta find something\n"
	.string "to put out the\n"
	.string "Security Bot's fire!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876E900_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,this is the\n"
	.string "back door to the\n"
	.string "classroom."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Use the front door\n"
	.string "to get in!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876E900_unk2
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,this isn't\n"
	.string "Class 6-1!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876E900_unk3

	def_text_script CompText876E900_unk4

	def_text_script CompText876E900_unk5
	ts_check_flag [
		flag: 0x111E,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x111D,
		jumpIfTrue: 0x6,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x111D
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "Who called Mr.Quiz!!\n"
	.string "Who called Mr.Quiz!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's OK to say!!\n"
	.string "It's OK to play!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey Hey! Ho Ho!\n"
	.string "Quiz Power!!\n"
	.string "It's time to go!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Do you know who\n"
	.string "I am?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I am the ace of\n"
	.string "the Cyber Academy\n"
	.string "Quiz Team..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The oft-rumored\n"
	.string "Mr.Quiz!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There is no one\n"
	.string "who can rival me\n"
	.string "at this school!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Care to try a\n"
	.string "Quiz Battle with\n"
	.string "me?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Try it!\n"
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Not interested"
	ts_select 0x6, 0x80, 0x7, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0xA
	.string "DING!!\n"
	.string "Not interested!?!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Trivia is my life!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876E900_unk6
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "Who called Mr.Quiz!!\n"
	.string "Who called Mr.Quiz!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's OK to say!!\n"
	.string "It's OK to play!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey Hey! Ho Ho!\n"
	.string "Quiz Power!!\n"
	.string "It's time to go!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Do you know who\n"
	.string "I am?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I am the ace of\n"
	.string "the Cyber Academy\n"
	.string "Quiz Team..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The oft-rumored\n"
	.string "Mr.Quiz!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There is no one\n"
	.string "who can rival me\n"
	.string "at this school!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Want to try a\n"
	.string "Quiz Battle with me?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Enter Quiz Battle\n"
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Not interested"
	ts_select 0x6, 0x80, 0x7, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0xA
	.string "DING!!\n"
	.string "Not interested!?!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Trivia is my life!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876E900_unk7
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "Alright...\n"
	.string "Time for question 1!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What can't you grab\n"
	.string "with your left hand?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed delay=0x0
	ts_position_option_horizontal width=0x9
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Left leg\n"
	ts_position_option_horizontal width=0x9
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Left hand\n"
	ts_position_option_horizontal width=0x9
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Right handed buddy"
	ts_select 0x7, 0xC0, 0x8, 0xFF, 0x8, 0xFF
	ts_clear_msg
	ts_text_speed delay=0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 track=0x74
	ts_sound_enable_text_sfx
	ts_mugshot_show mugshot=0xA
	.string "CORRECT!!\n"
	.string "Next up is\n"
	.string "question number 2!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What does a Mettaur\n"
	.string "always have?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed delay=0x0
	ts_position_option_horizontal width=0x6
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Scoop\n"
	ts_position_option_horizontal width=0x6
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Shovel\n"
	ts_position_option_horizontal width=0x6
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Pickaxe"
	ts_select 0x7, 0xC0, 0x8, 0x8, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed delay=0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 track=0x74
	ts_sound_enable_text_sfx
	ts_mugshot_show mugshot=0xA
	.string "CORRECT!!\n"
	.string "Alright,this one's\n"
	.string "a bit harder!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Question 3."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Which one of these\n"
	.string "fish might chase a\n"
	.string "mouse?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed delay=0x0
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string "Angelfish\n"
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string "Swordfish\n"
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string "Catfish"
	ts_select 0x7, 0xC0, 0x8, 0x8, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed delay=0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 track=0x74
	ts_sound_enable_text_sfx
	ts_mugshot_show mugshot=0xA
	.string "CORRECT!!\n"
	.string "Good job! Time\n"
	.string "for question 4."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What walks on 4\n"
	.string "legs,then 2 legs,\n"
	.string "then 3 legs?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed delay=0x0
	ts_position_option_horizontal width=0x3
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string " A human\n"
	ts_position_option_horizontal width=0x3
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string " A gorilla\n"
	ts_position_option_horizontal width=0x3
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string " A dog"
	ts_select 0x7, 0xC0, 0xFF, 0x8, 0x8, 0xFF
	ts_clear_msg
	ts_text_speed delay=0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 track=0x74
	ts_sound_enable_text_sfx
	ts_mugshot_show mugshot=0xA
	.string "CORRECT!!\n"
	.string "Final question!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What is the color\n"
	.string "of the tulips in"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Cyber Academy Class\n"
	.string "1-2."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed delay=0x0
	ts_position_option_horizontal width=0x5
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Pink\n"
	ts_position_option_horizontal width=0x5
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yellow\n"
	ts_position_option_horizontal width=0x5
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Purple"
	ts_select 0x7, 0xC0, 0x8, 0xFF, 0x8, 0xFF
	ts_clear_msg
	ts_text_speed delay=0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 track=0x74
	ts_sound_enable_text_sfx
	ts_mugshot_show mugshot=0xA
	.string "Ding! Ding! Ding!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I...lost...\n"
	.string "The ace of the\n"
	.string "Quiz Team..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh well...\n"
	.string "Time to hand over\n"
	.string "the crown..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Huh! You don't want\n"
	.string "it?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Well,then take\n"
	.string "this instead..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip [
		chip: 0x11F,
		code: 0xC,
		amount: 0x1,
	]
	ts_item_give [
		item: 0x39,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0x39,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0xA
	.string "You've got talent!\n"
	.string "You should join the\n"
	.string "Quiz Team!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x111E
	ts_end

	def_text_script CompText876E900_unk8
	ts_sound_disable_text_sfx
	ts_sound_play00 track=0xD2
	ts_sound_enable_text_sfx
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	ts_text_speed delay=0x2
	.string "Too bad!!\n"
	.string "Wrong answer!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I really am the\n"
	.string "Quiz King!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876E900_unk9
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "You've got talent!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Unimaginable talent!\n"
	.string "You should join the\n"
	.string "Quiz Team!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876E900_unk10

	def_text_script CompText876E900_unk11

	def_text_script CompText876E900_unk12

	def_text_script CompText876E900_unk13

	def_text_script CompText876E900_unk14

	