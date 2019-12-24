	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B2A98::
	.word 0x2EB00

	text_archive_start

	def_text_script CompText87B2A98_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "BeastOut..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It sure is a scary\n"
	.string "power,but it also\n"
	.string "feels...promising."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We've gotta be\n"
	.string "really careful\n"
	.string "using it!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87B2A98_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Yeah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87B2A98_unk2
	ts_mugshot_show mugshot=0x6
	ts_msg_open
	.string "Lan! You have\n"
	.string "a guest!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey! Wait...!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87B2A98_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "A guest...?\n"
	.string "Is it Iris?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B2A98_unk4
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Yo,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87B2A98_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Oh,it's Mick..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87B2A98_unk6
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "W-What's that\n"
	.string "supposed to mean!?\n"
	.string "Hmph!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87B2A98_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Huh? What's wrong?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You look like\n"
	.string "you're in a hurry..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87B2A98_unk8
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Oh,yeah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That clown-looking\n"
	.string "Navi that attacked\n"
	.string "my Navi has been"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "spotted hanging\n"
	.string "around in\n"
	.string "CentralArea3!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "A clown-looking\n"
	.string "Navi..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "like the one that\n"
	.string "attacked us in\n"
	.string "SeasideArea3!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_play_bgm track=0xC
	ts_mugshot_show mugshot=0x14
	.string "That clown's gotta\n"
	.string "be up to no good!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87B2A98_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What's his trick\n"
	.string "this time!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87B2A98_unk10
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's go,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Jack me in!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87B2A98_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You got it!!"
	ts_key_wait any=0x0
	ts_end

	