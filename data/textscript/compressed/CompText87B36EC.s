	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B36EC::
	.word 0x41700

	text_archive_start

	def_text_script CompText87B36EC_unk0
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Lan! Good to see\n"
	.string "you,drip!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B36EC_unk1_id

	def_text_script CompText87B36EC_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You too,SpoutMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B36EC_unk2_id

	def_text_script CompText87B36EC_unk2
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "OK,now Lan,please\n"
	.string "operate SpoutMan\n"
	.string "and go to"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the Aquarium HP in\n"
	.string "SeasideArea."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B36EC_unk3_id

	def_text_script CompText87B36EC_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The Aquarium HP?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What am I gonna\n"
	.string "learn at the\n"
	.string "Aquarium?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B36EC_unk4_id

	def_text_script CompText87B36EC_unk4
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Um,nothing really...\n"
	.string "I kinda have this\n"
	.string "part-time job there."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I just thought since\n"
	.string "you're going that\n"
	.string "way... Heheh!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B36EC_unk5_id

	def_text_script CompText87B36EC_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "S-Since I... What!?\n"
	.string "What's that gotta do\n"
	.string "with teaching me!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B36EC_unk6_id

	def_text_script CompText87B36EC_unk6
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "*sniffle*..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've gotta take on\n"
	.string "so many part-time\n"
	.string "jobs to make money,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "or else I can't\n"
	.string "pay my brothers'\n"
	.string "tuition costs!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B36EC_unk7_id

	def_text_script CompText87B36EC_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I-I'm sorry..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If I take SpoutMan\n"
	.string "to the Aquarium HP,\n"
	.string "it'll be OK,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But what should I\n"
	.string "do once I get\n"
	.string "there?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B36EC_unk8_id

	def_text_script CompText87B36EC_unk8
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "One of the staff's\n"
	.string "Navis should be\n"
	.string "there somewhere."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Just find that Navi\n"
	.string "and you should be\n"
	.string "OK."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now let's get going!\n"
	.string "I'll be waiting for\n"
	.string "you at the Aquarium!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B36EC_unk9_id

	def_text_script CompText87B36EC_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah! Heh?\n"
	.string "W-Wait a sec,Shuko!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... She ran off..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,I guess I\n"
	.string "don't really have\n"
	.string "a choice..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ready to go to\n"
	.string "the Aquarium HP,\n"
	.string "SpoutMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B36EC_unk10_id

	def_text_script CompText87B36EC_unk10
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Let's go,drip!!"
	ts_key_wait any=0x0
	ts_end

	