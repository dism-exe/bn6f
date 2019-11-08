	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87948B8::
	.word 0xBA300

	text_archive_start

	def_text_script CompText87948B8_unk0
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	.string "*BEEP,"
	ts_sound_play00 0xCD, 0x0
	ts_wait 0x28, 0x0
	.string "BEEP,"
	ts_sound_play00 0xCD, 0x0
	ts_wait 0x28, 0x0
	.string "BEEP"
	ts_sound_play00 0xCD, 0x0
	.string "!!*"
	ts_wait 0x28, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now approaching\n"
	.string "the Undernet."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Due to the danger,\n"
	.string "entry is\n"
	.string "prohibited!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk1

	def_text_script CompText87948B8_unk2

	def_text_script CompText87948B8_unk3

	def_text_script CompText87948B8_unk4

	def_text_script CompText87948B8_unk5
	ts_msg_open
	.string "A broken Mr.Prog..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It keeps repeating\n"
	.string "the same thing over\n"
	.string "and over..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "GRUMBLE...GRUMBLE...\n"
	.string "ALARBRARLB..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk6

	def_text_script CompText87948B8_unk7

	def_text_script CompText87948B8_unk8

	def_text_script CompText87948B8_unk9

	def_text_script CompText87948B8_unk10
	ts_mugshot_show 0x20
	ts_msg_open
	.string "Where are you\n"
	.string "going?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You aren't,perhaps,\n"
	.string "running away are\n"
	.string "you?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk11
	ts_mugshot_show 0x21
	ts_msg_open
	.string "HEY! Where do you\n"
	.string "think you're going!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The test isn't over\n"
	.string "yet!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk12

	def_text_script CompText87948B8_unk13

	def_text_script CompText87948B8_unk14

	def_text_script CompText87948B8_unk15

	def_text_script CompText87948B8_unk16

	def_text_script CompText87948B8_unk17

	def_text_script CompText87948B8_unk18

	def_text_script CompText87948B8_unk19

	def_text_script CompText87948B8_unk20
	ts_check_flag 0x81, 0xA, 0x15, 0xFF
	ts_flag_set 0x81, 0xA
	ts_msg_open
	.string "You...\n"
	.string "Shall you take\n"
	.string "our test?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_clear_msg
	.string "Without passing the\n"
	.string "test,you cannot\n"
	.string "continue on..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk21
	ts_msg_open
	.string "You...\n"
	.string "Shall you take\n"
	.string "our test?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_clear_msg
	.string "Without passing the\n"
	.string "test,you cannot\n"
	.string "continue on..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk22
	ts_msg_open
	.string "Begin the test!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Press the B Button\n"
	.string "to take up the\n"
	.string "tomahawk,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and destroy 30 of\n"
	.string "us!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We have 3 stages\n"
	.string "of growth.If you\n"
	.string "do not destroy us"
	ts_key_wait 0x0
	ts_clear_msg
	.string "before our last\n"
	.string "stage of growth,a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "thunderous attack\n"
	.string "will befall you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "During the test,\n"
	.string "beings with wings\n"
	.string "will help you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Use the L Button and\n"
	.string "R Button to slash\n"
	.string "left and right..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now,let the test\n"
	.string "begin..."
	ts_key_wait 0x0
	ts_flag_set 0x85, 0xA
	ts_end

	def_text_script CompText87948B8_unk23
	ts_msg_open
	.string "Those who have\n"
	.string "passed the test\n"
	.string "may proceed..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk24

	def_text_script CompText87948B8_unk25
	ts_check_flag 0x82, 0xA, 0x1A, 0xFF
	ts_flag_set 0x82, 0xA
	ts_msg_open
	.string "You...\n"
	.string "Shall you take\n"
	.string "our test?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x1B, 0xFF, 0xFF
	ts_clear_msg
	.string "Without passing the\n"
	.string "test,you cannot\n"
	.string "continue on..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk26
	ts_msg_open
	.string "You...\n"
	.string "Shall you take\n"
	.string "our test?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x1B, 0xFF, 0xFF
	ts_clear_msg
	.string "Without passing the\n"
	.string "test,you cannot\n"
	.string "continue on..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk27
	ts_msg_open
	.string "Time for the test!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Press the B Button\n"
	.string "to take up the\n"
	.string "tomahawk,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and destroy 50 of\n"
	.string "us!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We have 3 stages\n"
	.string "of growth.If you\n"
	.string "do not destroy us"
	ts_key_wait 0x0
	ts_clear_msg
	.string "before our last\n"
	.string "stage of growth,a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "thunderous attack\n"
	.string "will befall you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "During the test,\n"
	.string "beings with wings\n"
	.string "will help you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Use the L Button and\n"
	.string "R Button to slash\n"
	.string "left and right..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now,let the test\n"
	.string "begin..."
	ts_key_wait 0x0
	ts_flag_set 0x87, 0xA
	ts_end

	def_text_script CompText87948B8_unk28
	ts_msg_open
	.string "Those who have\n"
	.string "passed the test\n"
	.string "may proceed..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk29

	def_text_script CompText87948B8_unk30
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WELCOME TO\n"
	.string "SKY AREA2!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ENJOY YOUR TIME\n"
	.string "HERE!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk31
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Over there is the\n"
	.string "Undernet..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's scary...\n"
	.string "...*shiver*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk32
	ts_mugshot_show 0x41
	ts_msg_open
	.string "This beautiful area\n"
	.string "and the Undernet are\n"
	.string "next to each other."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Kind of\n"
	.string "unbelievable,huh?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk33

	def_text_script CompText87948B8_unk34

	def_text_script CompText87948B8_unk35

	def_text_script CompText87948B8_unk36

	def_text_script CompText87948B8_unk37

	def_text_script CompText87948B8_unk38

	def_text_script CompText87948B8_unk39

	def_text_script CompText87948B8_unk40
	ts_mugshot_show 0x46
	ts_msg_open
	.string "Arrrgggghhh!!\n"
	.string "I don't get this\n"
	.string "at all!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How can I get\n"
	.string "over there!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk41
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Ummm... This is a\n"
	.string "strange question,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but if you could\n"
	.string "be something else,\n"
	.string "what would you be?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I would totally be\n"
	.string "a bird!! Then I\n"
	.string "could fly all over!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...I wish someone\n"
	.string "would give me wings."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk42
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "I LOVE RIDING ON\n"
	.string "TRAINS!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE VIEW OF THE\n"
	.string "WORLD KEEPS RUNNING\n"
	.string "BY THE WINDOW!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk43
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "AHHH! GOTTA HURRY!\n"
	.string "GOTTA HURRY UP NOW!\n"
	.string "I'M LATE FOR WORK!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I WISH THE TRAIN\n"
	.string "WOULD JUST HURRY\n"
	.string "UP!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87948B8_unk44
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "TODAY I'M GOING\n"
	.string "FAR AWAY!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "IT'S SO EXCITING!!"
	ts_key_wait 0x0
	ts_end

	