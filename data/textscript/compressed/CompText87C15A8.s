	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C15A8::
	.word 0x103600

	text_archive_start

	def_text_script CompText87C15A8_unk0
	ts_msg_open
	.string "A few days later..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "news spread through\n"
	.string "Central Town that"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "two prisoners had\n"
	.string "escaped"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "from the Green Town\n"
	.string "Punishment Room."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C15A8_unk1
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "... So the two\n"
	.string "shameless fools\n"
	.string "return."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Don't think that\n"
	.string "I've already\n"
	.string "forgotten"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "how embarrassingly\n"
	.string "disgraceful\n"
	.string "you two acted."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87C15A8_unk2
	ts_mugshot_show [
		mugshot: 0x2A,
	]
	ts_msg_open
	.string "... *urgk*"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87C15A8_unk3
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "......"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87C15A8_unk4
	ts_mugshot_hide
	ts_msg_open
	.string "... Yoohoo!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C15A8_unk5
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "You're in trouble\n"
	.string "now! You've made him\n"
	.string "mad!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87C15A8_unk6
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "If it isn't the two\n"
	.string "useless punks!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87C15A8_unk7
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "You two are quick\n"
	.string "to forget..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Just remember that\n"
	.string "you two are no\n"
	.string "better than them,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Yuika,Vic..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87C15A8_unk8
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "H-Hey!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87C15A8_unk9
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "What are you talking\n"
	.string "about!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 10,
	]

	def_text_script CompText87C15A8_unk10
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "Let's see. Who was\n"
	.string "it that only got us\n"
	.string "1 of the Cybeasts,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and then allowed\n"
	.string "MegaMan to get the\n"
	.string "other...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 11,
	]

	def_text_script CompText87C15A8_unk11
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "... Urk!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script CompText87C15A8_unk12
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "And who was it that\n"
	.string "without Colonel's\n"
	.string "help,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "would have lost us\n"
	.string "the Force Program...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 13,
	]

	def_text_script CompText87C15A8_unk13
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "... Tsk."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 14,
	]

	def_text_script CompText87C15A8_unk14
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "WWW doesn't need no-\n"
	.string "brained,useless\n"
	.string "failures."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The next mission is\n"
	.string "your last chance!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Mess this up and\n"
	.string "you're out for\n"
	.string "good..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87C15A8_unk15
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	ts_mugshot_animation [
		animation: 0x1,
	]
	.string "(Tsk... Who made\n"
	.string " him king?)"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_animation [
		animation: 0x2,
	]
	ts_jump [
		target: 16,
	]

	def_text_script CompText87C15A8_unk16
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	ts_mugshot_animation [
		animation: 0x2,
	]
	.string "The mission this\n"
	.string "time..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We'll be going after\n"
	.string "the Cybeast inside\n"
	.string "MegaMan's body."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We'll cause a\n"
	.string "disturbance,and\n"
	.string "kidnap him then."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This mission is\n"
	.string "too important to\n"
	.string "mess up,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "so this time I'm\n"
	.string "not leaving it\n"
	.string "up to you failures."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I've requested this\n"
	.string "person go along with\n"
	.string "you."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Enter."
	ts_key_wait [
		any: 0x0,
	]
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x7,
	]
	ts_end

	def_text_script CompText87C15A8_unk17
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "You... You're..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "BlastMan's operator,\n"
	.string "aren't you?\n"
	.string "A rare sight,indeed,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "since you said you\n"
	.string "don't want to be\n"
	.string "spotted here..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 18,
	]

	def_text_script CompText87C15A8_unk18
	ts_mugshot_show [
		mugshot: 0x12,
	]
	ts_msg_open
	.string "......"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 19,
	]

	def_text_script CompText87C15A8_unk19
	ts_mugshot_show [
		mugshot: 0x2A,
	]
	ts_msg_open
	.string "And such an\n"
	.string "interestin' hobby\n"
	.string "ye got 'ere,matey!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ye look like a\n"
	.string "teacher to the\n"
	.string "kids,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "but yer a member\n"
	.string "of WWW with the rest\n"
	.string "of this scurvy crew!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's scandalous,is\n"
	.string "what! Gahahahaha!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg

	def_text_script CompText87C15A8_unk20
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "That's enough\n"
	.string "useless talk."
	ts_key_wait [
		any: 0x0,
	]
	ts_sound_fade_in_bgm [
		track: 0x2,
		length: 0x7,
	]
	ts_end

	def_text_script CompText87C15A8_unk21
	ts_mugshot_show [
		mugshot: 0x2F,
	]
	ts_msg_open
	.string "There's more\n"
	.string "planning to be\n"
	.string "done..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "First,we're going\n"
	.string "to split into two\n"
	.string "teams."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "BlastMan and DiveMan\n"
	.string "will form one,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and JudgeMan and\n"
	.string "ElementMan will\n"
	.string "form the other."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "CircusMan will stay\n"
	.string "behind and support\n"
	.string "the two teams."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We will get that\n"
	.string "other Cybeast,one\n"
	.string "way or another."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I will not forgive\n"
	.string "failure..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C15A8_unk22
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "... Curses!\n"
	.string "He treats us like a\n"
	.string "bunch of idiots!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Who does Baryl think\n"
	.string "he is!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C15A8_unk23
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "... He was acting\n"
	.string "a little high and\n"
	.string "mighty,wasn't he?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 24,
	]

	def_text_script CompText87C15A8_unk24
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "Hey,the guy joined\n"
	.string "WWW way after all\n"
	.string "of us!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So how did he end\n"
	.string "up commanding us!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 25,
	]

	def_text_script CompText87C15A8_unk25
	ts_mugshot_show [
		mugshot: 0x2A,
	]
	ts_msg_open
	.string "Ye be tellin' the\n"
	.string "truth there,matey!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 26,
	]

	def_text_script CompText87C15A8_unk26
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "But they say he's\n"
	.string "invincible,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and his Navi...\n"
	.string "he's too strong for\n"
	.string "us to beat..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 27,
	]

	def_text_script CompText87C15A8_unk27
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "... Yeah,but a man's\n"
	.string "got his limits,and\n"
	.string "I'm at mine!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Look,those two are\n"
	.string "strong,but"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "if we all work\n"
	.string "together,I bet we\n"
	.string "stand a chance..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 28,
	]

	def_text_script CompText87C15A8_unk28
	ts_mugshot_show [
		mugshot: 0x2A,
	]
	ts_msg_open
	.string "Oh,ye got some good\n"
	.string "idea,Vic?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 29,
	]

	def_text_script CompText87C15A8_unk29
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "You aren't thinking\n"
	.string "of...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 30,
	]

	def_text_script CompText87C15A8_unk30
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "Yeah...\n"
	.string "We're going\n"
	.string "to ditch WWW,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and rule the world\n"
	.string "ourselves!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Good idea,no?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 31,
	]

	def_text_script CompText87C15A8_unk31
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "But...that's..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 32,
	]

	def_text_script CompText87C15A8_unk32
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "Better make up your\n"
	.string "mind."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So is everyone in?\n"
	.string "OK,we'll act like\n"
	.string "Baryl's servants..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 33,
	]

	def_text_script CompText87C15A8_unk33
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "Tee,hee,hee!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I know a little\n"
	.string "something that might\n"
	.string "be useful!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C15A8_unk34
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "Oh? What's this\n"
	.string "\"useful thing\",\n"
	.string "Yuika?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 35,
	]

	def_text_script CompText87C15A8_unk35
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "Well,as luck would\n"
	.string "have it,I happen to\n"
	.string "know a certain"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "person who said to\n"
	.string "me,\"Let's betray\n"
	.string "WWW together\"..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 36,
	]

	def_text_script CompText87C15A8_unk36
	ts_mugshot_show [
		mugshot: 0x2D,
	]
	ts_msg_open
	.string "Wait,wait,wait..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"Together\"? Are you\n"
	.string "saying that this\n"
	.string "person"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "is somehow related\n"
	.string "to WWW?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 37,
	]

	def_text_script CompText87C15A8_unk37
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "... Tee,hee.\n"
	.string "It's \"that\" person."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The one and only\n"
	.string "\"benefactor\" who's\n"
	.string "helped WWW a lot."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 38,
	]

	def_text_script CompText87C15A8_unk38
	ts_mugshot_show [
		mugshot: 0x2A,
	]
	ts_msg_open
	.string "Yer pullin' at me\n"
	.string "leg,girl!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That's some tall\n"
	.string "tale yer tellin'\n"
	.string "us."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That \"benefactor\"\n"
	.string "'as been givin' WWW\n"
	.string "money from the"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "beginnin'! Why would\n"
	.string "he want to be a\n"
	.string "mutinous dog now...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 39,
	]

	def_text_script CompText87C15A8_unk39
	ts_mugshot_show [
		mugshot: 0x2B,
	]
	ts_msg_open
	.string "I don't know!\n"
	.string "He said something\n"
	.string "like,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"I said I'd help,but\n"
	.string " I never said I was\n"
	.string " on WWW's side.\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He's probably got\n"
	.string "his own reasons."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 40,
	]

	def_text_script CompText87C15A8_unk40
	ts_jump [
		target: 41,
	]

	def_text_script CompText87C15A8_unk41
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "Well,I say it\n"
	.string "doesn't matter what\n"
	.string "his reasons are!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This is our chance!\n"
	.string "We should join this\n"
	.string "\"benefactor\"!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It'd be better than\n"
	.string "being under Baryl!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 42,
	]

	def_text_script CompText87C15A8_unk42
	ts_mugshot_show [
		mugshot: 0x2A,
	]
	ts_msg_open
	.string "Then what are we\n"
	.string "doin' still\n"
	.string "followin' Baryl!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C15A8_unk43
	ts_mugshot_show [
		mugshot: 0x2E,
	]
	ts_msg_open
	.string "No,not so fast...\n"
	.string "We should wait."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's follow Baryl's\n"
	.string "commands for just a\n"
	.string "little longer."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We'll wait until the\n"
	.string "time is right,and\n"
	.string "then we take over!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hahaha,just you\n"
	.string "wait,Baryl!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 44,
	]

	def_text_script CompText87C15A8_unk44
	ts_mugshot_show [
		mugshot: 0x12,
	]
	ts_msg_open
	.string "......"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	