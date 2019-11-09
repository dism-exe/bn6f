	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87822F4::
	.word 0x14000

	text_archive_start

	def_text_script CompText87822F4_unk0
	ts_mugshot_show 0x33
	ts_msg_open
	.string "Yes..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This pavilion makes\n"
	.string "you think about the\n"
	.string "environment."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's our duty to\n"
	.string "protect nature for\n"
	.string "future generations."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87822F4_unk1

	def_text_script CompText87822F4_unk2

	def_text_script CompText87822F4_unk3

	def_text_script CompText87822F4_unk4

	def_text_script CompText87822F4_unk5

	def_text_script CompText87822F4_unk6

	def_text_script CompText87822F4_unk7

	def_text_script CompText87822F4_unk8

	def_text_script CompText87822F4_unk9

	def_text_script CompText87822F4_unk10
	ts_msg_open
	.string "A CopyBot..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It got damaged by an\n"
	.string "attack in battle...\n"
	.string "It can't move..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87822F4_unk11
	ts_check_flag 0xA6, 0xE, 0xA, 0xFF
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Don't like it here!?\n"
	.string "Too bad!!"
	ts_key_wait 0x0
	ts_flag_set 0xA5, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText87822F4_unk12

	def_text_script CompText87822F4_unk13

	def_text_script CompText87822F4_unk14

	def_text_script CompText87822F4_unk15

	def_text_script CompText87822F4_unk16

	def_text_script CompText87822F4_unk17

	def_text_script CompText87822F4_unk18

	def_text_script CompText87822F4_unk19

	def_text_script CompText87822F4_unk20

	def_text_script CompText87822F4_unk21

	def_text_script CompText87822F4_unk22

	def_text_script CompText87822F4_unk23

	def_text_script CompText87822F4_unk24

	def_text_script CompText87822F4_unk25

	def_text_script CompText87822F4_unk26

	def_text_script CompText87822F4_unk27

	def_text_script CompText87822F4_unk28

	def_text_script CompText87822F4_unk29

	