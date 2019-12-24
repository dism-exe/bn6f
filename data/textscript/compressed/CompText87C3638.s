	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C3638::
	.word 0x3AF00

	text_archive_start

	def_text_script CompText87C3638_unk0
	ts_msg_open
	.string "That night..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C3638_unk1
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x9B
	.string "RRRRRR!!"
	ts_wait frames=0x80
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x75
	.string "... *beep*"
	ts_wait frames=0x1E
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87C3638_unk2
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "... This is Cain."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string " Oh,it's you."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I thought I told\n"
	.string "you not to call\n"
	.string "my personal line."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Anyway,what's going\n"
	.string "on?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So he appeared\n"
	.string "where I said he\n"
	.string "would,huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Then why did\n"
	.string "you fail!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_control_lock
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string " Spare me.\n"
	.string "I don't want to hear\n"
	.string "it."
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Quit your sniveling\n"
	.string "and start showing\n"
	.string "me results."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Do I make myself\n"
	.string "clear?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C3638_unk3
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "... Useless,bumble-\n"
	.string "brained idiots."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They were unable\n"
	.string "to awaken the\n"
	.string "Cybeast..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Did I make a\n"
	.string "miscalculation in\n"
	.string "my excitement?..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87C3638_unk4
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x9B
	.string "RRRRRR!!"
	ts_wait frames=0x80
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_clear_msg
	ts_mugshot_show mugshot=0x32
	.string "The phone again...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C3638_unk5
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "It's Cain..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Oh. You."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "How about it?\n"
	.string "The proposal to\n"
	.string "cooperate with me..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "."
	ts_wait frames=0x14
	.string "."
	ts_wait frames=0x14
	.string "."
	ts_wait frames=0x14
	.string "."
	ts_wait frames=0x14
	.string "."
	ts_wait frames=0x14
	.string "."
	ts_wait frames=0x14
	.string " I see."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm pleased to have\n"
	.string "your support."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh,I,too,don't have\n"
	.string "enough help,so I\n"
	.string "welcome you openly."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I will send you\n"
	.string "something nice\n"
	.string "very soon."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A valuable\n"
	.string "little piece of\n"
	.string "electronics..."
	ts_key_wait any=0x0
	ts_end

	