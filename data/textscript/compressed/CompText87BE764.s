	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BE764::
	.word 0x3E900

	text_archive_start

	def_text_script CompText87BE764_unk0
	ts_msg_open
	.string "The next day\n"
	.string "after school..."
	ts_key_wait any=0x0
	ts_clear_msg
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
	ts_end

	def_text_script CompText87BE764_unk1
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "That's it for today!\n"
	.string "Make sure you all go\n"
	.string "straight home!"
	ts_key_wait any=0x0
	ts_clear_msg

	def_text_script CompText87BE764_unk2
	ts_mugshot_hide
	ts_msg_open
	.string "Good bye,Mr.Mach!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BE764_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hey,Mick,let's go\n"
	.string "home!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x33
	.string "Yeah!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87BE764_unk4
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "........."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87BE764_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What's wrong...?\n"
	.string "You're not still\n"
	.string "thinking about"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "yesterday,are you?\n"
	.string "... Look,it's OK!\n"
	.string "Really!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x33
	.string "What happened\n"
	.string "yesterday?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87BE764_unk6
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... But I couldn't\n"
	.string "do anything..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87BE764_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "That's why I said\n"
	.string "don't think about\n"
	.string "it anymore!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Besides,I\n"
	.string "couldn't do anything\n"
	.string "either..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x33
	.string "Hey,what happened?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87BE764_unk8
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Come on,you two! I\n"
	.string "don't like seeing\n"
	.string "both of you down!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan,Mick,look!\n"
	.string "I'm fine,really!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So let's go home!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87BE764_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "See,Mick,even\n"
	.string "he says he's OK,so\n"
	.string "c'mon,let's go!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87BE764_unk10
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... OK!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x33
	.string "Grr! Can't you guys\n"
	.string "tell me even just\n"
	.string "a little bit!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BE764_unk11
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "I'll race you to the\n"
	.string "front foyer!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BE764_unk12
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "It's good to see\n"
	.string "Mick back to his\n"
	.string "usual self!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Ack!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'd better get\n"
	.string "going!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BE764_unk13
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Hey! I'm going,too!!"
	ts_key_wait any=0x0
	ts_end

	