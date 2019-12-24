	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8781B18::
	.word 0x21100

	text_archive_start

	def_text_script CompText8781B18_unk0
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "Mr.Weather is done\n"
	.string "with his cleanup!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He's sparkling..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781B18_unk1

	def_text_script CompText8781B18_unk2

	def_text_script CompText8781B18_unk3

	def_text_script CompText8781B18_unk4

	def_text_script CompText8781B18_unk5
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "Mr.Weather is a\n"
	.string "robot,but he is\n"
	.string "really expressive."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I love his eyes!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781B18_unk6

	def_text_script CompText8781B18_unk7

	def_text_script CompText8781B18_unk8

	def_text_script CompText8781B18_unk9

	def_text_script CompText8781B18_unk10
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "Lately I can kind\n"
	.string "of understand what"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Mr.Weather's\n"
	.string "thinking."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Robots and people\n"
	.string "should be able to"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "understand each\n"
	.string "other."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781B18_unk11

	def_text_script CompText8781B18_unk12

	def_text_script CompText8781B18_unk13

	def_text_script CompText8781B18_unk14

	def_text_script CompText8781B18_unk15
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "Lan,this one is\n"
	.string "mine!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781B18_unk16
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "Mr.Weather was about\n"
	.string "to be attacked,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that kid helped him\n"
	.string "out..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781B18_unk17
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "A...A Navi attacked\n"
	.string "a human..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781B18_unk18
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "........"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "No reaction..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8781B18_unk19

	def_text_script CompText8781B18_unk20

	def_text_script CompText8781B18_unk21

	def_text_script CompText8781B18_unk22

	def_text_script CompText8781B18_unk23

	def_text_script CompText8781B18_unk24

	def_text_script CompText8781B18_unk25

	def_text_script CompText8781B18_unk26

	def_text_script CompText8781B18_unk27

	def_text_script CompText8781B18_unk28

	def_text_script CompText8781B18_unk29

	