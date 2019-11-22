	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87821B4::
	.word 0x15700

	text_archive_start

	def_text_script CompText87821B4_unk0
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "Awesome...\n"
	.string "Real fish all\n"
	.string "around!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They did a good\n"
	.string "job!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87821B4_unk1
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Yeah!\n"
	.string "This water is\n"
	.string "great!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "No matter how much\n"
	.string "I drink,it's still\n"
	.string "delicious!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87821B4_unk2

	def_text_script CompText87821B4_unk3

	def_text_script CompText87821B4_unk4

	def_text_script CompText87821B4_unk5

	def_text_script CompText87821B4_unk6

	def_text_script CompText87821B4_unk7

	def_text_script CompText87821B4_unk8

	def_text_script CompText87821B4_unk9

	def_text_script CompText87821B4_unk10
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

	def_text_script CompText87821B4_unk11
	ts_check_flag [
		flag: 0xEA4,
		jumpIfTrue: 0xA,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "Don't like it here!?\n"
	.string "Too bad!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0xEA3,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_end

	def_text_script CompText87821B4_unk12

	def_text_script CompText87821B4_unk13

	def_text_script CompText87821B4_unk14

	def_text_script CompText87821B4_unk15

	def_text_script CompText87821B4_unk16

	def_text_script CompText87821B4_unk17

	def_text_script CompText87821B4_unk18

	def_text_script CompText87821B4_unk19

	def_text_script CompText87821B4_unk20

	def_text_script CompText87821B4_unk21

	def_text_script CompText87821B4_unk22

	def_text_script CompText87821B4_unk23

	def_text_script CompText87821B4_unk24

	def_text_script CompText87821B4_unk25

	def_text_script CompText87821B4_unk26

	def_text_script CompText87821B4_unk27

	def_text_script CompText87821B4_unk28

	def_text_script CompText87821B4_unk29

	