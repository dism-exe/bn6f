	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87601FC::
	.word 0x5AC00

	text_archive_start

	def_text_script CompText87601FC_unk0
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It has a map of\n"
	.string "Underground1 on it."
	ts_key_wait [
		any: 0x0,
	]
	ts_start_map [
		map: 0xD,
	]
	ts_end

	def_text_script CompText87601FC_unk1
	ts_msg_open
	.string "The darkness won't\n"
	.string "budge,even with your\n"
	.string "strongest attacks."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Maybe the\n"
	.string "EvilSpirits are\n"
	.string "related somehow..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87601FC_unk2
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0xFF,
		jumpIfElecMan: 0x9,
		jumpIfSlashMan: 0xFF,
		jumpIfEraseMan: 0xA,
		jumpIfChargeMan: 0xFF,
		jumpIfSpoutMan: 0xFF,
		jumpIfTomahawkMan: 0xB,
		jumpIfTenguMan: 0xFF,
		jumpIfGroundMan: 0xFF,
		jumpIfDustMan: 0xC,
		jumpIfProtoMan: 0xFF,
	]
	ts_check_item07 [
		item: 0x1C,
		amount: 0x1,
		jumpIfEqual: 0x4,
		jumpIfGreater: 0x4,
		jumpIfLess: 0xFF,
	]
	ts_msg_open
	.string "A thick,dense cloud\n"
	.string "is blocking the way!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87601FC_unk3
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0xFF,
		jumpIfElecMan: 0xFF,
		jumpIfSlashMan: 0xE,
		jumpIfEraseMan: 0xFF,
		jumpIfChargeMan: 0xF,
		jumpIfSpoutMan: 0xFF,
		jumpIfTomahawkMan: 0xFF,
		jumpIfTenguMan: 0x10,
		jumpIfGroundMan: 0xFF,
		jumpIfDustMan: 0x11,
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

	def_text_script CompText87601FC_unk4
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

	def_text_script CompText87601FC_unk5

	def_text_script CompText87601FC_unk6

	def_text_script CompText87601FC_unk7

	def_text_script CompText87601FC_unk8

	def_text_script CompText87601FC_unk9
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
		target: 13,
	]

	def_text_script CompText87601FC_unk10
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
		target: 13,
	]

	def_text_script CompText87601FC_unk11
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
		target: 13,
	]

	def_text_script CompText87601FC_unk12
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
		target: 13,
	]

	def_text_script CompText87601FC_unk13
	ts_flag_clear [
		flag: 0x178,
	]
	ts_end

	def_text_script CompText87601FC_unk14
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
		target: 18,
	]

	def_text_script CompText87601FC_unk15
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
		target: 18,
	]

	def_text_script CompText87601FC_unk16
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
		target: 18,
	]

	def_text_script CompText87601FC_unk17
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
		target: 18,
	]

	def_text_script CompText87601FC_unk18
	ts_flag_clear [
		flag: 0x174,
	]
	ts_end

	