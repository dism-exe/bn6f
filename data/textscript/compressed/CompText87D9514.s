	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D9514::
	.word 0xAB500

	text_archive_start

	def_text_script CompText87D9514_unk0
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x1,
		jumpIfElecMan: 0x2,
		jumpIfSlashMan: 0x3,
		jumpIfEraseMan: 0x4,
		jumpIfChargeMan: 0x5,
		jumpIfSpoutMan: 0x6,
		jumpIfTomahawkMan: 0x7,
		jumpIfTenguMan: 0x8,
		jumpIfGroundMan: 0x9,
		jumpIfDustMan: 0xA,
		jumpIfProtoMan: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Ahh!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "What's wrong,\n"
	.string "MegaMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "The... Cybeast...\n"
	.string "I can feel it..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Th-Then,that\n"
	.string "means...!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D9514_unk1
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_msg_open
	.string "Huh!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "What's wrong,\n"
	.string "HeatMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x47,
	]
	.string "Some really strong\n"
	.string "power just appeared\n"
	.string "out of nowhere..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Y-You're kidding!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D9514_unk2
	ts_mugshot_show [
		mugshot: 0x49,
	]
	ts_msg_open
	.string "Nngh!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "What's wrong,\n"
	.string "ElecMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x49,
	]
	.string "The magnetic field\n"
	.string "in this area just\n"
	.string "shifted..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A power strong\n"
	.string "enough to warp the\n"
	.string "field is nearby..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Y-You're kidding!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D9514_unk3
	ts_mugshot_show [
		mugshot: 0x4B,
	]
	ts_msg_open
	.string "Hah!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "What's wrong,\n"
	.string "SlashMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4B,
	]
	.string "Watch out!!\n"
	.string "Something really\n"
	.string "dangerous is coming!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Y-You're kidding!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D9514_unk4
	ts_mugshot_show [
		mugshot: 0x50,
	]
	ts_msg_open
	.string "This is bad..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "What's wrong,\n"
	.string "EraseMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x50,
	]
	.string "A really powerful\n"
	.string "guy is calling for\n"
	.string "us..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I can hear him\n"
	.string "yelling for our\n"
	.string "deletion......"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Y-You're kidding!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D9514_unk5
	ts_mugshot_show [
		mugshot: 0x4F,
	]
	ts_msg_open
	.string "Choo,choo..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "What's wrong,\n"
	.string "ChargeMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4F,
	]
	.string "My wheels are\n"
	.string "wobbling..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Something dangerous\n"
	.string "is coming down the\n"
	.string "tracks..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Y-You're kidding!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D9514_unk6
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_msg_open
	.string "D-Drip!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "What's wrong,\n"
	.string "SpoutMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x48,
	]
	.string "My water is\n"
	.string "rippling,drip!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Something really bad\n"
	.string "is getting closer,\n"
	.string "drip!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Y-You're kidding!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D9514_unk7
	ts_mugshot_show [
		mugshot: 0x4A,
	]
	ts_msg_open
	.string "Whoa!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "What's wrong,\n"
	.string "TomahawkMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4A,
	]
	.string "A really strong\n"
	.string "spirit is getting\n"
	.string "closer..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and it's a nasty\n"
	.string "one to boot!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Y-You're kidding!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D9514_unk8
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	ts_msg_open
	.string "Hmm..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "What's wrong,\n"
	.string "TenguMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	.string "I sense something\n"
	.string "evil approaching.\n"
	.string "Keep your guard up!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Y-You're kidding!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D9514_unk9
	ts_mugshot_show [
		mugshot: 0x4D,
	]
	ts_msg_open
	.string "Whiiiir!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "What's wrong,\n"
	.string "GroundMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4D,
	]
	.string "Bad,bad... Something\n"
	.string "bad is coming,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "or so my drill\n"
	.string "bits say..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Y-You're kidding!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D9514_unk10
	ts_mugshot_show [
		mugshot: 0x4E,
	]
	ts_msg_open
	.string "Hmmmmm!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "What's wrong,\n"
	.string "DustMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4E,
	]
	.string "Something really\n"
	.string "bad's coming this\n"
	.string "way...!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Y-You're kidding!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D9514_unk11
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Aaaah!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D9514_unk12
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "M-MegaMan...!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "What's going on!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 13,
	]

	def_text_script CompText87D9514_unk13
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0xE,
	]
	ts_mugshot_show [
		mugshot: 0x58,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x192,
	]
	.string "*grrrrrrrrr!!*"
	ts_wait [
		frames: 0x50,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87D9514_unk14
	ts_mugshot_show [
		mugshot: 0x59,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x194,
	]
	.string "*screeeeeech!!*"
	ts_wait [
		frames: 0x50,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87D9514_unk15
	ts_mugshot_hide
	ts_msg_open
	.string "It's just data bits\n"
	.string "from the Underground\n"
	.string "in a Cybeast's shape."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D9514_unk16
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "B-Bass!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 17,
	]

	def_text_script CompText87D9514_unk17
	ts_mugshot_show [
		mugshot: 0x5B,
	]
	ts_msg_open
	.string "I finally have the\n"
	.string "power of a beast..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There's no one in\n"
	.string "the Cyberworld who\n"
	.string "can stop me now..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I will destroy\n"
	.string "the Cyberworld!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 18,
	]

	def_text_script CompText87D9514_unk18
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Destroy the\n"
	.string "Cyberworld...!?\n"
	.string "I won't let you!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 19,
	]

	def_text_script CompText87D9514_unk19
	ts_mugshot_show [
		mugshot: 0x5B,
	]
	ts_msg_open
	.string "Hmph!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There's no way a\n"
	.string "weakling like you\n"
	.string "can stop me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you want to fight\n"
	.string "me,first you'll have\n"
	.string "to go through him!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Show me what you've\n"
	.string "got!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 20,
	]

	def_text_script CompText87D9514_unk20
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x15,
	]
	ts_mugshot_show [
		mugshot: 0x58,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x191,
	]
	.string "*grrrrrrrr!!*"
	ts_wait [
		frames: 0x5A,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 22,
	]

	def_text_script CompText87D9514_unk21
	ts_mugshot_show [
		mugshot: 0x59,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x193,
	]
	.string "*screeeeech!!*"
	ts_wait [
		frames: 0x46,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 22,
	]

	def_text_script CompText87D9514_unk22
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Here it comes!!\n"
	.string "Battle routine,set!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 23,
	]

	def_text_script CompText87D9514_unk23
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x18,
		jumpIfElecMan: 0x19,
		jumpIfSlashMan: 0x1A,
		jumpIfEraseMan: 0x1B,
		jumpIfChargeMan: 0x1C,
		jumpIfSpoutMan: 0x1D,
		jumpIfTomahawkMan: 0x1E,
		jumpIfTenguMan: 0x1F,
		jumpIfGroundMan: 0x20,
		jumpIfDustMan: 0x21,
		jumpIfProtoMan: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Execute!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 34,
	]

	def_text_script CompText87D9514_unk24
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_msg_open
	.string "Execute!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 34,
	]

	def_text_script CompText87D9514_unk25
	ts_mugshot_show [
		mugshot: 0x49,
	]
	ts_msg_open
	.string "Execute!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 34,
	]

	def_text_script CompText87D9514_unk26
	ts_mugshot_show [
		mugshot: 0x4B,
	]
	ts_msg_open
	.string "Execute!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 34,
	]

	def_text_script CompText87D9514_unk27
	ts_mugshot_show [
		mugshot: 0x50,
	]
	ts_msg_open
	.string "Execute!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 34,
	]

	def_text_script CompText87D9514_unk28
	ts_mugshot_show [
		mugshot: 0x4F,
	]
	ts_msg_open
	.string "Execute!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 34,
	]

	def_text_script CompText87D9514_unk29
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_msg_open
	.string "Execute!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 34,
	]

	def_text_script CompText87D9514_unk30
	ts_mugshot_show [
		mugshot: 0x4A,
	]
	ts_msg_open
	.string "Execute!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 34,
	]

	def_text_script CompText87D9514_unk31
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	ts_msg_open
	.string "Execute!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 34,
	]

	def_text_script CompText87D9514_unk32
	ts_mugshot_show [
		mugshot: 0x4D,
	]
	ts_msg_open
	.string "Execute!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 34,
	]

	def_text_script CompText87D9514_unk33
	ts_mugshot_show [
		mugshot: 0x4E,
	]
	ts_msg_open
	.string "Execute!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 34,
	]

	def_text_script CompText87D9514_unk34
	ts_mugshot_show [
		mugshot: 0x5B,
	]
	ts_msg_open
	.string "Weak fool!! Return\n"
	.string "to the 0's and 1's\n"
	.string "you're made of!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 35,
	]

	def_text_script CompText87D9514_unk35
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x24,
	]
	ts_mugshot_show [
		mugshot: 0x58,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x191,
	]
	.string "*grrrrrrrr!!*"
	ts_wait [
		frames: 0x5A,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87D9514_unk36
	ts_mugshot_show [
		mugshot: 0x59,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x193,
	]
	.string "*screeeeeeech!!*"
	ts_wait [
		frames: 0x46,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	