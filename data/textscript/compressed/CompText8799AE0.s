	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8799AE0::
	.word 0x49D00

	text_archive_start

	def_text_script CompText8799AE0_unk0
	ts_check_flag [
		flag: 0xE32,
		jumpIfTrue: 0x2,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "I'm the caretaker\n"
	.string "program for this\n"
	.string "Pavilion..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...A smooth talking\n"
	.string "program created for\n"
	.string "the Expo..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've got alot to\n"
	.string "say,would you like\n"
	.string "to take a listen?"
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
	ts_select 0x6, 0x80, 0x1, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x3C
	.string "This information is\n"
	.string "important if you are\n"
	.string "going to continue..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8799AE0_unk1
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "As a counter to the\n"
	.string "hackings in the\n"
	.string "Cyberworld,we've"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "implemented a means\n"
	.string "to prevent\n"
	.string "backtracking."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Step on a panel in\n"
	.string "this area,and grass\n"
	.string "will begin to grow."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Stepping on grass\n"
	.string "is regarded as\n"
	.string "breaking the law."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "One of the guards\n"
	.string "in this area will\n"
	.string "appear,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "a court will be\n"
	.string "opened,and violators\n"
	.string "will be punished."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "One more thing. One\n"
	.string "step is considered\n"
	.string "one crime."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Step on 3 grass\n"
	.string "panels,and you're\n"
	.string "guilty of 3 crimes."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The bigger the crime\n"
	.string "the bigger the\n"
	.string "punishment..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ahh,another thing..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Press the L Button\n"
	.string "to look at your\n"
	.string "surroundings."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Press the L Button\n"
	.string "again to stop\n"
	.string "looking."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The best thing to\n"
	.string "do is look ahead\n"
	.string "then move forward."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There should be a\n"
	.string "door blocking your\n"
	.string "path..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There'll definitely\n"
	.string "be buttons near\n"
	.string "there,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and pressing all of\n"
	.string "them will open the\n"
	.string "door."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Take care and\n"
	.string "good luck..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8799AE0_unk2
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "It looks like things\n"
	.string "are back to normal.\n"
	.string "Thank goodness..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8799AE0_unk3

	def_text_script CompText8799AE0_unk4

	