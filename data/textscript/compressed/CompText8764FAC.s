	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8764FAC::
	.word 0x109F00

	text_archive_start

	def_text_script CompText8764FAC_unk0
	ts_check_flag 0x31, 0x6, 0x1, 0xFF
	ts_flag_set 0x31, 0x6
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText8764FAC_unk1
	ts_mugshot_show 0x11
	ts_msg_open
	.string "Take care..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk2
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "Tomorrow around this\n"
	.string "time there will be"
	ts_key_wait 0x0
	ts_clear_msg
	.string "an event in\n"
	.string "CentralArea3!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Interesting things\n"
	.string "will happen so you\n"
	.string "should really come!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hehehe..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk3
	ts_mugshot_show 0x9
	ts_msg_open
	.string "What will happen?\n"
	.string "I can't wait to\n"
	.string "find out!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh yeah,AsterLand\n"
	.string "is open today!\n"
	.string "I gotta go there!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk4
	ts_mugshot_show 0xE
	ts_msg_open
	.string "Lately the Net\n"
	.string "has been dark,and\n"
	.string "kinda scary..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But with events like\n"
	.string "this,it kinda makes\n"
	.string "things brighter!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk5
	ts_mugshot_show 0x19
	ts_msg_open
	.string "It seems like the\n"
	.string "chip shop is open!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can hear lively\n"
	.string "voices inside..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk6

	def_text_script CompText8764FAC_unk7

	def_text_script CompText8764FAC_unk8

	def_text_script CompText8764FAC_unk9

	def_text_script CompText8764FAC_unk10
	ts_check_flag 0x12, 0x6, 0xF, 0xFF
	ts_mugshot_show 0x9
	ts_msg_open
	.string "I bought lots of\n"
	.string "chips!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now it's time to go\n"
	.string "to CentralArea3!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk11
	ts_check_chapter 0x25, 0x25, 0x24, 0xFF
	ts_mugshot_show 0xE
	ts_msg_open
	.string "My Navi's already\n"
	.string "on its way to Central\n"
	.string "Area."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hope it's a fun\n"
	.string "event!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh yeah! I need\n"
	.string "to buy some chips..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk12
	ts_check_flag 0x12, 0x6, 0x11, 0xFF
	ts_mugshot_show 0x19
	ts_msg_open
	.string "I've got a feeling\n"
	.string "something interesting\n"
	.string "is going to happen."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But what do I\n"
	.string "know..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk13
	ts_check_flag 0x12, 0x6, 0x12, 0xFF
	ts_mugshot_show 0xF
	ts_msg_open
	.string "That chip shop is\n"
	.string "really flourishing!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe it's because\n"
	.string "of today's event?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm planning on\n"
	.string "jacking in later and\n"
	.string "checking it out!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk14

	def_text_script CompText8764FAC_unk15
	ts_mugshot_show 0x9
	ts_msg_open
	.string "About time to go to\n"
	.string "CentralArea3..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "You can't jack in\n"
	.string "now!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x9
	.string "Huh...What? Why not?\n"
	.string "Did something\n"
	.string "happen?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk16
	ts_mugshot_show 0xE
	ts_msg_open
	.string "My Navi...\n"
	.string "What just happened?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk17
	ts_mugshot_show 0x19
	ts_msg_open
	.string "Uh-huh...\n"
	.string "I can't remember a\n"
	.string "thing..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Was today supposed\n"
	.string "to be something\n"
	.string "special?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk18
	ts_mugshot_show 0xF
	ts_msg_open
	.string "What just happened!?\n"
	.string "Hurry up and call\n"
	.string "the NetPolice...!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh no no no..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk19

	def_text_script CompText8764FAC_unk20
	ts_mugshot_show 0x9
	ts_msg_open
	.string "I heard Cybeasts\n"
	.string "have appeared in\n"
	.string "CentralArea!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There are people on\n"
	.string "the Net who"
	ts_key_wait 0x0
	ts_clear_msg
	.string "heard the Cybeasts'\n"
	.string "roar..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If that's true,I'm\n"
	.string "not going on the\n"
	.string "Net anymore!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk21
	ts_mugshot_show 0xE
	ts_msg_open
	.string "You have to catch\n"
	.string "the bad guys!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "Yeah. I'm going to\n"
	.string "give it everything\n"
	.string "I've got!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk22
	ts_check_chapter 0x25, 0x25, 0x25, 0xFF
	ts_mugshot_show 0x19
	ts_msg_open
	.string "The NetPolice are\n"
	.string "all over! Did\n"
	.string "something happen?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk23
	ts_check_chapter 0x24, 0x24, 0x1F, 0xFF
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Please don't jack\n"
	.string "in to the Net!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It is incredibly\n"
	.string "dangerous on the\n"
	.string "Net right now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk24
	ts_mugshot_show 0x15
	ts_msg_open
	.string "What are the\n"
	.string "girl's features?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xE
	.string "Ummm,she was wearing\n"
	.string "black clothes,and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "she had a heart\n"
	.string "painted on her\n"
	.string "face..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "I see... I see..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk25

	def_text_script CompText8764FAC_unk26

	def_text_script CompText8764FAC_unk27

	def_text_script CompText8764FAC_unk28

	def_text_script CompText8764FAC_unk29

	def_text_script CompText8764FAC_unk30
	ts_mugshot_show 0x15
	ts_msg_open
	.string "It seems like the\n"
	.string "Cybeasts disappeared\n"
	.string "all of a sudden!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What in the world\n"
	.string "happened?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk31
	ts_mugshot_show 0x16
	ts_msg_open
	.string "There was an event\n"
	.string "in CentralArea3."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We are looking for\n"
	.string "the Navi's Operator."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder if there's\n"
	.string "something that would\n"
	.string "prove helpful..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk32
	ts_mugshot_show 0x10
	ts_msg_open
	.string "I'm a judge for\n"
	.string "the NetPolice..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The girl we're\n"
	.string "looking for must\n"
	.string "be around here..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk33

	def_text_script CompText8764FAC_unk34

	def_text_script CompText8764FAC_unk35
	ts_mugshot_show 0x9
	ts_msg_open
	.string "Lots of NetPolice\n"
	.string "are here... The\n"
	.string "NetPolice are cool!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk36
	ts_mugshot_show 0xE
	ts_msg_open
	.string "A rumor is spreading\n"
	.string "that Cybeasts have\n"
	.string "shown up on the Net."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder if it's\n"
	.string "true...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk37
	ts_mugshot_show 0x19
	ts_msg_open
	.string "The Cybeasts have\n"
	.string "been brought back\n"
	.string "to life...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Don't be ridiculous!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If they we're back,\n"
	.string "it'd be the end of\n"
	.string "Net society..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk38
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Because of the\n"
	.string "incident,my Navi\n"
	.string "refuses to move!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "And thanks to that,\n"
	.string "I can't finish any\n"
	.string "of my work..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk39

	def_text_script CompText8764FAC_unk40

	def_text_script CompText8764FAC_unk41

	def_text_script CompText8764FAC_unk42

	def_text_script CompText8764FAC_unk43

	def_text_script CompText8764FAC_unk44

	def_text_script CompText8764FAC_unk45

	def_text_script CompText8764FAC_unk46

	def_text_script CompText8764FAC_unk47

	def_text_script CompText8764FAC_unk48

	def_text_script CompText8764FAC_unk49

	def_text_script CompText8764FAC_unk50
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Check out this\n"
	.string "Bird Statue. Doesn't"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it look like it's\n"
	.string "flapping its wings?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It symbolizes\n"
	.string "moving up and away\n"
	.string "to the future!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Makes you think,\n"
	.string "doesn't it?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk51
	ts_mugshot_show 0x1A
	ts_msg_open
	.string "I'm off to buy\n"
	.string "some water in\n"
	.string "Seaside Town."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The water there is\n"
	.string "famous for being\n"
	.string "good for you!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk52
	ts_mugshot_show 0xE
	ts_msg_open
	.string "Oh no...\n"
	.string "What should I do?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I feel like going\n"
	.string "on a chip buying\n"
	.string "spree..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk53

	def_text_script CompText8764FAC_unk54

	def_text_script CompText8764FAC_unk55
	ts_mugshot_show 0xE
	ts_msg_open
	.string "You're going to\n"
	.string "Green Town?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Don't they have a\n"
	.string "huge courthouse\n"
	.string "there?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd like to see it\n"
	.string "if someone would\n"
	.string "take me..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk56
	ts_mugshot_show 0x1A
	ts_msg_open
	.string "I just got back\n"
	.string "from buying water\n"
	.string "in Seaside Town."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Starting tomorrow,\n"
	.string "I'll drink it\n"
	.string "everyday!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Then I'll be\n"
	.string "healthier than ever!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk57
	ts_mugshot_show 0xF
	ts_msg_open
	.string "They collected lots\n"
	.string "of taxes to build\n"
	.string "the Expo Site."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can't wait to see\n"
	.string "what they spent all\n"
	.string "of that money on..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk58

	def_text_script CompText8764FAC_unk59

	def_text_script CompText8764FAC_unk60
	ts_mugshot_show 0xF
	ts_msg_open
	.string "They're fixing up\n"
	.string "the Green Town\n"
	.string "Courthouse,you know."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The JudgeTree there\n"
	.string "is especially\n"
	.string "amazing!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm curious to know\n"
	.string "what kind of changes\n"
	.string "they're making,but"
	ts_key_wait 0x0
	ts_clear_msg
	.string "they won't release\n"
	.string "that information to\n"
	.string "the general public."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk61
	ts_mugshot_show 0xC
	ts_msg_open
	.string "What's the matter?\n"
	.string "You're face is all\n"
	.string "scrunched up..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Was there an\n"
	.string "incident?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8764FAC_unk62
	ts_mugshot_show 0x1A
	ts_msg_open
	.string "I know the Green\n"
	.string "Town Flower Shop\n"
	.string "really well..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Flowers grown in\n"
	.string "Green Town have a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "special smell and\n"
	.string "beautiful color."
	ts_key_wait 0x0
	ts_end

	