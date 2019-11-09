	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8782420::
	.word 0x17500

	text_archive_start

	def_text_script CompText8782420_unk0
	ts_mugshot_show 0x1
	ts_msg_open
	.string "Look Iris! The\n"
	.string "weather map is\n"
	.string "on the floor!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x11
	.string "Yeah..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782420_unk1
	ts_mugshot_show 0x3
	ts_msg_open
	.string "Those two sure are\n"
	.string "becoming close..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I feel lonely not\n"
	.string "knowing what to\n"
	.string "say."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782420_unk2
	ts_mugshot_show 0x11
	ts_msg_open
	.string "...Hahaha!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x1
	.string "Hahaha!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782420_unk3

	def_text_script CompText8782420_unk4

	def_text_script CompText8782420_unk5

	def_text_script CompText8782420_unk6

	def_text_script CompText8782420_unk7

	def_text_script CompText8782420_unk8

	def_text_script CompText8782420_unk9

	def_text_script CompText8782420_unk10
	ts_msg_open
	.string "A CopyBot..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It got damaged by an\n"
	.string "attack in battle...\n"
	.string "It can't move..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8782420_unk11
	ts_check_flag 0xA8, 0xE, 0xA, 0xFF
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Don't like it here!?\n"
	.string "Too bad!!"
	ts_key_wait 0x0
	ts_flag_set 0xA7, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText8782420_unk12

	def_text_script CompText8782420_unk13

	def_text_script CompText8782420_unk14

	def_text_script CompText8782420_unk15

	def_text_script CompText8782420_unk16

	def_text_script CompText8782420_unk17

	def_text_script CompText8782420_unk18

	def_text_script CompText8782420_unk19

	def_text_script CompText8782420_unk20

	def_text_script CompText8782420_unk21

	def_text_script CompText8782420_unk22

	def_text_script CompText8782420_unk23

	def_text_script CompText8782420_unk24

	def_text_script CompText8782420_unk25

	def_text_script CompText8782420_unk26

	def_text_script CompText8782420_unk27

	def_text_script CompText8782420_unk28

	def_text_script CompText8782420_unk29

	