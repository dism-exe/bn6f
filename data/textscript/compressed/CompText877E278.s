	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877E278::
	.word 0x18B00

	text_archive_start

	def_text_script CompText877E278_unk0
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: CompText877E278_unk10_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: CompText877E278_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "Mayor Cain was here\n"
	.string "until just a little\n"
	.string "while ago..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I bet the NetPolice\n"
	.string "are investigating\n"
	.string "this one seriously..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877E278_unk1

	def_text_script CompText877E278_unk2

	def_text_script CompText877E278_unk3

	def_text_script CompText877E278_unk4

	def_text_script CompText877E278_unk5
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "So the Expo is going\n"
	.string "to open..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When it starts,I'm\n"
	.string "going to take a day\n"
	.string "off and visit it!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877E278_unk6

	def_text_script CompText877E278_unk7

	def_text_script CompText877E278_unk8

	def_text_script CompText877E278_unk9

	def_text_script CompText877E278_unk10
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "Ahh... Cleaning up\n"
	.string "around here is a real\n"
	.string "pain..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Even though it's the\n"
	.string "Punishment Room,it\n"
	.string "still must be clean!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877E278_unk11

	def_text_script CompText877E278_unk12

	def_text_script CompText877E278_unk13

	def_text_script CompText877E278_unk14

	def_text_script CompText877E278_unk15

	def_text_script CompText877E278_unk16

	def_text_script CompText877E278_unk17

	def_text_script CompText877E278_unk18

	def_text_script CompText877E278_unk19

	