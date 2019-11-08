	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8768558::
	.word 0xD7300

	text_archive_start

	def_text_script CompText8768558_unk0
	ts_check_flag 0x32, 0x6, 0x1, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Mom,there's a\n"
	.string "guest...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x6
	.string "Oh,she was here\n"
	.string "just a second ago..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Huh!? She left?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x6
	.string "Yes...\n"
	.string "She should still\n"
	.string "be closeby though."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Who was it anyways?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x6
	.string "Well... It was a\n"
	.string "cute girl with\n"
	.string "two big hairclips."
	ts_key_wait 0x0
	ts_clear_msg
	.string "She looked kind of\n"
	.string "sad..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "I bet it was Iris!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x6
	.string "Is she your\n"
	.string "friend?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Yeah..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x6
	.string "Did you have some\n"
	.string "kind of plans with\n"
	.string "her?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You should try to\n"
	.string "find her."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "OK..."
	ts_key_wait 0x0
	ts_flag_set 0x32, 0x6
	ts_end

	def_text_script CompText8768558_unk1
	ts_mugshot_show 0x6
	ts_msg_open
	.string "Lan,you should\n"
	.string "invite your friends\n"
	.string "from school over..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll even bake some\n"
	.string "goodies for you!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8768558_unk2
	ts_mugshot_show 0x6
	ts_msg_open
	.string "Welcome home...\n"
	.string "But aren't you a\n"
	.string "little late?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...You didn't\n"
	.string "get detention did\n"
	.string "you?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8768558_unk3
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Since yesterday's\n"
	.string "research was behind\n"
	.string "schedule,I stayed up"
	ts_key_wait 0x0
	ts_clear_msg
	.string "all night and was\n"
	.string "able to finish early\n"
	.string "this morning."
	ts_key_wait 0x0
	ts_clear_msg
	.string "*yawn* I think I'll\n"
	.string "lie down..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8768558_unk4

	def_text_script CompText8768558_unk5
	ts_mugshot_show 0x6
	ts_msg_open
	.string "Something seems\n"
	.string "to to be wrong\n"
	.string "on the net."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Even your father\n"
	.string "was mumbling on\n"
	.string "the phone..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8768558_unk6
	ts_mugshot_show 0x5
	ts_msg_open
	.string "...Hmm,I see...\n"
	.string "Gotcha."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Time to alert the\n"
	.string "NetPolice so they"
	ts_key_wait 0x0
	ts_clear_msg
	.string "can regulate normal\n"
	.string "users jacking in..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8768558_unk7

	def_text_script CompText8768558_unk8

	def_text_script CompText8768558_unk9

	def_text_script CompText8768558_unk10

	def_text_script CompText8768558_unk11

	def_text_script CompText8768558_unk12

	def_text_script CompText8768558_unk13

	def_text_script CompText8768558_unk14

	def_text_script CompText8768558_unk15
	ts_mugshot_show 0x6
	ts_msg_open
	.string "Something happened\n"
	.string "on the Net it\n"
	.string "seems."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan,I know you'll\n"
	.string "want to go check\n"
	.string "it out,but for now"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you are not allowed\n"
	.string "to use the Net."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8768558_unk16

	def_text_script CompText8768558_unk17

	def_text_script CompText8768558_unk18

	def_text_script CompText8768558_unk19

	def_text_script CompText8768558_unk20
	ts_check_flag 0x16, 0x6, 0x15, 0xFF
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Lan,don't jack in\n"
	.string "to the Net...\n"
	.string "Do you understand?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8768558_unk21
	ts_check_flag 0x33, 0x6, 0x16, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Da...DAD..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x5
	.string "What's the matter,\n"
	.string "Lan?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "I want to know\n"
	.string "how to destroy\n"
	.string "a Cybeast!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x5
	.string "Lan... You..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Did you see a\n"
	.string "Cybeast...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "...Yes."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x5
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "Lan!\n"
	.string "This situation is\n"
	.string "too big for you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The NetPolice are\n"
	.string "already on the case!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You and MegaMan\n"
	.string "don't have to\n"
	.string "worry about it..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Leave dealing with\n"
	.string "Cybeasts up to the\n"
	.string "adults."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Don't even think\n"
	.string "of getting close\n"
	.string "to a Cybeast!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Dad..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x5
	.string "I'm sorry Lan..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You have to\n"
	.string "understand how"
	ts_key_wait 0x0
	ts_clear_msg
	.string "dangerous\n"
	.string "Cybeasts are..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Just listen to your\n"
	.string "Dad this time and\n"
	.string "be a good boy,OK?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "......"
	ts_key_wait 0x0
	ts_flag_set 0x33, 0x6
	ts_end

	def_text_script CompText8768558_unk22
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Just go to your\n"
	.string "room and be a\n"
	.string "good boy... OK?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8768558_unk23

	def_text_script CompText8768558_unk24

	def_text_script CompText8768558_unk25
	ts_check_chapter 0x25, 0x25, 0x1E, 0xFF
	ts_mugshot_show 0x6
	ts_msg_open
	.string "Something terrible\n"
	.string "has happened..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan,just don't go\n"
	.string "and do something\n"
	.string "crazy..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8768558_unk26

	def_text_script CompText8768558_unk27

	def_text_script CompText8768558_unk28

	def_text_script CompText8768558_unk29

	def_text_script CompText8768558_unk30
	ts_mugshot_show 0x6
	ts_msg_open
	.string "Lan,don't go doing\n"
	.string "anything crazy..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8768558_unk31

	def_text_script CompText8768558_unk32

	def_text_script CompText8768558_unk33

	def_text_script CompText8768558_unk34

	def_text_script CompText8768558_unk35
	ts_check_flag 0x6C, 0x8, 0x24, 0xFF
	ts_flag_set 0x6C, 0x8
	ts_sound_fade_out 0x1F, 0xA
	ts_mugshot_show 0x6
	ts_msg_open
	.string "...AH! Lan..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's terrible!\n"
	.string "Your father...\n"
	.string "He..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Say it Mom!\n"
	.string "Just say it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What happened\n"
	.string "to Dad!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x6
	.string "Just a minute ago,\n"
	.string "the police came to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "tell me that your\n"
	.string "Dad has been\n"
	.string "arrested!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Arrested..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "What was he\n"
	.string "arrested for..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x6
	.string "He was arrested for\n"
	.string "hacking the Green\n"
	.string "Town court system..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "The court system..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You mean the\n"
	.string "JudgeTree!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's ridiculous!\n"
	.string "Dad has no reason\n"
	.string "to hack anything!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "I know!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "He has nothing to\n"
	.string "gain by hacking the\n"
	.string "JudgeTree!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Hey Mom!\n"
	.string "What's gonna happen\n"
	.string "to Dad?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x6
	.string "They took him to\n"
	.string "Green Town..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "They're going to\n"
	.string "put him on trial..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Lan,let's go to\n"
	.string "Green Town!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Yeah!"
	ts_key_wait 0x0
	ts_sound_fade_in_bgm 0xB, 0x7
	ts_end

	def_text_script CompText8768558_unk36
	ts_mugshot_show 0x6
	ts_msg_open
	.string "Yuichiro..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8768558_unk37

	def_text_script CompText8768558_unk38

	def_text_script CompText8768558_unk39

	def_text_script CompText8768558_unk40
	ts_mugshot_show 0x6
	ts_msg_open
	.string "Huh? School is\n"
	.string "out already?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you're going\n"
	.string "out to play,don't\n"
	.string "come home too late!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8768558_unk41
	ts_mugshot_show 0x6
	ts_msg_open
	.string "You went to\n"
	.string "Green Town!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You should have\n"
	.string "brought me some\n"
	.string "flowers!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The flowers there\n"
	.string "are famous for\n"
	.string "being very pretty!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8768558_unk42
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Becoming a witness\n"
	.string "is incredible..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You've gained\n"
	.string "another good\n"
	.string "experience,Lan."
	ts_key_wait 0x0
	ts_end

	