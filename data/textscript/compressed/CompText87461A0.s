	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87461A0::
	.word 0x2E500

	text_archive_start

	def_text_script CompText87461A0_unk0
	ts_check_chapter 0x10, 0x16, 0x23, 0xFF
	ts_check_chapter 0x5, 0x5, 0x23, 0xFF
	ts_check_chapter 0x3, 0x4, 0x19, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87461A0_unk1

	def_text_script CompText87461A0_unk2

	def_text_script CompText87461A0_unk3

	def_text_script CompText87461A0_unk4

	def_text_script CompText87461A0_unk5

	def_text_script CompText87461A0_unk6

	def_text_script CompText87461A0_unk7

	def_text_script CompText87461A0_unk8

	def_text_script CompText87461A0_unk9

	def_text_script CompText87461A0_unk10

	def_text_script CompText87461A0_unk11

	def_text_script CompText87461A0_unk12

	def_text_script CompText87461A0_unk13

	def_text_script CompText87461A0_unk14

	def_text_script CompText87461A0_unk15

	def_text_script CompText87461A0_unk16

	def_text_script CompText87461A0_unk17

	def_text_script CompText87461A0_unk18

	def_text_script CompText87461A0_unk19

	def_text_script CompText87461A0_unk20

	def_text_script CompText87461A0_unk21

	def_text_script CompText87461A0_unk22

	def_text_script CompText87461A0_unk23

	def_text_script CompText87461A0_unk24

	def_text_script CompText87461A0_unk25
	ts_check_flag 0x3A, 0x4, 0x20, 0xFF
	ts_check_flag 0x36, 0x4, 0x1F, 0xFF
	ts_check_flag 0x34, 0x4, 0x1D, 0xFF
	ts_check_flag 0x32, 0x4, 0x1D, 0xFF
	ts_end

	def_text_script CompText87461A0_unk26

	def_text_script CompText87461A0_unk27

	def_text_script CompText87461A0_unk28

	def_text_script CompText87461A0_unk29
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan,it's up to\n"
	.string "you to fix the\n"
	.string "control system!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87461A0_unk30

	def_text_script CompText87461A0_unk31

	def_text_script CompText87461A0_unk32
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's show BlastMan\n"
	.string "what you've got!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87461A0_unk33

	def_text_script CompText87461A0_unk34

	def_text_script CompText87461A0_unk35
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Things don't look\n"
	.string "too damaged from the\n"
	.string "BlastMan incident..."
	ts_key_wait 0x0
	ts_end

	