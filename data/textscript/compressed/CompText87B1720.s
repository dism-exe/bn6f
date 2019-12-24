	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B1720::
	.word 0x5EC00

	text_archive_start

	def_text_script CompText87B1720_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan...\n"
	.string "Please wake up..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87B1720_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Nnngh..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A-Aaah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B1720_unk2
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Uaaaaaaaah!!\n"
	.string "Aaaaaah!! Aaaaaaah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Kwaaaaaaaaaah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B1720_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan!!\n"
	.string "MegaMan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87B1720_unk4
	ts_mugshot_show mugshot=0x5
	ts_msg_open
	.string "The Cybeast is\n"
	.string "reacting violently\n"
	.string "within his body."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Even though he's\n"
	.string "held on for\n"
	.string "this long,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "if things continue\n"
	.string "like this,I'm afraid\n"
	.string "that soon..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87B1720_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Dad..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87B1720_unk6
	ts_mugshot_show mugshot=0x5
	ts_msg_open
	.string "I never thought you\n"
	.string "two would listen in\n"
	.string "on my conversations."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87B1720_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Dad,punish me all\n"
	.string "you want later,but\n"
	.string "please save MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87B1720_unk8
	ts_mugshot_show mugshot=0x5
	ts_msg_open
	.string "... I'm sorry,but\n"
	.string "there's nothing I\n"
	.string "can do right now..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The Cybeast's power\n"
	.string "is too strong...\n"
	.string "If I make a mistake"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "while analyzing his\n"
	.string "program,he might...\n"
	.string "be deleted..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87B1720_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "N-No..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But if we don't do\n"
	.string "anything,\n"
	.string "MegaMan will..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87B1720_unk10
	ts_mugshot_show mugshot=0x5
	ts_msg_open
	.string "I'm sorry,Lan..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_call_p_e_t_effect effect=0x2
	.string "*beep beep!*"
	ts_wait frames=0x3E
	ts_call_p_e_t_effect effect=0x1
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Mail...?\n"
	.string "It's from Iris."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"In SeasideArea3 on\n"
	.string " the Net,\""
	ts_print_item [
		item: 0xA,
		buffer: 0x0,
	]
	.string "\",\n"
	.string " a kind of"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " cyberwater that\n"
	.string " rejuvenates a Navi,\n"
	.string " gushes forth..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string " If you use it,maybe\n"
	.string " you can weaken the\n"
	.string " Cybeast...\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Healing Water\"!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_animation animation=0x1
	.string "(."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string " But how\n"
	.string " did Iris...?)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_animation animation=0x2
	.string "Argh,right now,that\n"
	.string "doesn't matter...!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87B1720_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Dad,maybe there\n"
	.string "is a way!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm going to go to\n"
	.string "SeasideArea3!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87B1720_unk12
	ts_mugshot_show mugshot=0x5
	ts_msg_open
	.string "Wait,Lan!\n"
	.string "A dark atmosphere,\n"
	.string "born from the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Cybeasts' rebirth is\n"
	.string "spreading throughout\n"
	.string "the Net,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and evil,spiteful\n"
	.string "programs are causing\n"
	.string "chaos!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Also,how will you\n"
	.string "get to SeasideArea3\n"
	.string "without a Navi?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87B1720_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... It's OK,I have\n"
	.string "an idea."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Please take care of\n"
	.string "MegaMan for me,Dad!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... OK,I'm going!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_animation animation=0x1
	.string "(Hang on,MegaMan!)"
	ts_key_wait any=0x0
	ts_end

	