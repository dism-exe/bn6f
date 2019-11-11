	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B3D0C::
	.word 0x27500

	text_archive_start

	def_text_script CompText87B3D0C_unk0
	ts_jump 5

	def_text_script CompText87B3D0C_unk1
	ts_jump 10

	def_text_script CompText87B3D0C_unk2
	ts_jump 15

	def_text_script CompText87B3D0C_unk3

	def_text_script CompText87B3D0C_unk4

	def_text_script CompText87B3D0C_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Looks like we got\n"
	.string "all the fish data\n"
	.string "in this area."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87B3D0C_unk6
	ts_mugshot_show 0x48
	ts_msg_open
	.string "Alright,drip!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Get me down from\n"
	.string "here,and let's\n"
	.string "push forward,drip!"
	ts_key_wait 0x0
	ts_flag_set 0x71, 0x6
	ts_check_flag 0x71, 0x6, 0xFF, 0x7
	ts_check_flag 0x73, 0x6, 0xFF, 0x7
	ts_check_flag 0x75, 0x6, 0xFF, 0x7
	ts_clear_msg
	ts_jump 20

	def_text_script CompText87B3D0C_unk7
	ts_end

	def_text_script CompText87B3D0C_unk8

	def_text_script CompText87B3D0C_unk9

	def_text_script CompText87B3D0C_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Looks like we got\n"
	.string "all the fish data\n"
	.string "in this area."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87B3D0C_unk11
	ts_mugshot_show 0x48
	ts_msg_open
	.string "Drip,drip,drip!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Get me down from\n"
	.string "here,and let's\n"
	.string "push forward,drip!"
	ts_key_wait 0x0
	ts_flag_set 0x73, 0x6
	ts_check_flag 0x71, 0x6, 0xFF, 0xC
	ts_check_flag 0x73, 0x6, 0xFF, 0xC
	ts_check_flag 0x75, 0x6, 0xFF, 0xC
	ts_clear_msg
	ts_jump 20

	def_text_script CompText87B3D0C_unk12
	ts_end

	def_text_script CompText87B3D0C_unk13

	def_text_script CompText87B3D0C_unk14

	def_text_script CompText87B3D0C_unk15
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Looks like we got\n"
	.string "all the fish data\n"
	.string "in this area."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 16

	def_text_script CompText87B3D0C_unk16
	ts_mugshot_show 0x48
	ts_msg_open
	.string "Alright,drip!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Get me down from\n"
	.string "here,and let's\n"
	.string "push forward,drip!"
	ts_key_wait 0x0
	ts_flag_set 0x75, 0x6
	ts_check_flag 0x71, 0x6, 0xFF, 0x11
	ts_check_flag 0x73, 0x6, 0xFF, 0x11
	ts_check_flag 0x75, 0x6, 0xFF, 0x11
	ts_clear_msg
	ts_jump 20

	def_text_script CompText87B3D0C_unk17
	ts_end

	def_text_script CompText87B3D0C_unk18

	def_text_script CompText87B3D0C_unk19

	def_text_script CompText87B3D0C_unk20
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Alright! Let's\n"
	.string "head back to the\n"
	.string "Aquarium HP!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 21

	def_text_script CompText87B3D0C_unk21
	ts_mugshot_show 0x48
	ts_msg_open
	.string "Roger,drip!"
	ts_key_wait 0x0
	ts_flag_set 0x77, 0x6
	ts_flag_set 0x78, 0x6
	ts_end

	def_text_script CompText87B3D0C_unk22

	def_text_script CompText87B3D0C_unk23

	def_text_script CompText87B3D0C_unk24

	