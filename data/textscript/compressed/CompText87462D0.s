	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87462D0::
	.word 0x1B400

	text_archive_start

	def_text_script CompText87462D0_unk0
	ts_check_chapter 0x30, 0x33, 0xA, 0xFF
	ts_check_chapter 0x20, 0x25, 0x5, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87462D0_unk1

	def_text_script CompText87462D0_unk2

	def_text_script CompText87462D0_unk3

	def_text_script CompText87462D0_unk4

	def_text_script CompText87462D0_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Things don't look\n"
	.string "too damaged from the\n"
	.string "BlastMan incident..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87462D0_unk6

	def_text_script CompText87462D0_unk7

	def_text_script CompText87462D0_unk8

	def_text_script CompText87462D0_unk9

	def_text_script CompText87462D0_unk10
	ts_check_flag 0x70, 0x8, 0xD, 0xFF
	ts_check_flag 0x1C, 0x8, 0xC, 0xFF
	ts_check_flag 0x1A, 0x8, 0xB, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Things don't look\n"
	.string "too damaged from the\n"
	.string "BlastMan incident..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87462D0_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's look for the\n"
	.string "recorded data that\n"
	.string "Security Bot taped!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87462D0_unk12
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's take that\n"
	.string "recorded data and go\n"
	.string "to the courthouse!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We'll prove Dad's\n"
	.string "innocent!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87462D0_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Things don't look\n"
	.string "too damaged from the\n"
	.string "BlastMan incident..."
	ts_key_wait 0x0
	ts_end

	