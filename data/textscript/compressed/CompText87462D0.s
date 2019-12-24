	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87462D0::
	.word 0x1B400

	text_archive_start

	def_text_script CompText87462D0_unk0
	ts_check_chapter [
		lower: 0x30,
		upper: 0x33,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x20,
		upper: 0x25,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87462D0_unk1

	def_text_script CompText87462D0_unk2

	def_text_script CompText87462D0_unk3

	def_text_script CompText87462D0_unk4

	def_text_script CompText87462D0_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Things don't look\n"
	.string "too damaged from the\n"
	.string "BlastMan incident..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87462D0_unk6

	def_text_script CompText87462D0_unk7

	def_text_script CompText87462D0_unk8

	def_text_script CompText87462D0_unk9

	def_text_script CompText87462D0_unk10
	ts_check_flag [
		flag: 0x870,
		jumpIfTrue: 0xD,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x81C,
		jumpIfTrue: 0xC,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x81A,
		jumpIfTrue: 0xB,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Things don't look\n"
	.string "too damaged from the\n"
	.string "BlastMan incident..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87462D0_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's look for the\n"
	.string "recorded data that\n"
	.string "Security Bot taped!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87462D0_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's take that\n"
	.string "recorded data and go\n"
	.string "to the courthouse!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'll prove Dad's\n"
	.string "innocent!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87462D0_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Things don't look\n"
	.string "too damaged from the\n"
	.string "BlastMan incident..."
	ts_key_wait any=0x0
	ts_end

	