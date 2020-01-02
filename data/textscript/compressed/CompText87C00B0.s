	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C00B0::
	.word 0x4D200

	text_archive_start

	def_text_script CompText87C00B0_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah,it's that guy!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C00B0_unk1
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Tsk!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C00B0_unk2_id

	def_text_script CompText87C00B0_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "How long are you\n"
	.string "gonna disguise\n"
	.string "yourself?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I already know\n"
	.string "you're a fake Admin\n"
	.string "Building person!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C00B0_unk3_id

	def_text_script CompText87C00B0_unk3
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "You're such a pain.\n"
	.string "I was going to wear\n"
	.string "this disguise until"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the end,and then\n"
	.string "blame it all on that\n"
	.string "old guy."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,whatever.\n"
	.string "I'll ditch this\n"
	.string "ugly old guy look,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and show you my\n"
	.string "true,wonderful\n"
	.string "self!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C00B0_unk4
	ts_sound_play_bgm track=0x2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Showing your real\n"
	.string "face at last,huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What are you gonna\n"
	.string "do with the Force\n"
	.string "Program!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C00B0_unk5_id

	def_text_script CompText87C00B0_unk5
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "Hmph,I didn't\n"
	.string "realize you knew\n"
	.string "that much..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We need a lot of\n"
	.string "energy to make"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "our plan work."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If we use the Force\n"
	.string "Program,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "we can get all the\n"
	.string "energy we need!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We need a lot of\n"
	.string "energy because\n"
	.string "\"they\" need about as"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "much energy to move\n"
	.string "around as Sky Town\n"
	.string "does!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C00B0_unk6_id

	def_text_script CompText87C00B0_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Who in the world\n"
	.string "are \"they\"!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C00B0_unk7_id

	def_text_script CompText87C00B0_unk7
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "Demons who'll throw\n"
	.string "humans into the pit\n"
	.string "of fear..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Too bad you won't be\n"
	.string "seeing them,though,\n"
	.string "because you'll be"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "too busy crashing\n"
	.string "into the ground with\n"
	.string "Sky Town!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ElementMan!\n"
	.string "Get the Force\n"
	.string "Program!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C00B0_unk8_id

	def_text_script CompText87C00B0_unk8
	ts_mugshot_show mugshot=0x56
	ts_msg_open
	.string "KIPIRIRI\n"
	.string "PIRIKIRAPIRA...\n"
	.string "(I'm trying but...)"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "PIPIKIRIIRA KIRAPIRA\n"
	.string "(security's a bit\n"
	.string " tight!!)"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "PIRIRAAAAAAA!!\n"
	.string "(Cuuuuurses!!)"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C00B0_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I won't let you\n"
	.string "get away with this!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C00B0_unk10
	ts_control_lock
	ts_text_speed delay=0x1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait frames=0xA
	.string "\n"
	.string "MegaMan,"
	ts_wait frames=0xA
	.string "\n"
	.string "Execute!!"
	ts_wait frames=0x1E
	ts_control_unlock
	ts_end

	