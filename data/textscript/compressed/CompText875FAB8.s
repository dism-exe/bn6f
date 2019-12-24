	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875FAB8::
	.word 0x77100

	text_archive_start

	def_text_script CompText875FAB8_unk0
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "Green Area1 on it."
	ts_key_wait any=0x0
	ts_start_map map=0x6
	ts_end

	def_text_script CompText875FAB8_unk1
	ts_check_flag [
		flag: 0x865,
		jumpIfTrue: 0x3,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x864,
		jumpIfTrue: 0x2,
		jumpIfFalse: 0xFF,
	]
	ts_msg_open
	.string "TO PASS THROUGH\n"
	.string "HERE,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU MUST HAVE A\n"
	.string "KNOWLEDGE OF THE\n"
	.string "LAWS."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I WILL NOW TEST YOUR\n"
	.string "\"LAW KNOWLEDGE\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOUR QUESTION IS\n"
	.string "FROM GREEN TOWN\n"
	.string "ORDINANCE 182."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WHAT IS THE\n"
	.string "PUNISHMENT"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "FOR HITTING MR.PROG\n"
	.string "ON THE HEAD?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "The punishment for\n"
	.string "hitting Mr.Prog on\n"
	.string "the head??"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There's actually a\n"
	.string "law about that!?..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Do you know the\n"
	.string "answer,MegaMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Nope,not a clue."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But it looks like\n"
	.string "Green Area2 is just\n"
	.string "beyond this door..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So what now...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I guess we should\n"
	.string "go look for the\n"
	.string "answer..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x864
	ts_end

	def_text_script CompText875FAB8_unk2
	ts_msg_open
	.string "I WILL NOW TEST YOUR\n"
	.string "\"LAW KNOWLEDGE\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOUR QUESTION IS\n"
	.string "FROM GREEN TOWN\n"
	.string "ORDINANCE 182."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WHAT IS THE\n"
	.string "PUNISHMENT"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "FOR HITTING MR.PROG\n"
	.string "ON THE HEAD?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Do you know the\n"
	.string "answer,MegaMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Nope,not a clue."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So what now...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I guess we should\n"
	.string "go look for the\n"
	.string "answer..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875FAB8_unk3
	ts_flag_set flag=0x866
	ts_msg_open
	.string "TO PASS THROUGH\n"
	.string "HERE,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I MUST TEST YOUR\n"
	.string "\"LAW KNOWLEDGE\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOUR QUESTION IS\n"
	.string "FROM GREEN TOWN\n"
	.string "ORDINANCE 182."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WHAT IS THE\n"
	.string "PUNISHMENT"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "FOR HITTING MR.PROG\n"
	.string "ON THE HEAD?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Um..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The punishment is\n"
	.string "something that is\n"
	.string "infuriating!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	ts_mugshot_animation animation=0x1
	.string "(I got that wrong,\n"
	.string " didn't I...?)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_animation animation=0x2
	ts_mugshot_hide
	.string "THAT IS CORRECT!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU MAY PASS."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "......"
	ts_key_wait any=0x0
	ts_flag_clear flag=0x87D
	ts_end

	def_text_script CompText875FAB8_unk4
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x5,
		jumpIfElecMan: 0xFF,
		jumpIfSlashMan: 0x6,
		jumpIfEraseMan: 0xFF,
		jumpIfChargeMan: 0xFF,
		jumpIfSpoutMan: 0xFF,
		jumpIfTomahawkMan: 0x7,
		jumpIfTenguMan: 0xFF,
		jumpIfGroundMan: 0x8,
		jumpIfDustMan: 0xFF,
		jumpIfProtoMan: 0xFF,
	]
	ts_check_item07 [
		item: 0x42,
		amount: 0x1,
		jumpIfEqual: 0xA,
		jumpIfGreater: 0xA,
		jumpIfLess: 0xFF,
	]
	ts_msg_open
	.string "A strong-looking\n"
	.string "cybertree is\n"
	.string "blocking the way..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875FAB8_unk5
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "This tree is toast!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Burn,baby,burn!\n"
	.string "Yeah!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0xF7
	ts_wait frames=0x1E
	.string "HeatMan's raging\n"
	.string "flames burned the\n"
	.string "cybertree to ashes!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText875FAB8_unk6
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Slice and dice!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Slaaaaaaaash!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0xFA
	ts_wait frames=0x1E
	.string "SlashMan's powerful\n"
	.string "attack cut the\n"
	.string "cybertree down!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText875FAB8_unk7
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Heh,this tree will\n"
	.string "fall in no time\n"
	.string "flat!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Tomahawk Swing!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0x10A
	ts_wait frames=0x1E
	.string "The cybertree was\n"
	.string "split into two!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText875FAB8_unk8
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whiiiiiir!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll uproot this\n"
	.string "tree from the bottom\n"
	.string "up!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Whiiiiiir!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_play00 track=0x1BF
	ts_wait frames=0x1E
	.string "GroundMan's charge\n"
	.string "dug the cybertree\n"
	.string "out,roots and all!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText875FAB8_unk9
	ts_flag_clear flag=0x169
	ts_end

	def_text_script CompText875FAB8_unk10
	ts_msg_open
	.string "A strong-looking\n"
	.string "cybertree is\n"
	.string "blocking the way..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and the "
	ts_print_item [
		item: 0x42,
		buffer: 0x0,
	]
	.string "\n"
	.string "is too weak to cut\n"
	.string "it down."
	ts_key_wait any=0x0
	ts_end

	