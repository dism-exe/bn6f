	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C5CD8::
	.word 0x46B00

	text_archive_start

	def_text_script CompText87C5CD8_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I'm back,but I wish\n"
	.string "I knew how to get\n"
	.string "MegaMan back..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can't gather info\n"
	.string "on the Net,and..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I really can't do\n"
	.string "anything without\n"
	.string "MegaMan..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87C5CD8_unk1
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_call_p_e_t_effect 0x3
	.string "RRRRRR!!"
	ts_wait 0x80, 0x0
	ts_call_p_e_t_effect 0x1
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87C5CD8_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The autophone..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "MegaMan usually\n"
	.string "tells me I have\n"
	.string "a call..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C5CD8_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Hello?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87C5CD8_unk4
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Hey,Lan?\n"
	.string "We're in big\n"
	.string "trouble!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87C5CD8_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What's wrong!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87C5CD8_unk6
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Is MegaMan in your\n"
	.string "PET right now?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87C5CD8_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Um,no...\n"
	.string "He's not even close\n"
	.string "to me right now..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87C5CD8_unk8
	ts_mugshot_show 0x14
	ts_msg_open
	.string "I thought so!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87C5CD8_unk9
	ts_mugshot_show 0x0
	ts_msg_open
	.string "You thought so?\n"
	.string "What do you mean!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87C5CD8_unk10
	ts_mugshot_show 0x14
	ts_msg_open
	.string "It's all over the\n"
	.string "news!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There's a Navi in\n"
	.string "the real world\n"
	.string "causing chaos!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's probably using\n"
	.string "a CopyBot!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "from what's on TV,\n"
	.string "the Navi looks just\n"
	.string "like MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87C5CD8_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "W-What!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It can't be true..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "H-Hey,Mick,do you\n"
	.string "know where that's\n"
	.string "happening?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87C5CD8_unk12
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Ah! In Seaside Town!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87C5CD8_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "OK,I'm going there\n"
	.string "right now!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87C5CD8_unk14
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Lan...be careful."
	ts_key_wait 0x0
	ts_clear_msg
	.string "MegaMan...\n"
	.string "He's like that time."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You know,when he\n"
	.string "went and rescued\n"
	.string "my Navi"
	ts_key_wait 0x0
	ts_clear_msg
	.string "by going to the\n"
	.string "Undernet... Like\n"
	.string "that time..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText87C5CD8_unk15
	ts_mugshot_show 0x0
	ts_msg_open
	.string "...!! You mean,he's\n"
	.string "using the Cybeast's\n"
	.string "power!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I gotcha!\n"
	.string "Thanks,Mick!"
	ts_key_wait 0x0
	ts_end

	