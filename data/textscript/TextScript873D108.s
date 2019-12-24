TextScript873D108::
	text_archive_start

	def_text_script TextScript873D108_unk0
	ts_msg_open
	ts_print_current_navi_ow
	.string " accessed\n"
	.string "the mystery data.\n"
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script TextScript873D108_unk1
	ts_jump target=0

	def_text_script TextScript873D108_unk2
	ts_jump_buffer_set target=7
	ts_check_flag [
		flag: 0x1708,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0x5,
	]
	ts_end

	def_text_script TextScript873D108_unk3
	ts_jump target=2

	def_text_script TextScript873D108_unk4
	ts_jump target=0

	def_text_script TextScript873D108_unk5
	ts_msg_open
	.string "It's locked!\n"
	.string "You need \""
	ts_print_item [
		item: 0x85,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "to open it!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_check_item07 [
		item: 0x85,
		amount: 0x1,
		jumpIfEqual: 0xFF,
		jumpIfGreater: 0xFF,
		jumpIfLess: 0x9,
	]
	.string "You want to use\n"
	.string "\""
	ts_print_item [
		item: 0x85,
		buffer: 0x0,
	]
	.string "\"?\n"
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
	ts_select 0x6, 0x0, 0xFF, 0x9, 0xFF
	ts_clear_msg
	ts_item_take [
		item: 0x85,
		amount: 0x1,
	]
	ts_jump_buffer

	def_text_script TextScript873D108_unk6

	def_text_script TextScript873D108_unk7
	ts_flag_set_buffered buffer=0x0
	ts_item_give_chip [
		chip: 0xFFFF,
		code: 0xFF,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x0,
		buffer: 0x3,
	]
	.string " "
	ts_print_code [
		code: 0x0,
		buffer: 0x4,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_end

	def_text_script TextScript873D108_unk8
	ts_msg_open
	.string "The SubChip\n"
	.string "\""
	ts_print_item [
		item: 0x85,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "was activated!!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump_buffer

	def_text_script TextScript873D108_unk9
	ts_end

	def_text_script TextScript873D108_unk10
	ts_msg_open
	ts_print_current_navi_ow
	.string " accessed\n"
	.string "the mystery data.\n"
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script TextScript873D108_unk11
	ts_jump target=10

	def_text_script TextScript873D108_unk12
	ts_jump_buffer_set target=17
	ts_check_flag [
		flag: 0x1708,
		jumpIfTrue: 0x12,
		jumpIfFalse: 0xF,
	]
	ts_end

	def_text_script TextScript873D108_unk13
	ts_jump target=12

	def_text_script TextScript873D108_unk14
	ts_jump target=10

	def_text_script TextScript873D108_unk15
	ts_jump target=5

	def_text_script TextScript873D108_unk16
	ts_msg_open
	.string "Too many \""
	ts_print_item [
		item: 0x0,
		buffer: 0x3,
	]
	.string ".\"\n"
	.string "Can't take any more."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript873D108_unk17
	ts_check_give_item [
		item: 0xFF,
		amount: 0x1,
		jumpIfAll: 0xFF,
		jumpIfNone: 0x10,
		jumpIfSome: 0x10,
	]
	ts_flag_set_buffered buffer=0x0
	ts_player_animate_object animation=0x18
	ts_print_current_navi_ow
	.string " got a\n"
	.string "SubChip:\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x3,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_end

	def_text_script TextScript873D108_unk18
	ts_jump target=8

	def_text_script TextScript873D108_unk19
	ts_end

	def_text_script TextScript873D108_unk20
	ts_msg_open
	ts_print_current_navi_ow
	.string " accessed\n"
	.string "the mystery data.\n"
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=27

	def_text_script TextScript873D108_unk21
	ts_jump target=20

	def_text_script TextScript873D108_unk22
	ts_jump_buffer_set target=27
	ts_check_flag [
		flag: 0x1708,
		jumpIfTrue: 0x1C,
		jumpIfFalse: 0x19,
	]
	ts_end

	def_text_script TextScript873D108_unk23
	ts_jump target=22

	def_text_script TextScript873D108_unk24
	ts_jump target=20

	def_text_script TextScript873D108_unk25
	ts_jump target=5

	def_text_script TextScript873D108_unk26

	def_text_script TextScript873D108_unk27
	ts_flag_set_buffered buffer=0x0
	ts_check_give_zenny [
		amount: 0xFFFFFFFF,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xFF,
		jumpIfSome: 0xFF,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_buffer03 [
		minLength: 0x0,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x3,
	]
	.string " Zennys\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_end

	def_text_script TextScript873D108_unk28
	ts_jump target=8

	def_text_script TextScript873D108_unk29
	ts_end

	def_text_script TextScript873D108_unk30
	ts_msg_open
	ts_print_current_navi_ow
	.string " accessed\n"
	.string "the mystery data.\n"
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=37

	def_text_script TextScript873D108_unk31
	ts_jump target=30

	def_text_script TextScript873D108_unk32
	ts_jump_buffer_set target=37
	ts_check_flag [
		flag: 0x1708,
		jumpIfTrue: 0x26,
		jumpIfFalse: 0x23,
	]
	ts_end

	def_text_script TextScript873D108_unk33
	ts_jump target=32

	def_text_script TextScript873D108_unk34
	ts_jump target=30

	def_text_script TextScript873D108_unk35
	ts_jump target=5

	def_text_script TextScript873D108_unk36

	def_text_script TextScript873D108_unk37
	ts_flag_set_buffered buffer=0x0
	ts_item_give [
		item: 0xFF,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x3,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_end

	def_text_script TextScript873D108_unk38
	ts_jump target=8

	def_text_script TextScript873D108_unk39
	ts_end

	def_text_script TextScript873D108_unk40
	ts_msg_open
	ts_print_current_navi_ow
	.string " accessed\n"
	.string "the mystery data.\n"
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=47

	def_text_script TextScript873D108_unk41
	ts_jump target=40

	def_text_script TextScript873D108_unk42
	ts_jump_buffer_set target=47
	ts_check_flag [
		flag: 0x1708,
		jumpIfTrue: 0x30,
		jumpIfFalse: 0x2D,
	]
	ts_end

	def_text_script TextScript873D108_unk43
	ts_jump target=42

	def_text_script TextScript873D108_unk44
	ts_jump target=40

	def_text_script TextScript873D108_unk45
	ts_jump target=5

	def_text_script TextScript873D108_unk46

	def_text_script TextScript873D108_unk47
	ts_check_give_bug_frags [
		amount: 0xFFFFFFFF,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xFF,
		jumpIfSome: 0xFF,
	]
	ts_flag_set_buffered buffer=0x0
	ts_player_animate_object animation=0x18
	ts_print_current_navi_ow
	.string " got:\n"
	ts_print_buffer03 [
		minLength: 0x0,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x3,
	]
	.string " BugFrags!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_end

	def_text_script TextScript873D108_unk48
	ts_jump target=8

	def_text_script TextScript873D108_unk49
	ts_end

	def_text_script TextScript873D108_unk50
	ts_jump target=7

	def_text_script TextScript873D108_unk51
	ts_jump target=0

	def_text_script TextScript873D108_unk52
	ts_jump target=2

	def_text_script TextScript873D108_unk53
	ts_jump target=2

	def_text_script TextScript873D108_unk54
	ts_msg_open
	ts_print_current_navi_ow
	.string " accessed\n"
	.string "the mystery data.\n"
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	ts_key_wait any=0x0
	ts_clear_msg
	ts_check_flag [
		flag: 0x1709,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x39,
	]
	.string "The SubChip\n"
	.string "\""
	ts_print_item [
		item: 0x83,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "was activated!!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The virus hidden\n"
	.string "in the mystery data\n"
	.string "was deleted!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script TextScript873D108_unk55
	ts_jump target=5

	def_text_script TextScript873D108_unk56

	def_text_script TextScript873D108_unk57
	ts_flag_set_buffered buffer=0x0
	.string "The mystery data was\n"
	.string "a virus!"
	ts_key_wait any=0x0
	ts_start_random_battle
	ts_end

	def_text_script TextScript873D108_unk58
	ts_jump target=8

	def_text_script TextScript873D108_unk59
	ts_end

	def_text_script TextScript873D108_unk60
	ts_jump target=27

	def_text_script TextScript873D108_unk61
	ts_jump target=20

	def_text_script TextScript873D108_unk62
	ts_jump target=22

	def_text_script TextScript873D108_unk63
	ts_jump target=22

	def_text_script TextScript873D108_unk64
	ts_msg_open
	ts_print_current_navi_ow
	.string " accessed\n"
	.string "the mystery data.\n"
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	ts_key_wait any=0x0
	ts_clear_msg
	ts_check_flag [
		flag: 0x1709,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x43,
	]
	.string "The SubChip\n"
	.string "\""
	ts_print_item [
		item: 0x83,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "was activated!!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The virus hidden\n"
	.string "in the mystery data\n"
	.string "was deleted!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=27

	def_text_script TextScript873D108_unk65
	ts_jump target=5

	def_text_script TextScript873D108_unk66

	def_text_script TextScript873D108_unk67
	ts_flag_set_buffered buffer=0x0
	.string "The mystery data was\n"
	.string "a virus!"
	ts_key_wait any=0x0
	ts_start_random_battle
	ts_end

	def_text_script TextScript873D108_unk68
	ts_jump target=8

	def_text_script TextScript873D108_unk69
	ts_end

	def_text_script TextScript873D108_unk70
	ts_msg_open
	ts_print_current_navi_ow
	.string " accessed\n"
	.string "the mystery data.\n"
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=77

	def_text_script TextScript873D108_unk71
	ts_jump target=70

	def_text_script TextScript873D108_unk72
	ts_jump_buffer_set target=77
	ts_check_flag [
		flag: 0x1708,
		jumpIfTrue: 0x4E,
		jumpIfFalse: 0x4B,
	]
	ts_end

	def_text_script TextScript873D108_unk73
	ts_jump target=72

	def_text_script TextScript873D108_unk74
	ts_jump target=70

	def_text_script TextScript873D108_unk75
	ts_jump target=5

	def_text_script TextScript873D108_unk76

	def_text_script TextScript873D108_unk77
	ts_flag_set_buffered buffer=0x0
	ts_item_give [
		item: 0xFF,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x3,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_end

	def_text_script TextScript873D108_unk78
	ts_jump target=8

	def_text_script TextScript873D108_unk79
	ts_end

	def_text_script TextScript873D108_unk80
	ts_msg_open
	ts_print_current_navi_ow
	.string " accessed\n"
	.string "the mystery data.\n"
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=87

	def_text_script TextScript873D108_unk81
	ts_jump target=80

	def_text_script TextScript873D108_unk82
	ts_jump_buffer_set target=87
	ts_check_flag [
		flag: 0x1708,
		jumpIfTrue: 0x58,
		jumpIfFalse: 0x55,
	]
	ts_end

	def_text_script TextScript873D108_unk83
	ts_jump target=82

	def_text_script TextScript873D108_unk84
	ts_jump target=80

	def_text_script TextScript873D108_unk85
	ts_jump target=5

	def_text_script TextScript873D108_unk86

	def_text_script TextScript873D108_unk87
	ts_flag_set_buffered buffer=0x0
	ts_item_give_navi_cust_program [
		program: 0xFF,
		amount: 0x1,
		color: 0xFF,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_navi_cust_program5 [
		program: 0x0,
		buffer: 0x3,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_end

	def_text_script TextScript873D108_unk88
	ts_jump target=8

	def_text_script TextScript873D108_unk89
	ts_end

	def_text_script TextScript873D108_unk90
	ts_msg_open
	ts_print_current_navi_ow
	.string " accessed\n"
	.string "the mystery data.\n"
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=97

	def_text_script TextScript873D108_unk91
	ts_jump target=90

	def_text_script TextScript873D108_unk92
	ts_jump_buffer_set target=97
	ts_check_flag [
		flag: 0x1708,
		jumpIfTrue: 0x62,
		jumpIfFalse: 0x5F,
	]
	ts_end

	def_text_script TextScript873D108_unk93
	ts_jump target=92

	def_text_script TextScript873D108_unk94
	ts_jump target=90

	def_text_script TextScript873D108_unk95
	ts_jump target=5

	def_text_script TextScript873D108_unk96

	def_text_script TextScript873D108_unk97
	ts_flag_set_buffered buffer=0x0
	ts_item_give [
		item: 0xFF,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x3,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	.string "Regular memory\n"
	.string "increased by\n"
	ts_print_buffer03 [
		minLength: 0x0,
		padZeros: 0x0,
		padLeft: 0x1,
		buffer: 0x1,
	]
	.string "MB!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript873D108_unk98
	ts_jump target=8

	def_text_script TextScript873D108_unk99
	ts_end

	def_text_script TextScript873D108_unk100
	ts_msg_open
	ts_print_current_navi_ow
	.string " accessed\n"
	.string "the mystery data.\n"
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=107

	def_text_script TextScript873D108_unk101
	ts_jump target=100

	def_text_script TextScript873D108_unk102
	ts_jump_buffer_set target=107
	ts_check_flag [
		flag: 0x1708,
		jumpIfTrue: 0x6C,
		jumpIfFalse: 0x69,
	]
	ts_end

	def_text_script TextScript873D108_unk103
	ts_jump target=102

	def_text_script TextScript873D108_unk104
	ts_jump target=100

	def_text_script TextScript873D108_unk105
	ts_jump target=5

	def_text_script TextScript873D108_unk106

	def_text_script TextScript873D108_unk107
	ts_flag_set_buffered buffer=0x0
	ts_item_give [
		item: 0xFF,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x3,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	.string "Number of SubChips\n"
	.string "you can carry has\n"
	.string "been increased."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript873D108_unk108
	ts_jump target=8

	def_text_script TextScript873D108_unk109
	ts_end

	def_text_script TextScript873D108_unk110
	ts_msg_open
	ts_print_current_navi_ow
	.string " accessed\n"
	.string "the mystery data.\n"
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	.string "."
	ts_wait frames=0xA
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=117

	def_text_script TextScript873D108_unk111
	ts_jump target=110

	def_text_script TextScript873D108_unk112
	ts_jump_buffer_set target=117
	ts_check_flag [
		flag: 0x1708,
		jumpIfTrue: 0x76,
		jumpIfFalse: 0x73,
	]
	ts_end

	def_text_script TextScript873D108_unk113
	ts_jump target=112

	def_text_script TextScript873D108_unk114
	ts_jump target=110

	def_text_script TextScript873D108_unk115
	ts_jump target=5

	def_text_script TextScript873D108_unk116

	def_text_script TextScript873D108_unk117
	ts_flag_set_buffered buffer=0x0
	ts_item_give [
		item: 0xFF,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x0,
		buffer: 0x3,
	]
	.string "\"!!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	.string "The NaviCust\n"
	.string "Memory Map has\n"
	.string "become wider!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript873D108_unk118
	ts_jump target=8

	def_text_script TextScript873D108_unk119
	ts_end

	def_text_script TextScript873D108_unk120
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0xFF,
		jumpIfElecMan: 0xFF,
		jumpIfSlashMan: 0xFF,
		jumpIfEraseMan: 0xFF,
		jumpIfChargeMan: 0xFF,
		jumpIfSpoutMan: 0xFF,
		jumpIfTomahawkMan: 0xFF,
		jumpIfTenguMan: 0xFF,
		jumpIfGroundMan: 0xFF,
		jumpIfDustMan: 0xFF,
		jumpIfProtoMan: 0x79,
	]
	ts_msg_open
	ts_print_current_navi_ow
	.string " has no use\n"
	.string "for this item..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript873D108_unk121
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "ProtoMan doesn't\n"
	.string "need this, so I'll\n"
	.string "take care of it."
	ts_key_wait any=0x0
	.string "@ "

	.balign 4, 0
