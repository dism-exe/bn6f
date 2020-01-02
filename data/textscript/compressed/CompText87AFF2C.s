	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AFF2C::
	.word 0xABC00

	text_archive_start

	def_text_script CompText87AFF2C_unk0
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "Looks like\n"
	.string "something's about\n"
	.string "to start!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk1_id

	def_text_script CompText87AFF2C_unk1
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Welcome,everyone!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "CircusMan,\n"
	.string "start dancing!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk2_id

	def_text_script CompText87AFF2C_unk2
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Ahoo,hoo,hoo!\n"
	.string "Let's d-d-d-dance!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AFF2C_unk3
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Whoo!\n"
	.string "That dance looks\n"
	.string "like fun!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk4_id

	def_text_script CompText87AFF2C_unk4
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "That dance is so\n"
	.string "strange,but it's\n"
	.string "pulling me along!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk5_id

	def_text_script CompText87AFF2C_unk5
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "It's wonderful... I\n"
	.string "feel like my heart's\n"
	.string "being sucked in!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk6_id

	def_text_script CompText87AFF2C_unk6
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "Wow... It's like\n"
	.string "I don't even have\n"
	.string "to use any energy!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk7_id

	def_text_script CompText87AFF2C_unk7
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Ha,ha. Don't have\n"
	.string "to use energy?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're just faking.\n"
	.string "Do you even know\n"
	.string "how to dance!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey,hear that,Lan?\n"
	.string "Hurry up! There's a\n"
	.string "Navi dance going on!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You two are missing\n"
	.string "all the fun!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk8_id

	def_text_script CompText87AFF2C_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Really? Now that's\n"
	.string "something I'd like\n"
	.string "to see!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk9_id

	def_text_script CompText87AFF2C_unk9
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "You won't make\n"
	.string "it if you don't\n"
	.string "hurry..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Hm!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x5,
	]
	.string "What in the!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why is your HP\n"
	.string "dropping!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk10_id

	def_text_script CompText87AFF2C_unk10
	ts_mugshot_show mugshot=0x57
	ts_msg_open
	.string "M-Mick...\n"
	.string "My...strength..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AFF2C_unk11
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x1C
	ts_end

	def_text_script CompText87AFF2C_unk12
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "W-What's going on!?\n"
	.string "Hey,answer me!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk13_id

	def_text_script CompText87AFF2C_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What's wrong,Mick!?\n"
	.string "What happened...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0xCC
	.string "*zssssss...hssss*"
	ts_wait frames=0x8A
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk14_id

	def_text_script CompText87AFF2C_unk14
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "CircusMan,begin\n"
	.string "the operation!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The seal is only\n"
	.string "going to be down for\n"
	.string "a little while."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Give \"them\" those\n"
	.string "energy balls,and\n"
	.string "\"they\" will arise!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk15_id

	def_text_script CompText87AFF2C_unk15
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AFF2C_unk16
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AFF2C_unk17
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AFF2C_unk18
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Th...They're\n"
	.string "rising!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk19_id

	def_text_script CompText87AFF2C_unk19
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "W-What's\n"
	.string "rising...!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AFF2C_unk20
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Wake up!!\n"
	.string "Cybeasts!!"
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x63
	ts_end

	def_text_script CompText87AFF2C_unk21
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "They're here..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Cybeast Gregar...\n"
	.string "Cybeast Falzar..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_play_bgm track=0x21
	.string "Tee,hee! Can't move\n"
	.string "very well when you\n"
	.string "just get up,can you?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmm... If we want to\n"
	.string "capture these two,it\n"
	.string "has to be now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "CircusMan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Activate the program\n"
	.string "and show me just how\n"
	.string "much you can carry!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk22_id

	def_text_script CompText87AFF2C_unk22
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AFF2C_unk23
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87AFF2C_unk25_id,
	]
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Mmph...!!\n"
	.string "What power...!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm getting\n"
	.string "sucked in...!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2B
	.string "What are you doing!?\n"
	.string "Put some back into\n"
	.string "it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Dealing with wild\n"
	.string "animals is your\n"
	.string "speciality!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x54
	.string "Nnnngh...\n"
	.string "Ahoo,hoo,hoooooo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AFF2C_unk24
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87AFF2C_unk26_id,
	]
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "FULL POWER!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AFF2C_unk25
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Mmph...!!\n"
	.string "What power...!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm getting\n"
	.string "sucked in...!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2B
	.string "What are you doing!?\n"
	.string "Put some back into\n"
	.string "it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Dealing with wild\n"
	.string "animals is your\n"
	.string "speciality!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x54
	.string "Nnnngh...\n"
	.string "Ahoo,hoo,hoooooo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AFF2C_unk26
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "FULL POWER!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AFF2C_unk27
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "... *huff,huff,\n"
	.string "huff,huff...*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "O-One more..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk28_id

	def_text_script CompText87AFF2C_unk28
	ts_mugshot_hide
	ts_msg_open
	.string "Freeze!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AFF2C_unk29
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "We thought you might\n"
	.string "realize it wasn't\n"
	.string "just a legend,but..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk30_id

	def_text_script CompText87AFF2C_unk30
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "*huff,huff...*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "NetPolice..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Patrolling around\n"
	.string "the Net...battle\n"
	.string "specialists,huh...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Annoying pests\n"
	.string "showed up after all."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AFF2C_unk31
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Sir,we've managed to\n"
	.string "jack out all the\n"
	.string "Navis who fainted."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AFF2C_unk32
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "What do you intend\n"
	.string "to do with the\n"
	.string "Cybeasts,scum!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk33_id

	def_text_script CompText87AFF2C_unk33
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Hmph,what lousy\n"
	.string "timing..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "CircusMan's strength\n"
	.string "is limited..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If we escape now,\n"
	.string "we'll lose the other\n"
	.string "Cybeast..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And fighting this\n"
	.string "many NetPolice would\n"
	.string "be really bad..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_check_game_version [
		jumpIfCybeastGregar: CompText87AFF2C_unk34_id,
		jumpIfCybeastFalzar: CompText87AFF2C_unk35_id,
	]

	def_text_script CompText87AFF2C_unk34
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x192
	.string "*grrrrrrrrr...*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk36_id

	def_text_script CompText87AFF2C_unk35
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x194
	.string "*screeeeech...*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AFF2C_unk36_id

	def_text_script CompText87AFF2C_unk36
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Not good!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AFF2C_unk37
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Eek!!"
	ts_key_wait any=0x0
	ts_end

	