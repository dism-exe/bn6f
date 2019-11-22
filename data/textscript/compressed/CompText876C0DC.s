	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876C0DC::
	.word 0x24600

	text_archive_start

	def_text_script CompText876C0DC_unk0
	ts_mugshot_show [
		mugshot: 0x9,
	]
	ts_msg_open
	.string "It was really noisy.\n"
	.string "Did something\n"
	.string "happen?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Nothing,huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I see..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876C0DC_unk1

	def_text_script CompText876C0DC_unk2

	def_text_script CompText876C0DC_unk3

	def_text_script CompText876C0DC_unk4

	def_text_script CompText876C0DC_unk5
	ts_mugshot_show [
		mugshot: 0xB,
	]
	ts_msg_open
	.string "AHHHHHH!!\n"
	.string "I don't get it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x9,
	]
	.string "So you take this\n"
	.string "are and multiply\n"
	.string "it by the height."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Simple enough,right?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0xB,
	]
	.string "Hmmmm..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I don't get how\n"
	.string "get the area..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876C0DC_unk6
	ts_mugshot_show [
		mugshot: 0x9,
	]
	ts_msg_open
	.string "So this time you\n"
	.string "multiply the width\n"
	.string "times the length."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Then you multiply\n"
	.string "it by the height."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0xB,
	]
	.string "Uhh... My head feels\n"
	.string "like it's gonna\n"
	.string "explode..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876C0DC_unk7

	def_text_script CompText876C0DC_unk8

	def_text_script CompText876C0DC_unk9

	def_text_script CompText876C0DC_unk10
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

	def_text_script CompText876C0DC_unk11
	ts_check_flag [
		flag: 0xE76,
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
		flag: 0xE75,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_end

	def_text_script CompText876C0DC_unk12

	def_text_script CompText876C0DC_unk13

	def_text_script CompText876C0DC_unk14

	def_text_script CompText876C0DC_unk15

	def_text_script CompText876C0DC_unk16

	def_text_script CompText876C0DC_unk17

	def_text_script CompText876C0DC_unk18

	def_text_script CompText876C0DC_unk19

	def_text_script CompText876C0DC_unk20

	def_text_script CompText876C0DC_unk21

	def_text_script CompText876C0DC_unk22

	def_text_script CompText876C0DC_unk23

	def_text_script CompText876C0DC_unk24

	def_text_script CompText876C0DC_unk25

	def_text_script CompText876C0DC_unk26

	def_text_script CompText876C0DC_unk27

	def_text_script CompText876C0DC_unk28

	def_text_script CompText876C0DC_unk29

	