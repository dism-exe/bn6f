	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText873C0D8::
	.word 0xF1E00

	text_archive_start

	def_text_script CompText873C0D8_unk0
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x3C,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x3C,
		jumpIfElecMan: 0x3C,
		jumpIfSlashMan: 0x3C,
		jumpIfEraseMan: 0x3C,
		jumpIfChargeMan: 0x3C,
		jumpIfSpoutMan: 0x3C,
		jumpIfTomahawkMan: 0x3C,
		jumpIfTenguMan: 0x3C,
		jumpIfGroundMan: 0x3C,
		jumpIfDustMan: 0x3C,
		jumpIfProtoMan: 0x3C,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Ahh!\n"
	.string "The LevBus is here!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873C0D8_unk1
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x3D,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x3D,
		jumpIfElecMan: 0x3D,
		jumpIfSlashMan: 0x3D,
		jumpIfEraseMan: 0x3D,
		jumpIfChargeMan: 0x3D,
		jumpIfSpoutMan: 0x3D,
		jumpIfTomahawkMan: 0x3D,
		jumpIfTenguMan: 0x3D,
		jumpIfGroundMan: 0x3D,
		jumpIfDustMan: 0x3D,
		jumpIfProtoMan: 0x3D,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Ahh!\n"
	.string "The train is here!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873C0D8_unk2

	def_text_script CompText873C0D8_unk3

	def_text_script CompText873C0D8_unk4

	def_text_script CompText873C0D8_unk5

	def_text_script CompText873C0D8_unk6

	def_text_script CompText873C0D8_unk7

	def_text_script CompText873C0D8_unk8

	def_text_script CompText873C0D8_unk9

	def_text_script CompText873C0D8_unk10
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x46,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x46,
		jumpIfElecMan: 0x46,
		jumpIfSlashMan: 0x46,
		jumpIfEraseMan: 0x46,
		jumpIfChargeMan: 0x46,
		jumpIfSpoutMan: 0x46,
		jumpIfTomahawkMan: 0x46,
		jumpIfTenguMan: 0x46,
		jumpIfGroundMan: 0x46,
		jumpIfDustMan: 0x46,
		jumpIfProtoMan: 0x46,
	]
	ts_check_flag [
		flag: 0x37,
		jumpIfTrue: 0xD,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x36,
		jumpIfTrue: 0xC,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x35,
		jumpIfTrue: 0xB,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Want to go to\n"
	.string "Seaside Town?\n"
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
	ts_select 0x6, 0x0, 0xF, 0xFF, 0xFF
	ts_jump target=14

	def_text_script CompText873C0D8_unk11
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Seaside  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Green\n"
	ts_select 0x6, 0x20, 0xF, 0x10, 0xFF
	ts_jump target=14

	def_text_script CompText873C0D8_unk12
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Seaside  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Green\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x2,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Sky"
	ts_select 0x7, 0x20, 0xF, 0x10, 0x11, 0xFF
	ts_jump target=14

	def_text_script CompText873C0D8_unk13
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Seaside  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x3,
		up: 0x3,
	]
	ts_space count=0x1
	.string " Green\n"
	ts_option [
		brackets: 0x0,
		right: 0x3,
		left: 0x3,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Sky     "
	ts_space_px count=0x5
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " ACDC"
	ts_select 0x8, 0x20, 0xF, 0x10, 0x11, 0x12, 0xFF
	ts_jump target=14

	def_text_script CompText873C0D8_unk14
	ts_store_timer [
		timer: 0x0,
		value: 0xFF,
	]
	ts_end

	def_text_script CompText873C0D8_unk15
	ts_store_timer [
		timer: 0x0,
		value: 0x0,
	]
	ts_end

	def_text_script CompText873C0D8_unk16
	ts_store_timer [
		timer: 0x0,
		value: 0x1,
	]
	ts_end

	def_text_script CompText873C0D8_unk17
	ts_store_timer [
		timer: 0x0,
		value: 0x2,
	]
	ts_end

	def_text_script CompText873C0D8_unk18
	ts_store_timer [
		timer: 0x0,
		value: 0x3,
	]
	ts_end

	def_text_script CompText873C0D8_unk19

	def_text_script CompText873C0D8_unk20
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x50,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x50,
		jumpIfElecMan: 0x50,
		jumpIfSlashMan: 0x50,
		jumpIfEraseMan: 0x50,
		jumpIfChargeMan: 0x50,
		jumpIfSpoutMan: 0x50,
		jumpIfTomahawkMan: 0x50,
		jumpIfTenguMan: 0x50,
		jumpIfGroundMan: 0x50,
		jumpIfDustMan: 0x50,
		jumpIfProtoMan: 0x50,
	]
	ts_check_flag [
		flag: 0x37,
		jumpIfTrue: 0x17,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x36,
		jumpIfTrue: 0x16,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x35,
		jumpIfTrue: 0x15,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Want to go to\n"
	.string "Central Town?\n"
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
	ts_select 0x6, 0x0, 0x19, 0xFF, 0xFF
	ts_jump target=24

	def_text_script CompText873C0D8_unk21
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Green\n"
	ts_select 0x6, 0x20, 0x19, 0x1A, 0xFF
	ts_jump target=24

	def_text_script CompText873C0D8_unk22
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Green\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x2,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Sky"
	ts_select 0x7, 0x20, 0x19, 0x1A, 0x1B, 0xFF
	ts_jump target=24

	def_text_script CompText873C0D8_unk23
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x3,
		up: 0x3,
	]
	ts_space count=0x1
	.string " Green\n"
	ts_option [
		brackets: 0x0,
		right: 0x3,
		left: 0x3,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Sky     "
	ts_space_px count=0x5
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " ACDC"
	ts_select 0x8, 0x20, 0x19, 0x1A, 0x1B, 0x1C, 0xFF
	ts_jump target=24

	def_text_script CompText873C0D8_unk24
	ts_store_timer [
		timer: 0x0,
		value: 0xFF,
	]
	ts_end

	def_text_script CompText873C0D8_unk25
	ts_store_timer [
		timer: 0x0,
		value: 0x4,
	]
	ts_end

	def_text_script CompText873C0D8_unk26
	ts_store_timer [
		timer: 0x0,
		value: 0x5,
	]
	ts_end

	def_text_script CompText873C0D8_unk27
	ts_store_timer [
		timer: 0x0,
		value: 0x6,
	]
	ts_end

	def_text_script CompText873C0D8_unk28
	ts_store_timer [
		timer: 0x0,
		value: 0x7,
	]
	ts_end

	def_text_script CompText873C0D8_unk29

	def_text_script CompText873C0D8_unk30
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x5A,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x5A,
		jumpIfElecMan: 0x5A,
		jumpIfSlashMan: 0x5A,
		jumpIfEraseMan: 0x5A,
		jumpIfChargeMan: 0x5A,
		jumpIfSpoutMan: 0x5A,
		jumpIfTomahawkMan: 0x5A,
		jumpIfTenguMan: 0x5A,
		jumpIfGroundMan: 0x5A,
		jumpIfDustMan: 0x5A,
		jumpIfProtoMan: 0x5A,
	]
	ts_check_flag [
		flag: 0x37,
		jumpIfTrue: 0x21,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x36,
		jumpIfTrue: 0x20,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x34,
		jumpIfTrue: 0x1F,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Want to go to\n"
	.string "Central Town?\n"
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
	ts_select 0x6, 0x0, 0x23, 0xFF, 0xFF
	ts_jump target=34

	def_text_script CompText873C0D8_unk31
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_select 0x6, 0x20, 0x23, 0x24, 0xFF
	ts_jump target=34

	def_text_script CompText873C0D8_unk32
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x2,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Sky"
	ts_select 0x7, 0x20, 0x23, 0x24, 0x25, 0xFF
	ts_jump target=34

	def_text_script CompText873C0D8_unk33
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x3,
		up: 0x3,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_option [
		brackets: 0x0,
		right: 0x3,
		left: 0x3,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Sky     "
	ts_space_px count=0x5
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " ACDC"
	ts_select 0x8, 0x20, 0x23, 0x24, 0x25, 0x26, 0xFF
	ts_jump target=34

	def_text_script CompText873C0D8_unk34
	ts_store_timer [
		timer: 0x0,
		value: 0xFF,
	]
	ts_end

	def_text_script CompText873C0D8_unk35
	ts_store_timer [
		timer: 0x0,
		value: 0x8,
	]
	ts_end

	def_text_script CompText873C0D8_unk36
	ts_store_timer [
		timer: 0x0,
		value: 0x9,
	]
	ts_end

	def_text_script CompText873C0D8_unk37
	ts_store_timer [
		timer: 0x0,
		value: 0xA,
	]
	ts_end

	def_text_script CompText873C0D8_unk38
	ts_store_timer [
		timer: 0x0,
		value: 0xB,
	]
	ts_end

	def_text_script CompText873C0D8_unk39

	def_text_script CompText873C0D8_unk40
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x64,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x64,
		jumpIfElecMan: 0x64,
		jumpIfSlashMan: 0x64,
		jumpIfEraseMan: 0x64,
		jumpIfChargeMan: 0x64,
		jumpIfSpoutMan: 0x64,
		jumpIfTomahawkMan: 0x64,
		jumpIfTenguMan: 0x64,
		jumpIfGroundMan: 0x64,
		jumpIfDustMan: 0x64,
		jumpIfProtoMan: 0x64,
	]
	ts_check_flag [
		flag: 0x37,
		jumpIfTrue: 0x2B,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x35,
		jumpIfTrue: 0x2A,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x34,
		jumpIfTrue: 0x29,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Want to go to\n"
	.string "Central Town?\n"
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
	ts_select 0x6, 0x0, 0x2D, 0xFF, 0xFF
	ts_jump target=44

	def_text_script CompText873C0D8_unk41
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_select 0x6, 0x20, 0x2D, 0x2E, 0xFF
	ts_jump target=44

	def_text_script CompText873C0D8_unk42
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x2,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Green"
	ts_select 0x7, 0x20, 0x2D, 0x2E, 0x2F, 0xFF
	ts_jump target=44

	def_text_script CompText873C0D8_unk43
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x3,
		up: 0x3,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_option [
		brackets: 0x0,
		right: 0x3,
		left: 0x3,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Green   "
	ts_space_px count=0x5
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " ACDC"
	ts_select 0x8, 0x20, 0x2D, 0x2E, 0x2F, 0x30, 0xFF
	ts_jump target=44

	def_text_script CompText873C0D8_unk44
	ts_store_timer [
		timer: 0x0,
		value: 0xFF,
	]
	ts_end

	def_text_script CompText873C0D8_unk45
	ts_store_timer [
		timer: 0x0,
		value: 0xC,
	]
	ts_end

	def_text_script CompText873C0D8_unk46
	ts_store_timer [
		timer: 0x0,
		value: 0xD,
	]
	ts_end

	def_text_script CompText873C0D8_unk47
	ts_store_timer [
		timer: 0x0,
		value: 0xE,
	]
	ts_end

	def_text_script CompText873C0D8_unk48
	ts_store_timer [
		timer: 0x0,
		value: 0xF,
	]
	ts_end

	def_text_script CompText873C0D8_unk49

	def_text_script CompText873C0D8_unk50
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x6E,
	]
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x6E,
		jumpIfElecMan: 0x6E,
		jumpIfSlashMan: 0x6E,
		jumpIfEraseMan: 0x6E,
		jumpIfChargeMan: 0x6E,
		jumpIfSpoutMan: 0x6E,
		jumpIfTomahawkMan: 0x6E,
		jumpIfTenguMan: 0x6E,
		jumpIfGroundMan: 0x6E,
		jumpIfDustMan: 0x6E,
		jumpIfProtoMan: 0x6E,
	]
	ts_check_flag [
		flag: 0x36,
		jumpIfTrue: 0x35,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x35,
		jumpIfTrue: 0x34,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x34,
		jumpIfTrue: 0x33,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Want to go to\n"
	.string "Central Town?\n"
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
	ts_select 0x6, 0x0, 0x37, 0xFF, 0xFF
	ts_jump target=54

	def_text_script CompText873C0D8_unk51
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_select 0x6, 0x20, 0x37, 0x38, 0xFF
	ts_jump target=54

	def_text_script CompText873C0D8_unk52
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x2,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Green"
	ts_select 0x7, 0x20, 0x37, 0x38, 0x39, 0xFF
	ts_jump target=54

	def_text_script CompText873C0D8_unk53
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x3,
		up: 0x3,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_option [
		brackets: 0x0,
		right: 0x3,
		left: 0x3,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Green   "
	ts_space_px count=0x5
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Sky"
	ts_select 0x8, 0x20, 0x37, 0x38, 0x39, 0x3A, 0xFF
	ts_jump target=54

	def_text_script CompText873C0D8_unk54
	ts_store_timer [
		timer: 0x0,
		value: 0xFF,
	]
	ts_end

	def_text_script CompText873C0D8_unk55
	ts_store_timer [
		timer: 0x0,
		value: 0x10,
	]
	ts_end

	def_text_script CompText873C0D8_unk56
	ts_store_timer [
		timer: 0x0,
		value: 0x11,
	]
	ts_end

	def_text_script CompText873C0D8_unk57
	ts_store_timer [
		timer: 0x0,
		value: 0x12,
	]
	ts_end

	def_text_script CompText873C0D8_unk58
	ts_store_timer [
		timer: 0x0,
		value: 0x13,
	]
	ts_end

	def_text_script CompText873C0D8_unk59

	def_text_script CompText873C0D8_unk60
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Oh. The LevBus is\n"
	.string "here!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873C0D8_unk61
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Oh. The train is\n"
	.string "here!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText873C0D8_unk62

	def_text_script CompText873C0D8_unk63

	def_text_script CompText873C0D8_unk64

	def_text_script CompText873C0D8_unk65

	def_text_script CompText873C0D8_unk66

	def_text_script CompText873C0D8_unk67

	def_text_script CompText873C0D8_unk68

	def_text_script CompText873C0D8_unk69

	def_text_script CompText873C0D8_unk70
	ts_check_flag [
		flag: 0x37,
		jumpIfTrue: 0x49,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x36,
		jumpIfTrue: 0x48,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x35,
		jumpIfTrue: 0x47,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Wanna go to\n"
	.string "Seaside Town?\n"
	ts_position_option_horizontal width=0xB
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
	ts_select 0x6, 0x0, 0x4B, 0xFF, 0xFF
	ts_jump target=74

	def_text_script CompText873C0D8_unk71
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Seaside  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Green\n"
	ts_select 0x6, 0x20, 0x4B, 0x4C, 0xFF
	ts_jump target=74

	def_text_script CompText873C0D8_unk72
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Seaside  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Green\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x2,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Sky"
	ts_select 0x7, 0x20, 0x4B, 0x4C, 0x4D, 0xFF
	ts_jump target=74

	def_text_script CompText873C0D8_unk73
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Seaside  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x3,
		up: 0x3,
	]
	ts_space count=0x1
	.string " Green\n"
	ts_option [
		brackets: 0x0,
		right: 0x3,
		left: 0x3,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Sky     "
	ts_space_px count=0x5
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " ACDC"
	ts_select 0x8, 0x20, 0x4B, 0x4C, 0x4D, 0x4E, 0xFF
	ts_jump target=74

	def_text_script CompText873C0D8_unk74
	ts_store_timer [
		timer: 0x0,
		value: 0xFF,
	]
	ts_end

	def_text_script CompText873C0D8_unk75
	ts_store_timer [
		timer: 0x0,
		value: 0x0,
	]
	ts_end

	def_text_script CompText873C0D8_unk76
	ts_store_timer [
		timer: 0x0,
		value: 0x1,
	]
	ts_end

	def_text_script CompText873C0D8_unk77
	ts_store_timer [
		timer: 0x0,
		value: 0x2,
	]
	ts_end

	def_text_script CompText873C0D8_unk78
	ts_store_timer [
		timer: 0x0,
		value: 0x3,
	]
	ts_end

	def_text_script CompText873C0D8_unk79

	def_text_script CompText873C0D8_unk80
	ts_check_flag [
		flag: 0x37,
		jumpIfTrue: 0x53,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x36,
		jumpIfTrue: 0x52,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x35,
		jumpIfTrue: 0x51,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Wanna go to\n"
	.string "Central Town?\n"
	ts_position_option_horizontal width=0xB
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
	ts_select 0x6, 0x0, 0x55, 0xFF, 0xFF
	ts_jump target=84

	def_text_script CompText873C0D8_unk81
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Green\n"
	ts_select 0x6, 0x20, 0x55, 0x56, 0xFF
	ts_jump target=84

	def_text_script CompText873C0D8_unk82
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Green\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x2,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Sky"
	ts_select 0x7, 0x20, 0x55, 0x56, 0x57, 0xFF
	ts_jump target=84

	def_text_script CompText873C0D8_unk83
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x3,
		up: 0x3,
	]
	ts_space count=0x1
	.string " Green\n"
	ts_option [
		brackets: 0x0,
		right: 0x3,
		left: 0x3,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Sky     "
	ts_space_px count=0x5
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " ACDC"
	ts_select 0x8, 0x20, 0x55, 0x56, 0x57, 0x58, 0xFF
	ts_jump target=84

	def_text_script CompText873C0D8_unk84
	ts_store_timer [
		timer: 0x0,
		value: 0xFF,
	]
	ts_end

	def_text_script CompText873C0D8_unk85
	ts_store_timer [
		timer: 0x0,
		value: 0x4,
	]
	ts_end

	def_text_script CompText873C0D8_unk86
	ts_store_timer [
		timer: 0x0,
		value: 0x5,
	]
	ts_end

	def_text_script CompText873C0D8_unk87
	ts_store_timer [
		timer: 0x0,
		value: 0x6,
	]
	ts_end

	def_text_script CompText873C0D8_unk88
	ts_store_timer [
		timer: 0x0,
		value: 0x7,
	]
	ts_end

	def_text_script CompText873C0D8_unk89

	def_text_script CompText873C0D8_unk90
	ts_check_flag [
		flag: 0x37,
		jumpIfTrue: 0x5D,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x36,
		jumpIfTrue: 0x5C,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x34,
		jumpIfTrue: 0x5B,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Wanna go to\n"
	.string "Central Town?\n"
	ts_position_option_horizontal width=0xB
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
	ts_select 0x6, 0x0, 0x5F, 0xFF, 0xFF
	ts_jump target=94

	def_text_script CompText873C0D8_unk91
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_select 0x6, 0x20, 0x5F, 0x60, 0xFF
	ts_jump target=94

	def_text_script CompText873C0D8_unk92
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x2,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Sky"
	ts_select 0x7, 0x20, 0x5F, 0x60, 0x61, 0xFF
	ts_jump target=94

	def_text_script CompText873C0D8_unk93
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x3,
		up: 0x3,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_option [
		brackets: 0x0,
		right: 0x3,
		left: 0x3,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Sky     "
	ts_space_px count=0x5
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " ACDC"
	ts_select 0x8, 0x20, 0x5F, 0x60, 0x61, 0x62, 0xFF
	ts_jump target=94

	def_text_script CompText873C0D8_unk94
	ts_store_timer [
		timer: 0x0,
		value: 0xFF,
	]
	ts_end

	def_text_script CompText873C0D8_unk95
	ts_store_timer [
		timer: 0x0,
		value: 0x8,
	]
	ts_end

	def_text_script CompText873C0D8_unk96
	ts_store_timer [
		timer: 0x0,
		value: 0x9,
	]
	ts_end

	def_text_script CompText873C0D8_unk97
	ts_store_timer [
		timer: 0x0,
		value: 0xA,
	]
	ts_end

	def_text_script CompText873C0D8_unk98
	ts_store_timer [
		timer: 0x0,
		value: 0xB,
	]
	ts_end

	def_text_script CompText873C0D8_unk99

	def_text_script CompText873C0D8_unk100
	ts_check_flag [
		flag: 0x37,
		jumpIfTrue: 0x67,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x35,
		jumpIfTrue: 0x66,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x34,
		jumpIfTrue: 0x65,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Wanna go to\n"
	.string "Central Town?\n"
	ts_position_option_horizontal width=0xB
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
	ts_select 0x6, 0x0, 0x69, 0xFF, 0xFF
	ts_jump target=104

	def_text_script CompText873C0D8_unk101
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_select 0x6, 0x20, 0x69, 0x6A, 0xFF
	ts_jump target=104

	def_text_script CompText873C0D8_unk102
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x2,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Green"
	ts_select 0x7, 0x20, 0x69, 0x6A, 0x6B, 0xFF
	ts_jump target=104

	def_text_script CompText873C0D8_unk103
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x3,
		up: 0x3,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_option [
		brackets: 0x0,
		right: 0x3,
		left: 0x3,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Green   "
	ts_space_px count=0x5
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " ACDC"
	ts_select 0x8, 0x20, 0x69, 0x6A, 0x6B, 0x6C, 0xFF
	ts_jump target=104

	def_text_script CompText873C0D8_unk104
	ts_store_timer [
		timer: 0x0,
		value: 0xFF,
	]
	ts_end

	def_text_script CompText873C0D8_unk105
	ts_store_timer [
		timer: 0x0,
		value: 0xC,
	]
	ts_end

	def_text_script CompText873C0D8_unk106
	ts_store_timer [
		timer: 0x0,
		value: 0xD,
	]
	ts_end

	def_text_script CompText873C0D8_unk107
	ts_store_timer [
		timer: 0x0,
		value: 0xE,
	]
	ts_end

	def_text_script CompText873C0D8_unk108
	ts_store_timer [
		timer: 0x0,
		value: 0xF,
	]
	ts_end

	def_text_script CompText873C0D8_unk109

	def_text_script CompText873C0D8_unk110
	ts_check_flag [
		flag: 0x36,
		jumpIfTrue: 0x71,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x35,
		jumpIfTrue: 0x70,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x34,
		jumpIfTrue: 0x6F,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Wanna go to\n"
	.string "Central Town?\n"
	ts_position_option_horizontal width=0xB
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
	ts_select 0x6, 0x0, 0x73, 0xFF, 0xFF
	ts_jump target=114

	def_text_script CompText873C0D8_unk111
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_select 0x6, 0x20, 0x73, 0x74, 0xFF
	ts_jump target=114

	def_text_script CompText873C0D8_unk112
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x2,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Green"
	ts_select 0x7, 0x20, 0x73, 0x74, 0x75, 0xFF
	ts_jump target=114

	def_text_script CompText873C0D8_unk113
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x0
	.string "Where to?\n"
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Central  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x3,
		up: 0x3,
	]
	ts_space count=0x1
	.string " Seaside\n"
	ts_option [
		brackets: 0x0,
		right: 0x3,
		left: 0x3,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Green   "
	ts_space_px count=0x5
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Sky"
	ts_select 0x8, 0x20, 0x73, 0x74, 0x75, 0x76, 0xFF
	ts_jump target=114

	def_text_script CompText873C0D8_unk114
	ts_store_timer [
		timer: 0x0,
		value: 0xFF,
	]
	ts_end

	def_text_script CompText873C0D8_unk115
	ts_store_timer [
		timer: 0x0,
		value: 0x10,
	]
	ts_end

	def_text_script CompText873C0D8_unk116
	ts_store_timer [
		timer: 0x0,
		value: 0x11,
	]
	ts_end

	def_text_script CompText873C0D8_unk117
	ts_store_timer [
		timer: 0x0,
		value: 0x12,
	]
	ts_end

	def_text_script CompText873C0D8_unk118
	ts_store_timer [
		timer: 0x0,
		value: 0x13,
	]
	ts_end

	def_text_script CompText873C0D8_unk119

	