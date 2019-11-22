	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877DAB4::
	.word 0x7F300

	text_archive_start

	def_text_script CompText877DAB4_unk0
	ts_msg_open
	.string "Go down the ladder?\n"
	ts_position_option_horizontal [
		width: 0x8,
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
	ts_select 0x6, 0x80, 0xFF, 0x1, 0xFF
	ts_flag_set [
		flag: 0x1726,
	]
	ts_flag_set [
		flag: 0x85E,
	]
	ts_end

	def_text_script CompText877DAB4_unk1
	ts_end

	def_text_script CompText877DAB4_unk2

	def_text_script CompText877DAB4_unk3

	def_text_script CompText877DAB4_unk4

	def_text_script CompText877DAB4_unk5

	def_text_script CompText877DAB4_unk6

	def_text_script CompText877DAB4_unk7

	def_text_script CompText877DAB4_unk8

	def_text_script CompText877DAB4_unk9

	def_text_script CompText877DAB4_unk10
	ts_msg_open
	.string "NO UNAUTHORIZED\n"
	.string "PERSONNEL!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877DAB4_unk11

	def_text_script CompText877DAB4_unk12

	def_text_script CompText877DAB4_unk13

	def_text_script CompText877DAB4_unk14

	def_text_script CompText877DAB4_unk15

	def_text_script CompText877DAB4_unk16

	def_text_script CompText877DAB4_unk17

	def_text_script CompText877DAB4_unk18

	def_text_script CompText877DAB4_unk19

	def_text_script CompText877DAB4_unk20
	ts_check_flag [
		flag: 0x11FC,
		jumpIfTrue: 0x15,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x11FC,
	]
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "I'm a lawyer here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "JUSTICE WINS!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That's my motto!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...What?\n"
	.string "FRAUD!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Tell me all about\n"
	.string "it..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I see... I see..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A fraud that prayed\n"
	.string "on the pure heart"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "of a child who\n"
	.string "simply wanted to\n"
	.string "lose weight..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This will not be\n"
	.string "forgiven....\n"
	.string "NEEEEEVVVVVAAAAHH!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Leave this all up\n"
	.string "to me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll even get some\n"
	.string "of my lawyer friends\n"
	.string "to help on the case!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll bury that\n"
	.string "merchant up to his\n"
	.string "CPU in lawyer Navis!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We are going to make\n"
	.string "that crook cry\n"
	.string "uncle!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This is another\n"
	.string "time where\n"
	.string "JUSTICE WINS!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877DAB4_unk21
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "A fraud that prayed\n"
	.string "on the pure heart"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "of a child who\n"
	.string "simply wanted to\n"
	.string "lose weight..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This will not be\n"
	.string "forgiven....\n"
	.string "NEEEEEVVVVVAAAAHH!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Leave this all up\n"
	.string "to me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll even get some\n"
	.string "of my lawyer friends\n"
	.string "to help on the case!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll bury that\n"
	.string "merchant up to his\n"
	.string "CPU in lawyer Navis!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We are going to make\n"
	.string "that crook cry\n"
	.string "uncle!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This is another\n"
	.string "time where\n"
	.string "JUSTICE WINS!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877DAB4_unk22
	ts_check_flag [
		flag: 0x123C,
		jumpIfTrue: 0x19,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x123B,
		jumpIfTrue: 0x18,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1237,
		jumpIfTrue: 0x17,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x1237,
	]
	ts_mugshot_show [
		mugshot: 0xC,
	]
	ts_msg_open
	.string "You took my request?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Thank you so much..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I want you to stop\n"
	.string "my brother's virus\n"
	.string "research."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sleeping,eating...\n"
	.string "It's virus this,\n"
	.string "virus that..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You have to stop\n"
	.string "him soon... He is\n"
	.string "making a weird"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "virus that would\n"
	.string "cause the world a\n"
	.string "ton of headaches..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I don't even want\n"
	.string "to think about it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "My brother's Navi\n"
	.string "is currently in\n"
	.string "Green Area1."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That Navi is\n"
	.string "assisting my\n"
	.string "brother's research!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you can persuade\n"
	.string "the Navi,maybe you"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "can talk some sense\n"
	.string "into my brother!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Thanks for helping."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877DAB4_unk23
	ts_mugshot_show [
		mugshot: 0xC,
	]
	ts_msg_open
	.string "My brother's Navi\n"
	.string "should be in\n"
	.string "Green Area1."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you can persuade\n"
	.string "that Navi,maybe you"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "can stop my\n"
	.string "brother's research!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Please help!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877DAB4_unk24
	ts_mugshot_show [
		mugshot: 0xC,
	]
	ts_msg_open
	.string "I just got a call\n"
	.string "from my brother..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I didn't know he\n"
	.string "was researching to\n"
	.string "help the world!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Thanks to you,\n"
	.string "I know the truth!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Thank you so much!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip [
		chip: 0xCA,
		code: 0xF,
		amount: 0x1,
	]
	ts_player_animate_object [
		animation: 0x18,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xCA,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0xF,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0xC,
	]
	.string "I can't thank you\n"
	.string "enough!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x123C,
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

	def_text_script CompText877DAB4_unk25
	ts_mugshot_show [
		mugshot: 0xC,
	]
	ts_msg_open
	.string "I have to learn\n"
	.string "more about\n"
	.string "viruses..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877DAB4_unk26

	def_text_script CompText877DAB4_unk27

	def_text_script CompText877DAB4_unk28

	def_text_script CompText877DAB4_unk29

	def_text_script CompText877DAB4_unk30

	def_text_script CompText877DAB4_unk31

	def_text_script CompText877DAB4_unk32

	def_text_script CompText877DAB4_unk33

	