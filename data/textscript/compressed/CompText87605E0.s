	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87605E0::
	.word 0x3CE00

	text_archive_start

	def_text_script CompText87605E0_unk0
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "Underground2 on it."
	ts_key_wait any=0x0
	ts_start_map map=0xE
	ts_end

	def_text_script CompText87605E0_unk1
	ts_msg_open
	.string "The darkness won't\n"
	.string "budge,even with your\n"
	.string "strongest attacks."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe the\n"
	.string "EvilSpirits are\n"
	.string "related somehow..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87605E0_unk2
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText87605E0_unk5_id,
		jumpIfElecMan: TS_CONTINUE,
		jumpIfSlashMan: TS_CONTINUE,
		jumpIfEraseMan: TS_CONTINUE,
		jumpIfChargeMan: CompText87605E0_unk6_id,
		jumpIfSpoutMan: CompText87605E0_unk7_id,
		jumpIfTomahawkMan: TS_CONTINUE,
		jumpIfTenguMan: CompText87605E0_unk8_id,
		jumpIfGroundMan: TS_CONTINUE,
		jumpIfDustMan: TS_CONTINUE,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_msg_open
	.string "The flames are too\n"
	.string "high to pass\n"
	.string "through!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87605E0_unk3
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText87605E0_unk4_id,
		jumpIfElecMan: CompText87605E0_unk4_id,
		jumpIfSlashMan: CompText87605E0_unk4_id,
		jumpIfEraseMan: CompText87605E0_unk4_id,
		jumpIfChargeMan: CompText87605E0_unk4_id,
		jumpIfSpoutMan: CompText87605E0_unk4_id,
		jumpIfTomahawkMan: CompText87605E0_unk4_id,
		jumpIfTenguMan: CompText87605E0_unk4_id,
		jumpIfGroundMan: CompText87605E0_unk4_id,
		jumpIfDustMan: CompText87605E0_unk4_id,
		jumpIfProtoMan: CompText87605E0_unk4_id,
	]
	ts_check_item07 [
		item: 0x33,
		amount: 0x1,
		jumpIfEqual: CompText87605E0_unk10_id,
		jumpIfGreater: CompText87605E0_unk10_id,
		jumpIfLess: TS_CONTINUE,
	]
	ts_msg_open
	.string "There is a worn out\n"
	.string "bat crest relief on\n"
	.string "this door..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87605E0_unk4
	ts_msg_open
	.string "The door glows\n"
	.string "ominously at a\n"
	.string "stranger's approach."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87605E0_unk5
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Now this looks like\n"
	.string "a refreshing drink!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0xF7
	ts_wait frames=0x1E
	.string "HeatMan drank up\n"
	.string "all the raging\n"
	.string "flames!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87605E0_unk9_id

	def_text_script CompText87605E0_unk6
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo,choo..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Perfect timing! I\n"
	.string "was running a little\n"
	.string "low on steam..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0xE4
	ts_wait frames=0x1E
	.string "ChargeMan swallowed\n"
	.string "the raging flames!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87605E0_unk9_id

	def_text_script CompText87605E0_unk7
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Even I can take care\n"
	.string "of a fire this big,\n"
	.string "drip!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0x189
	ts_wait frames=0x1E
	.string "The wave of water\n"
	.string "from SpoutMan's head\n"
	.string "put out the fire!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87605E0_unk9_id

	def_text_script CompText87605E0_unk8
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Hmph. My fan can\n"
	.string "take care of this\n"
	.string "fire in one stroke!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0x11F
	ts_wait frames=0x1E
	.string "TenguMan's fan blew\n"
	.string "the flames out!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87605E0_unk9_id

	def_text_script CompText87605E0_unk9
	ts_flag_clear flag=0x16E
	ts_end

	def_text_script CompText87605E0_unk10
	ts_msg_open
	.string "The "
	ts_print_item [
		item: 0x33,
		buffer: 0x0,
	]
	.string " has\n"
	.string "suddenly started\n"
	.string "to glow!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It seems to be\n"
	.string "reacting to the\n"
	.string "door!!"
	ts_key_wait any=0x0
	ts_flag_clear flag=0x79
	ts_end

	