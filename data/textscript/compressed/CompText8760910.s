	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8760910::
	.word 0x5F600

	text_archive_start

	def_text_script CompText8760910_unk0
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "Sky Area1 on it."
	ts_key_wait any=0x0
	ts_start_map map=0x8
	ts_end

	def_text_script CompText8760910_unk1
	ts_end

	def_text_script CompText8760910_unk2
	ts_end

	def_text_script CompText8760910_unk3
	ts_check_chapter [
		lower: 0x48,
		upper: 0x48,
		jumpIfInRange: CompText8760910_unk16_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "\"Welcome\n"
	.string "       to the\n"
	.string "            NetCafe\""
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8760910_unk4
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TS_CONTINUE,
		jumpIfElecMan: CompText8760910_unk6_id,
		jumpIfSlashMan: TS_CONTINUE,
		jumpIfEraseMan: CompText8760910_unk7_id,
		jumpIfChargeMan: TS_CONTINUE,
		jumpIfSpoutMan: TS_CONTINUE,
		jumpIfTomahawkMan: CompText8760910_unk8_id,
		jumpIfTenguMan: TS_CONTINUE,
		jumpIfGroundMan: TS_CONTINUE,
		jumpIfDustMan: CompText8760910_unk9_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_check_item07 [
		item: 0x1C,
		amount: 0x1,
		jumpIfEqual: CompText8760910_unk17_id,
		jumpIfGreater: CompText8760910_unk17_id,
		jumpIfLess: TS_CONTINUE,
	]
	ts_msg_open
	.string "A thick,dense cloud\n"
	.string "is blocking the way!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8760910_unk5
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText8760910_unk11_id,
		jumpIfElecMan: TS_CONTINUE,
		jumpIfSlashMan: CompText8760910_unk12_id,
		jumpIfEraseMan: TS_CONTINUE,
		jumpIfChargeMan: TS_CONTINUE,
		jumpIfSpoutMan: TS_CONTINUE,
		jumpIfTomahawkMan: CompText8760910_unk13_id,
		jumpIfTenguMan: TS_CONTINUE,
		jumpIfGroundMan: CompText8760910_unk14_id,
		jumpIfDustMan: TS_CONTINUE,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_check_item07 [
		item: 0x42,
		amount: 0x1,
		jumpIfEqual: CompText8760910_unk18_id,
		jumpIfGreater: CompText8760910_unk18_id,
		jumpIfLess: TS_CONTINUE,
	]
	ts_msg_open
	.string "A strong-looking\n"
	.string "cybertree is\n"
	.string "blocking the way..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8760910_unk6
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "These thunderclouds\n"
	.string "are just what I\n"
	.string "like..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Zaaaaaap!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0xC6
	ts_wait frames=0x1E
	.string "ElecMan's lightning\n"
	.string "dispersed the cloud!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText8760910_unk10_id

	def_text_script CompText8760910_unk7
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Hiyahaha!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "My Hex Sickle can\n"
	.string "cut even shapeless\n"
	.string "things!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0xC7
	ts_wait frames=0x1E
	.string "EraseMan's Hex\n"
	.string "Sickle cut through\n"
	.string "the cloud!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText8760910_unk10_id

	def_text_script CompText8760910_unk8
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Hey,cloud!\n"
	.string "Here's a Tomahawk\n"
	.string "Swing for you!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0x10A
	ts_wait frames=0x1E
	.string "The Tomahawk Swing's\n"
	.string "strong wind blew the\n"
	.string "cloud away!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText8760910_unk10_id

	def_text_script CompText8760910_unk9
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "This cloud's just\n"
	.string "like that junk over\n"
	.string "there!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0xAD
	ts_wait frames=0x1E
	.string "DustMan sucked up\n"
	.string "the cloud!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText8760910_unk10_id

	def_text_script CompText8760910_unk10
	ts_flag_clear flag=0x179
	ts_end

	def_text_script CompText8760910_unk11
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "This tree is toast!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Burn,baby,burn!\n"
	.string "Yeah!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0xF7
	ts_wait frames=0x1E
	.string "HeatMan's raging\n"
	.string "flames burned the\n"
	.string "cybertree to ashes!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText8760910_unk15_id

	def_text_script CompText8760910_unk12
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Slice and dice!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Slaaaaaaaash!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0xFA
	ts_wait frames=0x1E
	.string "SlashMan's powerful\n"
	.string "attack cut the\n"
	.string "cybertree down!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText8760910_unk15_id

	def_text_script CompText8760910_unk13
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Heh,this tree will\n"
	.string "fall in no time\n"
	.string "flat!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Tomahawk Swing!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0x10A
	ts_wait frames=0x1E
	.string "The cybertree was\n"
	.string "split into two!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText8760910_unk15_id

	def_text_script CompText8760910_unk14
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whiiiiiir!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll uproot this\n"
	.string "tree from the bottom\n"
	.string "up!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Whiiiiiir!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0x1BF
	ts_wait frames=0x1E
	.string "GroundMan's charge\n"
	.string "dug the cybertree\n"
	.string "out,roots and all!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText8760910_unk15_id

	def_text_script CompText8760910_unk15
	ts_flag_clear flag=0x16A
	ts_end

	def_text_script CompText8760910_unk16
	ts_msg_open
	.string "It seems to have\n"
	.string "run out of energy,\n"
	.string "so it's not lit..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8760910_unk17
	ts_msg_open
	.string "A thick,dense cloud\n"
	.string "is blocking the way!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's too thick for\n"
	.string "the "
	ts_print_item [
		item: 0x1C,
		buffer: 0x0,
	]
	.string " to\n"
	.string "suck up."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8760910_unk18
	ts_msg_open
	.string "A strong-looking\n"
	.string "cybertree is\n"
	.string "blocking the way..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and the "
	ts_print_item [
		item: 0x42,
		buffer: 0x0,
	]
	.string "\n"
	.string "is too weak to cut\n"
	.string "it down."
	ts_key_wait any=0x0
	ts_end

	