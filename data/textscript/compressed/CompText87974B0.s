	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87974B0::
	.word 0x99900

	text_archive_start

	def_text_script CompText87974B0_unk0
	ts_check_flag [
		flag: 0x1114,
		jumpIfTrue: 0xA,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1113,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1112,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1111,
		jumpIfTrue: 0x7,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x110F,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x110F,
	]
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Pardon me...\n"
	.string "You saw my post on\n"
	.string "the RequestBBS..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The truth is my\n"
	.string "operator is a\n"
	.string "manager..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It looks like the\n"
	.string "factory might go\n"
	.string "bankrupt..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It doesn't matter\n"
	.string "how much,but would\n"
	.string "you lend me money?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I don't know when,\n"
	.string "but I'll repay\n"
	.string "2x..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "No...10x...\n"
	.string "the money!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I guess I can...\n"
	.string "For sure..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Please...\n"
	.string "Lend me money!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
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
	.string " Sure  "
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
	.string " No way"
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	.string "I see..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you took the\n"
	.string "request,live up to\n"
	.string "your duty and lend!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87974B0_unk1
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "PLEASE!!\n"
	.string "Lend us money!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You took my\n"
	.string "request didn't you?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "PLEASE!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I don't know when,\n"
	.string "but I'll repay\n"
	.string "2x..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "No...10x...\n"
	.string "the money!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I guess I can...\n"
	.string "For sure..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Please...\n"
	.string "Lend me money!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
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
	.string " Sure  "
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
	.string " No way"
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	.string "I see..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you took the\n"
	.string "request,live up to\n"
	.string "your duty and lend!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87974B0_unk2
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Thank goodness...\n"
	.string "How much can you\n"
	.string "spare?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space [
		count: 0x1,
	]
	.string "100Z     "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x3,
		up: 0x3,
	]
	ts_space [
		count: 0x1,
	]
	.string "1000Z\n"
	ts_option [
		brackets: 0x0,
		right: 0x3,
		left: 0x3,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string "10000Z   "
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string "None"
	ts_select 0x8, 0x20, 0x3, 0x4, 0x5, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	.string "I see..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you took the\n"
	.string "request,live up to\n"
	.string "your duty and lend!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87974B0_unk3
	ts_check_take_zenny [
		amount: 0x64,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xB,
		jumpIfSome: 0xB,
	]
	ts_flag_set [
		flag: 0x1111,
	]
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Huh,100Z?\n"
	.string "Kinda cheap,don't\n"
	.string "you think?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Awww... Right now,\n"
	.string "even 100Z makes a\n"
	.string "difference..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll be sure to pay\n"
	.string "you back one day!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Thank you...\n"
	.string "I truly thank you."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 13,
	]

	def_text_script CompText87974B0_unk4
	ts_check_take_zenny [
		amount: 0x3E8,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xB,
		jumpIfSome: 0xB,
	]
	ts_flag_set [
		flag: 0x1112,
	]
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "1000Z...\n"
	.string "That really helps!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll be sure to pay\n"
	.string "you back one day!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Thank you...\n"
	.string "I truly thank you."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 13,
	]

	def_text_script CompText87974B0_unk5
	ts_check_take_zenny [
		amount: 0x2710,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xB,
		jumpIfSome: 0xB,
	]
	ts_flag_set [
		flag: 0x1113,
	]
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "10000Z!?!?\n"
	.string "WE'RE SAVED!!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll be sure to pay\n"
	.string "you back one day!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Thank you...\n"
	.string "I can't thank you\n"
	.string "enough!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 13,
	]

	def_text_script CompText87974B0_unk6
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "I'm sorry..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Unfortunately work\n"
	.string "can't pay you back\n"
	.string "yet... Sorry..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87974B0_unk7
	ts_check_chapter [
		lower: 0x30,
		upper: 0xFF,
		jumpIfInRange: 0xFF,
		jumpIfOutOfRange: 0x6,
	]
	ts_flag_set [
		flag: 0x1114,
	]
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Thanks to you,\n"
	.string "the business is\n"
	.string "back in action!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I can even pay back\n"
	.string "the 100Z you lent\n"
	.string "us!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Just like I said,\n"
	.string "I'll pay you back\n"
	.string "10 times the 100Z!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_zenny [
		amount: 0x3E8,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xFF,
		jumpIfSome: 0xFF,
	]
	ts_player_animate_object [
		animation: 0x18,
	]
	ts_print_current_navi
	.string " got:\n"
	.string "\"1000 Zennys\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script CompText87974B0_unk8
	ts_check_chapter [
		lower: 0x40,
		upper: 0xFF,
		jumpIfInRange: 0xFF,
		jumpIfOutOfRange: 0x6,
	]
	ts_flag_set [
		flag: 0x1114,
	]
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Thanks to you,\n"
	.string "the business is\n"
	.string "back in action!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I can even pay back\n"
	.string "the 1000Z you lent\n"
	.string "us!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Just like I said,\n"
	.string "I'll pay you back\n"
	.string "10 times the 1000Z!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_zenny [
		amount: 0x2710,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xFF,
		jumpIfSome: 0xFF,
	]
	ts_player_animate_object [
		animation: 0x18,
	]
	ts_print_current_navi
	.string " got:\n"
	.string "\"10000 Zennys\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script CompText87974B0_unk9
	ts_check_chapter [
		lower: 0x60,
		upper: 0xFF,
		jumpIfInRange: 0xFF,
		jumpIfOutOfRange: 0x6,
	]
	ts_flag_set [
		flag: 0x1114,
	]
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Thanks to you,\n"
	.string "the business is\n"
	.string "back in action!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I can even pay back\n"
	.string "the 10000Z you lent\n"
	.string "us!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Just like I said,\n"
	.string "I'll pay you back\n"
	.string "10 times the 10000Z!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_zenny [
		amount: 0x186A0,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xFF,
		jumpIfSome: 0xFF,
	]
	ts_player_animate_object [
		animation: 0x18,
	]
	ts_print_current_navi
	.string " got:\n"
	.string "\"100000 Zennys\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script CompText87974B0_unk10
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "You know,you've got\n"
	.string "no idea what will\n"
	.string "happen in life..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hahahahaha!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87974B0_unk11
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "This is hard to say\n"
	.string "since I'm asking for\n"
	.string "money..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You don't have\n"
	.string "enough Zennys."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87974B0_unk12
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "If I could make\n"
	.string "a new PET widget,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "it would be\n"
	.string "awesome!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87974B0_unk13
	ts_mugshot_hide
	ts_msg_open
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

	