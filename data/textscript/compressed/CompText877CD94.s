	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877CD94::
	.word 0x161B00

	text_archive_start

	def_text_script CompText877CD94_unk0
	ts_check_flag 0xE, 0x8, 0x8, 0xFF
	ts_check_flag 0x68, 0x8, 0x1, 0xFF
	ts_flag_set 0x68, 0x8
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Ahh,on a field\n"
	.string "trip to the\n"
	.string "courthouse I see."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Look at the\n"
	.string "tree inside this\n"
	.string "courtroom."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It is called the\n"
	.string "\"JudgeTree\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Of course,it isn't\n"
	.string "just a normal tree."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It'll automatically\n"
	.string "make prudent,just\n"
	.string "court decisions."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It is a milestone\n"
	.string "of a machine."
	ts_key_wait 0x0
	ts_clear_msg
	.string "In summary,here\n"
	.string "there's no need\n"
	.string "for a judge!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We let the JudgeTree\n"
	.string "handle everything!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877CD94_unk1
	ts_msg_open
	ts_mugshot_show 0x15
	.string "Take a good look\n"
	.string "at the tree inside\n"
	.string "this courtroom."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It is called the\n"
	.string "\"JudgeTree\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Of course,it isn't\n"
	.string "just a normal tree."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It'll automatically\n"
	.string "make prudent,just\n"
	.string "court decisions."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It is a milestone\n"
	.string "of a machine."
	ts_key_wait 0x0
	ts_clear_msg
	.string "In summary,here\n"
	.string "there's no need\n"
	.string "for a judge!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We let the JudgeTree\n"
	.string "handle everything!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877CD94_unk2
	ts_check_flag 0x69, 0x8, 0x3, 0xFF
	ts_flag_set 0x69, 0x8
	ts_msg_open
	ts_mugshot_show 0x10
	.string "Normal people are\n"
	.string "prone to mistakes."
	ts_key_wait 0x0
	ts_clear_msg
	.string "No matter how\n"
	.string "experienced the\n"
	.string "judge,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "there are times\n"
	.string "when they may make\n"
	.string "an unjust decision."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Taking that into\n"
	.string "consideration,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "with the goal of\n"
	.string "getting justice\n"
	.string "every single time,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "we thought of how\n"
	.string "we could improve\n"
	.string "the system."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Our answer was very\n"
	.string "simple."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If people are prone\n"
	.string "to making mistakes,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "then why not use\n"
	.string "something other than\n"
	.string "a human as a judge?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The fruit of this\n"
	.string "debate was the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "botanical justice\n"
	.string "system,also known\n"
	.string "as the \"JudgeTree\"."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877CD94_unk3
	ts_msg_open
	ts_mugshot_show 0x10
	.string "Normal people are\n"
	.string "prone to mistakes."
	ts_key_wait 0x0
	ts_clear_msg
	.string "No matter how\n"
	.string "experienced the\n"
	.string "judge,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "there are times\n"
	.string "when they may make\n"
	.string "an unjust decision."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Taking that into\n"
	.string "consideration,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "with the goal of\n"
	.string "getting justice\n"
	.string "every single time,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "we thought of how\n"
	.string "we could improve\n"
	.string "the system."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Our answer was very\n"
	.string "simple."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If people are prone\n"
	.string "to making mistakes,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "then why not use\n"
	.string "something other than\n"
	.string "a human as a judge?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The fruit of this\n"
	.string "debate was the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "botanical justice\n"
	.string "system,also known\n"
	.string "as the \"JudgeTree\"."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877CD94_unk4
	ts_check_flag 0x6A, 0x8, 0x5, 0xFF
	ts_flag_set 0x6A, 0x8
	ts_msg_open
	ts_mugshot_show 0x16
	.string "This JudgeTree is\n"
	.string "actually a giant\n"
	.string "tree which has been"
	ts_key_wait 0x0
	ts_clear_msg
	.string "living in this exact\n"
	.string "spot for hundreds of\n"
	.string "years."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We added some\n"
	.string "cybernetics to make"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it capable of\n"
	.string "hearing a human's\n"
	.string "voice."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That made it the\n"
	.string "perfect system of\n"
	.string "justice."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And that is how the\n"
	.string "JudgeTree was born."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877CD94_unk5
	ts_msg_open
	ts_mugshot_show 0x16
	.string "This JudgeTree is\n"
	.string "actually a giant\n"
	.string "tree which has been"
	ts_key_wait 0x0
	ts_clear_msg
	.string "living in this exact\n"
	.string "spot for hundreds of\n"
	.string "years."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We added some\n"
	.string "cybernetics to make"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it capable of\n"
	.string "hearing a human's\n"
	.string "voice."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That made it the\n"
	.string "perfect system of\n"
	.string "justice."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And that is how the\n"
	.string "JudgeTree was born."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877CD94_unk6
	ts_check_flag 0x6B, 0x8, 0x7, 0xFF
	ts_flag_set 0x6B, 0x8
	ts_msg_open
	ts_mugshot_show 0xD
	.string "This JudgeTree is\n"
	.string "basically still a\n"
	.string "simple plant."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We must still give\n"
	.string "it water and\n"
	.string "fertilizer."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Actually,I am\n"
	.string "in charge of making"
	ts_key_wait 0x0
	ts_clear_msg
	.string "sure the JudgeTree\n"
	.string "stays healthy."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Today I have to\n"
	.string "give it water\n"
	.string "and fertilizer."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm so busy I\n"
	.string "don't have any\n"
	.string "free time at all!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ahhhhhhhhh!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've gotta run\n"
	.string "to the basement!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877CD94_unk7
	ts_msg_open
	ts_mugshot_show 0xD
	.string "This JudgeTree is\n"
	.string "basically still a\n"
	.string "simple plant."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We must still give\n"
	.string "it water and\n"
	.string "fertilizer."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Actually,I am\n"
	.string "in charge of making"
	ts_key_wait 0x0
	ts_clear_msg
	.string "sure the JudgeTree\n"
	.string "stays healthy."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Today I have to\n"
	.string "give it water\n"
	.string "and fertilizer."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm so busy I\n"
	.string "don't have any\n"
	.string "free time at all!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ahhhhhhhhh!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've gotta run\n"
	.string "to the basement!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877CD94_unk8
	ts_mugshot_show 0x15
	ts_msg_open
	.string "I was watching the\n"
	.string "trial!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Nice testimony!\n"
	.string "You did great for\n"
	.string "being a young kid!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877CD94_unk9

	def_text_script CompText877CD94_unk10

	def_text_script CompText877CD94_unk11

	def_text_script CompText877CD94_unk12

	def_text_script CompText877CD94_unk13

	def_text_script CompText877CD94_unk14

	def_text_script CompText877CD94_unk15

	def_text_script CompText877CD94_unk16

	def_text_script CompText877CD94_unk17

	def_text_script CompText877CD94_unk18

	def_text_script CompText877CD94_unk19

	def_text_script CompText877CD94_unk20
	ts_check_flag 0x6D, 0x8, 0x15, 0xFF
	ts_flag_set 0x6D, 0x8
	ts_sound_fade_out 0x1F, 0xA
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "Ahhh,Lan..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Mr.Prosecutor!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "My Dad had no\n"
	.string "reason to hack\n"
	.string "anything!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "He's no Net\n"
	.string "criminal...!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x2D
	.string "Lan,\n"
	.string "I know that you"
	ts_key_wait 0x0
	ts_clear_msg
	.string "don't want to\n"
	.string "believe these\n"
	.string "things..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Do you have any\n"
	.string "proof my Dad did\n"
	.string "it,sir?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x2D
	.string "The JudgeTree is\n"
	.string "proof enough."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It said it was\n"
	.string "hacked by Yuichiro\n"
	.string "Hikari."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "I see..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x2D
	.string "This is the\n"
	.string "evidence we have on\n"
	.string "this incident."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_flag_set 0x71, 0x8
	ts_item_give 0xC, 0x1
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x0, 0xC0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x2D
	.string "The time of the\n"
	.string "offense was\n"
	.string "yesterday at 4 P.M."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mr.Hikari has no\n"
	.string "alibi for that\n"
	.string "time yesterday."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "MegaMan...\n"
	.string "What's an alibi...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "An alibi is proof\n"
	.string "you didn't commit\n"
	.string "the crime..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Like...if we could\n"
	.string "prove that Dad was\n"
	.string "doing something"
	ts_key_wait 0x0
	ts_clear_msg
	.string "totally different\n"
	.string "at that time,we can\n"
	.string "prove he's innocent."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But we can't prove\n"
	.string "what Dad was doing\n"
	.string "at 4 P.M. yesterday."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Wait,hold on."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We saw Dad last\n"
	.string "evening,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We talked to him\n"
	.string "in front of the\n"
	.string "station,remember!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Yeah! Good job\n"
	.string "remembering that\n"
	.string "one Lan!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "That's proof my Dad\n"
	.string "isn't a criminal,\n"
	.string "right,Mr.Prosecutor?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x2D
	.string "Unfortunately,\n"
	.string "your testimony is\n"
	.string "too vague..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You have to have\n"
	.string "a concrete,air-tight\n"
	.string "alibi as proof."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You have to prove\n"
	.string "what EXACTLY he was\n"
	.string "doing at 4 P.M."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Can we really\n"
	.string "prove his alibi?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Is there anything\n"
	.string "we can use to\n"
	.string "prove it?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is no time\n"
	.string "to doubt myself!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mr.Prosecutor!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We're going to go\n"
	.string "find something to\n"
	.string "prove Dad's alibi!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We have to!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x2D
	.string "I see..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,I'll see if\n"
	.string "we can't delay\n"
	.string "his punishment..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Please do that!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Lan... I was just\n"
	.string "thinking..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "What is it\n"
	.string "MegaMan?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "So I was thinking\n"
	.string "we should do\n"
	.string "something like..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "we find where the\n"
	.string "real criminal is,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and get him to\n"
	.string "prove Dad's really\n"
	.string "innocent..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "For instance,\n"
	.string "that guy in the\n"
	.string "parka yesterday..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Yeah,that guy!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That guy did say\n"
	.string "something weird\n"
	.string "about the JudgeTree!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I mean,what is that\n"
	.string "guy's problem!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Anyways,we have to\n"
	.string "prove Dad's alibi\n"
	.string "quick..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Then after that,\n"
	.string "we'll go snag\n"
	.string "that guy!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright! Let's go\n"
	.string "find evidence that\n"
	.string "proves Dad's alibi!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go to Central\n"
	.string "Town since we saw\n"
	.string "him there yesterday!"
	ts_sound_fade_in_bgm 0xB, 0x7
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877CD94_unk21
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "I'll ask them\n"
	.string "to delay the\n"
	.string "punishment!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hurry and prove\n"
	.string "his alibi,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877CD94_unk22
	ts_msg_open
	.string "NO UNAUTHORIZED\n"
	.string "PERSONNEL!"
	ts_key_wait 0x0
	ts_end

	