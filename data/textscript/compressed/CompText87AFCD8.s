	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AFCD8::
	.word 0x2DE00

	text_archive_start

	def_text_script CompText87AFCD8_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What's wrong,Iris?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm a bit shocked\n"
	.string "'cause I didn't\n"
	.string "think you'd ever"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "want to talk to me\n"
	.string "about something."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So,what's up?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87AFCD8_unk1
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87AFCD8_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I promised I'd meet\n"
	.string "my friends on the\n"
	.string "Net right now..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey,I know! You\n"
	.string "wanna come hang out\n"
	.string "with us on the Net?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87AFCD8_unk3
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "........."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...... You mustn't."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87AFCD8_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mustn't...?\n"
	.string "... What??"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87AFCD8_unk5
	ts_mugshot_show mugshot=0x11
	ts_msg_open
	.string "Y-You mustn't go on\n"
	.string "the Net now..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I have a bad feeling\n"
	.string "about that event..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87AFCD8_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Bad...feeling...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_play_bgm track=0x63
	ts_jump target=7

	def_text_script CompText87AFCD8_unk7
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
	ts_jump target=8

	def_text_script CompText87AFCD8_unk8
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "It's your\n"
	.string "autophone,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's from Mick!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AFCD8_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mick! Sorry,sorry!\n"
	.string "I know I'm making\n"
	.string "you wait!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87AFCD8_unk10
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Whatever.\n"
	.string "CentralArea3 is\n"
	.string "kicking,so hurry up!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Hey,something's\n"
	.string "going on onstage!"
	ts_key_wait any=0x0
	ts_end

	