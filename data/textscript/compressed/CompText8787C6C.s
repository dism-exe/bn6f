	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8787C6C::
	.word 0xB9B00

	text_archive_start

	def_text_script CompText8787C6C_unk0
	ts_check_chapter [
		lower: 0x22,
		upper: 0x22,
		jumpIfInRange: CompText8787C6C_unk26_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText8787C6C_unk5_id,
	]
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WELCOME!! THIS IS\n"
	.string "CENTRALAREA3!!\n"
	.string "HOT!! HOT!! HOT!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk1
	ts_check_chapter [
		lower: 0x22,
		upper: 0x22,
		jumpIfInRange: CompText8787C6C_unk27_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "That really is a\n"
	.string "huge hole!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "At the bottom of\n"
	.string "this hole,there's"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "an area called the\n"
	.string "Underground!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There's a legend\n"
	.string "that says Cybeasts\n"
	.string "are sleeping there."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder if it's\n"
	.string "true..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk2
	ts_check_chapter [
		lower: 0x22,
		upper: 0x22,
		jumpIfInRange: CompText8787C6C_unk28_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "You can't get too\n"
	.string "close to that huge\n"
	.string "hole."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A Cybeast might\n"
	.string "eat you!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hahahaha...\n"
	.string "Just kidding..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk3

	def_text_script CompText8787C6C_unk4

	def_text_script CompText8787C6C_unk5
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WELCOME!!\n"
	.string "THIS IS\n"
	.string "CENTRALAREA3!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IT'S FREEZING!\n"
	.string "HEY! YOU SPRAYED\n"
	.string "ME WITH WATER!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk6

	def_text_script CompText8787C6C_unk7

	def_text_script CompText8787C6C_unk8

	def_text_script CompText8787C6C_unk9

	def_text_script CompText8787C6C_unk10

	def_text_script CompText8787C6C_unk11

	def_text_script CompText8787C6C_unk12

	def_text_script CompText8787C6C_unk13

	def_text_script CompText8787C6C_unk14

	def_text_script CompText8787C6C_unk15

	def_text_script CompText8787C6C_unk16

	def_text_script CompText8787C6C_unk17

	def_text_script CompText8787C6C_unk18

	def_text_script CompText8787C6C_unk19

	def_text_script CompText8787C6C_unk20
	ts_check_flag [
		flag: 0x639,
		jumpIfTrue: CompText8787C6C_unk22_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x639
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "There's a Kettle\n"
	.string "burning for a fight!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Fire up the battle!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x15, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x47
	.string "C'mon! Let's fight!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk21
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Heat things up!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x63D
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText8787C6C_unk22
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "It's a Kettle...\n"
	.string "Should we battle?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x15, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x47
	.string "C'mon!\n"
	.string "Let me fight!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk23
	ts_check_flag [
		flag: 0x63A,
		jumpIfTrue: CompText8787C6C_unk25_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x63A
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "There's a Kettle\n"
	.string "burning for a fight!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Fire up the battle!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x18, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x47
	.string "C'mon... You aren't\n"
	.string "nervous,are you?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk24
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Yaaaahhhh!!\n"
	.string "It's gonna get\n"
	.string "a bit hot in here!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x63E
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText8787C6C_unk25
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "It's a Kettle...\n"
	.string "Should we battle?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x18, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x47
	.string "C'mon!\n"
	.string "Let me fight!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk26
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WELCOME!!\n"
	.string "THIS IS\n"
	.string "CENTRALAREA3!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk27
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Where are they\n"
	.string "going to have that\n"
	.string "thing tomorrow?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk28
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I hope this area is\n"
	.string "crowded during the\n"
	.string "Expo as well!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk29

	def_text_script CompText8787C6C_unk30
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "No response..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk31

	def_text_script CompText8787C6C_unk32

	def_text_script CompText8787C6C_unk33

	def_text_script CompText8787C6C_unk34

	def_text_script CompText8787C6C_unk35

	def_text_script CompText8787C6C_unk36

	def_text_script CompText8787C6C_unk37

	def_text_script CompText8787C6C_unk38

	def_text_script CompText8787C6C_unk39

	def_text_script CompText8787C6C_unk40

	def_text_script CompText8787C6C_unk41

	def_text_script CompText8787C6C_unk42

	def_text_script CompText8787C6C_unk43

	def_text_script CompText8787C6C_unk44

	def_text_script CompText8787C6C_unk45

	def_text_script CompText8787C6C_unk46

	def_text_script CompText8787C6C_unk47

	def_text_script CompText8787C6C_unk48

	def_text_script CompText8787C6C_unk49

	def_text_script CompText8787C6C_unk50
	ts_check_flag [
		flag: 0x7F2,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8787C6C_unk52_id,
	]
	ts_check_flag [
		flag: 0x688,
		jumpIfTrue: CompText8787C6C_unk51_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Unnggghhh..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "You're a member of\n"
	.string "the NetPolice..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "That's correct..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Please...\n"
	.string "Leave the Cybeast\n"
	.string "to me."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "OK... But if you\n"
	.string "don't hurry,it will\n"
	.string "get to SeasideArea!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If it gets to\n"
	.string "SeasideArea..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It could pollute\n"
	.string "the water system\n"
	.string "for the real world!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If the Cybeast does\n"
	.string "that,it'd be an"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "awful blow to the\n"
	.string "human world..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Here...take my\n"
	.string "SoulWeapons..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "...OK!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_mugshot_hide
	ts_player_animate_object animation=0x18
	ts_sound_play00 track=0x182
	ts_sound_enable_text_sfx
	.string "\"SoulWeapons\" have\n"
	.string "been installed\n"
	.string "inside MegaMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_call_reload_soul_weapons unused=0x0
	ts_flag_set flag=0x688
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Please...stop...\n"
	.string "the Cybeast..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk51
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Reload the\n"
	.string "SoulWeapons?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x37, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Good luck..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk52
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	ts_mugshot_animation animation=0x1
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "No response...\n"
	.string "It seems he passed\n"
	.string "out..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk53

	def_text_script CompText8787C6C_unk54

	def_text_script CompText8787C6C_unk55
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Reloading the Soul\n"
	.string "Weapons requires a\n"
	.string "bit of time..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "During that time,\n"
	.string "the EvilSpirits you\n"
	.string "have already taken"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "care of in this\n"
	.string "area may come back\n"
	.string "to haunt you..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Is that OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x38, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Good luck..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x746
	ts_end

	def_text_script CompText8787C6C_unk56
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Take...take care..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk57

	def_text_script CompText8787C6C_unk58

	def_text_script CompText8787C6C_unk59

	def_text_script CompText8787C6C_unk60
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "DUE TO THE RECENT\n"
	.string "DISASTER,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THE NUMBER OF NAVIS\n"
	.string "VISITING CENTRAL\n"
	.string "AREA HAS GONE DOWN."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IT'S REALLY KIND\n"
	.string "OF LONELY..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk61
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Did you know that\n"
	.string "there was a huge\n"
	.string "riot here earlier?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The area is\n"
	.string "currently under\n"
	.string "inspection..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Though,we can't\n"
	.string "say we've found a\n"
	.string "smoking gun yet..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk62

	def_text_script CompText8787C6C_unk63

	def_text_script CompText8787C6C_unk64

	def_text_script CompText8787C6C_unk65
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THIS IS CENTRAL\n"
	.string "AREA3..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "DUE TO THE RECENT\n"
	.string "RIOT,NAVIS HAVEN'T\n"
	.string "BEEN COMING HERE."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "BUT I WON'T GIVE UP!\n"
	.string "THIS AREA IS GONNA\n"
	.string "KEEP IT'S CHIN UP!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk66
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I'm a member of\n"
	.string "the NetPolice..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We are inspecting\n"
	.string "the site of the\n"
	.string "recent riot..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But we haven't\n"
	.string "gotten any\n"
	.string "results..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "However,we won't\n"
	.string "give up! We will\n"
	.string "figure it out!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8787C6C_unk67

	def_text_script CompText8787C6C_unk68

	def_text_script CompText8787C6C_unk69

	def_text_script CompText8787C6C_unk70

	def_text_script CompText8787C6C_unk71

	def_text_script CompText8787C6C_unk72

	def_text_script CompText8787C6C_unk73

	def_text_script CompText8787C6C_unk74

	def_text_script CompText8787C6C_unk75

	def_text_script CompText8787C6C_unk76

	def_text_script CompText8787C6C_unk77

	def_text_script CompText8787C6C_unk78

	def_text_script CompText8787C6C_unk79

	