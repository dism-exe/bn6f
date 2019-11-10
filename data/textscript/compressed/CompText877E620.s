	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877E620::
	.word 0xF4E00

	text_archive_start

	def_text_script CompText877E620_unk0
	ts_msg_open
	.string "Go up the ladder?\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x1, 0xFF
	ts_flag_set 0x26, 0x17
	ts_flag_set 0x5E, 0x8
	ts_end

	def_text_script CompText877E620_unk1
	ts_end

	def_text_script CompText877E620_unk2

	def_text_script CompText877E620_unk3

	def_text_script CompText877E620_unk4

	def_text_script CompText877E620_unk5

	def_text_script CompText877E620_unk6

	def_text_script CompText877E620_unk7

	def_text_script CompText877E620_unk8

	def_text_script CompText877E620_unk9

	def_text_script CompText877E620_unk10
	ts_check_flag 0x22, 0x11, 0xE, 0xFF
	ts_check_flag 0x21, 0x11, 0xB, 0xFF
	ts_flag_set 0x21, 0x11
	ts_mugshot_show 0x19
	ts_msg_open
	.string "Did someone call\n"
	.string "the Quiz King!?\n"
	.string "Ruler of Trivia!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Give it a chance!\n"
	.string "C'mon give it a try!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yeah,yeah,yeah!\n"
	.string "(Cha-cha)Quiz Power!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm the Quiz King!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll obtain world\n"
	.string "peace through the\n"
	.string "power of trivia!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Meeting me is the\n"
	.string "perfect invitation"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to Quiz Battle!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Can you get all of\n"
	.string "my questions right?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Go for it!\n"
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " No thanks!"
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x19
	.string "Hmmmphhh..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can't say that\n"
	.string "to a king..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877E620_unk11
	ts_mugshot_show 0x19
	ts_msg_open
	.string "Did someone call\n"
	.string "the Quiz King!?\n"
	.string "Ruler of Trivia!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Give it a chance!\n"
	.string "C'mon give it a try!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yeah,yeah,yeah!\n"
	.string "(Cha-cha)Quiz Power!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm the Quiz King!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll obtain world\n"
	.string "peace through the\n"
	.string "power of trivia!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So,young man,care\n"
	.string "to Quiz Battle!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Go for it!\n"
	ts_position_option_horizontal 0xA
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " No means no!!"
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_mugshot_show 0x19
	.string "And my quizzes are\n"
	.string "so interesting..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877E620_unk12
	ts_mugshot_show 0x19
	ts_msg_open
	ts_text_speed 0x2
	.string "Let's get started\n"
	.string "with question 1!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How many trees are\n"
	.string "growing in Central\n"
	.string "Town?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x4
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " 8 Trees\n"
	ts_position_option_horizontal 0x4
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " 9 Trees\n"
	ts_position_option_horizontal 0x4
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " 10 Trees"
	ts_select 0x7, 0xC0, 0xD, 0xD, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x19
	.string "Correct!\n"
	.string "Now time for\n"
	.string "question 2!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The Cyber Academy\n"
	.string "logo has what\n"
	.string "letters on it?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x4
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " D and B\n"
	ts_position_option_horizontal 0x4
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " C and A\n"
	ts_position_option_horizontal 0x4
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " C and G"
	ts_select 0x7, 0xC0, 0xD, 0xFF, 0xD, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x19
	.string "Correct!\n"
	.string "Moving on to\n"
	.string "question 3!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What does the Net\n"
	.string "Merchant in Central\n"
	.string "Area1 sell?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " SubChip\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " BattleChip\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " Program"
	ts_select 0x7, 0xC0, 0xFF, 0xD, 0xD, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x19
	.string "Correct!\n"
	.string "Moving on to\n"
	.string "question 4!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Which one of these\n"
	.string "chips has the best\n"
	.string "Attack power?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x9
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " FireBrn2\n"
	ts_position_option_horizontal 0x9
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " DolThdr1\n"
	ts_position_option_horizontal 0x9
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " AquaSwrd"
	ts_select 0x7, 0xC0, 0xD, 0xD, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x19
	.string "Correct!\n"
	.string "Moving on to\n"
	.string "question 5!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "1+3[cross]4+2-3=?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x3
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " 12\n"
	ts_position_option_horizontal 0x3
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " 15\n"
	ts_position_option_horizontal 0x3
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " 21"
	ts_select 0x7, 0xC0, 0xFF, 0xD, 0xD, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x19
	.string "Correct again!\n"
	.string "Moving on to\n"
	.string "question 6!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What is the\n"
	.string "difference in the\n"
	.string "Attack power of"
	ts_key_wait 0x0
	ts_clear_msg
	.string "HiCannon and\n"
	.string "Spreadr2?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x3
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " 30\n"
	ts_position_option_horizontal 0x3
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " 40\n"
	ts_position_option_horizontal 0x3
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " 50"
	ts_select 0x7, 0xC0, 0xD, 0xFF, 0xD, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x19
	.string "Correct!\n"
	.string "Moving on to\n"
	.string "question 7!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How many students\n"
	.string "are in Class 6-A\n"
	.string "in ACDC School?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x2
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " 7\n"
	ts_position_option_horizontal 0x2
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " 8\n"
	ts_position_option_horizontal 0x2
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " 9"
	ts_select 0x7, 0xC0, 0xD, 0xFF, 0xD, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x19
	.string "Correct again!\n"
	.string "Moving on to\n"
	.string "question 8!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What is the name\n"
	.string "of the seal at the\n"
	.string "Seaside Aquarium?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x6
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " Furry\n"
	ts_position_option_horizontal 0x6
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " Sealy\n"
	ts_position_option_horizontal 0x6
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " Fanny"
	ts_select 0x7, 0xC0, 0xD, 0xD, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x19
	.string "Correct again!\n"
	.string "Moving on to\n"
	.string "question 9!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What is it called\n"
	.string "when 2 Navis fight?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " NetBattle\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " NetBallet\n"
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " MetBattle"
	ts_select 0x7, 0xC0, 0xFF, 0xD, 0xD, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x19
	.string "Correct again!\n"
	.string "Moving on to\n"
	.string "question 10!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How much HP does\n"
	.string "the MiniEnrg SubChip\n"
	.string "restore?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x4
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " 30\n"
	ts_position_option_horizontal 0x4
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " 50\n"
	ts_position_option_horizontal 0x4
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " 100"
	ts_select 0x7, 0xC0, 0xD, 0xFF, 0xD, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x19
	.string "Correct again!\n"
	.string "Moving on to\n"
	.string "question 11!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What chip is ID58\n"
	.string "in the Data Library?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x9
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " Sword\n"
	ts_position_option_horizontal 0x9
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " CrakShot\n"
	ts_position_option_horizontal 0x9
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " MiniBomb"
	ts_select 0x7, 0xC0, 0xD, 0xD, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x19
	.string "Correct!\n"
	.string "Moving on to\n"
	.string "question 12!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How high is Sky\n"
	.string "Town?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " 30,000 feet\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " 300,000 feet\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " 3,000 feet"
	ts_select 0x7, 0xC0, 0xFF, 0xD, 0xD, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x19
	.string "Correct!\n"
	.string "Moving on to\n"
	.string "question 13!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Add the Attack power\n"
	.string "of a Sword and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "MiniBomb,then\n"
	.string "subtract the Attack"
	ts_key_wait 0x0
	ts_clear_msg
	.string "power of an\n"
	.string "AirShot and Cannon.\n"
	.string "What do you get?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x3
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " 60\n"
	ts_position_option_horizontal 0x3
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " 70\n"
	ts_position_option_horizontal 0x3
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " 80"
	ts_select 0x7, 0xC0, 0xD, 0xFF, 0xD, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x19
	.string "Correct!\n"
	.string "Moving on to\n"
	.string "question 14!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What's the name\n"
	.string "of the Navi who\n"
	.string "attacked the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Aquarium?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x6
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " SpoutMan\n"
	ts_position_option_horizontal 0x6
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " SwimMan\n"
	ts_position_option_horizontal 0x6
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " DiveMan"
	ts_select 0x7, 0xC0, 0xD, 0xD, 0xFF, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x19
	.string "Correct!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Time for the last\n"
	.string "question,number 15!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Who am I?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed 0x0
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x0, 0x21
	ts_space 0x1
	.string " Quiz Gramps\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x2
	ts_space 0x1
	.string " Quiz King\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x22, 0x10
	ts_space 0x1
	.string " Quiz Master"
	ts_select 0x7, 0xC0, 0xD, 0xFF, 0xD, 0xFF
	ts_clear_msg
	ts_text_speed 0x2
	ts_sound_disable_text_sfx
	ts_sound_play00 0x74, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x19
	.string "Nooo!!\n"
	.string "NooooOOOOoooo!!\n"
	.string "You got them right!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ALL OF THEM!!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's a win for\n"
	.string "you... Here's your\n"
	.string "reward for victory!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x35, 0x1
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x3, 0x50
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x19
	.string "I'll just have to\n"
	.string "update the\n"
	.string "questions and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "surprise you next\n"
	.string "time!!\n"
	.string "Hmmmphhh!!"
	ts_key_wait 0x0
	ts_flag_set 0x22, 0x11
	ts_end

	def_text_script CompText877E620_unk13
	ts_sound_disable_text_sfx
	ts_sound_play00 0xD2, 0x0
	ts_sound_enable_text_sfx
	ts_mugshot_show 0x19
	ts_msg_open
	ts_text_speed 0x2
	.string "Wrong answer!!\n"
	.string "Too bad!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It must be\n"
	.string "embarrassing to get\n"
	.string "the wrong answer!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I am the Quiz\n"
	.string "King after all!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm looking forward\n"
	.string "to your next\n"
	.string "attempt!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877E620_unk14
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "By applying CopyBot\n"
	.string "technology,this can\n"
	.string "be achieved!"
	ts_key_wait 0x0
	ts_end

	