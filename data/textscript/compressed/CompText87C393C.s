	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C393C::
	.word 0x6E500

	text_archive_start

	def_text_script CompText87C393C_unk0
	ts_msg_open
	.string "A few days later..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87C393C_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hey,hey,hey!\n"
	.string "It's on,it's on!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C393C_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "They're showing\n"
	.string "the commercial!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Ah! This is\n"
	.string "footage from the\n"
	.string "preliminary trials!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87C393C_unk3
	ts_mugshot_hide
	ts_msg_open
	.string "\"Let's go,Lan!\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87C393C_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Even the sound's\n"
	.string "crystal clear!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87C393C_unk5
	ts_mugshot_show 0x37
	ts_msg_open
	.string "L-Lan...\n"
	.string "This is so\n"
	.string "embarrassing..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Change the channel,\n"
	.string "please?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87C393C_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Well,if you put it\n"
	.string "that way,maybe I'll\n"
	.string "just keep it on!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87C393C_unk7
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
	ts_jump 8

	def_text_script CompText87C393C_unk8
	ts_mugshot_show 0x37
	ts_msg_open
	.string "It's your\n"
	.string "autophone,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C393C_unk9
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hello?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87C393C_unk10
	ts_mugshot_hide
	ts_msg_open
	.string "... Ah."
	ts_sound_stop
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87C393C_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "!? Hello??"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87C393C_unk12
	ts_mugshot_hide
	ts_msg_open
	.string "... Hee,hee,hee,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "can you guess who\n"
	.string "I am?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87C393C_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hey,I know...!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mayl!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87C393C_unk14
	ts_mugshot_show 0x1
	ts_msg_open
	.string "Eheheh,that's right!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText87C393C_unk15
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hey! How are you!?\n"
	.string "Wow,this is a\n"
	.string "surprise! What's up?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 16

	def_text_script CompText87C393C_unk16
	ts_mugshot_show 0x1
	ts_msg_open
	.string "I should be asking\n"
	.string "you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I saw the commercial\n"
	.string "on TV! I was totally\n"
	.string "stunned!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script CompText87C393C_unk17
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hehehe!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,if you come\n"
	.string "here,you'd see we're\n"
	.string "doing just fine!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87C393C_unk18
	ts_mugshot_show 0x1
	ts_msg_open
	.string "Oh... Sounds like\n"
	.string "you're working real\n"
	.string "hard too!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I really want to\n"
	.string "see you and your new\n"
	.string "life..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 19

	def_text_script CompText87C393C_unk19
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Mayl..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 20

	def_text_script CompText87C393C_unk20
	ts_mugshot_show 0x1
	ts_msg_open
	.string "... Hey,if it's OK\n"
	.string "with you,how about\n"
	.string "we all get together?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Dex and Yai miss\n"
	.string "you too..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 21

	def_text_script CompText87C393C_unk21
	ts_mugshot_show 0x0
	ts_msg_open
	.string "You know,I was just\n"
	.string "thinking the exact\n"
	.string "same thing!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hearing your voice\n"
	.string "suddenly made me\n"
	.string "miss ACDC Town."
	ts_key_wait 0x0
	ts_clear_msg
	.string "OK,how about I come\n"
	.string "visit ACDC Town this\n"
	.string "weekend?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script CompText87C393C_unk22
	ts_mugshot_show 0x1
	ts_msg_open
	.string "Really?\n"
	.string "You promise!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You'd better not\n"
	.string "oversleep!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 23

	def_text_script CompText87C393C_unk23
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Don't worry,I won't!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... I'll see you\n"
	.string "this weekend!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 24

	def_text_script CompText87C393C_unk24
	ts_mugshot_show 0x1
	ts_msg_open
	.string "OK! I can't wait!\n"
	.string "Bye bye!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C393C_unk25
	ts_mugshot_show 0x0
	ts_msg_open
	.string "ACDC Town...\n"
	.string "I wonder how much\n"
	.string "it's changed?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder if I'll\n"
	.string "cry when I see the\n"
	.string "town again...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87C393C_unk26
	ts_mugshot_hide
	ts_msg_open
	.string "... And then,\n"
	.string "that weekend..."
	ts_key_wait 0x0
	ts_sound_play_bgm 0x4, 0x0
	ts_end

	def_text_script CompText87C393C_unk27
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Well,time to head\n"
	.string "out,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 28

	def_text_script CompText87C393C_unk28
	ts_mugshot_show 0x37
	ts_msg_open
	.string "It's a long way to\n"
	.string "ACDC Town. You sure\n"
	.string "you're ready?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 29

	def_text_script CompText87C393C_unk29
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I'm ready!\n"
	.string "I've got everything!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Come on! Let's go!"
	ts_key_wait 0x0
	ts_end

	