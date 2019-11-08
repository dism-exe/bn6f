	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87EE5B0::
	.word 0x22C300

	text_archive_start

	def_text_script CompText87EE5B0_unk0
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "For some silly\n"
	.string "reason I released\n"
	.string "a virus into the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Cyberworld,but\n"
	.string "it was more violent\n"
	.string "than I expected,and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I couldn't delete it\n"
	.string "myself..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Someone please help\n"
	.string "me!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I am in Cyber\n"
	.string "Academy Class 6-2.\n"
	.string "Come quick!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk1
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "I lost a very\n"
	.string "important keepsake\n"
	.string "somewhere!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It is really\n"
	.string "important,so I have\n"
	.string "to find it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Will someone please\n"
	.string "help me in my\n"
	.string "search?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you can help me,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll be waiting at\n"
	.string "the gate of\n"
	.string "Cyber Academy..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk2
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "There is something\n"
	.string "that I absolutely\n"
	.string "must have!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I want to go and\n"
	.string "pre-order it,but\n"
	.string "I don't have time."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Will someone please\n"
	.string "go pre-order it for\n"
	.string "me?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you can help me\n"
	.string "out,please come to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the Cyber Academy\n"
	.string "Teachers' Room."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk3
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "I have a rival that\n"
	.string "I MUST defeat!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I want this chip,\n"
	.string "\""
	ts_print_chip1 0x0, 0xF0
	.string " "
	ts_print_code 0x0, 0x20
	.string "\",\n"
	.string "so I can win!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Someone hand over\n"
	.string "this chip! Please!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll make it worth\n"
	.string "your while. I'm no\n"
	.string "cheapskate!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll be waiting\n"
	.string "in CentralArea1."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk4
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "I want to talk about\n"
	.string "money..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Someone please help\n"
	.string "my factory!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's on the verge\n"
	.string "of bankruptcy..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you have any\n"
	.string "extra money,please\n"
	.string "help me!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you can help out,\n"
	.string "I'll wait near the\n"
	.string "RobCtrlComp1..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk5
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "I lost an important\n"
	.string "chip..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Will someone please\n"
	.string "help me get that\n"
	.string "chip back?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Actually,I am a\n"
	.string "Navi,so I don't even\n"
	.string "know if I can make"
	ts_key_wait 0x0
	ts_clear_msg
	.string "requests,but if you\n"
	.string "can help I'm in\n"
	.string "front of the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Chip Shop in\n"
	.string "SeasideArea3."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk6
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "Will someone help\n"
	.string "me gather toppings\n"
	.string "for my sushi?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't want help\n"
	.string "from real sushi\n"
	.string "shops,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "because I want\n"
	.string "cybersushi toppings!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you can help with\n"
	.string "this request,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "meet me in front\n"
	.string "of the Sunfish tank\n"
	.string "at the Aquarium!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk7
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "We are currently\n"
	.string "filming a movie."
	ts_key_wait 0x0
	ts_clear_msg
	.string "However,our star was\n"
	.string "injured during filming\n"
	.string "and we had to stop."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So now we urgently\n"
	.string "need a stand-in!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you can fill the\n"
	.string "role,please come to\n"
	.string "the Aquarium HP!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk8
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "My daughter seems\n"
	.string "to have gotten a\n"
	.string "boyfriend..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "All I can do is\n"
	.string "worry about her."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Will someone please\n"
	.string "spy on their date\n"
	.string "for me?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you can,please\n"
	.string "come to the Plaza\n"
	.string "in Green Town."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk9
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "Someone please stop\n"
	.string "my brother from\n"
	.string "researching viruses!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "He eats,breathes,and\n"
	.string "sleeps viruses!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm worried that his\n"
	.string "research will make\n"
	.string "him a criminal!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please,someone\n"
	.string "finish off his\n"
	.string "virus stock,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and put an end to\n"
	.string "his research!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you can help,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "please come to\n"
	.string "Green Town's\n"
	.string "Courtroom!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk10
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "There's a Navi who\n"
	.string "refuses to pay back\n"
	.string "a loan..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Will someone please\n"
	.string "go get my money!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you want this\n"
	.string "job,come to\n"
	.string "Green HP."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk11
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "I'm the lumberjack\n"
	.string "of the Cyberworld."
	ts_key_wait 0x0
	ts_clear_msg
	.string "My trusty axe has\n"
	.string "become not so\n"
	.string "trusty lately..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So,I think I'll\n"
	.string "trade this one in\n"
	.string "for a new model."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll give all\n"
	.string "the details\n"
	.string "face to face."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So please come to\n"
	.string "the large tree in\n"
	.string "Green Area2."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk12
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "It's almost time\n"
	.string "for me to dig up"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the TimeCpsl\n"
	.string "that I buried as a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "kid,and I have to be\n"
	.string "the first to get it!\n"
	.string "However,I completely"
	ts_key_wait 0x0
	ts_clear_msg
	.string "forgot where I left\n"
	.string "it in the ground!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you can help find\n"
	.string "it,please come to\n"
	.string "Green Town Plaza!!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk13
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "Recently I've become\n"
	.string "a trainer at the\n"
	.string "Aquarium show."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I have a small\n"
	.string "problem,and I can't\n"
	.string "put on a good show!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Will someone listen\n"
	.string "to my worries?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you will,please\n"
	.string "meet me onstage at\n"
	.string "the Auditorium..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk14
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "I'm a musician,but\n"
	.string "lately I've been in\n"
	.string "a writing slump!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "No matter what I do\n"
	.string "I can't write a new\n"
	.string "song..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I have no idea what\n"
	.string "to do now... I can't\n"
	.string "live like this!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you can help,I'll\n"
	.string "be waiting in the\n"
	.string "Sky Area NetCafe..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk15
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "I am a stock\n"
	.string "trader,but I have\n"
	.string "no idea what stock"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I should buy next.\n"
	.string "I need someone who\n"
	.string "can make decisions,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "even if they are an\n"
	.string "amateur!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you want the job\n"
	.string "you should come to\n"
	.string "Sky Area1."
	ts_key_wait 0x0
	ts_clear_msg
	.string "A cute girl Navi\n"
	.string "is waiting for you!!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk16
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "It's terrible!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The safe in my shop\n"
	.string "won't open any more!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I have to put money\n"
	.string "in the bank today!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you can help open\n"
	.string "the safe,please come\n"
	.string "quick!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm waiting at the\n"
	.string "PopcornShopComp!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk17
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "I sell Fish Sticks\n"
	.string "in Seaside Town,but\n"
	.string "my fryer's computer"
	ts_key_wait 0x0
	ts_clear_msg
	.string "has gotten a strange\n"
	.string "virus and I can't\n"
	.string "make Fish Sticks!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Can someone help me\n"
	.string "get rid of this\n"
	.string "virus?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll be waiting in\n"
	.string "Seaside Town."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk18
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "I'm looking for my\n"
	.string "daughter..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Will someone go\n"
	.string "looking for her\n"
	.string "with me?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll wait at the\n"
	.string "Sky HP."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk19
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "I'm the President of\n"
	.string "the Cyber Academy\n"
	.string "Cyber Jazz Band!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We need more members\n"
	.string "to enter the battle\n"
	.string "of the bands!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you want to help\n"
	.string "please come to the\n"
	.string "Class 6-2 Comp!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk20
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "I'm investigating an\n"
	.string "incident that took\n"
	.string "place on the Net..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If anyone can assist\n"
	.string "the investigation,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "please come to the\n"
	.string "Seaside Town Water\n"
	.string "Vending Machine."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk21
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "My Navi was deleted\n"
	.string "from the Net..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If someone could\n"
	.string "bring back just a\n"
	.string "bit of his data..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It would mean so\n"
	.string "much to me."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you can bring\n"
	.string "back my Navi's\n"
	.string "remains..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll be waiting in\n"
	.string "Cyber Academy\n"
	.string "Class 1-1."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk22
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "Everyday all my\n"
	.string "Dad and Mom do is\n"
	.string "fight..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I want to make\n"
	.string "things better now.\n"
	.string "Can anyone help me?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you can,please\n"
	.string "come to Central Town\n"
	.string "Residential Area!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk23
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "No matter what,\n"
	.string "I,like,can't beat\n"
	.string "another Navi!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Not winning is,\n"
	.string "like,really\n"
	.string "annoying!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I thought I'd\n"
	.string "ask for some\n"
	.string "Support Chips!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "They should,like,\n"
	.string "help me win in\n"
	.string "battle!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hope someone can\n"
	.string "get some for me!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you can,like,\n"
	.string "meet me at the Sky\n"
	.string "Town Orb!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk24
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "To those good at\n"
	.string "negotiating and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "said to be confident\n"
	.string "NetBattlers..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can't give details\n"
	.string "but I need some\n"
	.string "assistance!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's a dangerous\n"
	.string "request,but if\n"
	.string "you're up to it,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "come to the Sky Town\n"
	.string "Force Room Entrance."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk25
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "I've got a bully\n"
	.string "problem,and I need\n"
	.string "help solving it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Can someone help?\n"
	.string "If you can,please\n"
	.string "meet me at the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "MonitorComp in\n"
	.string "Cyber Academy's\n"
	.string "Foyer."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk26
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "This is the\n"
	.string "NetPolice. If you"
	ts_key_wait 0x0
	ts_clear_msg
	.string "have the guts to\n"
	.string "NetBattle,we need\n"
	.string "your help!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you are up to\n"
	.string "the task,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "come to the\n"
	.string "outskirts of\n"
	.string "Central Town."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk27
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "I'm really in a\n"
	.string "bind..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Can someone help\n"
	.string "me work it out?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you can,come\n"
	.string "to the Central\n"
	.string "Town LevBus Station."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk28
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "Umm... I think you\n"
	.string "can tell from the\n"
	.string "post title..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So that's it...\n"
	.string "If you can help\n"
	.string "get the penguins,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "come to the\n"
	.string "Piranha Tank at the\n"
	.string "Aquarium."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk29
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "Hi,I'm a SciLab\n"
	.string "member."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I need help updating\n"
	.string "the electronics at\n"
	.string "the Aquarium,mmmkay?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you want the job,\n"
	.string "come to the Aquarium\n"
	.string "Turtle Tank,mmmkay."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk30
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "I've been tricked!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I bought some diet\n"
	.string "goods and they\n"
	.string "don't work at all!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I want my money\n"
	.string "back!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Someone help me get\n"
	.string "my money back!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Come to the hallway\n"
	.string "on the first floor\n"
	.string "of Cyber Academy!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk31
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "I don't think I\n"
	.string "will finish in time"
	ts_key_wait 0x0
	ts_clear_msg
	.string "for my research\n"
	.string "presentation!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm at the Class 1-1\n"
	.string "Comp. Someone help!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk32
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "In order to preserve\n"
	.string "public order,we are"
	ts_key_wait 0x0
	ts_clear_msg
	.string "collecting certain\n"
	.string "data."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We are thus looking\n"
	.string "for people to assist\n"
	.string "in data collection."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If interested,please\n"
	.string "come to the Sky Town\n"
	.string "ObservtnComp."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk33
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "I'm Famous.\n"
	.string "Mr.Famous!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I need help with my\n"
	.string "research subject\n"
	.string "experimentation!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you aren't a\n"
	.string "strong battler,it\n"
	.string "will be dangerous!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you feel you can\n"
	.string "help,come to the\n"
	.string "Aquarium Shark Tank!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk34
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "People call\n"
	.string "battlers like me\n"
	.string "SoulBattlers..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm looking for\n"
	.string "those who believe"
	ts_key_wait 0x0
	ts_clear_msg
	.string "in the SoulBattler\n"
	.string "cause."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you wish to come\n"
	.string "Soul to Soul with\n"
	.string "me,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "come to the Green\n"
	.string "HP."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk35
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 ID23"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk36
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 ID24"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk37
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 ID25"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk38
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 ID26"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk39
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 ID27"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk40
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 ID28"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk41
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 ID29"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk42
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 ID2A"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk43
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 ID2B"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk44
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 ID2C"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk45
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 ID2D"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk46
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 ID2E"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk47
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 ID2F"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk48
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk49
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk50
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk51
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk52
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk53
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk54
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk55
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk56
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk57
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk58
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk59
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk60
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk61
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk62
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk63
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk64
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk65
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk66
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk67
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk68
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk69
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk70
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk71
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk72
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk73
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk74
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk75
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk76
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk77
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk78
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk79
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk80
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk81
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk82
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk83
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk84
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk85
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk86
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk87
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk88
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk89
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk90
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk91
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk92
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk93
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk94
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87EE5B0_unk95
	ts_position_text 0x18, 0x44, 0x3
	ts_position_arrow 0xD2, 0x6C
	.string "BBS00 IDXX"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	