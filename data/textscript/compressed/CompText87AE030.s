	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AE030::
	.word 0x5C800

	text_archive_start

	def_text_script CompText87AE030_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Are you\n"
	.string "really OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We left kinda..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AE030_unk1_id

	def_text_script CompText87AE030_unk1
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Yeah. It was\n"
	.string "the only way..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's not like I\n"
	.string "want him following\n"
	.string "me around forever..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AE030_unk2_id

	def_text_script CompText87AE030_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mick... You don't\n"
	.string "have to act tough\n"
	.string "in front of me..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Are you really not\n"
	.string "sad at all...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE030_unk3
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Don't talk to me\n"
	.string "like that!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm not some\n"
	.string "weakling."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm the guy who's\n"
	.string "gonna crush you in a\n"
	.string "NetBattle someday!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE030_unk4
	ts_text_speed delay=0x3
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... So..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_text_speed delay=0x4
	.string "... I can't be s..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_text_speed delay=0x2
	ts_jump target=CompText87AE030_unk5_id

	def_text_script CompText87AE030_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hey,Mick,let's go\n"
	.string "again sometime!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We can go to the\n"
	.string "Aquarium and"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "visit Plata on our\n"
	.string "next day off!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AE030_unk6_id

	def_text_script CompText87AE030_unk6
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	ts_text_speed delay=0x3
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string "\n"
	.string "Guess you're right."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_text_speed delay=0x2
	.string "It's a pain\n"
	.string "to get there..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE030_unk7
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "but it'll be\n"
	.string "worth it!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87AE030_unk8
	ts_mugshot_hide
	ts_msg_open
	.string "Meanwhile"
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_wait_skip frames=0x1E
	.string "."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AE030_unk9_id

	def_text_script CompText87AE030_unk9
	ts_sound_play_bgm track=0x2
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "I've received some\n"
	.string "new information..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It seems Captain\n"
	.string "Blackbeard and his\n"
	.string "Navi,DiveMan,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "have failed in their\n"
	.string "attack on Seaside\n"
	.string "Town."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87AE030_unk10_id

	def_text_script CompText87AE030_unk10
	ts_mugshot_show mugshot=0x60
	ts_msg_open
	.string "... It doesn't matter."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It was just some\n"
	.string "crazy stunt he\n"
	.string "wanted to pull."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A simple sideshow,\n"
	.string "so to speak..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Tell me about the\n"
	.string "other unit members."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "... Yes,boss."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "In order to revive\n"
	.string "\"those things\","
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Yuika is currently\n"
	.string "out gathering\n"
	.string "NaviEnergy."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "She's laying low\n"
	.string "now due to NetPolice\n"
	.string "activity."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But once they're\n"
	.string "gone,we'll get all\n"
	.string "we need..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Yuika will be able\n"
	.string "to revive and control\n"
	.string "\"them\" for sure."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x60
	.string "I see..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Yuika's Navi's body\n"
	.string "has been customized\n"
	.string "by the good Doctor."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It might be possible\n"
	.string "to absorb \"them\" as\n"
	.string "well..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Tell Yuika to\n"
	.string "press on no matter\n"
	.string "what happens..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x43
	.string "Yes,boss!"
	ts_key_wait any=0x0
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0xA,
	]
	ts_end

	