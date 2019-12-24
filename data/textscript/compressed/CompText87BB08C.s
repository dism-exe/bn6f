	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BB08C::
	.word 0xD7C00

	text_archive_start

	def_text_script CompText87BB08C_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... Ah!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BB08C_unk1
	ts_sound_play_bgm track=0x1C
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "You're..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "No! How..."
	ts_wait frames=0x1E
	.string "\n"
	.string "How can...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x53
	.string "It's been a while,\n"
	.string "MegaMan... Lan."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I didn't expect that\n"
	.string "our next meeting\n"
	.string "would be like this."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "... Colonel..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I knew it. I knew\n"
	.string "it was you."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That was your voice\n"
	.string "before,wasn't it?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What's going on?\n"
	.string "What are you doing\n"
	.string "here,Colonel!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk2_id

	def_text_script CompText87BB08C_unk2
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "... You have an idea\n"
	.string "why,don't you?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You know that if I'm\n"
	.string "here,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "then this operation\n"
	.string "is under my command."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk3_id

	def_text_script CompText87BB08C_unk3
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Your command?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk4_id

	def_text_script CompText87BB08C_unk4
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "You could say that\n"
	.string "Lan's Dad is in the\n"
	.string "Punishment Room"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "because of me."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk5_id

	def_text_script CompText87BB08C_unk5
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Why are you saying\n"
	.string "these things,\n"
	.string "Colonel!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "How can you do these\n"
	.string "things!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk6_id

	def_text_script CompText87BB08C_unk6
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "You said it yourself\n"
	.string "earlier..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you fight for what\n"
	.string "you think is right--\n"
	.string "your own sense of"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "justice.\n"
	.string "I am merely doing\n"
	.string "the same."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But,I..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I have a purpose\n"
	.string "greater than a\n"
	.string "sense of justice."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And for that,I am\n"
	.string "standing on this\n"
	.string "side of the battle."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And if it means that\n"
	.string "I must go against\n"
	.string "you,then so be it."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Nothing personal,but\n"
	.string "we part ways here,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk7_id

	def_text_script CompText87BB08C_unk7
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Colonel! Do you know\n"
	.string "what you're saying--\n"
	.string "what you're doing!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you really do\n"
	.string "this,I'll never be\n"
	.string "able to forgive you!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x53
	.string "... So that's how it\n"
	.string "is,huh? Just as I\n"
	.string "expected."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Given your\n"
	.string "personality,\n"
	.string "it's only natural."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Then I have no\n"
	.string "choice."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "From this moment on,\n"
	.string "we are enemies."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Prepare yourself,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Wait,Colonel!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk8_id

	def_text_script CompText87BB08C_unk8
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "... You should know\n"
	.string "me well enough by\n"
	.string "now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I show my enemies\n"
	.string "no mercy!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Get used to it!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BB08C_unk9
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Waaaah!!"
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x7,
	]
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BB08C_unk10
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk11_id

	def_text_script CompText87BB08C_unk11
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "... What...\n"
	.string "What was that attack\n"
	.string "just now...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It felt like I was\n"
	.string "being slashed..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmm!? I feel that\n"
	.string "presence nearby\n"
	.string "again...!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BB08C_unk12
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "... Tsk!\n"
	.string "Who's there!?\n"
	.string "Where are you!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk13_id

	def_text_script CompText87BB08C_unk13
	ts_mugshot_show mugshot=0x0
	.string "MegaMan! What just\n"
	.string "happened!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Someone just slashed\n"
	.string "Colonel at an\n"
	.string "incredible speed..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It looks like\n"
	.string "there's another Navi\n"
	.string "in this comp..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BB08C_unk14
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "... You stopped\n"
	.string "my attack..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Are you taunting me?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't know who you\n"
	.string "are,but I'll take\n"
	.string "care of you myself."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BB08C_unk15
	ts_mugshot_show mugshot=0x53
	ts_msg_open
	.string "JudgeMan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MegaMan is all\n"
	.string "yours."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk16_id

	def_text_script CompText87BB08C_unk16
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Wait,Colonel!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BB08C_unk17
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... So,the \"guest\"\n"
	.string "he was talking about\n"
	.string "was Colonel,huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk18_id

	def_text_script CompText87BB08C_unk18
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I want to find out\n"
	.string "more about Colonel,\n"
	.string "too..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but right now,we've\n"
	.string "got another enemy to\n"
	.string "focus on!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This guy's probably\n"
	.string "Prosecutor Ito's\n"
	.string "Navi!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87BB08C_unk19
	ts_mugshot_show mugshot=0x55
	ts_msg_open
	.string "So,\n"
	.string "thou art MegaMan..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I shall be\n"
	.string "thy enemy."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Thou shall tie\n"
	.string "Colonel's hands no\n"
	.string "longer."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk20_id

	def_text_script CompText87BB08C_unk20
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "JudgeMan,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "make sure you\n"
	.string "punish them\n"
	.string "thoroughly."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk21_id

	def_text_script CompText87BB08C_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Prosecutor Ito!\n"
	.string "Enough is enough!\n"
	.string "Please,stop this!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk22_id

	def_text_script CompText87BB08C_unk22
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "... You're a smart\n"
	.string "boy,Lan."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why do you want to\n"
	.string "fight against us\n"
	.string "so much...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Can't you feel it?\n"
	.string "Can't you\n"
	.string "understand?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "All I want is a\n"
	.string "perfect society,free\n"
	.string "of crime..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But that's just a\n"
	.string "pipe dream."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk23_id

	def_text_script CompText87BB08C_unk23
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... I can't forgive\n"
	.string "crime either,but\n"
	.string "I've never thought"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "about destroying the\n"
	.string "whole world because\n"
	.string "of that!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can't forgive\n"
	.string "crime because..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "crime makes the\n"
	.string "people I care about\n"
	.string "suffer!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't want my Dad\n"
	.string "and Mom to suffer!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't want Mick\n"
	.string "and Iris to suffer!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's why I fight!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk24_id

	def_text_script CompText87BB08C_unk24
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "... You really are\n"
	.string "still just a child."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're too nice..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk25_id

	def_text_script CompText87BB08C_unk25
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	ts_text_speed delay=0x1
	.string "Being nice is a\n"
	.string "good thing!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_text_speed delay=0x2
	.string "You're making people\n"
	.string "who are important to\n"
	.string "me suffer right now!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's why I'm\n"
	.string "fighting you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MegaMan!\n"
	.string "Let's show them what\n"
	.string "justice is about!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk26_id

	def_text_script CompText87BB08C_unk26
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk27_id

	def_text_script CompText87BB08C_unk27
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "They are felons,\n"
	.string "JudgeMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87BB08C_unk28_id

	def_text_script CompText87BB08C_unk28
	ts_mugshot_show mugshot=0x55
	ts_msg_open
	.string "... It does seem\n"
	.string "as thou says."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And criminals shall\n"
	.string "be punished\n"
	.string "accordingly!"
	ts_key_wait any=0x0
	ts_end

	