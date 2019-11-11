	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C84A0::
	.word 0x35A00

	text_archive_start

	def_text_script CompText87C84A0_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We have to go to the\n"
	.string "back of this deep\n"
	.string "cave...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder what kind\n"
	.string "of world it is..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's really\n"
	.string "creepy..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But we can do it!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87C84A0_unk1
	ts_check_navi_all 0xFF, 0xFF, 0x5, 0x3, 0xA, 0x9, 0x2, 0x6, 0x4, 0x7, 0x8, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head out,\n"
	.string "HeatMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x47
	.string "OK,let's burn!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C84A0_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head out,\n"
	.string "SpoutMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x48
	.string "Alright,drip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C84A0_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head out,\n"
	.string "SlashMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4B
	.string "Slash! OK!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C84A0_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head out,\n"
	.string "TenguMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4C
	.string "Onward!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C84A0_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head out,\n"
	.string "ElecMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x49
	.string "Yes,let's..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C84A0_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head out,\n"
	.string "TomahawkMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4A
	.string "I thought you'd\n"
	.string "never say so! Let's\n"
	.string "get going already!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C84A0_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head out,\n"
	.string "GroundMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4D
	.string "Yeah! I'll drill\n"
	.string "my way through if\n"
	.string "I have to!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C84A0_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head out,\n"
	.string "DustMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4E
	.string "Gahahahaha!\n"
	.string "Leave it to me!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C84A0_unk9
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head out,\n"
	.string "ChargeMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x4F
	.string "Ready for departure!\n"
	.string "Chuga-chuga!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C84A0_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head out,\n"
	.string "EraseMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x50
	.string "The Underground,huh?\n"
	.string "Sounds like my type\n"
	.string "of place..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C84A0_unk11
	ts_mugshot_show 0x53
	ts_msg_open
	.string "......"
	ts_key_wait 0x0
	ts_end

	