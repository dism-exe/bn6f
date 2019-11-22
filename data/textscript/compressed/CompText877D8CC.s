	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877D8CC::
	.word 0x23000

	text_archive_start

	def_text_script CompText877D8CC_unk0
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x16,
	]
	ts_msg_open
	.string "This JudgeTree\n"
	.string "will be the Mayor's\n"
	.string "judge."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You can't judge\n"
	.string "someone just by\n"
	.string "looking at them."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877D8CC_unk1

	def_text_script CompText877D8CC_unk2

	def_text_script CompText877D8CC_unk3

	def_text_script CompText877D8CC_unk4

	def_text_script CompText877D8CC_unk5
	ts_mugshot_show [
		mugshot: 0x16,
	]
	ts_msg_open
	.string "People have values,\n"
	.string "and that is where\n"
	.string "you find justice..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "While we have a\n"
	.string "basic concept of\n"
	.string "good and evil,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "this concept changes\n"
	.string "with location and/or\n"
	.string "the times."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Transparent justice\n"
	.string "is something we can\n"
	.string "only have inside."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877D8CC_unk6

	def_text_script CompText877D8CC_unk7

	def_text_script CompText877D8CC_unk8

	def_text_script CompText877D8CC_unk9

	def_text_script CompText877D8CC_unk10
	ts_mugshot_show [
		mugshot: 0x16,
	]
	ts_msg_open
	.string "Today there isn't\n"
	.string "a big trial so I\n"
	.string "can finally relax!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877D8CC_unk11

	def_text_script CompText877D8CC_unk12

	def_text_script CompText877D8CC_unk13

	def_text_script CompText877D8CC_unk14

	def_text_script CompText877D8CC_unk15
	ts_msg_open
	.string "A CopyBot..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It got damaged by an\n"
	.string "attack in battle...\n"
	.string "It can't move..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877D8CC_unk16
	ts_check_flag [
		flag: 0xE92,
		jumpIfTrue: 0xF,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "Ahhh!! You!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0xE91,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_end

	def_text_script CompText877D8CC_unk17

	def_text_script CompText877D8CC_unk18

	def_text_script CompText877D8CC_unk19

	def_text_script CompText877D8CC_unk20

	