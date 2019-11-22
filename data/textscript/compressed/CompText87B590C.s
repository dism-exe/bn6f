	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B590C::
	.word 0xA3D00

	text_archive_start

	def_text_script CompText87B590C_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "This is the first\n"
	.string "time I've been to\n"
	.string "a courthouse."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm so nervous..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B590C_unk1
	ts_sound_play_bgm 0x63, 0x0
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	.string "*BEEP,"
	ts_sound_play00 0xCD, 0x0
	ts_wait 0x28, 0x0
	.string "BEEP,"
	ts_sound_play00 0xCD, 0x0
	ts_wait 0x28, 0x0
	.string "BEEP"
	ts_sound_play00 0xCD, 0x0
	.string "!!*"
	ts_wait 0x28, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	.string "INTRUDER ALERT\n"
	.string "INTRUDER ALERT"
	ts_sound_play_bgm 0xC, 0x0
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87B590C_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Ack!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now where have I\n"
	.string "heard that sound\n"
	.string "before...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I know it means\n"
	.string "something bad..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B590C_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ah,I knew it!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87B590C_unk4
	ts_mugshot_hide
	ts_msg_open
	.string "INTRUDER ALERT\n"
	.string "INTRUDER ALERT"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87B590C_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "W-Wait a sec!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I was told to come\n"
	.string "here to testify!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87B590C_unk6
	ts_mugshot_hide
	ts_msg_open
	ts_sound_play_bgm 0x63, 0x0
	.string "OH...WELL,WHY DIDN'T\n"
	.string "YOU SAY SO?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... PLEASE STATE\n"
	.string "YOUR NAME."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87B590C_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I'm Lan Hikari,uh..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87B590C_unk8
	ts_mugshot_hide
	ts_msg_open
	.string "PROCESSING THE NAME\n"
	.string "\"LAN HIKARI\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string " "
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_mugshot_animation 0x1
	ts_sound_play00 0x9E, 0x1
	.string "*beep,beep,beep*"
	ts_wait 0xA, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_mugshot_animation 0x2
	ts_key_wait 0x0
	ts_clear_msg
	.string "AS SUSPECTED,YOU ARE\n"
	.string "NOT ON THE LIST!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THEREFORE,YOU ARE\n"
	.string "A SUSPICIOUS PERSON"
	ts_key_wait 0x0
	ts_clear_msg
	.string "AND MUST BE\n"
	.string "AN INTRUDER!!"
	ts_sound_play_bgm 0xC, 0x0
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87B590C_unk9
	ts_mugshot_show 0x0
	ts_msg_open
	.string "S-Suspi--!?\n"
	.string "An i-intruder!?\n"
	.string "What!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87B590C_unk10
	ts_mugshot_hide
	ts_msg_open
	.string "GREEN TOWN\n"
	.string "ORDINANCE NUMBER\n"
	.string "128 STATES THAT"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"ANYONE WHO ENTERS\n"
	.string " THE COURTHOUSE\n"
	.string " MUST HAVE RECEIVED"
	ts_key_wait 0x0
	ts_clear_msg
	.string " PRIOR APPROVAL\n"
	.string " FROM THE COURT\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU ARE BREAKING\n"
	.string "THE ABOVE ORDINANCE."
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU WILL NOW\n"
	.string "BE ARRESTED."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B590C_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "A-Arrested!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B590C_unk12
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Wait,wait!!"
	ts_sound_play_bgm 0x63, 0x0
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B590C_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Mr.Director!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87B590C_unk14
	ts_mugshot_show 0xF
	ts_msg_open
	.string "I called for this\n"
	.string "boy to stand as\n"
	.string "a witness."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I simply forgot to\n"
	.string "enter his name\n"
	.string "onto the list."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It was my mistake.\n"
	.string "I will add him to\n"
	.string "the list now."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText87B590C_unk15
	ts_mugshot_hide
	ts_msg_open
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string " "
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_mugshot_animation 0x1
	ts_sound_play00 0x9E, 0x1
	.string "*beep,beep,beep*"
	ts_wait 0xA, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_mugshot_animation 0x2
	ts_key_wait 0x0
	ts_clear_msg
	.string "SPECIAL PERMISSION\n"
	.string "GRANTED."
	ts_key_wait 0x0
	ts_clear_msg
	.string "HAVE A NICE DAY."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B590C_unk16
	ts_mugshot_show 0xF
	ts_msg_open
	ts_sound_play_bgm 0x8, 0x0
	.string "Ah,I'm really sorry\n"
	.string "for the little\n"
	.string "mix-up,my boy..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script CompText87B590C_unk17
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Um,what were those\n"
	.string "robots just now?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87B590C_unk18
	ts_mugshot_show 0xF
	ts_msg_open
	.string "If you try to enter\n"
	.string "this courthouse\n"
	.string "without permission,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you'll be arrested\n"
	.string "by those Punishment\n"
	.string "Robots you just saw."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 19

	def_text_script CompText87B590C_unk19
	ts_mugshot_show 0x0
	ts_msg_open
	.string "You can get arrested\n"
	.string "for something like\n"
	.string "that!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 20

	def_text_script CompText87B590C_unk20
	ts_mugshot_show 0xF
	ts_msg_open
	.string "I suppose I should\n"
	.string "explain how Green\n"
	.string "Town came about."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This town was\n"
	.string "founded on the\n"
	.string "theme of a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "crime-free society.\n"
	.string "So rules and laws\n"
	.string "are more strictly"
	ts_key_wait 0x0
	ts_clear_msg
	.string "enforced here. There\n"
	.string "is also a reason\n"
	.string "why there is so much"
	ts_key_wait 0x0
	ts_clear_msg
	.string "greenery,as it ties\n"
	.string "into the town's\n"
	.string "theme."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Research is still\n"
	.string "ongoing,but the best\n"
	.string "models for a crime-"
	ts_key_wait 0x0
	ts_clear_msg
	.string "free town seem to\n"
	.string "include \"nature\" in\n"
	.string "their attributes."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And that is why\n"
	.string "Green Town is full\n"
	.string "of nature now."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 21

	def_text_script CompText87B590C_unk21
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Wow..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I still need\n"
	.string "permission to get\n"
	.string "into court,right?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So how do I get it?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script CompText87B590C_unk22
	ts_mugshot_show 0xF
	ts_msg_open
	.string "You'll need to go\n"
	.string "to Green Area2's\n"
	.string "NetCafe to get it."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I was going to go\n"
	.string "myself and get it\n"
	.string "earlier..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm sorry I forgot\n"
	.string "to take care of\n"
	.string "that."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 23

	def_text_script CompText87B590C_unk23
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It's OK."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll go get it\n"
	.string "and be right back!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 24

	def_text_script CompText87B590C_unk24
	ts_mugshot_show 0xF
	ts_msg_open
	.string "The fastest way to\n"
	.string "Green Area is\n"
	.string "through that tablet."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh,and Green Area\n"
	.string "is full of trees,so\n"
	.string "please take this."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_store_timer 0x0, 0x80
	ts_sound_play00 0x73, 0x0
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x42, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_wait_o_w_var 0x0, 0x81
	ts_store_timer 0x0, 0x82
	ts_clear_msg
	ts_jump 25

	def_text_script CompText87B590C_unk25
	ts_mugshot_show 0xF
	ts_msg_open
	.string "... Alright,be\n"
	.string "careful,and good\n"
	.string "luck,my boy."
	ts_key_wait 0x0
	ts_end

	