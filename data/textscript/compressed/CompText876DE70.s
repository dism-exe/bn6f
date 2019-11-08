	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876DE70::
	.word 0x27400

	text_archive_start

	def_text_script CompText876DE70_unk0

	def_text_script CompText876DE70_unk1

	def_text_script CompText876DE70_unk2

	def_text_script CompText876DE70_unk3

	def_text_script CompText876DE70_unk4

	def_text_script CompText876DE70_unk5

	def_text_script CompText876DE70_unk6

	def_text_script CompText876DE70_unk7

	def_text_script CompText876DE70_unk8

	def_text_script CompText876DE70_unk9

	def_text_script CompText876DE70_unk10
	ts_check_flag 0x10, 0xA, 0xF, 0xFF
	ts_mugshot_show 0xC
	ts_msg_open
	.string "I came down here to\n"
	.string "get my brother,but"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that kid is in\n"
	.string "detention with\n"
	.string "his teacher..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "which means that I'm\n"
	.string "stuck waiting for\n"
	.string "him for a while..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876DE70_unk11
	ts_check_flag 0x10, 0xA, 0x10, 0xFF
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Good bye.\n"
	.string "Be careful on your\n"
	.string "way home."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876DE70_unk12

	def_text_script CompText876DE70_unk13

	def_text_script CompText876DE70_unk14

	def_text_script CompText876DE70_unk15
	ts_mugshot_show 0xC
	ts_msg_open
	.string "The weather's gotten\n"
	.string "really weird..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've gotta wait for\n"
	.string "Mom to come pick me\n"
	.string "up..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876DE70_unk16
	ts_mugshot_show 0x10
	ts_msg_open
	.string "The weather has\n"
	.string "become very strange.\n"
	.string "Please hurry home."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Go!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876DE70_unk17

	def_text_script CompText876DE70_unk18

	def_text_script CompText876DE70_unk19

	def_text_script CompText876DE70_unk20

	def_text_script CompText876DE70_unk21

	def_text_script CompText876DE70_unk22

	def_text_script CompText876DE70_unk23

	def_text_script CompText876DE70_unk24

	def_text_script CompText876DE70_unk25

	def_text_script CompText876DE70_unk26

	def_text_script CompText876DE70_unk27

	def_text_script CompText876DE70_unk28

	def_text_script CompText876DE70_unk29

	def_text_script CompText876DE70_unk30
	ts_check_flag 0xA, 0xC, 0x1F, 0xFF
	ts_mugshot_show 0xC
	ts_msg_open
	.string "Looks like the\n"
	.string "final round of\n"
	.string "the Operator Navi"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Selection Test has\n"
	.string "already begun!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Good luck!\n"
	.string "I'll be cheering\n"
	.string "for you!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876DE70_unk31
	ts_mugshot_show 0xC
	ts_msg_open
	.string "What were the\n"
	.string "final results?\n"
	.string "How did you do?"
	ts_key_wait 0x0
	ts_end

	