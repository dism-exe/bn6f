TextScriptCommError87370C0::
	text_archive_start

	def_text_script TextScriptCommError87370C0_unk0
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!\n"
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Try again\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " End the battle"
	ts_select 0x6, 0x80, 0x1, 0x2, 0xFF

	def_text_script TextScriptCommError87370C0_unk1
	ts_flag_set [
		flag: 0x1733,
	]
	.string "You can't use the\n"
	.string "Chip Gate here!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk2
	ts_flag_set [
		flag: 0x1734,
	]
	.string "I'll end the battle.\n"
	.string "Make sure to save!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk3
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!"
	ts_key_wait [
		any: 0x0,
	]
	ts_jump [
		target: 1,
	]

	def_text_script TextScriptCommError87370C0_unk4
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!\n"
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Try again\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " End the battle"
	ts_select 0x6, 0x80, 0x5, 0x6, 0xFF

	def_text_script TextScriptCommError87370C0_unk5
	ts_flag_set [
		flag: 0x1733,
	]
	.string "You can't fire up\n"
	.string "the Chip Gate here!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk6
	ts_flag_set [
		flag: 0x1734,
	]
	.string "I'll finish this\n"
	.string "fiery battle!\n"
	.string "Make sure to save!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk7
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!"
	ts_key_wait [
		any: 0x0,
	]
	ts_jump [
		target: 5,
	]

	def_text_script TextScriptCommError87370C0_unk8
	ts_mugshot_show [
		mugshot: 0x49,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!\n"
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Try again\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " End the battle"
	ts_select 0x6, 0x80, 0x9, 0xA, 0xFF

	def_text_script TextScriptCommError87370C0_unk9
	ts_flag_set [
		flag: 0x1733,
	]
	.string "You can't turn on\n"
	.string "the Chip Gate here!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk10
	ts_flag_set [
		flag: 0x1734,
	]
	.string "I'll flip the switch\n"
	.string "on this battle!\n"
	.string "Make sure to save!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk11
	ts_mugshot_show [
		mugshot: 0x49,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!"
	ts_key_wait [
		any: 0x0,
	]
	ts_jump [
		target: 9,
	]

	def_text_script TextScriptCommError87370C0_unk12
	ts_mugshot_show [
		mugshot: 0x4B,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!\n"
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Try again\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " End the battle"
	ts_select 0x6, 0x80, 0xD, 0xE, 0xFF

	def_text_script TextScriptCommError87370C0_unk13
	ts_flag_set [
		flag: 0x1733,
	]
	.string "You can't cut on\n"
	.string "the Chip Gate here!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk14
	ts_flag_set [
		flag: 0x1734,
	]
	.string "I'll cut this battle\n"
	.string "off!\n"
	.string "Make sure to save!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk15
	ts_mugshot_show [
		mugshot: 0x4B,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!"
	ts_key_wait [
		any: 0x0,
	]
	ts_jump [
		target: 13,
	]

	def_text_script TextScriptCommError87370C0_unk16
	ts_mugshot_show [
		mugshot: 0x50,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!\n"
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Try again\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " End the battle"
	ts_select 0x6, 0x80, 0x11, 0x12, 0xFF

	def_text_script TextScriptCommError87370C0_unk17
	ts_flag_set [
		flag: 0x1733,
	]
	.string "You can't use the\n"
	.string "Chip Gate here!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk18
	ts_flag_set [
		flag: 0x1734,
	]
	.string "I'll put an end to\n"
	.string "this battle!\n"
	.string "Make sure to save!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk19
	ts_mugshot_show [
		mugshot: 0x50,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!"
	ts_key_wait [
		any: 0x0,
	]
	ts_jump [
		target: 17,
	]

	def_text_script TextScriptCommError87370C0_unk20
	ts_mugshot_show [
		mugshot: 0x4F,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!\n"
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Try again\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " End the battle"
	ts_select 0x6, 0x80, 0x15, 0x16, 0xFF

	def_text_script TextScriptCommError87370C0_unk21
	ts_flag_set [
		flag: 0x1733,
	]
	.string "You can't use the\n"
	.string "Chip Gate here!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk22
	ts_flag_set [
		flag: 0x1734,
	]
	.string "I'll finish the buzz\n"
	.string "on this battle!\n"
	.string "Make sure to save!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk23
	ts_mugshot_show [
		mugshot: 0x4F,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!"
	ts_key_wait [
		any: 0x0,
	]
	ts_jump [
		target: 21,
	]

	def_text_script TextScriptCommError87370C0_unk24
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!\n"
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Try again\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " End the battle"
	ts_select 0x6, 0x80, 0x19, 0x1A, 0xFF

	def_text_script TextScriptCommError87370C0_unk25
	ts_flag_set [
		flag: 0x1733,
	]
	.string "You can't use the\n"
	.string "Chip Gate here,drip!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk26
	ts_flag_set [
		flag: 0x1734,
	]
	.string "I'll finish this\n"
	.string "battle,drip!\n"
	.string "Make sure to save!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk27
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!"
	ts_key_wait [
		any: 0x0,
	]
	ts_jump [
		target: 25,
	]

	def_text_script TextScriptCommError87370C0_unk28
	ts_mugshot_show [
		mugshot: 0x4A,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!\n"
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Try again\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " End the battle"
	ts_select 0x6, 0x80, 0x1D, 0x1E, 0xFF

	def_text_script TextScriptCommError87370C0_unk29
	ts_flag_set [
		flag: 0x1733,
	]
	.string "You can't use the\n"
	.string "Chip Gate here!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk30
	ts_flag_set [
		flag: 0x1734,
	]
	.string "Let's finish this\n"
	.string "battle!\n"
	.string "Make sure to save!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk31
	ts_mugshot_show [
		mugshot: 0x4A,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!"
	ts_key_wait [
		any: 0x0,
	]
	ts_jump [
		target: 29,
	]

	def_text_script TextScriptCommError87370C0_unk32
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!\n"
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Try again\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " End the battle"
	ts_select 0x6, 0x80, 0x21, 0x22, 0xFF

	def_text_script TextScriptCommError87370C0_unk33
	ts_flag_set [
		flag: 0x1733,
	]
	.string "You can't use the\n"
	.string "Chip Gate here!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk34
	ts_flag_set [
		flag: 0x1734,
	]
	.string "いったん バトルを終了する\n"
	.string "セーブを わすれるでないぞ"
	ts_key_wait [
		any: 0x0,
	]
	.string "@I'll put an end to\n"
	.string "this battle!\n"
	.string "Make sure to save!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk35
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!"
	ts_key_wait [
		any: 0x0,
	]
	ts_jump [
		target: 33,
	]

	def_text_script TextScriptCommError87370C0_unk36
	ts_mugshot_show [
		mugshot: 0x4D,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!\n"
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Try again\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " End the battle"
	ts_select 0x6, 0x80, 0x25, 0x26, 0xFF

	def_text_script TextScriptCommError87370C0_unk37
	ts_flag_set [
		flag: 0x1733,
	]
	.string "You can't use the\n"
	.string "Chip Gate here,hmph!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk38
	ts_flag_set [
		flag: 0x1734,
	]
	.string "I'll end this battle\n"
	.string "once and for all!\n"
	.string "Make sure to save!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk39
	ts_mugshot_show [
		mugshot: 0x4D,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!"
	ts_key_wait [
		any: 0x0,
	]
	ts_jump [
		target: 37,
	]

	def_text_script TextScriptCommError87370C0_unk40
	ts_mugshot_show [
		mugshot: 0x4E,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!\n"
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Try again\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " End the battle"
	ts_select 0x6, 0x80, 0x29, 0x2A, 0xFF

	def_text_script TextScriptCommError87370C0_unk41
	ts_flag_set [
		flag: 0x1733,
	]
	.string "こんどのバトルは ゲートが\n"
	.string "つか[B]ね[B]ぜ 気をつけな\n"
	.string "バトルオペレーションセットイン!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@You can't use the\n"
	.string "Chip Gate here!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk42
	ts_flag_set [
		flag: 0x1734,
	]
	.string "I'll finish this\n"
	.string "battle off!\n"
	.string "Make sure to save!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk43
	ts_mugshot_show [
		mugshot: 0x4E,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!"
	ts_key_wait [
		any: 0x0,
	]
	ts_jump [
		target: 41,
	]

	def_text_script TextScriptCommError87370C0_unk44
	ts_mugshot_show [
		mugshot: 0x3B,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!\n"
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Try again\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x1,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " End the battle"
	ts_select 0x6, 0x80, 0x2D, 0x2E, 0xFF

	def_text_script TextScriptCommError87370C0_unk45
	ts_flag_set [
		flag: 0x1733,
	]
	.string "You can't use the\n"
	.string "the Chip Gate here!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk46
	ts_flag_set [
		flag: 0x1734,
	]
	.string "This is my battle,\n"
	.string "and it ends now!!\n"
	.string "Make sure to save!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScriptCommError87370C0_unk47
	ts_mugshot_show [
		mugshot: 0x3B,
	]
	ts_msg_open
	ts_flag_clear [
		flag: 0x1733,
	]
	ts_flag_clear [
		flag: 0x1734,
	]
	.string "Communication error!"
	ts_key_wait [
		any: 0x0,
	]
	ts_jump [
		target: 45,
	]

	def_text_script TextScriptCommError87370C0_unk48

	def_text_script TextScriptCommError87370C0_unk49

	def_text_script TextScriptCommError87370C0_unk50

	def_text_script TextScriptCommError87370C0_unk51

	def_text_script TextScriptCommError87370C0_unk52

	def_text_script TextScriptCommError87370C0_unk53

	def_text_script TextScriptCommError87370C0_unk54

	def_text_script TextScriptCommError87370C0_unk55

	def_text_script TextScriptCommError87370C0_unk56

	def_text_script TextScriptCommError87370C0_unk57

	def_text_script TextScriptCommError87370C0_unk58

	def_text_script TextScriptCommError87370C0_unk59

	def_text_script TextScriptCommError87370C0_unk60

	def_text_script TextScriptCommError87370C0_unk61

	def_text_script TextScriptCommError87370C0_unk62

	def_text_script TextScriptCommError87370C0_unk63

	def_text_script TextScriptCommError87370C0_unk64

	def_text_script TextScriptCommError87370C0_unk65

	def_text_script TextScriptCommError87370C0_unk66

	def_text_script TextScriptCommError87370C0_unk67

	def_text_script TextScriptCommError87370C0_unk68

	def_text_script TextScriptCommError87370C0_unk69

	def_text_script TextScriptCommError87370C0_unk70

	def_text_script TextScriptCommError87370C0_unk71

	def_text_script TextScriptCommError87370C0_unk72

	def_text_script TextScriptCommError87370C0_unk73

	def_text_script TextScriptCommError87370C0_unk74

	def_text_script TextScriptCommError87370C0_unk75

	def_text_script TextScriptCommError87370C0_unk76

	def_text_script TextScriptCommError87370C0_unk77

	def_text_script TextScriptCommError87370C0_unk78

	def_text_script TextScriptCommError87370C0_unk79

	def_text_script TextScriptCommError87370C0_unk80

	def_text_script TextScriptCommError87370C0_unk81

	def_text_script TextScriptCommError87370C0_unk82

	def_text_script TextScriptCommError87370C0_unk83

	def_text_script TextScriptCommError87370C0_unk84

	def_text_script TextScriptCommError87370C0_unk85

	def_text_script TextScriptCommError87370C0_unk86

	def_text_script TextScriptCommError87370C0_unk87

	def_text_script TextScriptCommError87370C0_unk88

	def_text_script TextScriptCommError87370C0_unk89

	def_text_script TextScriptCommError87370C0_unk90

	def_text_script TextScriptCommError87370C0_unk91

	def_text_script TextScriptCommError87370C0_unk92
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Communication error!\n"
	.string "Battle cancelled."
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk93
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_msg_open
	.string "Communication error!\n"
	.string "Battle cancelled!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk94
	ts_mugshot_show [
		mugshot: 0x49,
	]
	ts_msg_open
	.string "Communication error!\n"
	.string "Battle cancelled."
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk95
	ts_mugshot_show [
		mugshot: 0x4B,
	]
	ts_msg_open
	.string "Communication error!\n"
	.string "Battle cancelled!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk96
	ts_mugshot_show [
		mugshot: 0x50,
	]
	ts_msg_open
	.string "Communication error!\n"
	.string "Battle cancelled!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk97
	ts_mugshot_show [
		mugshot: 0x4F,
	]
	ts_msg_open
	.string "Communication error!\n"
	.string "Battle cancelled!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk98
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_msg_open
	.string "Communication error!\n"
	.string "Battle cancelled!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk99
	ts_mugshot_show [
		mugshot: 0x4A,
	]
	ts_msg_open
	.string "Communication error!\n"
	.string "Battle cancelled."
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk100
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	ts_msg_open
	.string "Communication error!\n"
	.string "Battle cancelled!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk101
	ts_mugshot_show [
		mugshot: 0x4D,
	]
	ts_msg_open
	.string "Communication error!\n"
	.string "Battle cancelled!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk102
	ts_mugshot_show [
		mugshot: 0x4E,
	]
	ts_msg_open
	.string "Communication error!\n"
	.string "Battle cancelled!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk103
	ts_mugshot_show [
		mugshot: 0x3B,
	]
	ts_msg_open
	.string "Communication error!\n"
	.string "Battle cancelled!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk104

	def_text_script TextScriptCommError87370C0_unk105

	def_text_script TextScriptCommError87370C0_unk106

	def_text_script TextScriptCommError87370C0_unk107

	def_text_script TextScriptCommError87370C0_unk108

	def_text_script TextScriptCommError87370C0_unk109

	def_text_script TextScriptCommError87370C0_unk110

	def_text_script TextScriptCommError87370C0_unk111

	def_text_script TextScriptCommError87370C0_unk112

	def_text_script TextScriptCommError87370C0_unk113

	def_text_script TextScriptCommError87370C0_unk114

	def_text_script TextScriptCommError87370C0_unk115
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "The Chip Gate\n"
	.string "didn't work!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk116
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_msg_open
	.string "The Chip Gate\n"
	.string "didn't work!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk117
	ts_mugshot_show [
		mugshot: 0x49,
	]
	ts_msg_open
	.string "The Chip Gate\n"
	.string "didn't work!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk118
	ts_mugshot_show [
		mugshot: 0x4B,
	]
	ts_msg_open
	.string "The Chip Gate\n"
	.string "didn't work!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk119
	ts_mugshot_show [
		mugshot: 0x50,
	]
	ts_msg_open
	.string "The Chip Gate\n"
	.string "didn't work!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk120
	ts_mugshot_show [
		mugshot: 0x4F,
	]
	ts_msg_open
	.string "The Chip Gate\n"
	.string "didn't work!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk121
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_msg_open
	.string "The Chip Gate\n"
	.string "didn't work,drip!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk122
	ts_mugshot_show [
		mugshot: 0x4A,
	]
	ts_msg_open
	.string "The Chip Gate\n"
	.string "didn't work!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk123
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	ts_msg_open
	.string "The Chip Gate\n"
	.string "didn't work!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk124
	ts_mugshot_show [
		mugshot: 0x4D,
	]
	ts_msg_open
	.string "The Chip Gate\n"
	.string "didn't work!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk125
	ts_mugshot_show [
		mugshot: 0x4E,
	]
	ts_msg_open
	.string "The Chip Gate\n"
	.string "didn't work!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk126
	ts_mugshot_show [
		mugshot: 0x3B,
	]
	ts_msg_open
	.string "The Chip Gate\n"
	.string "didn't work!"
	ts_key_wait [
		any: 0x0,
	]
	.string "@4"

	def_text_script TextScriptCommError87370C0_unk127

	def_text_script TextScriptCommError87370C0_unk128

	def_text_script TextScriptCommError87370C0_unk129

	def_text_script TextScriptCommError87370C0_unk130

	def_text_script TextScriptCommError87370C0_unk131

	def_text_script TextScriptCommError87370C0_unk132

	def_text_script TextScriptCommError87370C0_unk133

	def_text_script TextScriptCommError87370C0_unk134

	def_text_script TextScriptCommError87370C0_unk135

	def_text_script TextScriptCommError87370C0_unk136

	def_text_script TextScriptCommError87370C0_unk137

	.balign 4, 0
