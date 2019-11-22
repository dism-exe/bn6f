	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8768D28::
	.word 0x21800

	text_archive_start

	def_text_script CompText8768D28_unk0
	ts_check_flag [
		flag: 0xA06,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "You're going to Sky\n"
	.string "Town? Be careful,OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8768D28_unk1
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "Oh! You're back\n"
	.string "already? You're\n"
	.string "early..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Well,I'm going to\n"
	.string "go shopping soon."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Can you watch the\n"
	.string "house while..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Huh? You're going\n"
	.string "out again? Oh..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8768D28_unk2

	def_text_script CompText8768D28_unk3

	def_text_script CompText8768D28_unk4

	def_text_script CompText8768D28_unk5

	def_text_script CompText8768D28_unk6

	def_text_script CompText8768D28_unk7

	def_text_script CompText8768D28_unk8

	def_text_script CompText8768D28_unk9

	def_text_script CompText8768D28_unk10
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "The weather's so\n"
	.string "nice today!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I think I'll hang\n"
	.string "the laundry outside\n"
	.string "for a change!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8768D28_unk11

	def_text_script CompText8768D28_unk12

	def_text_script CompText8768D28_unk13

	def_text_script CompText8768D28_unk14

	def_text_script CompText8768D28_unk15
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "It's a holiday,but\n"
	.string "Dad's still hard\n"
	.string "at work in the lab."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And here I thought I\n"
	.string "might get him to go\n"
	.string "shopping with me."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8768D28_unk16

	def_text_script CompText8768D28_unk17

	def_text_script CompText8768D28_unk18

	def_text_script CompText8768D28_unk19

	def_text_script CompText8768D28_unk20
	ts_mugshot_show [
		mugshot: 0x6,
	]
	ts_msg_open
	.string "What's wrong,Lan?\n"
	.string "You look lost... Did\n"
	.string "something happen?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	