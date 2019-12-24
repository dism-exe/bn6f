	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B71A8::
	.word 0xFB200

	text_archive_start

	def_text_script CompText87B71A8_unk0
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x1,
	]
	ts_wait frames=0xA
	ts_sound_play00 track=0x1A0
	.string "*crack! "
	ts_wait frames=0x20
	ts_sound_play00 track=0x1A0
	.string "crack!*"
	ts_wait frames=0x20
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x2,
	]
	ts_clear_msg
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_jump target=1

	def_text_script CompText87B71A8_unk1
	ts_msg_open
	.string "... NOW THEN,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THE TRIAL OF\n"
	.string "CAPTAIN BLACKBEARD\n"
	.string "WILL NOW COMMENCE."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B71A8_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_mugshot_animation animation=0x1
	.string "(It spoke!)"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "(The tree actually\n"
	.string " spoke!)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_animation animation=0x2
	ts_jump target=3

	def_text_script CompText87B71A8_unk3
	ts_mugshot_hide
	ts_msg_open
	.string "FIRST,PROSECUTOR\n"
	.string "ITO,YOUR OPENING\n"
	.string "STATEMENT."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87B71A8_unk4
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "Yes,your honor."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The defendant,\n"
	.string "Captain Blackbeard,\n"
	.string "is accused of"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "endangering the\n"
	.string "lives of many people\n"
	.string "at the Seaside"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Aquarium by\n"
	.string "releasing the\n"
	.string "animals from their"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "tanks and cages,for\n"
	.string "the sake of watching\n"
	.string "people panic."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We,the prosecution,\n"
	.string "cannot allow this\n"
	.string "sort of harmful,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "selfish behavior to\n"
	.string "go unpunished!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87B71A8_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_mugshot_animation animation=0x1
	.string "(He looks so cool!)"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B71A8_unk6
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "Now I would like to\n"
	.string "call Lan Hikari to\n"
	.string "the witness stand."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87B71A8_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Y-Yes,sir!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_animation animation=0x1
	.string "(Here goes. *gulp*\n"
	.string " I'm so nervous...)"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B71A8_unk8
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "Please state your\n"
	.string "name and occupation."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87B71A8_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Y-Yes,sir.\n"
	.string "I-I'm L-Lan Hikari."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And,I,uh,I've never\n"
	.string "had octopus..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87B71A8_unk10
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "(Lan,that's not what\n"
	.string " he asked you!)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87B71A8_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "(But he asked some-\n"
	.string " thing about an\n"
	.string " octopus...)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87B71A8_unk12
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "(No,no! He said,\n"
	.string " \"Occupation\"!)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87B71A8_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "(A what? Octobacon?)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87B71A8_unk14
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "(That's not it\n"
	.string " either!)"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "(What's with you\n"
	.string " and food!?)"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "(*sigh...*)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2D
	.string "... Now the witness\n"
	.string "will answer a few\n"
	.string "questions about the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "incident. Please\n"
	.string "answer to the best\n"
	.string "of your ability."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "On the day of the\n"
	.string "incident,you were\n"
	.string "just visiting and"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "enjoying the\n"
	.string "Aquarium. Is this\n"
	.string "correct?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Yeah... I mean,\n"
	.string "yes,that's right."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2D
	.string "Can you please tell\n"
	.string "the court exactly\n"
	.string "what happened?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Um... My friend and\n"
	.string "I were about to go\n"
	.string "home."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And suddenly,we\n"
	.string "heard screaming.\n"
	.string "And before we knew"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "it,there were sharks\n"
	.string "and piranhas all\n"
	.string "over the place!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2D
	.string "... I see..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Moving on to my\n"
	.string "next question."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now,think back.Was\n"
	.string "the man you saw and\n"
	.string "fought in a"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "NetBattle with,the\n"
	.string "same man you see\n"
	.string "sitting over there,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the defendant\n"
	.string "Captain Blackbeard?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Yes,that's him!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But Captain\n"
	.string "Blackbeard didn't\n"
	.string "just mess up the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Aquarium. He also\n"
	.string "took my friend\n"
	.string "hostage!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'd recognize that\n"
	.string "evil face anywhere!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2D
	.string "... This is very\n"
	.string "decisive testimony.\n"
	.string "I don't see the need"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "to hear an\n"
	.string "explanation from the\n"
	.string "defendant!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "(Hey,MegaMan,is this\n"
	.string " all I needed to do\n"
	.string " to \"testify\"?)"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "(Yeah,I guess so!\n"
	.string " You did great!)"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B71A8_unk15
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x5,
	]
	ts_wait frames=0xA
	ts_sound_play00 track=0x1A0
	.string "*crack! "
	ts_wait frames=0x20
	ts_sound_play00 track=0x1A0
	.string "crack!*"
	ts_wait frames=0x20
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x6,
	]
	ts_clear_msg
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_jump target=16

	def_text_script CompText87B71A8_unk16
	ts_mugshot_hide
	ts_msg_open
	.string "... I WILL NOW\n"
	.string "PASS JUDGMENT."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THE DEFENDANT WAS\n"
	.string "ACTING OUT OF MALICE\n"
	.string "AND SELFISHNESS."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THIS SORT OF EVIL\n"
	.string "BEHAVIOR CAN NOT\n"
	.string "BE FORGIVEN."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THEREFORE,I\n"
	.string "PRONOUNCE THE\n"
	.string "DEFENDANT,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "CAPTAIN BLACKBEARD,\n"
	.string "GUILTY!\n"
	.string "I SENTENCE YOU TO"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THE PUNISHMENT ROOM\n"
	.string "FOR AN INDEFINITE\n"
	.string "AMOUNT OF TIME."
	ts_sound_play_bgm track=0x2
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B71A8_unk17
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B71A8_unk18
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "... not... part..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B71A8_unk19
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "This was not part\n"
	.string "of the deal!!\n"
	.string "Ya filthy,lyin'..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll send ya to\n"
	.string "Davey Jones' locker,\n"
	.string "ya scurvy rat,arrr'!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=20

	def_text_script CompText87B71A8_unk20
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "W-What the!?\n"
	.string "He didn't say one\n"
	.string "word during the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "entire trial,and now\n"
	.string "he makes a big fuss?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2D
	.string "This is how\n"
	.string "criminals always\n"
	.string "act."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When he heard the\n"
	.string "verdict,and realized\n"
	.string "how serious his"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "crime was,he\n"
	.string "objected,just as all\n"
	.string "criminals do..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=21

	def_text_script CompText87B71A8_unk21
	ts_mugshot_hide
	ts_msg_open
	.string "PLEASE REMOVE THE\n"
	.string "GUILTY PARTY."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B71A8_unk22
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "Well done!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So what did you\n"
	.string "think of your\n"
	.string "first trial?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=23

	def_text_script CompText87B71A8_unk23
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I was soooo\n"
	.string "nervous!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... But the\n"
	.string "JudgeTree is\n"
	.string "really cool!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I guess a tree\n"
	.string "can run a trial\n"
	.string "after all!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=24

	def_text_script CompText87B71A8_unk24
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "Hahaha,you see?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Actually,that\n"
	.string "JudgeTree was my\n"
	.string "idea!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=25

	def_text_script CompText87B71A8_unk25
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Really!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=26

	def_text_script CompText87B71A8_unk26
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "It was a small idea\n"
	.string "I had in college,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "surprisingly,it got\n"
	.string "bigger and bigger!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=27

	def_text_script CompText87B71A8_unk27
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "That's awesome,\n"
	.string "Prosecutor Ito!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87B71A8_unk28
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "I refuse to forgive\n"
	.string "any evil-doers,so..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "my dream is to\n"
	.string "someday create..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "a society with no\n"
	.string "crime!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The JudgeTree is the\n"
	.string "first step to making\n"
	.string "my dream come true!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Ah,sorry,I got\n"
	.string "a little carried\n"
	.string "away there."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Anyway,I must\n"
	.string "prepare for my next\n"
	.string "trial,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "so,I have to go."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Stop by and visit\n"
	.string "some time,OK?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B71A8_unk29
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Prosecutor Ito\n"
	.string "sure loves\n"
	.string "justice..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He looks so cool!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I want to be like\n"
	.string "him when I grow up!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=30

	def_text_script CompText87B71A8_unk30
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Well,you're not\n"
	.string "gonna be like him\n"
	.string "the way you are now!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "First,you've gotta\n"
	.string "study a whole lot\n"
	.string "more!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Come on,let's go\n"
	.string "home and do some\n"
	.string "homework!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=31

	def_text_script CompText87B71A8_unk31
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Awww..."
	ts_key_wait any=0x0
	ts_end

	