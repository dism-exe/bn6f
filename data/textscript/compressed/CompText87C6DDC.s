	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C6DDC::
	.word 0x140300

	text_archive_start

	def_text_script CompText87C6DDC_unk0
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "... We must be\n"
	.string "careful."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I thought I told you\n"
	.string "we couldn't meet in\n"
	.string "person."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I must maintain my\n"
	.string "\"clean\" image."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can't be seen\n"
	.string "associating with\n"
	.string "people like you."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87C6DDC_unk1
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "Don't worry,I came\n"
	.string "by meself!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I didn't attract\n"
	.string "any attention."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Heh,besides,yer\n"
	.string "not really a \"clean\"\n"
	.string "person,are ye?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ye were helping WWW\n"
	.string "until a little while\n"
	.string "ago,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and now yer our\n"
	.string "sponsor!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Yer heart's blacker\n"
	.string "than Ito's hair!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Gahahahaha!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87C6DDC_unk2
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "Hurry up and tell\n"
	.string "me what you want."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87C6DDC_unk3
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "Oh,that's right!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We're all lookin'\n"
	.string "real hard for that\n"
	.string "rat,MegaMan,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "he's hidin' out in\n"
	.string "a certain place,and\n"
	.string "we need yer help."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87C6DDC_unk4
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "I was just thinking\n"
	.string "of contacting you\n"
	.string "about that."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You need the barrier\n"
	.string "to the Underground\n"
	.string "removed,correct?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87C6DDC_unk5
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "Heh,yer pretty good."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87C6DDC_unk6
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "Before that,would\n"
	.string "you care to explain"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "just how is it that\n"
	.string "MegaMan escaped?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Did you not use the\n"
	.string "CopyBot I sent...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87C6DDC_unk7
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "Aye,that's somethin'\n"
	.string "of an interestin'\n"
	.string "tale."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MegaMan was causin'\n"
	.string "all sorts of trouble\n"
	.string "'till a strange lass"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "showed up,and\n"
	.string "suddenly,the Cybeast\n"
	.string "gets quiet..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87C6DDC_unk8
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "Suddenly...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string "."
	ts_wait frames=0x1E
	.string " No,\n"
	.string "it's not possible!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Whatever. Anyway,I\n"
	.string "will remove the\n"
	.string "barrier."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't care how,but\n"
	.string "I want MegaMan back!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87C6DDC_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Huh?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6DDC_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "W-Why is\n"
	.string "Blackbeard here...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87C6DDC_unk11
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "Tsk!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You see! This is\n"
	.string "what I was talking\n"
	.string "about."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87C6DDC_unk12
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "Why's this kid\n"
	.string "here!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=13

	def_text_script CompText87C6DDC_unk13
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "Hmph,it's too bad\n"
	.string "you found me out,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but you're not going\n"
	.string "to go anywhere for a\n"
	.string "very long time."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6DDC_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You... You're\n"
	.string "working with\n"
	.string "Blackbeard...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87C6DDC_unk15
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "Yes,what you just\n"
	.string "realized is\n"
	.string "absolutely correct."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I am \"cooperating\"\n"
	.string "with Blackbeard\n"
	.string "here."
	ts_sound_play_bgm track=0x2
	ts_key_wait any=0x0
	ts_clear_msg

	def_text_script CompText87C6DDC_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... No!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Then you've been\n"
	.string "tricking everyone\n"
	.string "all this time?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87C6DDC_unk17
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "Yes,and I plan to\n"
	.string "keep on tricking\n"
	.string "them."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87C6DDC_unk18
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "B-But why?\n"
	.string "Why are you lying\n"
	.string "to everyone!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87C6DDC_unk19
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "I'll guess the\n"
	.string "reason is I wanted\n"
	.string "political power."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "To get to the top,\n"
	.string "I've cooperated with\n"
	.string "many dirty people."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And,as for the\n"
	.string "Cybeasts..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I would do anything\n"
	.string "to get my hands on\n"
	.string "them."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6DDC_unk20
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "Yes..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the destructive and\n"
	.string "fearsome Cybeasts..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They belong in my\n"
	.string "hands!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That was written\n"
	.string "into my fate from\n"
	.string "the day I was born!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=21

	def_text_script CompText87C6DDC_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... What are you\n"
	.string "trying to say? I\n"
	.string "don't get it at all!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=22

	def_text_script CompText87C6DDC_unk22
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "... Alright,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I will tell you the\n"
	.string "story from the\n"
	.string "beginning..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This started a long\n"
	.string "time ago..."
	ts_key_wait any=0x0
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x8,
	]
	ts_end

	def_text_script CompText87C6DDC_unk23
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "A long time ago,when\n"
	.string "the Cyberworld was\n"
	.string "in its infancy,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "humans were met with\n"
	.string "an unusual incident\n"
	.string "that they couldn't"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "find the root of.\n"
	.string "What had happened..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6DDC_unk24
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "...was that large\n"
	.string "numbers of bugs had\n"
	.string "gathered in one area"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "of the Cyberworld,\n"
	.string "and had gained a\n"
	.string "will of their own..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6DDC_unk25
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "All of a sudden,they\n"
	.string "formed one giant\n"
	.string "lump."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6DDC_unk26
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "The thing that\n"
	.string "surprised people the\n"
	.string "most was that..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "those bugs for some\n"
	.string "reason,formed into\n"
	.string "a beast-like shape."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It was like a\n"
	.string "previous phenomenon\n"
	.string "when this country"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "had fused some bugs\n"
	.string "together,and Gospel\n"
	.string "was born."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And then,these bugs\n"
	.string "became violent,much\n"
	.string "like a beast,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and started to\n"
	.string "destroy the Net."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=27

	def_text_script CompText87C6DDC_unk27
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "No way... Was that\n"
	.string "how the Cybeasts...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87C6DDC_unk28
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "You are half right."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Only Gregar evolved\n"
	.string "naturally from bugs."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6DDC_unk29
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "To delete Gregar,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "humans came up with\n"
	.string "and tried many\n"
	.string "different plans..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6DDC_unk30
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "But nothing they\n"
	.string "tried worked."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6DDC_unk31
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "Just as they were\n"
	.string "losing hope,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "one brilliant\n"
	.string "scientist rose to\n"
	.string "the occasion."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6DDC_unk32
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "That scientist was\n"
	.string "trying to make a\n"
	.string "program that could"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "take down Gregar.\n"
	.string "People started to\n"
	.string "count on this man"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and he came to be\n"
	.string "known as a\n"
	.string "\"savior\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Long months went by,\n"
	.string "and the program was\n"
	.string "finally completed."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The scientist's\n"
	.string "skill was real,\n"
	.string "and his program"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "seemed to have the\n"
	.string "power to defeat\n"
	.string "Gregar..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But then,something\n"
	.string "terrible happened."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "During the violent\n"
	.string "fight with Gregar,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the scientist lost\n"
	.string "control of the\n"
	.string "program,and"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "it started to wildly\n"
	.string "destroy everything\n"
	.string "as well."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It might have been\n"
	.string "because it was too\n"
	.string "powerful..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=33

	def_text_script CompText87C6DDC_unk33
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... So that means\n"
	.string "that program..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=34

	def_text_script CompText87C6DDC_unk34
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "Yes. That program\n"
	.string "was in the shape of\n"
	.string "a bird,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and its codename..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Falzar\"."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6DDC_unk35
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "Because of Falzar,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the damage on the\n"
	.string "Net was even worse\n"
	.string "than before..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And that scientist\n"
	.string "became the focus of\n"
	.string "everyone's anger."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"It's because you\n"
	.string " made that monster!\"\n"
	.string "is what people said."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6DDC_unk36
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "In the end,instead\n"
	.string "of being a \"savior\",\n"
	.string "that scientist..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "he became a \"devil\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He fell so far down\n"
	.string "in society's eyes\n"
	.string "that he could never"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "show his face in\n"
	.string "public again.\n"
	.string "... However!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I believe this\n"
	.string "scientist who was\n"
	.string "called a devil,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and what he did..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "For him to be erased\n"
	.string "from history is a\n"
	.string "grave mistake."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6DDC_unk37
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "Anyway,even though\n"
	.string "Falzar became wild,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "he couldn't forget\n"
	.string "his base program to\n"
	.string "defeat Gregar."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The two beasts\n"
	.string "fought violently\n"
	.string "many times."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And then,one day,\n"
	.string "they fought each\n"
	.string "other into a corner."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Whoever moved first\n"
	.string " would lose\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "was what it had\n"
	.string "become,according\n"
	.string "to witnesses."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's when the\n"
	.string "people saw their\n"
	.string "chance."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They thought to bury\n"
	.string "Gregar and Falzar\n"
	.string "where they were --"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "in the depths of the\n"
	.string "Cyberworld..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C6DDC_unk38
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "They were successful\n"
	.string "and peace returned\n"
	.string "to the Net."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This is the\n"
	.string "truth behind the\n"
	.string "Cybeast legend."
	ts_key_wait any=0x0
	ts_end

	