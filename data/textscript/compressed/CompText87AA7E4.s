	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AA7E4::
	.word 0x45000

	text_archive_start

	def_text_script CompText87AA7E4_unk0
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Oh,thank you,\n"
	.string "thank you!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87AA7E4_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Here,this is the\n"
	.string "\""
	ts_print_item [
		item: 0x8,
		buffer: 0x0,
	]
	.string "\"you're\n"
	.string "looking for,right?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AA7E4_unk2
	ts_msg_open
	.string "MegaMan gives:\n"
	.string "\""
	ts_print_item [
		item: 0x8,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AA7E4_unk3
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Yes,yes,this is it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ah,if I lost this,I\n"
	.string "wouldn't be able to\n"
	.string "get any work done!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Finally,I can\n"
	.string "get to work fixing\n"
	.string "these leaky pipes!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AA7E4_unk4
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Take this!\n"
	ts_control_lock
	ts_sound_play00 track=0x18E
	.string "*bloop!"
	ts_wait frames=0x1C
	ts_sound_play00 track=0x18E
	.string " bloop!*"
	ts_wait frames=0x1C
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Once more!\n"
	ts_control_lock
	ts_sound_play00 track=0x18E
	.string "*bloop!"
	ts_wait frames=0x1C
	ts_sound_play00 track=0x18E
	.string " bloop!*"
	ts_wait frames=0x1C
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... OK!\n"
	.string "Finish,finito,\n"
	.string "the end!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AA7E4_unk5
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Now this street is\n"
	.string "safe for all once\n"
	.string "again!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,I'm off to my\n"
	.string "next job!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Huh?"
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x63
	ts_end

	def_text_script CompText87AA7E4_unk6
	ts_mugshot_hide
	ts_msg_open
	.string "*rumble,rumble!!*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87AA7E4_unk7
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "W-What's going on!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87AA7E4_unk8
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "It'll stop soon,\n"
	.string "I think."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AA7E4_unk9
	ts_sound_fade_in_bgm [
		track: 0x13,
		length: 0x7,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... Wow,it really\n"
	.string "stopped!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87AA7E4_unk10
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "There's been a lot\n"
	.string "of these quakes on\n"
	.string "the Net recently."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They're really very\n"
	.string "troublesome,\n"
	.string "really..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Those quakes are\n"
	.string "breaking pipes here,\n"
	.string "there -- everywhere!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It seems the center\n"
	.string "of these quakes is\n"
	.string "here,so be careful!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK,I'm really going\n"
	.string "to my next job now!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AA7E4_unk11
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Net quakes?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder what's\n"
	.string "causing them...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87AA7E4_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I wanna know,too,but\n"
	.string "first,the mystery of\n"
	.string "the penguin!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MegaMan,head for\n"
	.string "SeasideArea1!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87AA7E4_unk13
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Roger!"
	ts_key_wait any=0x0
	ts_end

	