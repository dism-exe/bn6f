	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AA594::
	.word 0x2C500

	text_archive_start

	def_text_script CompText87AA594_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Alright!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AA594_unk1
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_play00 track=0x73
	.string "MegaMan got:\n"
	.string "\""
	ts_print_item [
		item: 0x8,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x81,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x82,
	]
	ts_clear_msg
	ts_jump target=CompText87AA594_unk2_id

	def_text_script CompText87AA594_unk2
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,let's make sure\n"
	.string "the Repair Navi gets\n"
	.string "this!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA594_unk3_id

	def_text_script CompText87AA594_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK! Time to\n"
	.string "jack out,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA594_unk4_id

	def_text_script CompText87AA594_unk4
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Roge..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA594_unk5_id

	def_text_script CompText87AA594_unk5
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_call_p_e_t_effect effect=0x3
	.string "RRRRRR!!"
	ts_wait frames=0x80
	ts_call_p_e_t_effect effect=0x1
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_clear_msg
	ts_jump target=CompText87AA594_unk6_id

	def_text_script CompText87AA594_unk6
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "It's your\n"
	.string "autophone,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA594_unk7_id

	def_text_script CompText87AA594_unk7
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "Heeello!\n"
	.string "Repairman here!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Ah,actually,I'm\n"
	.string "the operator of the\n"
	.string "Navi"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that just lost a\n"
	.string "\""
	ts_print_item [
		item: 0x8,
		buffer: 0x0,
	]
	.string "\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But,for some reason,\n"
	.string "I just can't seem to"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "find the\n"
	.string "\""
	ts_print_item [
		item: 0x8,
		buffer: 0x0,
	]
	.string "\"..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmm,hmm..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA594_unk8_id

	def_text_script CompText87AA594_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "It's OK. We found\n"
	.string "it,Mister."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA594_unk9_id

	def_text_script CompText87AA594_unk9
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "R-Really!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright! You're\n"
	.string "a real help! Now\n"
	.string "I can do some work!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Do you think you can\n"
	.string "bring the \""
	ts_print_item [
		item: 0x8,
		buffer: 0x0,
	]
	.string "\"\n"
	.string "to CentralArea3?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA594_unk10_id

	def_text_script CompText87AA594_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK,no problem!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's go to\n"
	.string "CentralArea3\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AA594_unk11_id

	def_text_script CompText87AA594_unk11
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Roger!"
	ts_key_wait any=0x0
	ts_end

	