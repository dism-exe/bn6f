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
	ts_key_wait 0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "Underground2 on it."
	ts_key_wait 0x0
	ts_start_map 0xE
	ts_end

	def_text_script CompText87605E0_unk1
	ts_msg_open
	.string "The darkness won't\n"
	.string "budge,even with your\n"
	.string "strongest attacks."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe the\n"
	.string "EvilSpirits are\n"
	.string "related somehow..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87605E0_unk2
	ts_check_navi_all 0xFF, 0x5, 0xFF, 0xFF, 0xFF, 0x6, 0x7, 0xFF, 0x8, 0xFF, 0xFF, 0xFF
	ts_msg_open
	.string "The flames are too\n"
	.string "high to pass\n"
	.string "through!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87605E0_unk3
	ts_check_navi_all 0xFF, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4
	ts_check_item07 0x33, 0x1, 0xA, 0xA, 0xFF
	ts_msg_open
	.string "There is a worn out\n"
	.string "bat crest relief on\n"
	.string "this door..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87605E0_unk4
	ts_msg_open
	.string "The door glows\n"
	.string "ominously at a\n"
	.string "stranger's approach."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87605E0_unk5
	ts_mugshot_show 0x47
	ts_msg_open
	.string "Now this looks like\n"
	.string "a refreshing drink!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xF7, 0x0
	ts_wait 0x1E, 0x0
	.string "HeatMan drank up\n"
	.string "all the raging\n"
	.string "flames!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87605E0_unk6
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "Choo,choo..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Perfect timing! I\n"
	.string "was running a little\n"
	.string "low on steam..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xE4, 0x0
	ts_wait 0x1E, 0x0
	.string "ChargeMan swallowed\n"
	.string "the raging flames!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87605E0_unk7
	ts_mugshot_show 0x48
	ts_msg_open
	.string "Even I can take care\n"
	.string "of a fire this big,\n"
	.string "drip!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0x89, 0x1
	ts_wait 0x1E, 0x0
	.string "The wave of water\n"
	.string "from SpoutMan's head\n"
	.string "put out the fire!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87605E0_unk8
	ts_mugshot_show 0x4C
	ts_msg_open
	.string "Hmph. My fan can\n"
	.string "take care of this\n"
	.string "fire in one stroke!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0x1F, 0x1
	ts_wait 0x1E, 0x0
	.string "TenguMan's fan blew\n"
	.string "the flames out!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87605E0_unk9
	ts_flag_clear 0x6E, 0x1
	ts_end

	def_text_script CompText87605E0_unk10
	ts_msg_open
	.string "The "
	ts_print_item 0x33, 0x0
	.string " has\n"
	.string "suddenly started\n"
	.string "to glow!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It seems to be\n"
	.string "reacting to the\n"
	.string "door!!"
	ts_key_wait 0x0
	ts_flag_clear 0x79, 0x0
	ts_end

	