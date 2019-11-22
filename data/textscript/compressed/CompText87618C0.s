	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87618C0::
	.word 0xDAD00

	text_archive_start

	def_text_script CompText87618C0_unk0
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "UndernetZero on it."
	ts_key_wait 0x0
	ts_start_map 0x13
	ts_end

	def_text_script CompText87618C0_unk1
	ts_msg_open
	.string "It says:"
	ts_key_wait 0x0
	ts_clear_msg
	.string "   Here rests the\n"
	.string "    Cyberworld's\n"
	.string " God of Destruction"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87618C0_unk2
	ts_check_navi_all 0xFF, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22
	ts_check_item07 0x45, 0x1, 0xFF, 0xFF, 0x21
	ts_msg_open
	.string "MegaMan got:\n"
	.string "\""
	ts_print_item 0x45, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_flag_clear 0x36, 0x1
	ts_end

	def_text_script CompText87618C0_unk3
	ts_check_navi_all 0xFF, 0xFF, 0x8, 0xFF, 0x9, 0xFF, 0xA, 0xFF, 0xFF, 0xB, 0xFF, 0xFF
	ts_msg_open
	.string "The cyberwater's\n"
	.string "flow is too strong\n"
	.string "to go against!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87618C0_unk4
	ts_check_navi_all 0xFF, 0xD, 0xFF, 0xE, 0xFF, 0xFF, 0xFF, 0xF, 0xFF, 0x10, 0xFF, 0xFF
	ts_check_item07 0x42, 0x1, 0x24, 0x24, 0xFF
	ts_msg_open
	.string "A strong-looking\n"
	.string "cybertree is\n"
	.string "blocking the way..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87618C0_unk5
	ts_check_navi_all 0xFF, 0xFF, 0x12, 0xFF, 0x13, 0xFF, 0xFF, 0x14, 0xFF, 0xFF, 0x15, 0xFF
	ts_check_item07 0x1C, 0x1, 0x23, 0x23, 0xFF
	ts_msg_open
	.string "A thick,dense cloud\n"
	.string "is blocking the way!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87618C0_unk6
	ts_check_navi_all 0xFF, 0xFF, 0xFF, 0x17, 0xFF, 0x18, 0xFF, 0xFF, 0x19, 0xFF, 0x1A, 0xFF
	ts_msg_open
	.string "There is a violent\n"
	.string "cyclone blocking\n"
	.string "the way!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87618C0_unk7
	ts_check_navi_all 0xFF, 0x1C, 0xFF, 0xFF, 0xFF, 0x1D, 0x1E, 0xFF, 0x1F, 0xFF, 0xFF, 0xFF
	ts_msg_open
	.string "The flames are too\n"
	.string "high to pass\n"
	.string "through!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87618C0_unk8
	ts_mugshot_show 0x49
	ts_msg_open
	.string "Hmm,if I pass very\n"
	.string "strong electricity\n"
	.string "through the water..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can split it into\n"
	.string "hydrogen and oxygen!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Elec Power!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xC6, 0x0
	ts_wait 0x1E, 0x0
	.string "The raging water-\n"
	.string "spout evaporated\n"
	.string "off as steam!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87618C0_unk9
	ts_mugshot_show 0x50
	ts_msg_open
	.string "Hiyahaha!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "My Hex Sickle can\n"
	.string "cut through\n"
	.string "anything!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hiyahahaha!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xC7, 0x0
	ts_wait 0x1E, 0x0
	.string "The Hex Sickle cut\n"
	.string "the waterspout!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87618C0_unk10
	ts_mugshot_show 0x48
	ts_msg_open
	.string "If it's got to do\n"
	.string "with water,leave it\n"
	.string "to me,drip!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Water...\n"
	.string "Calm!!\n"
	.string "... drip."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "At SpoutMan's words,\n"
	.string "the waterspout\n"
	.string "calmly disappeared!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87618C0_unk11
	ts_mugshot_show 0x4D
	ts_msg_open
	.string "Whiiiiiir!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "All we gotta do is\n"
	.string "dump some dirt on\n"
	.string "the source!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Whiiiiiir!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xBF, 0x1
	ts_wait 0x1E, 0x0
	.string "GroundMan stopped up\n"
	.string "the water opening!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87618C0_unk12
	ts_flag_clear 0x66, 0x1
	ts_end

	def_text_script CompText87618C0_unk13
	ts_mugshot_show 0x47
	ts_msg_open
	.string "This tree is toast!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Burn,baby,burn!\n"
	.string "Yeah!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xF7, 0x0
	ts_wait 0x1E, 0x0
	.string "HeatMan's raging\n"
	.string "flames burned the\n"
	.string "cybertree to ashes!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script CompText87618C0_unk14
	ts_mugshot_show 0x4B
	ts_msg_open
	.string "Slice and dice!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Slaaaaaaaash!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xFA, 0x0
	ts_wait 0x1E, 0x0
	.string "SlashMan's powerful\n"
	.string "attack cut the\n"
	.string "cybertree down!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script CompText87618C0_unk15
	ts_mugshot_show 0x4A
	ts_msg_open
	.string "Heh,this tree will\n"
	.string "fall in no time\n"
	.string "flat!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Tomahawk Swing!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xA, 0x1
	ts_wait 0x1E, 0x0
	.string "The cybertree was\n"
	.string "split into two!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script CompText87618C0_unk16
	ts_mugshot_show 0x4D
	ts_msg_open
	.string "Whiiiiiir!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll uproot this\n"
	.string "tree from the bottom\n"
	.string "up!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Whiiiiiir!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xBF, 0x1
	ts_wait 0x1E, 0x0
	.string "GroundMan's charge\n"
	.string "dug the cybertree\n"
	.string "out,roots and all!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script CompText87618C0_unk17
	ts_flag_clear 0x6B, 0x1
	ts_end

	def_text_script CompText87618C0_unk18
	ts_mugshot_show 0x49
	ts_msg_open
	.string "These thunderclouds\n"
	.string "are just what I\n"
	.string "like..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Zaaaaaap!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xC6, 0x0
	ts_wait 0x1E, 0x0
	.string "ElecMan's lightning\n"
	.string "dispersed the cloud!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script CompText87618C0_unk19
	ts_mugshot_show 0x50
	ts_msg_open
	.string "Hiyahaha!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "My Hex Sickle can\n"
	.string "cut even shapeless\n"
	.string "things!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xC7, 0x0
	ts_wait 0x1E, 0x0
	.string "EraseMan's Hex\n"
	.string "Sickle cut through\n"
	.string "the cloud!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script CompText87618C0_unk20
	ts_mugshot_show 0x4A
	ts_msg_open
	.string "Hey,cloud!\n"
	.string "Here's a Tomahawk\n"
	.string "Swing for you!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xA, 0x1
	ts_wait 0x1E, 0x0
	.string "The Tomahawk Swing's\n"
	.string "strong wind blew the\n"
	.string "cloud away!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script CompText87618C0_unk21
	ts_mugshot_show 0x4E
	ts_msg_open
	.string "This cloud's just\n"
	.string "like that junk over\n"
	.string "there!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xAD, 0x0
	ts_wait 0x1E, 0x0
	.string "DustMan sucked up\n"
	.string "the cloud!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script CompText87618C0_unk22
	ts_flag_clear 0x7A, 0x1
	ts_end

	def_text_script CompText87618C0_unk23
	ts_mugshot_show 0x4B
	ts_msg_open
	.string "This cyclone has\n"
	.string "nothing on me!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0x64, 0x1
	ts_wait 0x1E, 0x0
	.string "SlashMan's super\n"
	.string "spin attack wiped\n"
	.string "the cyclone out!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 27

	def_text_script CompText87618C0_unk24
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "Choo,chooooo!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm going to charge\n"
	.string "through this\n"
	.string "cyclone!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xE4, 0x0
	ts_wait 0x1E, 0x0
	.string "ChargeMan erased the\n"
	.string "cyclone with his\n"
	.string "super charge attack!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 27

	def_text_script CompText87618C0_unk25
	ts_mugshot_show 0x4C
	ts_msg_open
	.string "A cyclone like this\n"
	.string "is nothing for a\n"
	.string "wind master..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hmmmph!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0x1F, 0x1
	ts_wait 0x1E, 0x0
	.string "TenguMan erased the\n"
	.string "cyclone with one\n"
	.string "wave of his fan!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 27

	def_text_script CompText87618C0_unk26
	ts_mugshot_show 0x4E
	ts_msg_open
	.string "Gahahaha!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder if this\n"
	.string "cyclone can stand up\n"
	.string "to my vacuum power!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "*vroooooom!!*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 0xAD, 0x0
	ts_wait 0x1E, 0x0
	.string "DustMan sucked up\n"
	.string "the cyclone!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 27

	def_text_script CompText87618C0_unk27
	ts_flag_clear 0x75, 0x1
	ts_end

	def_text_script CompText87618C0_unk28
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
	ts_jump 32

	def_text_script CompText87618C0_unk29
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
	ts_jump 32

	def_text_script CompText87618C0_unk30
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
	ts_jump 32

	def_text_script CompText87618C0_unk31
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
	ts_jump 32

	def_text_script CompText87618C0_unk32
	ts_flag_clear 0x70, 0x1
	ts_end

	def_text_script CompText87618C0_unk33
	ts_msg_open
	.string "This door has been\n"
	.string "sealed shut by a\n"
	.string "great evil..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87618C0_unk34
	ts_msg_open
	.string "The door glows\n"
	.string "ominously at a\n"
	.string "stranger's approach."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87618C0_unk35
	ts_msg_open
	.string "A thick,dense cloud\n"
	.string "is blocking the way!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's too thick for\n"
	.string "the "
	ts_print_item 0x1C, 0x0
	.string " to\n"
	.string "suck up."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87618C0_unk36
	ts_msg_open
	.string "A strong-looking\n"
	.string "cybertree is\n"
	.string "blocking the way..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "and the "
	ts_print_item 0x42, 0x0
	.string "\n"
	.string "is too weak to cut\n"
	.string "it down."
	ts_key_wait 0x0
	ts_end

	