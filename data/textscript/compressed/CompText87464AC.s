	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87464AC::
	.word 0x33100

	text_archive_start

	def_text_script CompText87464AC_unk0
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText87464AC_unk11_id,
		jumpIfElecMan: CompText87464AC_unk12_id,
		jumpIfSlashMan: CompText87464AC_unk13_id,
		jumpIfEraseMan: CompText87464AC_unk14_id,
		jumpIfChargeMan: CompText87464AC_unk15_id,
		jumpIfSpoutMan: CompText87464AC_unk16_id,
		jumpIfTomahawkMan: CompText87464AC_unk17_id,
		jumpIfTenguMan: CompText87464AC_unk18_id,
		jumpIfGroundMan: CompText87464AC_unk19_id,
		jumpIfDustMan: CompText87464AC_unk20_id,
		jumpIfProtoMan: CompText87464AC_unk21_id,
	]
	ts_check_flag [
		flag: 0x163,
		jumpIfTrue: CompText87464AC_unk10_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText87464AC_unk1_id
	ts_end

	def_text_script CompText87464AC_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Things don't look\n"
	.string "too damaged from the\n"
	.string "BlastMan incident..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87464AC_unk2

	def_text_script CompText87464AC_unk3

	def_text_script CompText87464AC_unk4

	def_text_script CompText87464AC_unk5

	def_text_script CompText87464AC_unk6

	def_text_script CompText87464AC_unk7

	def_text_script CompText87464AC_unk8

	def_text_script CompText87464AC_unk9

	def_text_script CompText87464AC_unk10
	ts_jump target=CompText87464AC_unk1_id
	ts_end

	def_text_script CompText87464AC_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating HeatMan...\n"
	.string "It lights my soul on\n"
	.string "fire!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87464AC_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ElecMan...\n"
	.string "I feel a surge of\n"
	.string "power coming on!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87464AC_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SlashMan\n"
	.string "is like sharpening\n"
	.string "my mind to a point!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87464AC_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating EraseMan\n"
	.string "brings out my dark\n"
	.string "side... Mwahahaha!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87464AC_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating ChargeMan\n"
	.string "makes me want to\n"
	.string "plow ahead!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87464AC_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating SpoutMan\n"
	.string "makes me feel like\n"
	.string "a little fish..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87464AC_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating\n"
	.string "TomahawkMan is an\n"
	.string "awesome feeling!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87464AC_unk18
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating TenguMan\n"
	.string "brings a sense of\n"
	.string "peace to my heart..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87464AC_unk19
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating GroundMan\n"
	.string "lets me drill\n"
	.string "through anything!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87464AC_unk20
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Operating DustMan...\n"
	.string "There's no virus we\n"
	.string "can't scrap!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87464AC_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "ProtoMan helping out\n"
	.string "during battle... He\n"
	.string "sure is trustworthy!"
	ts_key_wait any=0x0
	ts_end

	