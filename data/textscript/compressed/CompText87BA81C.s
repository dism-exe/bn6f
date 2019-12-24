	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BA81C::
	.word 0x74300

	text_archive_start

	def_text_script CompText87BA81C_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "This is...inside the\n"
	.string "courtroom...??"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That means..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BA81C_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Prosecutor Ito!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BA81C_unk2
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "... Hey,Lan!\n"
	.string "What are you doing\n"
	.string "over there?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BA81C_unk3
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "What do you think\n"
	.string "you're going to do?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87BA81C_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm going to stop\n"
	.string "the JudgeTree!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87BA81C_unk5
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "Stop?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Haha,I suppose you\n"
	.string "can access the\n"
	.string "JudgeTree from the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "control panel in\n"
	.string "front of you,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but you should give\n"
	.string "up,Lan."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "My Navi,JudgeMan,\n"
	.string "is in that tree."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "On top of that,there\n"
	.string "is one more guest in\n"
	.string "that tree today..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And that Navi is\n"
	.string "very powerful,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and very evil,\n"
	.string "indeed!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87BA81C_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Prosecutor Ito..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't get it."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You were so cool\n"
	.string "during the trial..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and you have such\n"
	.string "a great sense of\n"
	.string "justice..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87BA81C_unk7
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "Hahaha...\n"
	.string "A sense of\n"
	.string "justice...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I gave up on justice\n"
	.string "a long time ago."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87BA81C_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "But...\n"
	.string "Why...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87BA81C_unk9
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "Ah,long ago,\n"
	.string "when I was young,\n"
	.string "I thought,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"I'm going to put\n"
	.string " all the bad people\n"
	.string " in jail!\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But you see,Lan..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "no matter how many\n"
	.string "bad people you\n"
	.string "lock away,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "there are always new\n"
	.string "criminals to take\n"
	.string "their place."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Yes,I realized\n"
	.string "the horrible truth."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "As long as there are\n"
	.string "humans on this Earth,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "there will always be\n"
	.string "crime."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It doesn't matter\n"
	.string "what we do,or what\n"
	.string "rules we make."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And so I lost my\n"
	.string "faith in justice."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Around that time,\n"
	.string "the \"organization\"\n"
	.string "found me,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and I was reborn."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I figured that if\n"
	.string "humans couldn't make\n"
	.string "the perfect society,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "then I might as well\n"
	.string "destroy it!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87BA81C_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x3
	.string "......\n"
	.string "That's messed up!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_text_speed delay=0x2
	.string "I can't see how that\n"
	.string "makes sense at all!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87BA81C_unk11
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "That's because\n"
	.string "you're still just\n"
	.string "a child."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You'll understand\n"
	.string "when you grow up."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I guess we'll\n"
	.string "have remade the\n"
	.string "world by then!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87BA81C_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I...really,really\n"
	.string "respected you,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and thought you\n"
	.string "were cool..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But now I see I\n"
	.string "was wrong about you."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_text_speed delay=0x3
	.string "So..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_text_speed delay=0x2
	.string "I will stop you"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "with everything\n"
	.string "I have!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's go,MegaMan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87BA81C_unk13
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

	