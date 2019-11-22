	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8762434::
	.word 0x158800

	text_archive_start

	def_text_script CompText8762434_unk0
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It has a map of\n"
	.string "Graveyard2 on it."
	ts_key_wait [
		any: 0x0,
	]
	ts_start_map [
		map: 0x11,
	]
	ts_end

	def_text_script CompText8762434_unk1
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0xFF,
		jumpIfElecMan: 0x2E,
		jumpIfSlashMan: 0xFF,
		jumpIfEraseMan: 0x2F,
		jumpIfChargeMan: 0xFF,
		jumpIfSpoutMan: 0xFF,
		jumpIfTomahawkMan: 0x30,
		jumpIfTenguMan: 0xFF,
		jumpIfGroundMan: 0xFF,
		jumpIfDustMan: 0x31,
		jumpIfProtoMan: 0xFF,
	]
	ts_check_item07 [
		item: 0x1C,
		amount: 0x1,
		jumpIfEqual: 0x4E,
		jumpIfGreater: 0x4E,
		jumpIfLess: 0xFF,
	]
	ts_msg_open
	.string "A thick,dense cloud\n"
	.string "is blocking the way!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk2
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x33,
		jumpIfElecMan: 0xFF,
		jumpIfSlashMan: 0x34,
		jumpIfEraseMan: 0xFF,
		jumpIfChargeMan: 0xFF,
		jumpIfSpoutMan: 0xFF,
		jumpIfTomahawkMan: 0x35,
		jumpIfTenguMan: 0xFF,
		jumpIfGroundMan: 0x36,
		jumpIfDustMan: 0xFF,
		jumpIfProtoMan: 0xFF,
	]
	ts_check_item07 [
		item: 0x42,
		amount: 0x1,
		jumpIfEqual: 0x4F,
		jumpIfGreater: 0x4F,
		jumpIfLess: 0xFF,
	]
	ts_msg_open
	.string "A strong-looking\n"
	.string "cybertree is\n"
	.string "blocking the way..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk3
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0xFF,
		jumpIfElecMan: 0x38,
		jumpIfSlashMan: 0xFF,
		jumpIfEraseMan: 0x39,
		jumpIfChargeMan: 0xFF,
		jumpIfSpoutMan: 0x3A,
		jumpIfTomahawkMan: 0xFF,
		jumpIfTenguMan: 0xFF,
		jumpIfGroundMan: 0x3B,
		jumpIfDustMan: 0xFF,
		jumpIfProtoMan: 0xFF,
	]
	ts_msg_open
	.string "The cyberwater's\n"
	.string "flow is too strong\n"
	.string "to go against!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk4
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x3D,
		jumpIfElecMan: 0xFF,
		jumpIfSlashMan: 0xFF,
		jumpIfEraseMan: 0xFF,
		jumpIfChargeMan: 0x3E,
		jumpIfSpoutMan: 0x3F,
		jumpIfTomahawkMan: 0xFF,
		jumpIfTenguMan: 0x40,
		jumpIfGroundMan: 0xFF,
		jumpIfDustMan: 0xFF,
		jumpIfProtoMan: 0xFF,
	]
	ts_msg_open
	.string "The flames are too\n"
	.string "high to pass\n"
	.string "through!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk5
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0xFF,
		jumpIfElecMan: 0xFF,
		jumpIfSlashMan: 0x42,
		jumpIfEraseMan: 0xFF,
		jumpIfChargeMan: 0x43,
		jumpIfSpoutMan: 0xFF,
		jumpIfTomahawkMan: 0xFF,
		jumpIfTenguMan: 0x44,
		jumpIfGroundMan: 0xFF,
		jumpIfDustMan: 0x45,
		jumpIfProtoMan: 0xFF,
	]
	ts_msg_open
	.string "There is a violent\n"
	.string "cyclone blocking\n"
	.string "the way!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk6
	ts_msg_open
	.string "There is nothing\n"
	.string "written on the\n"
	.string "stone monument..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk7
	ts_check_flag [
		flag: 0x1BD,
		jumpIfTrue: 0xD,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x101C,
		jumpIfTrue: 0x13,
		jumpIfFalse: 0xFF,
	]
	ts_jump [
		target: 13,
	]

	def_text_script CompText8762434_unk8
	ts_check_flag [
		flag: 0x1BF,
		jumpIfTrue: 0xE,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x101C,
		jumpIfTrue: 0x15,
		jumpIfFalse: 0xFF,
	]
	ts_jump [
		target: 14,
	]

	def_text_script CompText8762434_unk9
	ts_check_flag [
		flag: 0x1C1,
		jumpIfTrue: 0xF,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x101C,
		jumpIfTrue: 0x17,
		jumpIfFalse: 0xFF,
	]
	ts_jump [
		target: 15,
	]

	def_text_script CompText8762434_unk10
	ts_check_flag [
		flag: 0x1C3,
		jumpIfTrue: 0x10,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x101C,
		jumpIfTrue: 0x19,
		jumpIfFalse: 0xFF,
	]
	ts_jump [
		target: 16,
	]

	def_text_script CompText8762434_unk11
	ts_check_flag [
		flag: 0x1C5,
		jumpIfTrue: 0x11,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x101C,
		jumpIfTrue: 0x1B,
		jumpIfFalse: 0xFF,
	]
	ts_jump [
		target: 17,
	]

	def_text_script CompText8762434_unk12
	ts_check_flag [
		flag: 0x1C7,
		jumpIfTrue: 0x12,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x101C,
		jumpIfTrue: 0x1D,
		jumpIfFalse: 0xFF,
	]
	ts_jump [
		target: 18,
	]

	def_text_script CompText8762434_unk13
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " BlastMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk14
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " DiveMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk15
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " CircusMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk16
	ts_msg_open
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " JudgeMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk17
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " ElementMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk18
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " Colonel\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk19
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " BlastMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... And suddenly,the\n"
	.string "monument bursts into\n"
	.string "flames!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1BC,
	]
	ts_end

	def_text_script CompText8762434_unk20
	ts_msg_open
	.string "The monument has\n"
	.string "gone dark and\n"
	.string "quiet..."
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1BD,
	]
	ts_flag_clear [
		flag: 0x1C8,
	]
	ts_flag_set [
		flag: 0x1CE,
	]
	ts_end

	def_text_script CompText8762434_unk21
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " DiveMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Suddenly,\n"
	.string "waterspouts appear\n"
	.string "from the monument!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1BE,
	]
	ts_end

	def_text_script CompText8762434_unk22
	ts_msg_open
	.string "The monument has\n"
	.string "gone dark and\n"
	.string "quiet..."
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1BF,
	]
	ts_flag_clear [
		flag: 0x1C9,
	]
	ts_flag_set [
		flag: 0x1CF,
	]
	ts_end

	def_text_script CompText8762434_unk23
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " CircusMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Suddenly,a\n"
	.string "creepy laughter\n"
	.string "fills the air!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1C0,
	]
	ts_end

	def_text_script CompText8762434_unk24
	ts_msg_open
	.string "The monument has\n"
	.string "gone dark and\n"
	.string "quiet..."
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1C1,
	]
	ts_flag_clear [
		flag: 0x1CA,
	]
	ts_flag_set [
		flag: 0x1D0,
	]
	ts_end

	def_text_script CompText8762434_unk25
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " JudgeMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Suddenly,chains of\n"
	.string "punishment shoot out\n"
	.string "from the monument!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1C2,
	]
	ts_end

	def_text_script CompText8762434_unk26
	ts_msg_open
	.string "The monument has\n"
	.string "gone dark and\n"
	.string "quiet..."
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1C3,
	]
	ts_flag_clear [
		flag: 0x1CB,
	]
	ts_flag_set [
		flag: 0x1D1,
	]
	ts_end

	def_text_script CompText8762434_unk27
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " ElementMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Suddenly,an object\n"
	.string "enveloped in 4 beams\n"
	.string "of light shot out"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "from the monument!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1C4,
	]
	ts_end

	def_text_script CompText8762434_unk28
	ts_msg_open
	.string "The monument has\n"
	.string "gone dark and\n"
	.string "quiet..."
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1C5,
	]
	ts_flag_clear [
		flag: 0x1CC,
	]
	ts_flag_set [
		flag: 0x1D2,
	]
	ts_end

	def_text_script CompText8762434_unk29
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " Colonel\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Suddenly,a sharp\n"
	.string "sword was pushed out\n"
	.string "from the monument!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1C6,
	]
	ts_end

	def_text_script CompText8762434_unk30
	ts_msg_open
	.string "The monument has\n"
	.string "gone dark and\n"
	.string "quiet..."
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1C7,
	]
	ts_flag_clear [
		flag: 0x1CD,
	]
	ts_flag_set [
		flag: 0x1D3,
	]
	ts_end

	def_text_script CompText8762434_unk31

	def_text_script CompText8762434_unk32

	def_text_script CompText8762434_unk33

	def_text_script CompText8762434_unk34

	def_text_script CompText8762434_unk35

	def_text_script CompText8762434_unk36

	def_text_script CompText8762434_unk37

	def_text_script CompText8762434_unk38

	def_text_script CompText8762434_unk39

	def_text_script CompText8762434_unk40
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x47,
	]
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " HeatMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk41
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x48,
	]
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " SlashMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk42
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x49,
	]
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " ElecMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk43
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x4A,
	]
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " EraseMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk44
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x4B,
	]
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " ChargeMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk45
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " ProtoMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk46
	ts_mugshot_show [
		mugshot: 0x49,
	]
	ts_msg_open
	.string "These thunderclouds\n"
	.string "are just what I\n"
	.string "like..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Zaaaaaap!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0xC6,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "ElecMan's lightning\n"
	.string "dispersed the cloud!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 50,
	]

	def_text_script CompText8762434_unk47
	ts_mugshot_show [
		mugshot: 0x50,
	]
	ts_msg_open
	.string "Hiyahaha!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "My Hex Sickle can\n"
	.string "cut even shapeless\n"
	.string "things!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0xC7,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "EraseMan's Hex\n"
	.string "Sickle cut through\n"
	.string "the cloud!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 50,
	]

	def_text_script CompText8762434_unk48
	ts_mugshot_show [
		mugshot: 0x4A,
	]
	ts_msg_open
	.string "Hey,cloud!\n"
	.string "Here's a Tomahawk\n"
	.string "Swing for you!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0x10A,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "The Tomahawk Swing's\n"
	.string "strong wind blew the\n"
	.string "cloud away!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 50,
	]

	def_text_script CompText8762434_unk49
	ts_mugshot_show [
		mugshot: 0x4E,
	]
	ts_msg_open
	.string "This cloud's just\n"
	.string "like that junk over\n"
	.string "there!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0xAD,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "DustMan sucked up\n"
	.string "the cloud!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 50,
	]

	def_text_script CompText8762434_unk50
	ts_flag_clear [
		flag: 0x17C,
	]
	ts_end

	def_text_script CompText8762434_unk51
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_msg_open
	.string "This tree is toast!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Burn,baby,burn!\n"
	.string "Yeah!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0xF7,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "HeatMan's raging\n"
	.string "flames burned the\n"
	.string "cybertree to ashes!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 55,
	]

	def_text_script CompText8762434_unk52
	ts_mugshot_show [
		mugshot: 0x4B,
	]
	ts_msg_open
	.string "Slice and dice!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Slaaaaaaaash!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0xFA,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "SlashMan's powerful\n"
	.string "attack cut the\n"
	.string "cybertree down!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 55,
	]

	def_text_script CompText8762434_unk53
	ts_mugshot_show [
		mugshot: 0x4A,
	]
	ts_msg_open
	.string "Heh,this tree will\n"
	.string "fall in no time\n"
	.string "flat!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Tomahawk Swing!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0x10A,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "The cybertree was\n"
	.string "split into two!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 55,
	]

	def_text_script CompText8762434_unk54
	ts_mugshot_show [
		mugshot: 0x4D,
	]
	ts_msg_open
	.string "Whiiiiiir!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll uproot this\n"
	.string "tree from the bottom\n"
	.string "up!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Whiiiiiir!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0x1BF,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "GroundMan's charge\n"
	.string "dug the cybertree\n"
	.string "out,roots and all!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 55,
	]

	def_text_script CompText8762434_unk55
	ts_flag_clear [
		flag: 0x16D,
	]
	ts_end

	def_text_script CompText8762434_unk56
	ts_mugshot_show [
		mugshot: 0x49,
	]
	ts_msg_open
	.string "Hmm,if I pass very\n"
	.string "strong electricity\n"
	.string "through the water..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I can split it into\n"
	.string "hydrogen and oxygen!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Elec Power!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0xC6,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "The raging water-\n"
	.string "spout evaporated\n"
	.string "off as steam!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 60,
	]

	def_text_script CompText8762434_unk57
	ts_mugshot_show [
		mugshot: 0x50,
	]
	ts_msg_open
	.string "Hiyahaha!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "My Hex Sickle can\n"
	.string "cut through\n"
	.string "anything!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hiyahahaha!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0xC7,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "The Hex Sickle cut\n"
	.string "the waterspout!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 60,
	]

	def_text_script CompText8762434_unk58
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_msg_open
	.string "If it's got to do\n"
	.string "with water,leave it\n"
	.string "to me,drip!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Water...\n"
	.string "Calm!!\n"
	.string "... drip."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	.string "At SpoutMan's words,\n"
	.string "the waterspout\n"
	.string "calmly disappeared!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 60,
	]

	def_text_script CompText8762434_unk59
	ts_mugshot_show [
		mugshot: 0x4D,
	]
	ts_msg_open
	.string "Whiiiiiir!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "All we gotta do is\n"
	.string "dump some dirt on\n"
	.string "the source!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Whiiiiiir!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0x1BF,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "GroundMan stopped up\n"
	.string "the water opening!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 60,
	]

	def_text_script CompText8762434_unk60
	ts_flag_clear [
		flag: 0x168,
	]
	ts_end

	def_text_script CompText8762434_unk61
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_msg_open
	.string "Now this looks like\n"
	.string "a refreshing drink!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0xF7,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "HeatMan drank up\n"
	.string "all the raging\n"
	.string "flames!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 65,
	]

	def_text_script CompText8762434_unk62
	ts_mugshot_show [
		mugshot: 0x4F,
	]
	ts_msg_open
	.string "Choo,choo..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Perfect timing! I\n"
	.string "was running a little\n"
	.string "low on steam..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0xE4,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "ChargeMan swallowed\n"
	.string "the raging flames!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 65,
	]

	def_text_script CompText8762434_unk63
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_msg_open
	.string "Even I can take care\n"
	.string "of a fire this big,\n"
	.string "drip!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0x189,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "The wave of water\n"
	.string "from SpoutMan's head\n"
	.string "put out the fire!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 65,
	]

	def_text_script CompText8762434_unk64
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	ts_msg_open
	.string "Hmph. My fan can\n"
	.string "take care of this\n"
	.string "fire in one stroke!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0x11F,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "TenguMan's fan blew\n"
	.string "the flames out!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 65,
	]

	def_text_script CompText8762434_unk65
	ts_flag_clear [
		flag: 0x172,
	]
	ts_end

	def_text_script CompText8762434_unk66
	ts_mugshot_show [
		mugshot: 0x4B,
	]
	ts_msg_open
	.string "This cyclone has\n"
	.string "nothing on me!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0x164,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "SlashMan's super\n"
	.string "spin attack wiped\n"
	.string "the cyclone out!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 70,
	]

	def_text_script CompText8762434_unk67
	ts_mugshot_show [
		mugshot: 0x4F,
	]
	ts_msg_open
	.string "Choo,chooooo!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm going to charge\n"
	.string "through this\n"
	.string "cyclone!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0xE4,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "ChargeMan erased the\n"
	.string "cyclone with his\n"
	.string "super charge attack!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 70,
	]

	def_text_script CompText8762434_unk68
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	ts_msg_open
	.string "A cyclone like this\n"
	.string "is nothing for a\n"
	.string "wind master..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hmmmph!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0x11F,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "TenguMan erased the\n"
	.string "cyclone with one\n"
	.string "wave of his fan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 70,
	]

	def_text_script CompText8762434_unk69
	ts_mugshot_show [
		mugshot: 0x4E,
	]
	ts_msg_open
	.string "Gahahaha!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I wonder if this\n"
	.string "cyclone can stand up\n"
	.string "to my vacuum power!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "*vroooooom!!*"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 [
		track: 0xAD,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string "DustMan sucked up\n"
	.string "the cyclone!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 70,
	]

	def_text_script CompText8762434_unk70
	ts_flag_clear [
		flag: 0x177,
	]
	ts_end

	def_text_script CompText8762434_unk71
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " SpoutMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk72
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " TenguMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk73
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " TomahawkMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk74
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " GroundMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk75
	ts_msg_open
	.string "It says:\n"
	.string "\"Here lies\n"
	.string " DustMan\""
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk76
	ts_check_library_standard [
		lower: 0xC8,
		upper: 0xC8,
		jumpIfInRange: 0x4D,
		jumpIfOutOfRange: 0xFF,
	]
	ts_msg_open
	.string "You can hear a voice\n"
	.string "calling out from\n"
	.string "somewhere..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This door can only\n"
	.string "be opened by the\n"
	.string "mark of \"S\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk77
	ts_msg_open
	.string "You can hear a voice\n"
	.string "calling out from\n"
	.string "somewhere..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You who carry the\n"
	.string "mark of \"S\"..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Fight bravely,and\n"
	.string "good luck..."
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_clear [
		flag: 0x83,
	]
	ts_end

	def_text_script CompText8762434_unk78
	ts_msg_open
	.string "A thick,dense cloud\n"
	.string "is blocking the way!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's too thick for\n"
	.string "the "
	ts_print_item [
		item: 0x1C,
		buffer: 0x0,
	]
	.string " to\n"
	.string "suck up."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk79
	ts_msg_open
	.string "A strong-looking\n"
	.string "cybertree is\n"
	.string "blocking the way..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and the "
	ts_print_item [
		item: 0x42,
		buffer: 0x0,
	]
	.string "\n"
	.string "is too weak to cut\n"
	.string "it."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk80
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x51,
		jumpIfElecMan: 0x51,
		jumpIfSlashMan: 0x51,
		jumpIfEraseMan: 0x51,
		jumpIfChargeMan: 0x51,
		jumpIfSpoutMan: 0x51,
		jumpIfTomahawkMan: 0x51,
		jumpIfTenguMan: 0x51,
		jumpIfGroundMan: 0x51,
		jumpIfDustMan: 0x51,
		jumpIfProtoMan: 0x51,
	]
	ts_check_item07 [
		item: 0x33,
		amount: 0x1,
		jumpIfEqual: 0x52,
		jumpIfGreater: 0x52,
		jumpIfLess: 0xFF,
	]
	ts_msg_open
	.string "There is a worn out\n"
	.string "bat crest relief on\n"
	.string "this door..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk81
	ts_msg_open
	.string "The door glows\n"
	.string "ominously at a\n"
	.string "stranger's approach."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8762434_unk82
	ts_msg_open
	.string "The "
	ts_print_item [
		item: 0x33,
		buffer: 0x0,
	]
	.string " has\n"
	.string "suddenly started\n"
	.string "to glow!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It seems to be\n"
	.string "reacting to the\n"
	.string "door!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_clear [
		flag: 0x85,
	]
	ts_end

	