	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87ACE80::
	.word 0x58A00

	text_archive_start

	def_text_script CompText87ACE80_unk0
	ts_msg_open
	.string "Gahaha! More fun\n"
	.string "than a barrel of\n"
	.string "sea monkeys!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87ACE80_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Who's there!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87ACE80_unk2
	ts_mugshot_show 0x2A
	ts_msg_open
	.string "... Ladies and\n"
	.string "gentlemen!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Welcome to Capt'n\n"
	.string "Blackbeard's Show\n"
	.string "of Wild Mayhem!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...in case ye\n"
	.string "didn't know!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Gahahaha!! Aren't\n"
	.string "ye havin' fun,\n"
	.string "matey?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87ACE80_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... I remember now!\n"
	.string "You're that\n"
	.string "weird,loud guy"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that was yelling\n"
	.string "something about\n"
	.string "being fired"
	ts_key_wait 0x0
	ts_clear_msg
	.string "in front of the\n"
	.string "Aquarium\n"
	.string "yesterday!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Why are you\n"
	.string "doing this!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87ACE80_unk4
	ts_mugshot_show 0x2A
	ts_msg_open
	.string "... What's that\n"
	.string "ye say,boy?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Did I just 'ear,\n"
	.string "\"Why're ye\n"
	.string "doin' this?\""
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87ACE80_unk5
	ts_mugshot_show 0x2A
	ts_msg_open
	.string "Don't say such\n"
	.string "stupid thin's!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yer the same\n"
	.string "as that quack\n"
	.string "Director --"
	ts_key_wait 0x0
	ts_clear_msg
	.string "findin' faults\n"
	.string "with me show!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I like ye,\n"
	.string "so ye'd better\n"
	.string "listen good!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Why am I doin' this?\n"
	.string "Well,that's\n"
	.string "'cause,ye see..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "this aquarium's\n"
	.string "borin' as a\n"
	.string "grounded ship!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm puttin' some\n"
	.string "wind back in 'er\n"
	.string "sail!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Sharks and\n"
	.string "alligators on\n"
	.string "the rampage!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "People runnin' for\n"
	.string "their lives!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Isn't me show the\n"
	.string "best show in\n"
	.string "history,matey!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Gahahaha!!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87ACE80_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "W-What is he\n"
	.string "talking about!?\n"
	.string "Best show!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "His show is why Mick\n"
	.string "and the others are\n"
	.string "in danger!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's no use talking\n"
	.string "with a guy this\n"
	.string "selfish!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If I can just...!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87ACE80_unk7
	ts_mugshot_show 0x2A
	ts_msg_open
	.string "Har,har. What's\n"
	.string "this? Ye weren't\n"
	.string "thinkin' of"
	ts_key_wait 0x0
	ts_clear_msg
	.string "jackin' in to this\n"
	.string "here computer,were\n"
	.string "ye,boy?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Gahaha!\n"
	.string "That's rich!\n"
	.string "Better give up,boy!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've got me Navi,\n"
	.string "DiveMan,in this\n"
	.string "computer!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yer Navi's no\n"
	.string "match for mine!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87ACE80_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We'll see about\n"
	.string "that!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_control_lock
	ts_text_speed 0x1
	.string "Jack in!"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "MegaMan,"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "Execute!!"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_end

	