	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CA1C0::
	.word 0x7C300

	text_archive_start

	def_text_script CompText87CA1C0_unk0
	ts_mugshot_show [
		mugshot: 0x53,
	]
	ts_msg_open
	.string "... Nnnnngh."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The Cybeast's power\n"
	.string "is amazing..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87CA1C0_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... Colonel."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87CA1C0_unk2
	ts_mugshot_show [
		mugshot: 0x53,
	]
	ts_msg_open
	.string "What's that face\n"
	.string "for...?\n"
	.string "You're the winner..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87CA1C0_unk3
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Don't say that!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87CA1C0_unk4
	ts_mugshot_show [
		mugshot: 0x53,
	]
	ts_msg_open
	.string "Don't come near me!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I don't need your\n"
	.string "compassion!\n"
	.string "... Aargh!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87CA1C0_unk5
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... Colonel,\n"
	.string "why...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87CA1C0_unk6
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... I've had enough!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Baryl... Why does\n"
	.string "it have to be like\n"
	.string "this!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87CA1C0_unk7
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "... What do you\n"
	.string "want me to say?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "No matter what,we\n"
	.string "are destined to\n"
	.string "fight each other."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And you won...\n"
	.string "That's all there\n"
	.string "is to it..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87CA1C0_unk8
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	ts_text_speed [
		delay: 0x3,
	]
	.string "... Destined?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_text_speed [
		delay: 0x2,
	]
	.string "I get it..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Baryl and Colonel,\n"
	.string "you two are doing\n"
	.string "this for no reason."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87CA1C0_unk9
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "... What!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You said you\n"
	.string "understood why we\n"
	.string "have to fight."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 10,
	]

	def_text_script CompText87CA1C0_unk10
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "That's not what I'm\n"
	.string "talking about!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You said it was\n"
	.string "\"destiny\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But that's not what\n"
	.string "I was asking!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "What I wanted to\n"
	.string "know was if it was\n"
	.string "of your own \"will\"!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I wanted to ask you,\n"
	.string "if you really wanted\n"
	.string "to join WWW,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and if you really,of\n"
	.string "your own will,wanted\n"
	.string "to fight me."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That's what I was\n"
	.string "asking! But what you\n"
	.string "just told me is that"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "you're so focused on\n"
	.string "\"destiny\" that"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "you've thrown your\n"
	.string "\"will\" away!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 11,
	]

	def_text_script CompText87CA1C0_unk11
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "......"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Baryl!\n"
	.string "Open your eyes!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_text_speed [
		delay: 0x3,
	]
	.string "\"My own will\",huh..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_text_speed [
		delay: 0x2,
	]
	.string "It's been so long\n"
	.string "that I've forgotten\n"
	.string "what it really is..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_sound_play_bgm [
		track: 0xD,
	]
	.string "Looking at you,I can\n"
	.string "see how dirty I have\n"
	.string "become..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Baryl..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	.string "\"Live by your own\n"
	.string " will\"..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Maybe I've been\n"
	.string "hoping for someone\n"
	.string "to tell me that."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "It's not too late!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You can quit WWW,\n"
	.string "Baryl!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	.string "... I can't do that."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "But why!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	.string "I can't quit,not\n"
	.string "right now..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script CompText87CA1C0_unk12
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... Baryl!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 13,
	]

	def_text_script CompText87CA1C0_unk13
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "There's a favor I\n"
	.string "have to return..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Stand up,Colonel..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 14,
	]

	def_text_script CompText87CA1C0_unk14
	ts_mugshot_show [
		mugshot: 0x53,
	]
	ts_msg_open
	.string "......"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87CA1C0_unk15
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Wait,Colonel!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 16,
	]

	def_text_script CompText87CA1C0_unk16
	ts_mugshot_show [
		mugshot: 0x53,
	]
	ts_msg_open
	.string "I can not afford to\n"
	.string "let you stop me."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I will take my\n"
	.string "leave."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Good-bye,MegaMan."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87CA1C0_unk17
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Colonel..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87CA1C0_unk18
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "In the end,after we\n"
	.string "talked about \"will\",\n"
	.string "Baryl and Colonel"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "disappeared into the\n"
	.string "Underground's\n"
	.string "darkness."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We have to watch\n"
	.string "over and protect our\n"
	.string "\"will\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Even when it seemed\n"
	.string "hopeless,my will\n"
	.string "kept me going..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	