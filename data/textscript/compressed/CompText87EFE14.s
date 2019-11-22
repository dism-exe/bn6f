	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87EFE14::
	.word 0x42E00

	text_archive_start

	def_text_script CompText87EFE14_unk0
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x14,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x14,
		jumpIfElecMan: 0x14,
		jumpIfSlashMan: 0x14,
		jumpIfEraseMan: 0x14,
		jumpIfChargeMan: 0x14,
		jumpIfSpoutMan: 0x14,
		jumpIfTomahawkMan: 0x14,
		jumpIfTenguMan: 0x14,
		jumpIfGroundMan: 0x14,
		jumpIfDustMan: 0x14,
		jumpIfProtoMan: 0x14,
	]
	ts_position_text [
		left: 0x33,
		top: 0x3C,
		arrowDistance: 0x3,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x50,
	]
	ts_position_arrow [
		left: 0xCA,
		top: 0x64,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "It looks like\n"
	.string "there's a new\n"
	.string "post!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87EFE14_unk1
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x15,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x15,
		jumpIfElecMan: 0x15,
		jumpIfSlashMan: 0x15,
		jumpIfEraseMan: 0x15,
		jumpIfChargeMan: 0x15,
		jumpIfSpoutMan: 0x15,
		jumpIfTomahawkMan: 0x15,
		jumpIfTenguMan: 0x15,
		jumpIfGroundMan: 0x15,
		jumpIfDustMan: 0x15,
		jumpIfProtoMan: 0x15,
	]
	ts_position_text [
		left: 0x33,
		top: 0x3C,
		arrowDistance: 0x3,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x50,
	]
	ts_position_arrow [
		left: 0xCA,
		top: 0x64,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "There isn't\n"
	.string "even a single\n"
	.string "post."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87EFE14_unk2
	ts_end

	def_text_script CompText87EFE14_unk3

	def_text_script CompText87EFE14_unk4

	def_text_script CompText87EFE14_unk5

	def_text_script CompText87EFE14_unk6
	ts_check_flag [
		flag: 0x173A,
		jumpIfTrue: 0x7,
		jumpIfFalse: 0xFF,
	]
	ts_position_text [
		left: 0x30,
		top: 0x44,
		arrowDistance: 0x3,
	]
	ts_position_arrow [
		left: 0xBA,
		top: 0x6C,
	]
	ts_text_speed [
		delay: 0x0,
	]
	.string "Point:"
	ts_print_buffer03 [
		minLength: 0x2,
		padZeros: 0x0,
		padLeft: 0x1,
		buffer: 0x1,
	]
	.string "/"
	ts_print_buffer03 [
		minLength: 0x2,
		padZeros: 0x0,
		padLeft: 0x1,
		buffer: 0x3,
	]
	.string "\n"
	.string "No Open Requests"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87EFE14_unk7
	ts_position_text [
		left: 0x30,
		top: 0x44,
		arrowDistance: 0x3,
	]
	ts_position_arrow [
		left: 0xBA,
		top: 0x6C,
	]
	ts_text_speed [
		delay: 0x0,
	]
	.string "Point:"
	ts_print_buffer03 [
		minLength: 0x2,
		padZeros: 0x0,
		padLeft: 0x1,
		buffer: 0x1,
	]
	.string "/"
	ts_print_buffer03 [
		minLength: 0x2,
		padZeros: 0x0,
		padLeft: 0x1,
		buffer: 0x3,
	]
	.string "\n"
	.string "Current Request:\n"
	.string "\""
	ts_print_request [
		request: 0x0,
		buffer: 0x2,
	]
	.string "\""
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87EFE14_unk8
	.string "Rank:C Rank@"

	def_text_script CompText87EFE14_unk9
	.string "Rank:B Rank@"

	def_text_script CompText87EFE14_unk10
	.string "Rank:A Rank@"

	def_text_script CompText87EFE14_unk11
	.string "Rank:S Rank@"

	def_text_script CompText87EFE14_unk12
	.string "Rank:Master@"

	def_text_script CompText87EFE14_unk13
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x16,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x16,
		jumpIfElecMan: 0x16,
		jumpIfSlashMan: 0x16,
		jumpIfEraseMan: 0x16,
		jumpIfChargeMan: 0x16,
		jumpIfSpoutMan: 0x16,
		jumpIfTomahawkMan: 0x16,
		jumpIfTenguMan: 0x16,
		jumpIfGroundMan: 0x16,
		jumpIfDustMan: 0x16,
		jumpIfProtoMan: 0x16,
	]
	ts_position_text [
		left: 0x33,
		top: 0x3C,
		arrowDistance: 0x3,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x50,
	]
	ts_position_arrow [
		left: 0xCA,
		top: 0x64,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "Let's take this\n"
	.string "request!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87EFE14_unk14
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x17,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x17,
		jumpIfElecMan: 0x17,
		jumpIfSlashMan: 0x17,
		jumpIfEraseMan: 0x17,
		jumpIfChargeMan: 0x17,
		jumpIfSpoutMan: 0x17,
		jumpIfTomahawkMan: 0x17,
		jumpIfTenguMan: 0x17,
		jumpIfGroundMan: 0x17,
		jumpIfDustMan: 0x17,
		jumpIfProtoMan: 0x17,
	]
	ts_position_text [
		left: 0x33,
		top: 0x3C,
		arrowDistance: 0x3,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x50,
	]
	ts_position_arrow [
		left: 0xCA,
		top: 0x64,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "This request is\n"
	.string "already finished!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87EFE14_unk15
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x16,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x16,
		jumpIfElecMan: 0x16,
		jumpIfSlashMan: 0x16,
		jumpIfEraseMan: 0x16,
		jumpIfChargeMan: 0x16,
		jumpIfSpoutMan: 0x16,
		jumpIfTomahawkMan: 0x16,
		jumpIfTenguMan: 0x16,
		jumpIfGroundMan: 0x16,
		jumpIfDustMan: 0x16,
		jumpIfProtoMan: 0x16,
	]
	ts_position_text [
		left: 0x33,
		top: 0x3C,
		arrowDistance: 0x3,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x50,
	]
	ts_position_arrow [
		left: 0xCA,
		top: 0x64,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "You can only pick\n"
	.string "one request at a\n"
	.string "time."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87EFE14_unk16
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x16,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x16,
		jumpIfElecMan: 0x16,
		jumpIfSlashMan: 0x16,
		jumpIfEraseMan: 0x16,
		jumpIfChargeMan: 0x16,
		jumpIfSpoutMan: 0x16,
		jumpIfTomahawkMan: 0x16,
		jumpIfTenguMan: 0x16,
		jumpIfGroundMan: 0x16,
		jumpIfDustMan: 0x16,
		jumpIfProtoMan: 0x16,
	]
	ts_position_text [
		left: 0x33,
		top: 0x3C,
		arrowDistance: 0x3,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x50,
	]
	ts_position_arrow [
		left: 0xCA,
		top: 0x64,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "You can't take that\n"
	.string "request with your\n"
	.string "current rank!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87EFE14_unk17
	ts_position_text [
		left: 0x18,
		top: 0x44,
		arrowDistance: 0x3,
	]
	ts_position_arrow [
		left: 0xCA,
		top: 0x6C,
	]
	.string "Take this request?\n"
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

	def_text_script CompText87EFE14_unk18
	.string "RqustBBS@"

	def_text_script CompText87EFE14_unk19

	def_text_script CompText87EFE14_unk20
	ts_position_text [
		left: 0x33,
		top: 0x3C,
		arrowDistance: 0x3,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x50,
	]
	ts_position_arrow [
		left: 0xCA,
		top: 0x64,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "Looks like\n"
	.string "there's a\n"
	.string "new post!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87EFE14_unk21
	ts_position_text [
		left: 0x33,
		top: 0x3C,
		arrowDistance: 0x3,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x50,
	]
	ts_position_arrow [
		left: 0xCA,
		top: 0x64,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "Awww... There's\n"
	.string "not even a\n"
	.string "single post."
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87EFE14_unk22
	ts_position_text [
		left: 0x33,
		top: 0x3C,
		arrowDistance: 0x3,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x50,
	]
	ts_position_arrow [
		left: 0xCA,
		top: 0x64,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "I can't take a\n"
	.string "request when\n"
	.string "MegaMan's not here!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	def_text_script CompText87EFE14_unk23
	ts_position_text [
		left: 0x33,
		top: 0x3C,
		arrowDistance: 0x3,
	]
	ts_position_mugshot [
		left: 0x19,
		top: 0x50,
	]
	ts_position_arrow [
		left: 0xCA,
		top: 0x64,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "This request is\n"
	.string "already finished!"
	ts_key_wait [
		any: 0x0,
	]
	ts_wait_hold [
		unused: 0x0,
	]

	