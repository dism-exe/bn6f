	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D5D48::
	.word 0xEEE00

	text_archive_start

	def_text_script CompText87D5D48_unk0
	ts_msg_open
	.string "A few days after the\n"
	.string "explosion..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The explosion was\n"
	.string "really powerful.\n"
	.string "It flattened the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "entire Expo Site,and\n"
	.string "the blast from the\n"
	.string "explosion made the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "town a mess,and\n"
	.string "ruined a part of\n"
	.string "the school."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Dr.Wily was found in\n"
	.string "the wreckage in the\n"
	.string "spot we left him."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It was a miracle\n"
	.string "that he wasn't hurt\n"
	.string "very badly."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Baryl was nowhere to\n"
	.string "be found,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sure he's alive\n"
	.string "somewhere..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I just know it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Um... Yuika,Ito,and\n"
	.string "Vic were found\n"
	.string "unconscious by Chaud"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "in the place they\n"
	.string "had landed from when\n"
	.string "they jumped."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,it was a\n"
	.string "really far way down\n"
	.string "to jump..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Mr.Mach was given a\n"
	.string "lighter punishment\n"
	.string "because he explained"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "why he joined WWW,\n"
	.string "and he helped to\n"
	.string "stop WWW in the end."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He's free now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "After hearing about\n"
	.string "Iris and Colonel,we\n"
	.string "were all really sad."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Iris,Colonel...\n"
	.string "Are you watching us\n"
	.string "from somewhere...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Oh,and today is\n"
	.string "graduation day at\n"
	.string "ACDC School!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D5D48_unk1
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "I have some messages\n"
	.string "to read! Here's one\n"
	.string "from Mr.Higsby!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"To the students of\n"
	.string " ACDC School:\n"
	.string " Congratulations!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " I'm in Netopia\n"
	.string " right now studying"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " so that I can\n"
	.string " make Higsby's even\n"
	.string " bigger than before!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " I'm sorry I can't\n"
	.string " say congrats in\n"
	.string " person,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " I promise to bring\n"
	.string " back a ton of rare\n"
	.string " chips,so"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " I hope you will\n"
	.string " all look forward\n"
	.string " to our return!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " I look forward to\n"
	.string " seeing all of you\n"
	.string " all grown up!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string " From,\n"
	.string " Higsby and\n"
	.string " NumberMan\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Mr.Higsby sent this\n"
	.string "from far away\n"
	.string "Netopia!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There are so many\n"
	.string "messages that I'll\n"
	.string "just read the names."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Masa from the fish\n"
	.string "shop,Ms.Sal from the\n"
	.string "boxed lunch store,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the antique shop's\n"
	.string "Ms.Miyu,the\n"
	.string "announcer Ribitta,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the gift shop owner\n"
	.string "Tamako,Creamland's\n"
	.string "Princess Pride"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and all the local\n"
	.string "scientists..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There are so many\n"
	.string "people cheering for\n"
	.string "you."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm also very happy\n"
	.string "for all of you..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You are all such\n"
	.string "good children..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... I hope you won't\n"
	.string "forget me when you\n"
	.string "go to junior high!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87D5D48_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Of course we won't!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2
	.string "Yeah! We'll remember\n"
	.string "you!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1
	.string "We love you,Ms.Mari!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3
	.string "We'll come back and\n"
	.string "visit... *sniffle*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87D5D48_unk3
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "You'll always be my\n"
	.string "students!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D5D48_unk4
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "I hope all of you\n"
	.string "from Cyber Academy\n"
	.string "do well,too!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "OK!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87D5D48_unk5
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Yes,madam!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Even though we had\n"
	.string "to come to ACDC\n"
	.string "School to have our"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "graduation because\n"
	.string "of the explosion,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm glad we're here!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87D5D48_unk6
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Grrrr!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can't believe Lan\n"
	.string "had such a pretty\n"
	.string "teacher!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We had a worthless\n"
	.string "old man for a\n"
	.string "teacher..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and then he suddenly\n"
	.string "disappears on us..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87D5D48_unk7
	ts_mugshot_hide
	ts_msg_open
	.string "WHO'S A WORTHLESS\n"
	.string "OLD MAN!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87D5D48_unk8
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "T-That voice...!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D5D48_unk9
	ts_sound_play_bgm track=0xD
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Congratulations,\n"
	.string "everyone!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87D5D48_unk10
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "M-Mr.Mach!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Mr.Maaaaach!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D5D48_unk11
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Hahaha,you can't end\n"
	.string "without me around!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Sorry I made\n"
	.string "everyone worry."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87D5D48_unk12
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Waaaaaaaaaaah...\n"
	.string "*sniffle*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87D5D48_unk13
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "*sniffle...*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I-I said I wouldn't\n"
	.string "c-c-cry..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "*honk*... But you've\n"
	.string "all g-grown up and\n"
	.string "graduated..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87D5D48_unk14
	ts_mugshot_hide
	ts_msg_open
	.string "Ms.Maaaari!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D5D48_unk15
	ts_msg_open
	.string "I wish we could stay\n"
	.string "a little longer,but\n"
	.string "it's time to go..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_msg_close
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x5,
	]
	ts_wait frames=0xB4
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x177
	.string "*ding,"
	ts_wait frames=0x2A
	.string "dong,"
	ts_wait frames=0x28
	.string "ding,"
	ts_wait frames=0x28
	.string "dong*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D5D48_unk16
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "I want to thank\n"
	.string "everyone for\n"
	.string "everything..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I hope you will all\n"
	.string "do well in life!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87D5D48_unk17
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Don't study too much\n"
	.string "and please be an\n"
	.string "open-minded adult!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Take care of\n"
	.string "yourselves!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87D5D48_unk18
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "OK,this ends our\n"
	.string "last homeroom\n"
	.string "together."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Congratulations\n"
	.string "again!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87D5D48_unk19
	ts_mugshot_hide
	ts_msg_open
	.string "Yaaaaaaaaaaaaaay!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D5D48_unk20
	ts_mugshot_show mugshot=0x2
	ts_msg_open
	.string "So whatcha up\n"
	.string "to now?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=21

	def_text_script CompText87D5D48_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hmmm..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=22

	def_text_script CompText87D5D48_unk22
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "Lan,may I have a\n"
	.string "word with you?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=23

	def_text_script CompText87D5D48_unk23
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... I wonder what's\n"
	.string "up...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D5D48_unk24
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yes,Ms.Mari?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=25

	def_text_script CompText87D5D48_unk25
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "Before homeroom,a\n"
	.string "man came and asked\n"
	.string "me about you..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and then left you a\n"
	.string "large box."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=26

	def_text_script CompText87D5D48_unk26
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What did that person\n"
	.string "look like,Ms.Mari!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=27

	def_text_script CompText87D5D48_unk27
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "Well,he had long\n"
	.string "hair,stubble,and\n"
	.string "was sort of quiet..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87D5D48_unk28
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... I thought so..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Where's that box,\n"
	.string "Ms.Mari!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=29

	def_text_script CompText87D5D48_unk29
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "T-The Teachers'\n"
	.string "Room..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=30

	def_text_script CompText87D5D48_unk30
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh! Can you please\n"
	.string "tell everyone to\n"
	.string "meet at my house?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D5D48_unk31
	ts_mugshot_show mugshot=0x13
	ts_msg_open
	.string "Ah! Wait...! *sigh*\n"
	.string "Lan will always be\n"
	.string "Lan,I guess..."
	ts_key_wait any=0x0
	ts_end

	