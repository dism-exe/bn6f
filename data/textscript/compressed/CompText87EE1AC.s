	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87EE1AC::
	.word 0x26C00

	text_archive_start

	def_text_script CompText87EE1AC_unk0
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87EE1AC_unk11_id,
	]
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText87EE1AC_unk11_id,
		jumpIfElecMan: CompText87EE1AC_unk11_id,
		jumpIfSlashMan: CompText87EE1AC_unk11_id,
		jumpIfEraseMan: CompText87EE1AC_unk11_id,
		jumpIfChargeMan: CompText87EE1AC_unk11_id,
		jumpIfSpoutMan: CompText87EE1AC_unk11_id,
		jumpIfTomahawkMan: CompText87EE1AC_unk11_id,
		jumpIfTenguMan: CompText87EE1AC_unk11_id,
		jumpIfGroundMan: CompText87EE1AC_unk11_id,
		jumpIfDustMan: CompText87EE1AC_unk11_id,
		jumpIfProtoMan: CompText87EE1AC_unk11_id,
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
	ts_mugshot_show mugshot=0x37
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "It looks like\n"
	.string "there's a new\n"
	.string "post!"
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87EE1AC_unk1
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87EE1AC_unk12_id,
	]
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText87EE1AC_unk12_id,
		jumpIfElecMan: CompText87EE1AC_unk12_id,
		jumpIfSlashMan: CompText87EE1AC_unk12_id,
		jumpIfEraseMan: CompText87EE1AC_unk12_id,
		jumpIfChargeMan: CompText87EE1AC_unk12_id,
		jumpIfSpoutMan: CompText87EE1AC_unk12_id,
		jumpIfTomahawkMan: CompText87EE1AC_unk12_id,
		jumpIfTenguMan: CompText87EE1AC_unk12_id,
		jumpIfGroundMan: CompText87EE1AC_unk12_id,
		jumpIfDustMan: CompText87EE1AC_unk12_id,
		jumpIfProtoMan: CompText87EE1AC_unk12_id,
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
	ts_mugshot_show mugshot=0x37
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "There isn't\n"
	.string "even a single\n"
	.string "post."
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87EE1AC_unk2
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
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "There seems to\n"
	.string "be a new post."
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87EE1AC_unk3
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
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "There isn't\n"
	.string "even a single\n"
	.string "post."
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87EE1AC_unk4
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
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "Looks to me\n"
	.string "like there's a\n"
	.string "new post."
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87EE1AC_unk5
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
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "There isn't\n"
	.string "even a single\n"
	.string "post here."
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87EE1AC_unk6
	.string "EndlsSmmrBBS@"

	def_text_script CompText87EE1AC_unk7
	.string "GreenBBS    @"

	def_text_script CompText87EE1AC_unk8
	.string "BlueSkyBBS  @"

	def_text_script CompText87EE1AC_unk9
	.string "OasisBBS    @"

	def_text_script CompText87EE1AC_unk10
	.string "UnderBBS    @"

	def_text_script CompText87EE1AC_unk11
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
	ts_mugshot_show mugshot=0x0
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "Looks like\n"
	.string "there's a\n"
	.string "new post!"
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	def_text_script CompText87EE1AC_unk12
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
	ts_mugshot_show mugshot=0x0
	ts_position_box [
		left: 0x0,
		top: 0x6,
		type: 0x0,
	]
	ts_msg_open
	.string "Awww... There's\n"
	.string "not even a\n"
	.string "single post."
	ts_key_wait any=0x0
	ts_wait_hold unused=0x0

	