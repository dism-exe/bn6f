	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877F460::
	.word 0x15100

	text_archive_start

	def_text_script CompText877F460_unk0

	def_text_script CompText877F460_unk1

	def_text_script CompText877F460_unk2

	def_text_script CompText877F460_unk3

	def_text_script CompText877F460_unk4

	def_text_script CompText877F460_unk5
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "There are signs\n"
	.string "of a struggle on the\n"
	.string "Heliport down there."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Someone must have\n"
	.string "gotten into a fight.\n"
	.string "How terrible..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877F460_unk6

	def_text_script CompText877F460_unk7

	def_text_script CompText877F460_unk8

	def_text_script CompText877F460_unk9

	def_text_script CompText877F460_unk10
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "Really!? You got\n"
	.string "picked for the Expo\n"
	.string "pre-opening!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There is going to be\n"
	.string "a SkyTown pavilion\n"
	.string "at the Expo!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You can check\n"
	.string "out a replica of\n"
	.string "Mr.Weather inside!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877F460_unk11

	def_text_script CompText877F460_unk12

	def_text_script CompText877F460_unk13

	def_text_script CompText877F460_unk14

	def_text_script CompText877F460_unk15

	def_text_script CompText877F460_unk16

	def_text_script CompText877F460_unk17

	def_text_script CompText877F460_unk18

	def_text_script CompText877F460_unk19

	