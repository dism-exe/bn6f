	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D5728::
	.word 0x8FB00

	text_archive_start

	def_text_script CompText87D5728_unk0
	ts_mugshot_show 0x1D
	ts_msg_open
	.string "Mwahaha...\n"
	.string "It's over...\n"
	.string "It's all over..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan,you...\n"
	.string "You win..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hurry,you should run\n"
	.string "away from here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Once the explosion\n"
	.string "reaches the Force\n"
	.string "Program,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "an even bigger\n"
	.string "explosion will\n"
	.string "occur..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87D5728_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Aren't you coming\n"
	.string "with us!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87D5728_unk2
	ts_mugshot_show 0x1D
	ts_msg_open
	.string "Hmph,why would I?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What do I have to\n"
	.string "live for?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You would have me\n"
	.string "live in shame for\n"
	.string "the rest of my life?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87D5728_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Yes,you have to pay\n"
	.string "for what you've\n"
	.string "done!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You have to live for\n"
	.string "all the people and\n"
	.string "Navis..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "and...\n"
	.string "Iris and Colonel..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "for everyone who\n"
	.string "suffered because of\n"
	.string "what you did!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87D5728_unk4
	ts_mugshot_show 0x1D
	ts_msg_open
	.string "Mwahahaha...\n"
	.string "Hahaha..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder why I feel\n"
	.string "sad all of a\n"
	.string "sudden..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I stopped paying\n"
	.string "attention to people\n"
	.string "and had buried"
	ts_key_wait 0x0
	ts_clear_msg
	.string "myself in my work so\n"
	.string "that my ambitions\n"
	.string "would be fulfilled."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When I split Colonel\n"
	.string "and Iris into two,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I thought I had\n"
	.string "thrown away my\n"
	.string "\"kindness\"..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87D5728_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "You feel sad because\n"
	.string "your kindness is\n"
	.string "still inside of you."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Humans aren't\n"
	.string "programs!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We can't throw away\n"
	.string "our feelings that\n"
	.string "easily!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you really had\n"
	.string "thrown away your\n"
	.string "kindness,you would"
	ts_key_wait 0x0
	ts_clear_msg
	.string "have deleted Colonel\n"
	.string "instead of just\n"
	.string "removing programs."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87D5728_unk6
	ts_mugshot_show 0x1D
	ts_msg_open
	.string "Don't be stupid...!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87D5728_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "If you can make up\n"
	.string "for all you've done,\n"
	.string "then maybe..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "you can continue\n"
	.string "your research...\n"
	.string "...like before..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll just ask my\n"
	.string "Dad."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87D5728_unk8
	ts_mugshot_show 0x1D
	ts_msg_open
	.string "Me...a real\n"
	.string "scientist again..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hahahahaha..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You've given me a\n"
	.string "chance to see my\n"
	.string "dream one last time."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87D5728_unk9
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Come on,let's go."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D5728_unk10
	ts_mugshot_show 0x1D
	ts_msg_open
	.string "The Force Program\n"
	.string "is beginning to\n"
	.string "explode..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Time is running out!\n"
	.string "Go!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87D5728_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What about you!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87D5728_unk12
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0xBB, 0x1
	.string "*thud*"
	ts_wait 0x28, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D5728_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Baryl!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D5728_unk14
	ts_mugshot_show 0x0
	ts_msg_open
	.string "You shouldn't move\n"
	.string "around too much,\n"
	.string "Baryl!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText87D5728_unk15
	ts_mugshot_show 0x2F
	ts_msg_open
	.string "... Colonel...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "He saved the\n"
	.string "world...but..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x2F
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 16

	def_text_script CompText87D5728_unk16
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Baryl,Colonel\n"
	.string "wanted to tell\n"
	.string "you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"I was deleted along\n"
	.string " with the Cybeast."
	ts_key_wait 0x0
	ts_clear_msg
	.string " But,it's not\n"
	.string " \"fate\". It's of my\n"
	.string " own \"will\"...\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script CompText87D5728_unk17
	ts_mugshot_show 0x2F
	ts_msg_open
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string " I see."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87D5728_unk18
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go,Baryl!\n"
	.string "Let's all get out\n"
	.string "of here!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 19

	def_text_script CompText87D5728_unk19
	ts_mugshot_show 0x2F
	ts_msg_open
	.string "Lan Hikari..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D5728_unk20
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0xB4, 0x1
	.string "*trip!!*"
	ts_wait 0x28, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	ts_sound_play00 0x4B, 0x1
	.string "Waaa!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D5728_unk21
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ow..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D5728_unk22
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Baryl!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 23

	def_text_script CompText87D5728_unk23
	ts_mugshot_show 0x2F
	ts_msg_open
	.string "Go,Lan Hikari..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You have a home\n"
	.string "and a family that\n"
	.string "needs you..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 24

	def_text_script CompText87D5728_unk24
	ts_mugshot_hide
	ts_msg_open
	.string "Lan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D5728_unk25
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Everyone!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 26

	def_text_script CompText87D5728_unk26
	ts_mugshot_show 0x2
	ts_msg_open
	.string "Lan,let's get the\n"
	.string "heck outta here!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 27

	def_text_script CompText87D5728_unk27
	ts_mugshot_show 0x1
	ts_msg_open
	.string "Lan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D5728_unk28
	ts_mugshot_show 0x1D
	ts_msg_open
	.string "Good-bye."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D5728_unk29
	ts_mugshot_show 0x4
	ts_msg_open
	.string "Lan! It's about to\n"
	.string "blow!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 30

	def_text_script CompText87D5728_unk30
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Go!!"
	ts_key_wait 0x0
	ts_end

	