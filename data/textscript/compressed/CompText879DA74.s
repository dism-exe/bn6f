	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879DA74::
	.word 0xFC900

	text_archive_start

	def_text_script CompText879DA74_unk0
	ts_check_flag [
		flag: 0x11D1,
		jumpIfTrue: 0x2,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "What are you doing\n"
	.string "here!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "I'm sick of all\n"
	.string "this dog's crying\n"
	.string "and yelping."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It grates on my\n"
	.string "ears! I'm going to\n"
	.string "make sure it stops!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey,you yelping\n"
	.string "mutt!\n"
	.string "Can you hear me!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm gonna beat up\n"
	.string "your blue friend\n"
	.string "now... Watch this!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xA
	.string "What! That's a bit\n"
	.string "rude!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "Rude?\n"
	.string "That'd be you\n"
	.string "tough guy!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The security on\n"
	.string "this RoboDog is too\n"
	.string "weak!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It must be worried\n"
	.string "about something,huh?\n"
	.string "For instance..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Someone not wanting\n"
	.string "to go to school..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xA
	.string "It's my fault...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "If you've got\n"
	.string "any NetBattling\n"
	.string "skills..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should be able\n"
	.string "to defeat me and\n"
	.string "save this dog!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't you agree?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xA
	.string "...Ummm..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Sorry to interrupt,\n"
	.string "but you're..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "(Ha! It's your turn\n"
	.string " soon! Let's try the\n"
	.string " kid again!)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "(I'm gonna have to\n"
	.string " do this for him...)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "(Yeah... From now\n"
	.string " on this is up to\n"
	.string " you.)"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "(Time to scatter\n"
	.string " some real viruses!)"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "(If you delete them,\n"
	.string " the kid should\n"
	.string " figure things out.)"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "(He's gotta get\n"
	.string " stronger...)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "(...Gotcha!)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "Alright! Time to\n"
	.string "introduce this dog\n"
	.string "to my virus friends!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xA
	.string "AHHHHH! STOP IT!\n"
	.string "PLEASE STOP IT!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Just leave this\n"
	.string "one to me..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll show you how\n"
	.string "to protect this\n"
	.string "dog!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But if I do this,\n"
	.string "you have to\n"
	.string "remember!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When it cries,just\n"
	.string "ignoring it won't\n"
	.string "make it stop."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xA
	.string "OK..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Alright! Let's go!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x11D0
	ts_end

	def_text_script CompText879DA74_unk1
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Ahhh! You got me..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Alright! Take this\n"
	.string "RoboDog back now."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xA
	.string "Really!?\n"
	.string "Thank you!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "You're welcome!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This time I was\n"
	.string "here to help you..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But if this happens\n"
	.string "again,then..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xA
	.string "...it's up to me."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm going to\n"
	.string "practice"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "NetBattling so I\n"
	.string "can defend Pooch!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Alright! That sounds\n"
	.string "like a plan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xA
	.string "Yeah!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879DA74_unk2
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Ahhh! You got me..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879DA74_unk3

	def_text_script CompText879DA74_unk4

	def_text_script CompText879DA74_unk5

	def_text_script CompText879DA74_unk6

	def_text_script CompText879DA74_unk7

	def_text_script CompText879DA74_unk8

	def_text_script CompText879DA74_unk9

	def_text_script CompText879DA74_unk10
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Found it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan!\n"
	.string "Let's delete it\n"
	.string "fast!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Leave it to me!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x11DF
	ts_end

	def_text_script CompText879DA74_unk11
	ts_check_flag [
		flag: 0x11E4,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0xC,
	]
	ts_check_flag [
		flag: 0x11E5,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0xC,
	]
	ts_check_flag [
		flag: 0x11E6,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0xC,
	]
	ts_check_flag [
		flag: 0x11E7,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0xC,
	]
	ts_check_flag [
		flag: 0x11E8,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0xC,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We did it,Lan!\n"
	.string "We deleted all of\n"
	.string "the viruses!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Yep!\n"
	.string "This computer\n"
	.string "is safe now!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879DA74_unk12
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "We did it,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Yep!\n"
	.string "This computer\n"
	.string "is safe now!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879DA74_unk13

	def_text_script CompText879DA74_unk14

	def_text_script CompText879DA74_unk15

	def_text_script CompText879DA74_unk16

	def_text_script CompText879DA74_unk17

	def_text_script CompText879DA74_unk18

	def_text_script CompText879DA74_unk19

	def_text_script CompText879DA74_unk20

	def_text_script CompText879DA74_unk21

	def_text_script CompText879DA74_unk22

	def_text_script CompText879DA74_unk23

	def_text_script CompText879DA74_unk24

	def_text_script CompText879DA74_unk25

	def_text_script CompText879DA74_unk26

	def_text_script CompText879DA74_unk27

	def_text_script CompText879DA74_unk28

	def_text_script CompText879DA74_unk29

	def_text_script CompText879DA74_unk30
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x174
	.string "BOW!"
	ts_wait frames=0x8
	ts_sound_play00 track=0x174
	.string " WOW!"
	ts_wait frames=0x8
	ts_sound_play00 track=0x174
	.string " WOW!"
	ts_wait frames=0x8
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'M THE ROBODOG\n"
	.string "PROGRAM!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x174
	.string "BOW!"
	ts_wait frames=0x8
	ts_sound_play00 track=0x174
	.string " WOW!"
	ts_wait frames=0x8
	ts_sound_play00 track=0x174
	.string " WOW!"
	ts_wait frames=0x8
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'M SUPPOSED TO BE\n"
	.string "A WATCHDOG!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x174
	.string "BOW!"
	ts_wait frames=0x8
	ts_sound_play00 track=0x174
	.string " WOW!"
	ts_wait frames=0x8
	ts_sound_play00 track=0x174
	.string " WOW!"
	ts_wait frames=0x8
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879DA74_unk31

	def_text_script CompText879DA74_unk32

	def_text_script CompText879DA74_unk33

	def_text_script CompText879DA74_unk34

	def_text_script CompText879DA74_unk35

	def_text_script CompText879DA74_unk36

	def_text_script CompText879DA74_unk37

	def_text_script CompText879DA74_unk38

	def_text_script CompText879DA74_unk39

	def_text_script CompText879DA74_unk40

	def_text_script CompText879DA74_unk41

	def_text_script CompText879DA74_unk42

	def_text_script CompText879DA74_unk43

	def_text_script CompText879DA74_unk44

	def_text_script CompText879DA74_unk45

	def_text_script CompText879DA74_unk46

	def_text_script CompText879DA74_unk47

	def_text_script CompText879DA74_unk48

	def_text_script CompText879DA74_unk49

	def_text_script CompText879DA74_unk50
	ts_mugshot_show mugshot=0x5C
	ts_msg_open
	.string "...I'M THE VIRUS\n"
	.string "BATTLE MACHINE V1..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'VE BEEN WAITING\n"
	.string "FOR YOU TO COME..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WOULD YOU LIKE TO\n"
	.string "ENTER 3 CONSECUTIVE\n"
	.string "VIRUS BATTLES?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed delay=0x0
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Yes\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string " No\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Hear Explanation"
	ts_select 0x7, 0xA0, 0x33, 0xFF, 0x39, 0xFF
	ts_clear_msg
	ts_text_speed delay=0x2
	ts_mugshot_show mugshot=0x5C
	.string "COME BACK SOON!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879DA74_unk51
	ts_text_speed delay=0x2
	ts_mugshot_show mugshot=0x5C
	ts_msg_open
	.string "LAUNCHING VIRUS\n"
	.string "BATTLE..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "BATTLE... START!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x1D9
	ts_end

	def_text_script CompText879DA74_unk52
	ts_check_flag [
		flag: 0x1D4,
		jumpIfTrue: 0x36,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x1D4
	ts_jump target=54

	def_text_script CompText879DA74_unk53
	ts_mugshot_show mugshot=0x5C
	ts_msg_open
	.string "THAT WAS CLOSE...\n"
	.string "COME BACK AGAIN\n"
	.string "SOON!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879DA74_unk54
	ts_check_flag [
		flag: 0x1EC,
		jumpIfTrue: 0x37,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x5C
	ts_msg_open
	.string "AMAZING!!\n"
	.string "WELL DONE!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "TO COMMEMORATE YOUR\n"
	.string "GREAT VIRUS BUSTING\n"
	.string "SKILL,HERE'S A GIFT!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip [
		chip: 0x50,
		code: 0x1A,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x50,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x1A,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x5C
	.string "CONGRATULATIONS!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THERE ARE OTHER\n"
	.string "MR.PROGS THAT ARE\n"
	.string "DIFFERENT COLORS..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU SHOULD TRY\n"
	.string "LOOKING FOR THEM."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WHERE ARE THEY?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MAYBE ONE IS IN\n"
	.string "A COMP RELATED TO\n"
	.string "WATER..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x1EC
	ts_end

	def_text_script CompText879DA74_unk55
	ts_jump_random 65, 0x20, 0x20, 0xFF, 0x38
	ts_mugshot_show mugshot=0x5C
	ts_msg_open
	.string "AMAZING!!\n"
	.string "WELL DONE!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "TO COMMEMORATE YOUR\n"
	.string "GREAT VIRUS BUSTING\n"
	.string "SKILL,HERE'S A GIFT!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_zenny [
		amount: 0x1F4,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xFF,
		jumpIfSome: 0xFF,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\"500 Zennys\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x5C
	.string "CONGRATULATIONS!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THERE ARE OTHER\n"
	.string "MR.PROGS THAT ARE\n"
	.string "DIFFERENT COLORS..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU SHOULD TRY\n"
	.string "LOOKING FOR THEM."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WHERE ARE THEY?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MAYBE ONE IS IN\n"
	.string "A COMP RELATED TO\n"
	.string "WATER..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879DA74_unk56
	ts_mugshot_show mugshot=0x5C
	ts_msg_open
	.string "AMAZING!!\n"
	.string "WELL DONE!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "TO COMMEMORATE YOUR\n"
	.string "GREAT VIRUS BUSTING\n"
	.string "SKILL,HERE'S A GIFT!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_bug_frags [
		amount: 0x2,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xFF,
		jumpIfSome: 0xFF,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\"2 BugFrags\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x5C
	.string "CONGRATULATIONS!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THERE ARE OTHER\n"
	.string "MR.PROGS THAT ARE\n"
	.string "DIFFERENT COLORS..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU SHOULD TRY\n"
	.string "LOOKING FOR THEM."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WHERE ARE THEY?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MAYBE ONE IS IN\n"
	.string "A COMP RELATED TO\n"
	.string "WATER..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879DA74_unk57
	ts_text_speed delay=0x2
	ts_mugshot_show mugshot=0x5C
	ts_msg_open
	.string "LET ME EXPLAIN THE\n"
	.string "RULES."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU CAN FIGHT\n"
	.string "AGAINST 2 VIRUSES"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THAT YOU HAVE THE\n"
	.string "DATA FOR..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU MUST REDUCE AN\n"
	.string "ENEMY VIRUS'"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ENERGY TO ZERO\n"
	.string "WITHIN THE TIME\n"
	.string "LIMIT."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THERE IS ONE THING\n"
	.string "TO REMEMBER WHEN\n"
	.string "SETTING UP A BATTLE."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THE TOTAL SIZE OF\n"
	.string "THE TWO VIRUSES YOU"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "CHOOSE MUST NOT BE\n"
	.string "MORE THAN 50 MB."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IF IT IS OVER,YOU\n"
	.string "WILL NOT BE ABLE TO\n"
	.string "SET THE BATTLE."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IF YOU CAN DELETE\n"
	.string "ALL THE VIRUSES\n"
	.string "WITH STYLE,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU WILL GET AN\n"
	.string "AMAZING REWARD!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879DA74_unk58

	def_text_script CompText879DA74_unk59

	def_text_script CompText879DA74_unk60

	