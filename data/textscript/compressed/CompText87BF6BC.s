	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BF6BC::
	.word 0x4EF00

	text_archive_start

	def_text_script CompText87BF6BC_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "It sounds like it's\n"
	.string "coming from inside\n"
	.string "here..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87BF6BC_unk1
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x1A1
	.string "*clank*"
	ts_wait frames=0x21
	.string "\n"
	ts_sound_play00 track=0x1A1
	.string "*clank!!*"
	ts_wait frames=0x21
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BF6BC_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Aaah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87BF6BC_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "There really is\n"
	.string "something in there!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BF6BC_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK,I'm gonna\n"
	.string "open it..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BF6BC_unk5
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x154
	.string "*clank!!*"
	ts_wait frames=0x12
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BF6BC_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Waaah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BF6BC_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah,it's the guy\n"
	.string "from before!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You were hiding in\n"
	.string "here!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hurry up and fix\n"
	.string "Sky Town!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Wait,something\n"
	.string "looks strange...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87BF6BC_unk8
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Y-You're mistaken...\n"
	.string "That fiend dressed\n"
	.string "up as me..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87BF6BC_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Then...you're the\n"
	.string "real person from the\n"
	.string "Admin Building?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87BF6BC_unk10
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Y-Yes...\n"
	.string "But that doesn't\n"
	.string "matter..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That guy is after\n"
	.string "the Force Program..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87BF6BC_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Force Program...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87BF6BC_unk12
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Yes..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The Force Program\n"
	.string "amplifies the power\n"
	.string "of nature."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We then use that\n"
	.string "power to make all\n"
	.string "different kinds of"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "weather. But that's\n"
	.string "not all. Sky Town\n"
	.string "uses the power made"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "by the Force Program\n"
	.string "to move and stay\n"
	.string "in the air."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If that Program was\n"
	.string "taken,Sky Town would\n"
	.string "fall to the Earth!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87BF6BC_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87BF6BC_unk14
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Please...\n"
	.string "Protect the Force\n"
	.string "Program..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_animation animation=0x1
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x14B
	.string "... *thud*"
	ts_wait frames=0x28
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87BF6BC_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_mugshot_animation animation=0x2
	.string "Hey,mister!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=16

	def_text_script CompText87BF6BC_unk16
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "It's OK.\n"
	.string "He just fainted."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He should wake up\n"
	.string "in a little bit."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "More importantly,\n"
	.string "we've gotta protect\n"
	.string "the Force Program!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BF6BC_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Right! This is no\n"
	.string "time for dilly-\n"
	.string "dallying!"
	ts_key_wait any=0x0
	ts_end

	