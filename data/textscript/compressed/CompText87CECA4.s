	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CECA4::
	.word 0x63E00

	text_archive_start

	def_text_script CompText87CECA4_unk0
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "But I wonder if it\n"
	.string "will really be\n"
	.string "alright..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87CECA4_unk1
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "What are you talking\n"
	.string "about?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87CECA4_unk2
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "The Expo! EXPO!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "With WWW causing all\n"
	.string "these incidents\n"
	.string "lately,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder if the Expo\n"
	.string "will still be held.\n"
	.string "I'm really worried."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87CECA4_unk3
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Yeah,all the adults\n"
	.string "talk about lately\n"
	.string "is how uneasy they"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "are and how\n"
	.string "dangerous everything\n"
	.string "is. Yeesh."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87CECA4_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Sounds more like\n"
	.string "WWW's trying to stop\n"
	.string "the Expo..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87CECA4_unk5
	ts_mugshot_hide
	ts_msg_open
	.string "Everyone!\n"
	.string "Your attention,\n"
	.string "please!"
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x25
	ts_end

	def_text_script CompText87CECA4_unk6
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	ts_control_lock
	.string "The Expo will be\n"
	.string "held as scheduled!"
	ts_wait frames=0x46
	ts_end

	def_text_script CompText87CECA4_unk7
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	ts_control_lock
	.string "There are great\n"
	.string "dangers!"
	ts_wait frames=0x46
	ts_clear_msg
	.string "But we will not be\n"
	.string "scared!"
	ts_wait frames=0x46
	ts_end

	def_text_script CompText87CECA4_unk8
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	ts_control_lock
	.string "Citizens! Let's come\n"
	.string "together and make\n"
	.string "this Expo a success!"
	ts_wait frames=0x46
	ts_end

	def_text_script CompText87CECA4_unk9
	ts_mugshot_show mugshot=0x46
	ts_msg_open
	ts_control_lock
	.string "If we band together,\n"
	.string "we can scare those\n"
	.string "who want to hurt us!"
	ts_wait frames=0x46
	ts_clear_msg
	.string "Let's all work hard\n"
	.string "together!"
	ts_wait frames=0x46
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x10,
	]
	ts_end

	def_text_script CompText87CECA4_unk10
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "They're CopyBots!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_fade_in_bgm [
		track: 0x3,
		length: 0xA,
	]
	ts_jump target=11

	def_text_script CompText87CECA4_unk11
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "They're going to\n"
	.string "open the Expo as\n"
	.string "planned!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Aren't you happy,\n"
	.string "Tab?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87CECA4_unk12
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Yeah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Aren't you,Lan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87CECA4_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Yeah."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87CECA4_unk14
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "What's with you? You\n"
	.string "don't sound so\n"
	.string "happy."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87CECA4_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... I'm happy,but\n"
	.string "will it really be\n"
	.string "safe...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The incidents lately\n"
	.string "have been pretty\n"
	.string "bad,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and MegaMan and I\n"
	.string "were a part of it\n"
	.string "all..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I'm glad what\n"
	.string "happened isn't gonna\n"
	.string "stop the Expo..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=16

	def_text_script CompText87CECA4_unk16
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Hey,stop making that\n"
	.string "droopy face!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Yeah,you were\n"
	.string "involved,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you stopped the bad\n"
	.string "guys,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "so you should be\n"
	.string "able to find a way\n"
	.string "to help the Expo!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87CECA4_unk17
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Yeah,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There's nothing\n"
	.string "you can't do!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87CECA4_unk18
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Thanks,you two!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87CECA4_unk19
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Ah,it's time to\n"
	.string "stock the shelves!\n"
	.string "I have to go home!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=20

	def_text_script CompText87CECA4_unk20
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Yeah,I've gotta get\n"
	.string "home too.\n"
	.string "Later!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CECA4_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Well,we'd better\n"
	.string "head on home,too."
	ts_key_wait any=0x0
	ts_end

	