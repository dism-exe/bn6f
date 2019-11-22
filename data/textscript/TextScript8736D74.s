TextScript8736D74::
	text_archive_start

	def_text_script TextScript8736D74_unk0
	ts_end

	def_text_script TextScript8736D74_unk1
	.string "BugFrags@"

	def_text_script TextScript8736D74_unk2

	def_text_script TextScript8736D74_unk3

	def_text_script TextScript8736D74_unk4

	def_text_script TextScript8736D74_unk5
	ts_clear_msg
	.string " ブ [z]@"

	def_text_script TextScript8736D74_unk6
	ts_clear_msg
	.string " ヂ@"

	def_text_script TextScript8736D74_unk7
	.string "      HP+@"

	def_text_script TextScript8736D74_unk8
	.string "     HP+@"

	def_text_script TextScript8736D74_unk9
	.string "    HP+@"

	def_text_script TextScript8736D74_unk10
	.string "    HP MAX@"

	def_text_script TextScript8736D74_unk11
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "The attack...\n"
	.string "It didn't work..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script TextScript8736D74_unk12
	ts_mugshot_show [
		mugshot: 0x36,
	]
	ts_msg_open
	.string "There is no way you\n"
	.string "can hurt me with\n"
	.string "your puny attacks!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's end this game!\n"
	.string "C'mon! Show me what\n"
	.string "you've got!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScript8736D74_unk13
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Yahhhhhhhh!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 14,
	]

	def_text_script TextScript8736D74_unk14
	ts_mugshot_hide
	ts_msg_open
	.string "That's enough,Zap!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script TextScript8736D74_unk15
	ts_mugshot_show [
		mugshot: 0x36,
	]
	ts_msg_open
	.string "What was that!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScript8736D74_unk16
	ts_mugshot_show [
		mugshot: 0x36,
	]
	ts_msg_open
	.string "Gwwwahhhh!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScript8736D74_unk17
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "You...You...!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScript8736D74_unk18

	def_text_script TextScript8736D74_unk19

	def_text_script TextScript8736D74_unk20

	def_text_script TextScript8736D74_unk21
	ts_mugshot_show [
		mugshot: 0x36,
	]
	ts_msg_open
	.string "Gwwaaahhhh!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You can never\n"
	.string "stop me!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Waaaaaaaaahh!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScript8736D74_unk22
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "He's still got\n"
	.string "some fight left!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 23,
	]

	def_text_script TextScript8736D74_unk23
	ts_mugshot_show [
		mugshot: 0x36,
	]
	ts_msg_open
	.string "Gwwahhhhhh!!\n"
	.string "I'll never lose!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 24,
	]

	def_text_script TextScript8736D74_unk24
	ts_mugshot_hide
	ts_msg_open
	.string "MegaMan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScript8736D74_unk25
	ts_mugshot_show [
		mugshot: 0x34,
	]
	ts_msg_open
	.string "MegaMan,let's do\n"
	.string "this together!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 26,
	]

	def_text_script TextScript8736D74_unk26
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "OK!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScript8736D74_unk27
	ts_mugshot_show [
		mugshot: 0x36,
	]
	ts_msg_open
	.string "Grrrrrrrghh!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScript8736D74_unk28

	def_text_script TextScript8736D74_unk29

	def_text_script TextScript8736D74_unk30
	ts_mugshot_show [
		mugshot: 0x55,
	]
	ts_msg_open
	.string "MegaMan,thou must\n"
	.string "not move."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScript8736D74_unk31
	ts_mugshot_show [
		mugshot: 0x55,
	]
	ts_msg_open
	.string "MegaMan,thou must\n"
	.string "not use a Battle\n"
	.string "Chip."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScript8736D74_unk32
	ts_mugshot_show [
		mugshot: 0x55,
	]
	ts_msg_open
	.string "MegaMan,thou must\n"
	.string "not AreaGrab."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script TextScript8736D74_unk33

	def_text_script TextScript8736D74_unk34

	def_text_script TextScript8736D74_unk35

	def_text_script TextScript8736D74_unk36

	def_text_script TextScript8736D74_unk37

	def_text_script TextScript8736D74_unk38

	def_text_script TextScript8736D74_unk39

	def_text_script TextScript8736D74_unk40
	ts_mugshot_hide
	ts_msg_open
	.string "Fight with this set?\n"
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
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script TextScript8736D74_unk41
	.string "--------@  "

	.balign 4, 0
