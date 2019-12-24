	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A5F48::
	.word 0x2E700

	text_archive_start

	def_text_script CompText87A5F48_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hmm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've talked to\n"
	.string "everyone,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm new,so I just\n"
	.string "don't fit in yet."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A5F48_unk1_id

	def_text_script CompText87A5F48_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "That's how it is.\n"
	.string "Just take it\n"
	.string "slowly,I guess."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A5F48_unk2_id

	def_text_script CompText87A5F48_unk2
	ts_mugshot_hide
	ts_msg_open
	.string "Hey,Lan!"
	ts_key_wait any=0x0
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x5,
	]
	ts_end

	def_text_script CompText87A5F48_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah,um...\n"
	.string "Mick...right?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A5F48_unk4_id

	def_text_script CompText87A5F48_unk4
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "You're good at\n"
	.string "NetBattling,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The next class is\n"
	.string "Virus Busting."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Show me what you've\n"
	.string "got then,hmph!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A5F48_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What's with his\n"
	.string "attitude...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Did I make him mad\n"
	.string "at me?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What did I do?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A5F48_unk6_id

	def_text_script CompText87A5F48_unk6
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Who knows..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A5F48_unk7_id

	def_text_script CompText87A5F48_unk7
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x177
	.string "*ding,"
	ts_wait frames=0x2A
	.string "dong,"
	ts_wait frames=0x28
	.string "ding,"
	ts_wait frames=0x28
	.string "dong*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A5F48_unk8_id

	def_text_script CompText87A5F48_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah,the bell!"
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x5
	ts_end

	def_text_script CompText87A5F48_unk9
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Alright,now like I\n"
	.string "said earlier,it's\n"
	.string "Virus Busting time!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So jack in to your\n"
	.string "desks,everyone!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A5F48_unk10_id

	def_text_script CompText87A5F48_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Alright,MegaMan!\n"
	.string "Let's do this!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A5F48_unk11_id

	def_text_script CompText87A5F48_unk11
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Roger!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A5F48_unk12_id

	def_text_script CompText87A5F48_unk12
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

	