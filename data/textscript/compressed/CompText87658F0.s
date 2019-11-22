	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87658F0::
	.word 0x19E300

	text_archive_start

	def_text_script CompText87658F0_unk0
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "Where are you off\n"
	.string "to? ... Eh,Sky Town?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ah,I went there once\n"
	.string "myself. It's really\n"
	.string "nice there because"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "that town floats at\n"
	.string "30,000 feet above\n"
	.string "the ground!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk1
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: 0x6,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x19,
	]
	ts_msg_open
	.string "That Net event for\n"
	.string "the Expo sounds like\n"
	.string "it was exciting."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ah,if I were only\n"
	.string "10 years younger..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk2
	ts_check_chapter [
		lower: 0x42,
		upper: 0x42,
		jumpIfInRange: 0x7,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x9,
	]
	ts_msg_open
	.string "Mick ran by here\n"
	.string "like crazy just a\n"
	.string "little while ago."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He was yelling,\"I'm\n"
	.string "going to Sky Town!\"\n"
	.string "or something."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk3

	def_text_script CompText87658F0_unk4

	def_text_script CompText87658F0_unk5
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "How was Sky Town?\n"
	.string "Felt good to be\n"
	.string "there,huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hmm? What's with the\n"
	.string "long face...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Haha,you're afraid\n"
	.string "of heights,huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk6
	ts_mugshot_show [
		mugshot: 0x19,
	]
	ts_msg_open
	.string "By the look on your\n"
	.string "face,something\n"
	.string "happened,didn't it?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But,my boy,you have\n"
	.string "to remain calm at a\n"
	.string "time like this."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk7
	ts_mugshot_show [
		mugshot: 0x9,
	]
	ts_msg_open
	.string "I want to be\n"
	.string "really strong at\n"
	.string "NetBattling too..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I guess you really\n"
	.string "do have to have a\n"
	.string "ton of chips,though."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk8

	def_text_script CompText87658F0_unk9

	def_text_script CompText87658F0_unk10
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "Hyaaaaaaaa!\n"
	.string "Wh-What's with this\n"
	.string "crazy weather!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ack! This is no\n"
	.string "time for work!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk11

	def_text_script CompText87658F0_unk12

	def_text_script CompText87658F0_unk13

	def_text_script CompText87658F0_unk14

	def_text_script CompText87658F0_unk15

	def_text_script CompText87658F0_unk16

	def_text_script CompText87658F0_unk17

	def_text_script CompText87658F0_unk18

	def_text_script CompText87658F0_unk19

	def_text_script CompText87658F0_unk20

	def_text_script CompText87658F0_unk21

	def_text_script CompText87658F0_unk22

	def_text_script CompText87658F0_unk23

	def_text_script CompText87658F0_unk24

	def_text_script CompText87658F0_unk25

	def_text_script CompText87658F0_unk26

	def_text_script CompText87658F0_unk27

	def_text_script CompText87658F0_unk28

	def_text_script CompText87658F0_unk29

	def_text_script CompText87658F0_unk30

	def_text_script CompText87658F0_unk31

	def_text_script CompText87658F0_unk32

	def_text_script CompText87658F0_unk33

	def_text_script CompText87658F0_unk34

	def_text_script CompText87658F0_unk35

	def_text_script CompText87658F0_unk36

	def_text_script CompText87658F0_unk37

	def_text_script CompText87658F0_unk38

	def_text_script CompText87658F0_unk39

	def_text_script CompText87658F0_unk40
	ts_mugshot_show [
		mugshot: 0x24,
	]
	ts_msg_open
	.string "Ooooooh! I'm ready\n"
	.string "to go!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "My Navi is going to\n"
	.string "be that Operator\n"
	.string "Navi,I promise you!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk41
	ts_mugshot_show [
		mugshot: 0x27,
	]
	ts_msg_open
	.string "......"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk42
	ts_mugshot_show [
		mugshot: 0x25,
	]
	ts_msg_open
	.string "I soooo have to win!\n"
	.string "Because..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "once my Navi's\n"
	.string "famous,people will\n"
	.string "know who we are,and"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "finally listen to\n"
	.string "our message!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk43
	ts_mugshot_show [
		mugshot: 0x26,
	]
	ts_msg_open
	.string "... My Navi is going\n"
	.string "to be the Operator\n"
	.string "Navi no matter what!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And then,when we're\n"
	.string "famous,we can get\n"
	.string "\"that\" started...!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk44
	ts_check_flag [
		flag: 0xC0A,
		jumpIfTrue: 0x3F,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0xD,
	]
	ts_msg_open
	.string "You made it to the\n"
	.string "finals too?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You're still just an\n"
	.string "elementary school\n"
	.string "kid,right?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You're really\n"
	.string "something..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Well,good luck to\n"
	.string "the both of us!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk45
	ts_check_flag [
		flag: 0xC0A,
		jumpIfTrue: 0x40,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x16,
	]
	ts_msg_open
	.string "The person who finds\n"
	.string "the \"MoonStone\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "will be appointed\n"
	.string "the Operator Navi!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The \"MoonStone\" is\n"
	.string "said to be somewhere\n"
	.string "in Undernet2."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Good luck,everyone!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk46

	def_text_script CompText87658F0_unk47

	def_text_script CompText87658F0_unk48

	def_text_script CompText87658F0_unk49

	def_text_script CompText87658F0_unk50

	def_text_script CompText87658F0_unk51

	def_text_script CompText87658F0_unk52

	def_text_script CompText87658F0_unk53

	def_text_script CompText87658F0_unk54

	def_text_script CompText87658F0_unk55
	ts_check_flag [
		flag: 0xCE7,
		jumpIfTrue: 0x38,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0xCE7,
	]
	ts_mugshot_show [
		mugshot: 0x24,
	]
	ts_msg_open
	.string "Cheers! I may have\n"
	.string "lost,but you were\n"
	.string "spectacular!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And here I was sure\n"
	.string "I would win...!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Oh! Hey,if you want\n"
	.string "to,how about taking\n"
	.string "my class sometime?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I've actually been\n"
	.string "giving special\n"
	.string "classes over there"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "at Cyber Academy!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You know,no one has\n"
	.string "been able to pass my\n"
	.string "hard class,yet!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But I bet you could!\n"
	.string "I would love to see\n"
	.string "that happen."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you're interested\n"
	.string "in my class then\n"
	.string "stop on by!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm in ResearchLab2\n"
	.string "in the back of the\n"
	.string "Teachers' Room."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Oh,but don't\n"
	.string "come today! Today\n"
	.string "has wiped me out!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We can start class\n"
	.string "tomorrow!"
	ts_key_wait [
		any: 0x0,
	]
	ts_check_flag [
		flag: 0xCE7,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x42,
	]
	ts_check_flag [
		flag: 0xCE8,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x42,
	]
	ts_check_flag [
		flag: 0xCE9,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x42,
	]
	ts_jump [
		target: 65,
	]

	def_text_script CompText87658F0_unk56
	ts_mugshot_show [
		mugshot: 0x24,
	]
	ts_msg_open
	.string "I've actually been\n"
	.string "giving special\n"
	.string "classes over there"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "at Cyber Academy!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You know,no one has\n"
	.string "been able to pass my\n"
	.string "hard class,yet!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But I bet you could!\n"
	.string "I would love to see\n"
	.string "that happen."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you're interested\n"
	.string "in my class then\n"
	.string "stop on by!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Oh,but don't\n"
	.string "come today! Today\n"
	.string "has wiped me out!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We can start class\n"
	.string "tomorrow!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk57
	ts_check_flag [
		flag: 0xCE7,
		jumpIfTrue: 0x3A,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0xCE7,
	]
	ts_mugshot_show [
		mugshot: 0x27,
	]
	ts_msg_open
	.string "...... I don't want\n"
	.string "to admit it,but I\n"
	.string "concede defeat."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Congratulations."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Thanks!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x27,
	]
	.string "I only lost because\n"
	.string "it was a \"treasure\n"
	.string "hunt\" type of game."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If this had been a\n"
	.string "\"who can delete the\n"
	.string " most Navis\" type,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I would've most\n"
	.string "definitely won."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "D-Delete!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x27,
	]
	.string "That's my Navi's\n"
	.string "job..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He's what you call\n"
	.string "a Navi deleter."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ah,you don't need to\n"
	.string "be that scared. We\n"
	.string "don't attack Navis"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "when we're not on a\n"
	.string "job."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you're curious\n"
	.string "about my work,I can\n"
	.string "teach you more..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm in ResearchLab2\n"
	.string "of Cyber Academy."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "A-At school?\n"
	.string "A deleter!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x27,
	]
	.string "Hahaha...\n"
	.string "I'm really a teacher\n"
	.string "by day."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "My new post is at\n"
	.string "your school."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Now,remember,no\n"
	.string "telling the other\n"
	.string "teachers what I do."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It'll be our little\n"
	.string "secret. Hahaha..\n"
	.string "I'll be waiting."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ah,but class starts\n"
	.string "tomorrow,Lan. I'm\n"
	.string "too tired for today."
	ts_key_wait [
		any: 0x0,
	]
	ts_check_flag [
		flag: 0xCE7,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x42,
	]
	ts_check_flag [
		flag: 0xCE8,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x42,
	]
	ts_check_flag [
		flag: 0xCE9,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x42,
	]
	ts_jump [
		target: 65,
	]

	def_text_script CompText87658F0_unk58
	ts_mugshot_show [
		mugshot: 0x27,
	]
	ts_msg_open
	.string "If you're curious\n"
	.string "about my work,I can\n"
	.string "teach you more..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm in ResearchLab2\n"
	.string "of Cyber Academy."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ah,but class starts\n"
	.string "tomorrow,Lan. I'm\n"
	.string "too tired for today."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk59
	ts_check_flag [
		flag: 0xCE8,
		jumpIfTrue: 0x3C,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0xCE8,
	]
	ts_mugshot_show [
		mugshot: 0x25,
	]
	ts_msg_open
	.string "Congratulations!\n"
	.string "Great job!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Well,to be honest,\n"
	.string "I wanted my Navi to\n"
	.string "be the Operator Navi"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "so we could get\n"
	.string "people to listen to\n"
	.string "our message!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "... Message?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x25,
	]
	.string "Yeah! The importance\n"
	.string "of recycling!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The garbage problem\n"
	.string "and the future of\n"
	.string "man are related."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I just want to get\n"
	.string "people really\n"
	.string "involved!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "I see...\n"
	.string "Well,it IS a really\n"
	.string "big problem."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Mr.Mach said the\n"
	.string "same thing in class."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x25,
	]
	.string "Yay!! You really\n"
	.string "understand what I'm\n"
	.string "saying!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hey,I know!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If I've caught your\n"
	.string "interest,why don't\n"
	.string "you take my class!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "My class is in the\n"
	.string "Aquarium!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Today's no good for\n"
	.string "me,but come by\n"
	.string "tomorrow,alright!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It'll be a good\n"
	.string "chance for you to\n"
	.string "see the garbage"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "problem with your\n"
	.string "own eyes! I really\n"
	.string "hope you'll come by!"
	ts_key_wait [
		any: 0x0,
	]
	ts_check_flag [
		flag: 0xCE7,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x42,
	]
	ts_check_flag [
		flag: 0xCE8,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x42,
	]
	ts_check_flag [
		flag: 0xCE9,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x42,
	]
	ts_jump [
		target: 65,
	]

	def_text_script CompText87658F0_unk60
	ts_mugshot_show [
		mugshot: 0x25,
	]
	ts_msg_open
	.string "If I've caught your\n"
	.string "interest,why don't\n"
	.string "you take my class!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "My class is in the\n"
	.string "Aquarium!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Today's no good for\n"
	.string "me,but come by\n"
	.string "tomorrow,alright!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It'll be a good\n"
	.string "chance for you to\n"
	.string "see the garbage"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "problem with your\n"
	.string "own eyes! I really\n"
	.string "hope you'll come by!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk61
	ts_check_flag [
		flag: 0xCE8,
		jumpIfTrue: 0x3E,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0xCE8,
	]
	ts_mugshot_show [
		mugshot: 0x26,
	]
	ts_msg_open
	.string "I... lost..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And with this,my\n"
	.string "dreams have been\n"
	.string "dashed..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Dreams?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x26,
	]
	.string "Yes..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I've wanted to run a\n"
	.string "steam locomotive in\n"
	.string "this very city."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It would have been\n"
	.string "wonderful... There\n"
	.string "is such a difference"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "between a beautiful\n"
	.string "train and something\n"
	.string "like the LevBus."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So I figured that if\n"
	.string "ChargeMan had become\n"
	.string "the Operator Navi,we"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "could get people's\n"
	.string "attention and\n"
	.string "propose our plan."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But I lost,so I'll\n"
	.string "wait for another day\n"
	.string "to fulfill my dream."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Say,you wouldn't\n"
	.string "be interested in\n"
	.string "trains,would you?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you are,you\n"
	.string "should take my\n"
	.string "class!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I hold my classes\n"
	.string "at the Aquarium."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... But today is no\n"
	.string "good for me. Why not\n"
	.string "come by tomorrow?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'd be glad to have\n"
	.string "someone as strong as\n"
	.string "you onboard!"
	ts_key_wait [
		any: 0x0,
	]
	ts_check_flag [
		flag: 0xCE7,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x42,
	]
	ts_check_flag [
		flag: 0xCE8,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x42,
	]
	ts_check_flag [
		flag: 0xCE9,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x42,
	]
	ts_jump [
		target: 65,
	]

	def_text_script CompText87658F0_unk62
	ts_mugshot_show [
		mugshot: 0x26,
	]
	ts_msg_open
	.string "You wouldn't be\n"
	.string "interested in\n"
	.string "trains,would you?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you are,you\n"
	.string "should take my\n"
	.string "class!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I hold my classes\n"
	.string "at the Aquarium."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... But today is no\n"
	.string "good for me. Why not\n"
	.string "come by tomorrow?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'd be glad to have\n"
	.string "someone as strong as\n"
	.string "you onboard!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk63
	ts_flag_set [
		flag: 0xCE9,
	]
	ts_mugshot_show [
		mugshot: 0xD,
	]
	ts_msg_open
	.string "Congratulations!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll be sure to go\n"
	.string "see your Navi at\n"
	.string "the Expo!"
	ts_key_wait [
		any: 0x0,
	]
	ts_check_flag [
		flag: 0xCEA,
		jumpIfTrue: 0x42,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xCE7,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x42,
	]
	ts_check_flag [
		flag: 0xCE8,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x42,
	]
	ts_check_flag [
		flag: 0xCE9,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x42,
	]
	ts_jump [
		target: 65,
	]

	def_text_script CompText87658F0_unk64
	ts_mugshot_show [
		mugshot: 0x16,
	]
	ts_msg_open
	.string "Congratulations!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Your Navi will be\n"
	.string "the glorious Expo\n"
	.string "Pavilion Operator"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Navi!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk65
	ts_flag_set [
		flag: 0xCEA,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... Lan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You talked to\n"
	.string "everyone here,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "so maybe it's time\n"
	.string "to go home and go\n"
	.string "to bed?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk66
	ts_end

	def_text_script CompText87658F0_unk67

	def_text_script CompText87658F0_unk68

	def_text_script CompText87658F0_unk69

	def_text_script CompText87658F0_unk70
	ts_check_flag [
		flag: 0xC20,
		jumpIfTrue: 0x48,
		jumpIfFalse: 0xFF,
	]
	ts_check_chapter [
		lower: 0x52,
		upper: 0x53,
		jumpIfInRange: 0x47,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "Looks like they\n"
	.string "started showing the\n"
	.string "Expo commercials."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Have you seen them,\n"
	.string "yet?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk71
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "Looks like something\n"
	.string "is happening in\n"
	.string "Seaside Town."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk72
	ts_mugshot_show [
		mugshot: 0xF,
	]
	ts_msg_open
	.string "I just heard it on\n"
	.string "the news,but it\n"
	.string "sounds like"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "something happened\n"
	.string "in Seaside Town!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Something about a\n"
	.string "wild Navi in a\n"
	.string "CopyBot..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk73
	ts_check_flag [
		flag: 0xC20,
		jumpIfTrue: 0x4B,
		jumpIfFalse: 0xFF,
	]
	ts_check_chapter [
		lower: 0x52,
		upper: 0x53,
		jumpIfInRange: 0x4A,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0xD,
	]
	ts_msg_open
	.string "I saw the commercial\n"
	.string "on TV and now I just\n"
	.string "can't wait!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But I guess they're\n"
	.string "not going to open\n"
	.string "early,huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk74
	ts_mugshot_show [
		mugshot: 0xD,
	]
	ts_msg_open
	.string "Looks like there's\n"
	.string "some trouble\n"
	.string "somewhere..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk75
	ts_mugshot_show [
		mugshot: 0xD,
	]
	ts_msg_open
	.string "A Navi's going wild\n"
	.string "in Seaside Town,huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "With this sort of\n"
	.string "stuff going on,will\n"
	.string "the Expo still open?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "And I was so looking\n"
	.string "forward to it..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk76
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "... I've become a\n"
	.string "fan of Mayor Cain\n"
	.string "lately."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He's such a refined\n"
	.string "man..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87658F0_unk77

	def_text_script CompText87658F0_unk78

	def_text_script CompText87658F0_unk79

	def_text_script CompText87658F0_unk80

	def_text_script CompText87658F0_unk81

	def_text_script CompText87658F0_unk82

	def_text_script CompText87658F0_unk83

	def_text_script CompText87658F0_unk84

	def_text_script CompText87658F0_unk85

	def_text_script CompText87658F0_unk86

	def_text_script CompText87658F0_unk87

	def_text_script CompText87658F0_unk88

	def_text_script CompText87658F0_unk89

	def_text_script CompText87658F0_unk90

	def_text_script CompText87658F0_unk91

	def_text_script CompText87658F0_unk92

	def_text_script CompText87658F0_unk93

	def_text_script CompText87658F0_unk94

	def_text_script CompText87658F0_unk95

	def_text_script CompText87658F0_unk96

	def_text_script CompText87658F0_unk97

	def_text_script CompText87658F0_unk98

	def_text_script CompText87658F0_unk99

	