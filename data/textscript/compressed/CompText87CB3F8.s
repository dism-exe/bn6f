	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CB3F8::
	.word 0x83E00

	text_archive_start

	def_text_script CompText87CB3F8_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You wanted to see\n"
	.string "me,Mr.Mach...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87CB3F8_unk1
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CB3F8_unk2
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "... I'm sorry,Lan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87CB3F8_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Huh?\n"
	.string "Sorry about what?"
	ts_key_wait any=0x0
	ts_clear_msg

	def_text_script CompText87CB3F8_unk4
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "For kidnapping your\n"
	.string "friends' Navis..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and for taking\n"
	.string "MegaMan away from\n"
	.string "you..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I had a hand in all\n"
	.string "that..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87CB3F8_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What are you saying,\n"
	.string "Mr.Mach..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's a joke,right?\n"
	.string "Ha,ha,ha..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87CB3F8_unk6
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "I am BlastMan's\n"
	.string "operator."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "On the first day you\n"
	.string "came to this school,\n"
	.string "I tricked Mick"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and made the\n"
	.string "Security Bots go\n"
	.string "crazy."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... That was all me."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87CB3F8_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x3
	.string "... N-No! I don't\n"
	.string "believe you!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_text_speed delay=0x2
	.string "Tell me you're\n"
	.string "joking,Mr.Mach..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87CB3F8_unk8
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "You can hate me if\n"
	.string "you want..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I just wanted to\n"
	.string "tell you,so I called\n"
	.string "you here..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Right now,MegaMan is\n"
	.string "in the Underground."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87CB3F8_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What!?\n"
	.string "You know where\n"
	.string "MegaMan is!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87CB3F8_unk10
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "You know where the\n"
	.string "giant hole is in\n"
	.string "CentralArea3?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I heard that MegaMan\n"
	.string "jumped down into\n"
	.string "that hole."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "At the bottom of the\n"
	.string "hole is a part of\n"
	.string "the Cyberworld known"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "as the Underground.\n"
	.string "The Cybeasts were\n"
	.string "sealed there."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe,the Cybeast\n"
	.string "inside MegaMan made\n"
	.string "him go there..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87CB3F8_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Mr.Mach,\n"
	.string "you were joking"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "about being\n"
	.string "BlastMan's\n"
	.string "operator,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I mean,you were nice\n"
	.string "enough to tell me\n"
	.string "where MegaMan is..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87CB3F8_unk12
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "You're wrong,Lan. I\n"
	.string "am helping because"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I just want to feel\n"
	.string "better about myself\n"
	.string "on the inside."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I really am a no-\n"
	.string "good person."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What I've done are\n"
	.string "things that can\n"
	.string "never be forgiven..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87CB3F8_unk13
	ts_mugshot_hide
	ts_msg_open
	.string "Hey!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CB3F8_unk14
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "The wind's going to\n"
	.string "be really strong\n"
	.string "today!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's dangerous to\n"
	.string "stand out there!\n"
	.string "Better get inside!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CB3F8_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mr.Mach!!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=16

	def_text_script CompText87CB3F8_unk16
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "I will probably\n"
	.string "fight you again\n"
	.string "sometime..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "as long as Baryl\n"
	.string "commands me to..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87CB3F8_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "B-Baryl!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I figured Colonel\n"
	.string "was somehow related."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I should have\n"
	.string "guessed that they\n"
	.string "had joined WWW..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87CB3F8_unk18
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "I can't turn my back\n"
	.string "on Baryl,but..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I hope you can\n"
	.string "believe that..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "even if all my\n"
	.string "actions seem to\n"
	.string "contradict this,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I care about my\n"
	.string "students with all\n"
	.string "of my heart."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Good-bye,my student."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87CB3F8_unk19
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mr.Mach..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I understand.\n"
	.string "You must have a good\n"
	.string "reason to do this."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... I won't let your\n"
	.string "kindness go to\n"
	.string "waste."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I will get MegaMan\n"
	.string "back for sure!"
	ts_key_wait any=0x0
	ts_end

	