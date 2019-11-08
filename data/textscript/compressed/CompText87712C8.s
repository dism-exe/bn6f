	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87712C8::
	.word 0xAA400

	text_archive_start

	def_text_script CompText87712C8_unk0
	ts_check_flag 0x57, 0x6, 0x2, 0xFF
	ts_check_flag 0x36, 0x6, 0x1, 0xFF
	ts_flag_set 0x36, 0x6
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText87712C8_unk1
	ts_mugshot_show 0x1E
	ts_msg_open
	.string "Hey,use that\n"
	.string "computer!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hurry up!\n"
	.string "HeatMan's waitin'\n"
	.string "for ya!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87712C8_unk2
	ts_mugshot_show 0x1E
	ts_msg_open
	.string "Do yer best and\n"
	.string "delete those\n"
	.string "Kettles!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If ya don't,you\n"
	.string "can't ever go home!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87712C8_unk3

	def_text_script CompText87712C8_unk4

	def_text_script CompText87712C8_unk5
	ts_check_flag 0x69, 0x6, 0x8, 0xFF
	ts_check_flag 0x52, 0x6, 0x9, 0xFF
	ts_flag_set 0x52, 0x6
	ts_mugshot_show 0x1E
	ts_msg_open
	.string "Time for the\n"
	.string "final test!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The test is..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "A NetBattle with\n"
	.string "HeatMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Of course,ya'll\n"
	.string "operate MegaMan."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ya shoulda figured\n"
	.string "out how to use Fire"
	ts_key_wait 0x0
	ts_clear_msg
	.string "by operatin'\n"
	.string "HeatMan,right?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So Fire attacks\n"
	.string "shouldn't be a\n"
	.string "problem for ya!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright! Let's go!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Are ya ready!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x6, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x1E
	.string "Huh? Ya aren't\n"
	.string "scared are ya!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87712C8_unk6
	ts_mugshot_show 0x1E
	ts_msg_open
	.string "Let's go! Time for\n"
	.string "the final test!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "START!!"
	ts_key_wait 0x0
	ts_flag_set 0x43, 0x6
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText87712C8_unk7
	ts_mugshot_show 0x1E
	ts_msg_open
	.string "That's too bad!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You wanna give it\n"
	.string "another shot!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x6, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x1E
	.string "Huh? Ya aren't\n"
	.string "scared are ya!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87712C8_unk8
	ts_mugshot_show 0x1E
	ts_msg_open
	.string "How was it!?\n"
	.string "My control's as\n"
	.string "good as yers!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's the way to\n"
	.string "master Fire!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87712C8_unk9
	ts_mugshot_show 0x1E
	ts_msg_open
	.string "Looks like yer\n"
	.string "soul's ready to go!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's get started...\n"
	.string "OK?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x6, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x1E
	.string "Huh? Ya aren't\n"
	.string "scared are ya!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87712C8_unk10

	def_text_script CompText87712C8_unk11

	def_text_script CompText87712C8_unk12

	def_text_script CompText87712C8_unk13

	def_text_script CompText87712C8_unk14

	def_text_script CompText87712C8_unk15
	ts_check_flag 0x45, 0x6, 0x10, 0xFF
	ts_flag_set 0x45, 0x6
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText87712C8_unk16
	ts_mugshot_show 0x1F
	ts_msg_open
	.string "Use this computer.\n"
	.string "SpoutMan's waiting."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87712C8_unk17
	ts_check_flag 0x53, 0x6, 0x15, 0xFF
	ts_flag_set 0x53, 0x6
	ts_mugshot_show 0x1F
	ts_msg_open
	.string "Lan,let's start\n"
	.string "the test!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "What? All I did was\n"
	.string "operate SpoutMan and\n"
	.string "catch some fish..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's not like we did\n"
	.string "anything classwork-\n"
	.string "like,so"
	ts_key_wait 0x0
	ts_clear_msg
	.string "why the test all of\n"
	.string "a sudden?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x1F
	.string "What are you\n"
	.string "talking about?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Finding the fish\n"
	.string "WAS the classwork!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Re..Really...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x1F
	.string "Yes!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Using SpoutMan was\n"
	.string "to get you to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "understand the\n"
	.string "soul of water!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "...Really?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x1F
	.string "Of course!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You should\n"
	.string "understand the soul\n"
	.string "of water by now!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "I guess so...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x1F
	.string "OK then! Let's see\n"
	.string "how much you learned\n"
	.string "in class!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How about a battle\n"
	.string "against SpoutMan\n"
	.string "while I operate?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Show me just how\n"
	.string "much you've learned\n"
	.string "through this fight!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "It's a NetBattle...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x1F
	.string "Yep,a NetBattle.\n"
	.string "Are you ready!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x12, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x1F
	.string "Once you are ready,\n"
	.string "we'll begin!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87712C8_unk18
	ts_mugshot_show 0x1F
	ts_msg_open
	.string "Let's see if you've\n"
	.string "got a soul of water!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Battle Start!!"
	ts_key_wait 0x0
	ts_flag_set 0x50, 0x6
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText87712C8_unk19
	ts_mugshot_show 0x1F
	ts_msg_open
	.string "What a shame...\n"
	.string "Would you like to\n"
	.string "try again?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x12, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x1F
	.string "Once you are ready,\n"
	.string "we'll begin!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87712C8_unk20

	def_text_script CompText87712C8_unk21
	ts_mugshot_show 0x1F
	ts_msg_open
	.string "Are you ready to\n"
	.string "take the test!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x12, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x1F
	.string "Once you are ready,\n"
	.string "we'll begin!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87712C8_unk22

	def_text_script CompText87712C8_unk23

	def_text_script CompText87712C8_unk24

	def_text_script CompText87712C8_unk25
	ts_check_game_version 0xFF, 0x1A
	ts_mugshot_show 0x1E
	ts_msg_open
	.string "What's the problem?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hurry up and get\n"
	.string "ready to go home!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87712C8_unk26
	ts_mugshot_show 0x1F
	ts_msg_open
	.string "Hmm?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You're not all\n"
	.string "packed up to go\n"
	.string "home yet,right?"
	ts_key_wait 0x0
	ts_end

	