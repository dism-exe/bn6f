	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875BCB4::
	.word 0x20D00

	text_archive_start

	def_text_script CompText875BCB4_unk0
	ts_msg_open
	.string "The observers'\n"
	.string "seats..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Many people watch\n"
	.string "the trials from\n"
	.string "these seats."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875BCB4_unk1
	ts_msg_open
	.string "It's the witness\n"
	.string "stand..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Standing right in\n"
	.string "front of the\n"
	.string "JudgeTree..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "it would make anyone\n"
	.string "scared to lie."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875BCB4_unk2
	ts_msg_open
	.string "The prosecutor's\n"
	.string "bench..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The prosecutor lays\n"
	.string "out the facts of the\n"
	.string "case from here."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875BCB4_unk3
	ts_msg_open
	.string "The defendant's\n"
	.string "bench..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The defense lawyers\n"
	.string "fight hard for the\n"
	.string "accused from here."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875BCB4_unk4
	ts_msg_open
	.string "The control panel\n"
	.string "for the JudgeTree."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It looks like you\n"
	.string "can jack in..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875BCB4_unk5
	ts_msg_open
	.string "This wooden gavel's\n"
	.string "loud \"crack\" sounds\n"
	.string "the accused's fate."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	