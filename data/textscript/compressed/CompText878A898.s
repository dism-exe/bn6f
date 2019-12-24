	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878A898::
	.word 0x190100

	text_archive_start

	def_text_script CompText878A898_unk0
	ts_check_flag [
		flag: 0x1141,
		jumpIfTrue: CompText878A898_unk2_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x1143,
		jumpIfTrue: CompText878A898_unk1_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Ahhhhhh..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk1
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "That was scary!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk2
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Our next date will\n"
	.string "be somewhere less\n"
	.string "visible..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk3
	ts_check_flag [
		flag: 0x1141,
		jumpIfTrue: CompText878A898_unk5_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x1143,
		jumpIfTrue: CompText878A898_unk4_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "Ahhh! STOP IT!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk4
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "You can tell my\n"
	.string "dad not to worry!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk5
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "Where should we\n"
	.string "have our next date?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk6
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Hey! Lady!\n"
	.string "Drop the loser\n"
	.string "and get with me!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x45
	.string "Ewww!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x41
	.string "Excuse me..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "Ahhh!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x41
	.string "Heeee!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "(Was that guy \n"
	.string " asked to act like\n"
	.string " a bad guy too?)"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Umm..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "What's with you?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "I'd like... No...\n"
	.string "The girl is comin'\n"
	.string "with me,ugly!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "You're here for\n"
	.string "the girl too?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This will be fun!\n"
	.string "Let's get her!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x45
	.string "Stop it!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "John! Where are\n"
	.string "you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "My Navi's in \n"
	.string "trouble!\n"
	.string "Do something!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xD
	.string "I can't... Look\n"
	.string "how scary he is!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "Huh..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why am I with\n"
	.string "this guy... Really!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "Back off operator!\n"
	.string "This is our fun!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now...\n"
	.string "Get over here\n"
	.string "princess!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Hehehehe!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x45
	.string "Stop...\n"
	.string "Leave me alone!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Hehehehe..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x45
	.string "Owwww!!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xD
	.string "Hey! You!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "Huh!!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xD
	.string "Ummm...\n"
	.string "Stop that..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "John!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xD
	.string "...Uhhh..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_control_lock
	ts_text_speed delay=0x3
	.string "Stop it...\n"
	.string "The girl said to\n"
	.string "leave her alone!"
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_control_lock
	ts_text_speed delay=0x1
	.string "Leave scumbag!!\n"
	ts_text_speed delay=0x3
	.string "(Help me...)"
	ts_text_speed delay=0x2
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Great job!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Once her dad hears\n"
	.string "about this,he will\n"
	.string "be fine!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright... That\n"
	.string "should be enough..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "Why are you so\n"
	.string "happy...\n"
	.string "We haven't had fun!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "I said that was\n"
	.string "enough..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "What are you\n"
	.string "talking about!\n"
	.string "Get outta the way!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "...Wait a sec..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's a real bad\n"
	.string "guy!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x1142
	ts_end

	def_text_script CompText878A898_unk7
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "Who are you...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Well,it's hard to\n"
	.string "explain,but..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "Huh!? My dad!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Grrrr!! He worries\n"
	.string "way too much!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm not a little\n"
	.string "girl anymore,you\n"
	.string "know..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And this is a\n"
	.string "great guy!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A bit flaky\n"
	.string "though..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xD
	.string "Huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xE
	.string "Please tell my\n"
	.string "Dad that he doesn't\n"
	.string "have to worry,OK?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk8

	def_text_script CompText878A898_unk9

	def_text_script CompText878A898_unk10
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Welcome!! Welcome!!\n"
	.string "We've got great\n"
	.string "stuff!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string "Tuna/3000\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string "Urchin/1000\n"
	ts_option [
		brackets: 0x0,
		right: 0x3,
		left: 0x3,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string "YTail/1500  "
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x3,
		up: 0x3,
	]
	ts_space count=0x1
	.string "Quit"
	ts_select 0x8, 0x20, 0xB, 0xD, 0xF, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x41
	.string "Come again!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk11
	ts_check_flag [
		flag: 0x1195,
		jumpIfTrue: CompText878A898_unk12_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_take_zenny [
		amount: 0xBB8,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText878A898_unk43_id,
		jumpIfSome: CompText878A898_unk43_id,
	]
	ts_flag_set flag=0x1195
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "One Tuna comin'\n"
	.string "up!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x1E,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x1E,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x41
	.string "Super thanks!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk12
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "No way Jose!\n"
	.string "Can't sell ya\n"
	.string "that!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't ya already\n"
	.string "got some Tuna?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk13
	ts_check_flag [
		flag: 0x119B,
		jumpIfTrue: CompText878A898_unk14_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_take_zenny [
		amount: 0x3E8,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText878A898_unk43_id,
		jumpIfSome: CompText878A898_unk43_id,
	]
	ts_flag_set flag=0x119B
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "One Urchin comin'\n"
	.string "up!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x24,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x24,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x41
	.string "Super thanks!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk14
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "No way Jose!\n"
	.string "Can't sell ya\n"
	.string "that!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't ya already\n"
	.string "got some Urchin?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk15
	ts_check_flag [
		flag: 0x119A,
		jumpIfTrue: CompText878A898_unk16_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_take_zenny [
		amount: 0x5DC,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText878A898_unk43_id,
		jumpIfSome: CompText878A898_unk43_id,
	]
	ts_flag_set flag=0x119A
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "One YellowTail\n"
	.string "comin' right up!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x23,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x23,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x41
	.string "Super thanks!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk16
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "No way Jose!\n"
	.string "Can't sell ya\n"
	.string "that!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't ya already\n"
	.string "got some YellowTail?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk17
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Lemme just say...\n"
	.string "WELCOOOOMMMEEE!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You know you want\n"
	.string "some of this fish\n"
	.string "action right here!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string "Snapper/1000\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string "Shrimp/1000\n"
	ts_option [
		brackets: 0x0,
		right: 0x3,
		left: 0x3,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string "Herring/800 "
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x3,
		up: 0x3,
	]
	ts_space count=0x1
	.string "Quit"
	ts_select 0x8, 0x20, 0x12, 0x14, 0x16, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "Come back soon!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk18
	ts_check_flag [
		flag: 0x119C,
		jumpIfTrue: CompText878A898_unk19_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_take_zenny [
		amount: 0x3E8,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText878A898_unk44_id,
		jumpIfSome: CompText878A898_unk44_id,
	]
	ts_flag_set flag=0x119C
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Snapper it is!!\n"
	.string "Comin' right up!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x25,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x25,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "Awesome! Thanks!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk19
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Gonna have to bust\n"
	.string "ya,Buster!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You've already got\n"
	.string "some great Snapper!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk20
	ts_check_flag [
		flag: 0x1198,
		jumpIfTrue: CompText878A898_unk21_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_take_zenny [
		amount: 0x3E8,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText878A898_unk44_id,
		jumpIfSome: CompText878A898_unk44_id,
	]
	ts_flag_set flag=0x1198
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Shrimp it is!!\n"
	.string "Comin' right up!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x21,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x21,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "Awesome! Thanks!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk21
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Gonna have to bust\n"
	.string "ya,Buster!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You've already got\n"
	.string "some great Shrimp!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk22
	ts_check_flag [
		flag: 0x1199,
		jumpIfTrue: CompText878A898_unk23_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_take_zenny [
		amount: 0x320,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText878A898_unk44_id,
		jumpIfSome: CompText878A898_unk44_id,
	]
	ts_flag_set flag=0x1199
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Herring it is!!\n"
	.string "Comin' right up!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x22,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x22,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "Awesome! Thanks!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk23
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Gonna have to bust\n"
	.string "ya,Buster!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You've already got\n"
	.string "some great Herring!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk24
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "In Transylvania they\n"
	.string "say \"Velcome,\" but\n"
	.string "here I say welcome!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Our fish is so fresh\n"
	.string "it's still flippin'\n"
	.string "and floppin'!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string "Urchin/1500\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string "Shrimp/800\n"
	ts_option [
		brackets: 0x0,
		right: 0x3,
		left: 0x3,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string "Snapper/1100 "
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x3,
		up: 0x3,
	]
	ts_space count=0x1
	.string "Quit"
	ts_select 0x8, 0x20, 0x19, 0x1B, 0x30, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x40
	.string "Come \"vhenever\"\n"
	.string "you'd like!!\n"
	.string "Muhahahahaha!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk25
	ts_check_flag [
		flag: 0x119B,
		jumpIfTrue: CompText878A898_unk26_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_take_zenny [
		amount: 0x5DC,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText878A898_unk45_id,
		jumpIfSome: CompText878A898_unk45_id,
	]
	ts_flag_set flag=0x119B
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Urchin it is!!\n"
	.string "So fresh you may\n"
	.string "need a swimsuit!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x24,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x24,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x40
	.string "Thank ya very much!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk26
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Hey Buddy!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You've already got\n"
	.string "some great Urchin!\n"
	.string "Don't get greedy!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk27
	ts_check_flag [
		flag: 0x1198,
		jumpIfTrue: CompText878A898_unk28_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_take_zenny [
		amount: 0x320,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText878A898_unk45_id,
		jumpIfSome: CompText878A898_unk45_id,
	]
	ts_flag_set flag=0x1198
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Shrimp it is!!\n"
	.string "So fresh you may\n"
	.string "need a swimsuit!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x21,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x21,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x40
	.string "Thank ya very much!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk28
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Hey Buddy!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You've already got\n"
	.string "some great Shrimp!\n"
	.string "Don't get greedy!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk29
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "You're here and\n"
	.string "you're hungry!!\n"
	.string "Well,I welcome you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Feel the hunger\n"
	.string "build as you stare\n"
	.string "at our great fish!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string "Salmon/900\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string "Tuna/2000\n"
	ts_option [
		brackets: 0x0,
		right: 0x3,
		left: 0x3,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string "Eel/900 "
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x3,
		up: 0x3,
	]
	ts_space count=0x1
	.string "Quit"
	ts_select 0x8, 0x20, 0x1E, 0x20, 0x22, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x3F
	.string "Come back whenever\n"
	.string "you're hungry!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk30
	ts_check_flag [
		flag: 0x1196,
		jumpIfTrue: CompText878A898_unk31_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_take_zenny [
		amount: 0x384,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText878A898_unk46_id,
		jumpIfSome: CompText878A898_unk46_id,
	]
	ts_flag_set flag=0x1196
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "You got it!\n"
	.string "Some Salmon for the\n"
	.string "starving man here!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x1F,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x1F,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x3F
	.string "I hope you're full\n"
	.string "now!! Thanks!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk31
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "Umm... I know you're\n"
	.string "hungry,but you've\n"
	.string "already got Salmon!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk32
	ts_check_flag [
		flag: 0x1195,
		jumpIfTrue: CompText878A898_unk33_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_take_zenny [
		amount: 0x7D0,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText878A898_unk46_id,
		jumpIfSome: CompText878A898_unk46_id,
	]
	ts_flag_set flag=0x1195
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "You got it!\n"
	.string "Some Tuna for the\n"
	.string "starving man here!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x1E,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x1E,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x3F
	.string "I hope you're full\n"
	.string "now!! Thanks!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk33
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "Umm... I know you're\n"
	.string "hungry,but you've\n"
	.string "already got Tuna!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk34
	ts_check_flag [
		flag: 0x1197,
		jumpIfTrue: CompText878A898_unk35_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_take_zenny [
		amount: 0x384,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText878A898_unk46_id,
		jumpIfSome: CompText878A898_unk46_id,
	]
	ts_flag_set flag=0x1197
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "You got it!\n"
	.string "Some Eel for the\n"
	.string "starving man here!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x20,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x20,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x3F
	.string "I hope you're full\n"
	.string "now!! Thanks!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk35
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "Umm... I know you're\n"
	.string "hungry,but you've\n"
	.string "already got Eel!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk36
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "You've come to the\n"
	.string "right place!! Let\n"
	.string "me make you a deal!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string "Tuna/1000\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string "Shrimp/900\n"
	ts_option [
		brackets: 0x0,
		right: 0x3,
		left: 0x3,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string "Salmon/2000 "
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x3,
		up: 0x3,
	]
	ts_space count=0x1
	.string "Quit"
	ts_select 0x8, 0x20, 0x25, 0x27, 0x29, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "Come back whenever\n"
	.string "you'd like! You know\n"
	.string "where to find us!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk37
	ts_check_flag [
		flag: 0x1195,
		jumpIfTrue: CompText878A898_unk38_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_take_zenny [
		amount: 0x3E8,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText878A898_unk47_id,
		jumpIfSome: CompText878A898_unk47_id,
	]
	ts_flag_set flag=0x1195
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Hahaha! Tuna,huh?\n"
	.string "A man with real\n"
	.string "taste!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x1E,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x1E,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "Thank you again..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk38
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "You've already got\n"
	.string "Tuna... You don't\n"
	.string "need to buy more!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk39
	ts_check_flag [
		flag: 0x1198,
		jumpIfTrue: CompText878A898_unk40_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_take_zenny [
		amount: 0x384,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText878A898_unk47_id,
		jumpIfSome: CompText878A898_unk47_id,
	]
	ts_flag_set flag=0x1198
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Hahaha! Shrimp,huh?\n"
	.string "A man with real\n"
	.string "taste!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x21,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x21,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "Thank you again..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk40
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "You've already got\n"
	.string "Shrimp... You don't\n"
	.string "need to buy more!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk41
	ts_check_flag [
		flag: 0x1196,
		jumpIfTrue: CompText878A898_unk42_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_take_zenny [
		amount: 0x7D0,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText878A898_unk47_id,
		jumpIfSome: CompText878A898_unk47_id,
	]
	ts_flag_set flag=0x1196
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Hahaha! Salmon,huh?\n"
	.string "A man with real\n"
	.string "taste!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x1F,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x1F,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "Thank you again..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk42
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "You've already got\n"
	.string "Salmon... You don't\n"
	.string "need to buy more!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk43
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Sorry my friend,\n"
	.string "but you don't have\n"
	.string "enough money!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk44
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Buddy! You don't\n"
	.string "have enough money!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk45
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Well,it seems you\n"
	.string "don't have enough\n"
	.string "money!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk46
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "Ummm... You don't\n"
	.string "quite have enough\n"
	.string "money..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk47
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "You may have taste,\n"
	.string "but you don't have\n"
	.string "enough money!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk48
	ts_check_flag [
		flag: 0x119C,
		jumpIfTrue: CompText878A898_unk49_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_take_zenny [
		amount: 0x44C,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText878A898_unk45_id,
		jumpIfSome: CompText878A898_unk45_id,
	]
	ts_flag_set flag=0x119C
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Snapper it is!!\n"
	.string "So fresh you may\n"
	.string "need a swimsuit!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x25,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x25,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x40
	.string "Thank ya very much!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk49
	ts_mugshot_show mugshot=0x40
	ts_msg_open
	.string "Hey Buddy!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You've already got\n"
	.string "some great Snapper!\n"
	.string "Don't get greedy!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk50

	def_text_script CompText878A898_unk51

	def_text_script CompText878A898_unk52

	def_text_script CompText878A898_unk53

	def_text_script CompText878A898_unk54

	def_text_script CompText878A898_unk55
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "ALOHA! ALOHA!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THIS IS SEASIDE\n"
	.string "AREA1!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ALOHA! ALOHA!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk56
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Ahh... I just don't\n"
	.string "have the will to\n"
	.string "post..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I hate myself for\n"
	.string "not having any guts!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk57

	def_text_script CompText878A898_unk58

	def_text_script CompText878A898_unk59

	def_text_script CompText878A898_unk60
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THIS IS SEASIDE\n"
	.string "AREA1!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A PERFECT AREA FOR\n"
	.string "SOME REST AND\n"
	.string "RELAXATION!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk61
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "It would really\n"
	.string "hurt if you fell\n"
	.string "from here..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey! Don't push!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk62
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Yep,no matter when I\n"
	.string "come to this plaza,\n"
	.string "it's always great!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A898_unk63

	def_text_script CompText878A898_unk64

	def_text_script CompText878A898_unk65

	def_text_script CompText878A898_unk66

	def_text_script CompText878A898_unk67

	def_text_script CompText878A898_unk68

	def_text_script CompText878A898_unk69

	def_text_script CompText878A898_unk70

	def_text_script CompText878A898_unk71

	def_text_script CompText878A898_unk72

	def_text_script CompText878A898_unk73

	def_text_script CompText878A898_unk74

	def_text_script CompText878A898_unk75

	def_text_script CompText878A898_unk76

	def_text_script CompText878A898_unk77

	def_text_script CompText878A898_unk78

	def_text_script CompText878A898_unk79

	