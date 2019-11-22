	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C4494::
	.word 0xAD300

	text_archive_start

	def_text_script CompText87C4494_unk0
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "GutsMan,Glide!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x39,
	]
	.string "Hey,Hey!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's been a long\n"
	.string "time,MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87C4494_unk1
	ts_mugshot_show [
		mugshot: 0x3A,
	]
	ts_msg_open
	.string "Everyone's missed\n"
	.string "you."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And it looks like\n"
	.string "you've become quite\n"
	.string "the famous Navi!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87C4494_unk2
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "It's nothing...\n"
	.string "really..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87C4494_unk3
	ts_mugshot_show [
		mugshot: 0x38,
	]
	ts_msg_open
	.string "What do you mean,\n"
	.string "\"it's nothing\"!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We were all so\n"
	.string "happy to hear you\n"
	.string "were doing so well!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87C4494_unk4
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... Thanks,Roll."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87C4494_unk5
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "So if you all are\n"
	.string "done saying hi,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I've got an idea!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87C4494_unk6
	ts_mugshot_show [
		mugshot: 0x3,
	]
	ts_msg_open
	.string "An idea?\n"
	.string "Uh,oh."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This isn't another\n"
	.string "one of your stupid\n"
	.string "ideas,is it?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87C4494_unk7
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "It's not stupid!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Lan,MegaMan,how\n"
	.string "about a NetBattle!?\n"
	.string "It's been too long!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87C4494_unk8
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Why are you so\n"
	.string "enthused all of a\n"
	.string "sudden,Dex...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87C4494_unk9
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "You've been training\n"
	.string "real hard in Cyber\n"
	.string "City,Lan,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "but I've been\n"
	.string "training too!\n"
	.string "I've gotten better!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I have this dream\n"
	.string "that I'm gonna beat\n"
	.string "you one day!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 10,
	]

	def_text_script CompText87C4494_unk10
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Dex..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 11,
	]

	def_text_script CompText87C4494_unk11
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "I wanna know how\n"
	.string "strong I've gotten\n"
	.string "since you left!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So,c'mon!\n"
	.string "Challenge me!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script CompText87C4494_unk12
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "OK!\n"
	.string "I accept your\n"
	.string "challenge!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 13,
	]

	def_text_script CompText87C4494_unk13
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "No holding back,\n"
	.string "OK,Lan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Mayl and Yai can be\n"
	.string "judges and make sure\n"
	.string "you don't cheat!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 14,
	]

	def_text_script CompText87C4494_unk14
	ts_mugshot_show [
		mugshot: 0x1,
	]
	ts_msg_open
	.string "Heh,alright."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87C4494_unk15
	ts_mugshot_show [
		mugshot: 0x3,
	]
	ts_msg_open
	.string "*sigh*"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C4494_unk16
	ts_mugshot_show [
		mugshot: 0x2,
	]
	ts_msg_open
	.string "Alright,GutsMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We're gonna show\n"
	.string "them how to really\n"
	.string "crush someone!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 17,
	]

	def_text_script CompText87C4494_unk17
	ts_mugshot_show [
		mugshot: 0x39,
	]
	ts_msg_open
	.string "Yeah!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We're gonna win\n"
	.string "today for sure!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 18,
	]

	def_text_script CompText87C4494_unk18
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "They sure are fired\n"
	.string "up,but we're not\n"
	.string "gonna lose either!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's go,MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 19,
	]

	def_text_script CompText87C4494_unk19
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Execute!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C4494_unk20
	ts_mugshot_show [
		mugshot: 0x39,
	]
	ts_msg_open
	.string "W-What!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 21,
	]

	def_text_script CompText87C4494_unk21
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... Huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 22,
	]

	def_text_script CompText87C4494_unk22
	ts_mugshot_show [
		mugshot: 0x3A,
	]
	ts_msg_open
	.string "What's going on!?\n"
	.string "Who are you people!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 23,
	]

	def_text_script CompText87C4494_unk23
	ts_mugshot_show [
		mugshot: 0x38,
	]
	ts_msg_open
	.string "Aaaaaaaah!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C4494_unk24
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "BlastMan!!\n"
	.string "DiveMan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 25,
	]

	def_text_script CompText87C4494_unk25
	ts_mugshot_show [
		mugshot: 0x51,
	]
	ts_msg_open
	.string "Kwohohohoho!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Long time no see,\n"
	.string "MegaMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 26,
	]

	def_text_script CompText87C4494_unk26
	ts_mugshot_show [
		mugshot: 0x52,
	]
	ts_msg_open
	.string "I have some\n"
	.string "unfinished business\n"
	.string "with you,awooga!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 27,
	]

	def_text_script CompText87C4494_unk27
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Why are they here!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 28,
	]

	def_text_script CompText87C4494_unk28
	ts_mugshot_show [
		mugshot: 0x2A,
	]
	ts_msg_open
	.string "Gahahaha!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We followed ye from\n"
	.string "Central Town,matey."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 29,
	]

	def_text_script CompText87C4494_unk29
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Y-You!!\n"
	.string "Captain Blackbeard!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 30,
	]

	def_text_script CompText87C4494_unk30
	ts_mugshot_show [
		mugshot: 0x2A,
	]
	ts_msg_open
	.string "Just when we didn't\n"
	.string "think we had a\n"
	.string "chance to do ye in,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "along come yer weak\n"
	.string "little mates."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ye can think of 'em\n"
	.string "as bargaining chips."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 31,
	]

	def_text_script CompText87C4494_unk31
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "What are you going\n"
	.string "to do with them!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 32,
	]

	def_text_script CompText87C4494_unk32
	ts_mugshot_show [
		mugshot: 0x2A,
	]
	ts_msg_open
	.string "What does it look\n"
	.string "like to ye,matey?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hostages! They're\n"
	.string "our hostages!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Go,DiveMan,and fetch\n"
	.string "me every last one\n"
	.string "of 'em!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 33,
	]

	def_text_script CompText87C4494_unk33
	ts_mugshot_show [
		mugshot: 0x52,
	]
	ts_msg_open
	.string "Roger,Capt'n.\n"
	.string "Awooga!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 34,
	]

	def_text_script CompText87C4494_unk34
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Hold it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C4494_unk35
	ts_mugshot_show [
		mugshot: 0x51,
	]
	ts_msg_open
	.string "Un,un,un. No moving!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You move and we will\n"
	.string "not hesitate to do\n"
	.string "some Navi deleting!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you want them\n"
	.string "back..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "come to Undernet2\n"
	.string "by yourself,alone.\n"
	.string "Got that,MegaMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We'll be waiting\n"
	.string "there. Kwohohoho!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C4494_unk36
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... Everyone..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 37,
	]

	def_text_script CompText87C4494_unk37
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "MegaMan,we've gotta\n"
	.string "go after them!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We've gotta get to\n"
	.string "Undernet2!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 38,
	]

	def_text_script CompText87C4494_unk38
	ts_mugshot_show [
		mugshot: 0x3,
	]
	ts_msg_open
	.string "Wait,Lan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This has to be\n"
	.string "a set-up!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "MegaMan will be in\n"
	.string "a lot of danger if\n"
	.string "he goes alone!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 39,
	]

	def_text_script CompText87C4494_unk39
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "We don't have time\n"
	.string "for this!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Even if it is a\n"
	.string "trap,we've gotta\n"
	.string "take that chance!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's go,MegaMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It sounds like ACDC\n"
	.string "Area is connected\n"
	.string "to Sky Area..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So let's head over\n"
	.string "there!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 40,
	]

	def_text_script CompText87C4494_unk40
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Roger!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	