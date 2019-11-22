	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875B4B0::
	.word 0x62E00

	text_archive_start

	def_text_script CompText875B4B0_unk0
	ts_msg_open
	.string "This book has a\n"
	.string "computer built in."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It processes various\n"
	.string "paperwork for\n"
	.string "trials."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875B4B0_unk1
	ts_msg_open
	.string "All the flowers here\n"
	.string "are beautiful,so it\n"
	.string "is hard to say"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "one is better than\n"
	.string "any other."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875B4B0_unk2
	ts_msg_open
	.string "It's the symbol of\n"
	.string "Green Town."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The founding idea of\n"
	.string "this town,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"Punishment for\n"
	.string " crime,justice for\n"
	.string " the people,\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "is written on the\n"
	.string "pedestal."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This saying is\n"
	.string "modeled after the\n"
	.string "way plants take in"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "carbon dioxide and\n"
	.string "release oxygen into\n"
	.string "the air."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's sort of like"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"breathe in crime,\n"
	.string " breathe out\n"
	.string " justice.\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You can jack in!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875B4B0_unk3
	ts_msg_open
	.string "Sitting on this\n"
	.string "chair the day after\n"
	.string "it rains will make"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "your butt wet,so\n"
	.string "please watch out."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875B4B0_unk4
	ts_msg_open
	.string "There are law books\n"
	.string "sitting on top of\n"
	.string "this table..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But they're written\n"
	.string "as interesting and\n"
	.string "easy to read comics!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875B4B0_unk5
	ts_msg_open
	.string "There are flowers\n"
	.string "lining the open\n"
	.string "space here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Be careful not to\n"
	.string "get stung by the\n"
	.string "bees flying about!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875B4B0_unk6
	ts_msg_open
	.string "Circular chairs made\n"
	.string "to look like tree\n"
	.string "stumps."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875B4B0_unk7
	ts_msg_open
	.string "Beautiful lotus\n"
	.string "flowers in the pond."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They have a\n"
	.string "mysterious aura to\n"
	.string "them."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875B4B0_unk8

	def_text_script CompText875B4B0_unk9

	def_text_script CompText875B4B0_unk10

	def_text_script CompText875B4B0_unk11

	def_text_script CompText875B4B0_unk12

	def_text_script CompText875B4B0_unk13

	def_text_script CompText875B4B0_unk14

	def_text_script CompText875B4B0_unk15

	def_text_script CompText875B4B0_unk16

	def_text_script CompText875B4B0_unk17

	def_text_script CompText875B4B0_unk18

	def_text_script CompText875B4B0_unk19

	def_text_script CompText875B4B0_unk20
	ts_check_flag [
		flag: 0x163,
		jumpIfTrue: 0x0,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x11F,
		jumpIfTrue: 0x1B,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x85F,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x18,
	]
	ts_check_flag [
		flag: 0x862,
		jumpIfTrue: 0x15,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x862,
	]
	ts_jump [
		target: 22,
	]

	def_text_script CompText875B4B0_unk21
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x19,
	]
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x17,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Operate SlashMan\n"
	.string "through this book?"
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
	.string " No\n"
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_end

	def_text_script CompText875B4B0_unk22
	ts_flag_set [
		flag: 0x861,
	]
	ts_end

	def_text_script CompText875B4B0_unk23
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Operate TenguMan\n"
	.string "through this book?"
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
	.string " No\n"
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_end

	def_text_script CompText875B4B0_unk24
	ts_check_flag [
		flag: 0x120,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x0,
	]
	ts_check_flag [
		flag: 0x860,
		jumpIfTrue: 0x15,
		jumpIfFalse: 0xFF,
	]
	ts_jump [
		target: 0,
	]

	def_text_script CompText875B4B0_unk25
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x1A,
	]
	ts_mugshot_show [
		mugshot: 0x4B,
	]
	ts_msg_open
	.string "...... So,you here\n"
	.string "to operate me?"
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
	.string " No\n"
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_end

	def_text_script CompText875B4B0_unk26
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	ts_msg_open
	.string "Ah,if it isn't Lan\n"
	.string "Hikari... Did you\n"
	.string "come to operate me?"
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
	.string " No\n"
	ts_select 0x6, 0x80, 0x16, 0xFF, 0xFF
	ts_end

	def_text_script CompText875B4B0_unk27
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x1C,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "What are you doing,\n"
	.string "Lan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ms.Fahran's final\n"
	.string "exam is waiting!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875B4B0_unk28
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "What are you doing,\n"
	.string "Lan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Master Feng-Tian's\n"
	.string "final exam is\n"
	.string "waiting!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875B4B0_unk29

	