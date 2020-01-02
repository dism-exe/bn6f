	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877CD94::
	.word 0x161B00

	text_archive_start

	def_text_script CompText877CD94_unk0
	ts_check_flag [
		flag: 0x80E,
		jumpIfTrue: CompText877CD94_unk8_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x868,
		jumpIfTrue: CompText877CD94_unk1_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x868
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "Ahh,on a field\n"
	.string "trip to the\n"
	.string "courthouse I see."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Look at the\n"
	.string "tree inside this\n"
	.string "courtroom."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It is called the\n"
	.string "\"JudgeTree\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Of course,it isn't\n"
	.string "just a normal tree."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It'll automatically\n"
	.string "make prudent,just\n"
	.string "court decisions."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It is a milestone\n"
	.string "of a machine."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "In summary,here\n"
	.string "there's no need\n"
	.string "for a judge!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We let the JudgeTree\n"
	.string "handle everything!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877CD94_unk1
	ts_msg_open
	ts_mugshot_show mugshot=0x15
	.string "Take a good look\n"
	.string "at the tree inside\n"
	.string "this courtroom."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It is called the\n"
	.string "\"JudgeTree\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Of course,it isn't\n"
	.string "just a normal tree."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It'll automatically\n"
	.string "make prudent,just\n"
	.string "court decisions."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It is a milestone\n"
	.string "of a machine."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "In summary,here\n"
	.string "there's no need\n"
	.string "for a judge!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We let the JudgeTree\n"
	.string "handle everything!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877CD94_unk2
	ts_check_flag [
		flag: 0x869,
		jumpIfTrue: CompText877CD94_unk3_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x869
	ts_msg_open
	ts_mugshot_show mugshot=0x10
	.string "Normal people are\n"
	.string "prone to mistakes."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "No matter how\n"
	.string "experienced the\n"
	.string "judge,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "there are times\n"
	.string "when they may make\n"
	.string "an unjust decision."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Taking that into\n"
	.string "consideration,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "with the goal of\n"
	.string "getting justice\n"
	.string "every single time,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "we thought of how\n"
	.string "we could improve\n"
	.string "the system."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Our answer was very\n"
	.string "simple."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If people are prone\n"
	.string "to making mistakes,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "then why not use\n"
	.string "something other than\n"
	.string "a human as a judge?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The fruit of this\n"
	.string "debate was the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "botanical justice\n"
	.string "system,also known\n"
	.string "as the \"JudgeTree\"."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877CD94_unk3
	ts_msg_open
	ts_mugshot_show mugshot=0x10
	.string "Normal people are\n"
	.string "prone to mistakes."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "No matter how\n"
	.string "experienced the\n"
	.string "judge,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "there are times\n"
	.string "when they may make\n"
	.string "an unjust decision."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Taking that into\n"
	.string "consideration,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "with the goal of\n"
	.string "getting justice\n"
	.string "every single time,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "we thought of how\n"
	.string "we could improve\n"
	.string "the system."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Our answer was very\n"
	.string "simple."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If people are prone\n"
	.string "to making mistakes,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "then why not use\n"
	.string "something other than\n"
	.string "a human as a judge?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The fruit of this\n"
	.string "debate was the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "botanical justice\n"
	.string "system,also known\n"
	.string "as the \"JudgeTree\"."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877CD94_unk4
	ts_check_flag [
		flag: 0x86A,
		jumpIfTrue: CompText877CD94_unk5_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x86A
	ts_msg_open
	ts_mugshot_show mugshot=0x16
	.string "This JudgeTree is\n"
	.string "actually a giant\n"
	.string "tree which has been"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "living in this exact\n"
	.string "spot for hundreds of\n"
	.string "years."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We added some\n"
	.string "cybernetics to make"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "it capable of\n"
	.string "hearing a human's\n"
	.string "voice."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That made it the\n"
	.string "perfect system of\n"
	.string "justice."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And that is how the\n"
	.string "JudgeTree was born."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877CD94_unk5
	ts_msg_open
	ts_mugshot_show mugshot=0x16
	.string "This JudgeTree is\n"
	.string "actually a giant\n"
	.string "tree which has been"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "living in this exact\n"
	.string "spot for hundreds of\n"
	.string "years."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We added some\n"
	.string "cybernetics to make"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "it capable of\n"
	.string "hearing a human's\n"
	.string "voice."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That made it the\n"
	.string "perfect system of\n"
	.string "justice."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And that is how the\n"
	.string "JudgeTree was born."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877CD94_unk6
	ts_check_flag [
		flag: 0x86B,
		jumpIfTrue: CompText877CD94_unk7_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x86B
	ts_msg_open
	ts_mugshot_show mugshot=0xD
	.string "This JudgeTree is\n"
	.string "basically still a\n"
	.string "simple plant."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We must still give\n"
	.string "it water and\n"
	.string "fertilizer."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Actually,I am\n"
	.string "in charge of making"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "sure the JudgeTree\n"
	.string "stays healthy."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Today I have to\n"
	.string "give it water\n"
	.string "and fertilizer."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm so busy I\n"
	.string "don't have any\n"
	.string "free time at all!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ahhhhhhhhh!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've gotta run\n"
	.string "to the basement!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877CD94_unk7
	ts_msg_open
	ts_mugshot_show mugshot=0xD
	.string "This JudgeTree is\n"
	.string "basically still a\n"
	.string "simple plant."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We must still give\n"
	.string "it water and\n"
	.string "fertilizer."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Actually,I am\n"
	.string "in charge of making"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "sure the JudgeTree\n"
	.string "stays healthy."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Today I have to\n"
	.string "give it water\n"
	.string "and fertilizer."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm so busy I\n"
	.string "don't have any\n"
	.string "free time at all!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ahhhhhhhhh!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've gotta run\n"
	.string "to the basement!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877CD94_unk8
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "I was watching the\n"
	.string "trial!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Nice testimony!\n"
	.string "You did great for\n"
	.string "being a young kid!"
	ts_key_wait any=0x0
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
	ts_check_flag [
		flag: 0x86D,
		jumpIfTrue: CompText877CD94_unk21_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x86D
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0xA,
	]
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "Ahhh,Lan..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Mr.Prosecutor!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "My Dad had no\n"
	.string "reason to hack\n"
	.string "anything!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He's no Net\n"
	.string "criminal...!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2D
	.string "Lan,\n"
	.string "I know that you"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "don't want to\n"
	.string "believe these\n"
	.string "things..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Do you have any\n"
	.string "proof my Dad did\n"
	.string "it,sir?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2D
	.string "The JudgeTree is\n"
	.string "proof enough."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It said it was\n"
	.string "hacked by Yuichiro\n"
	.string "Hikari."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "I see..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2D
	.string "This is the\n"
	.string "evidence we have on\n"
	.string "this incident."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_flag_set flag=0x871
	ts_item_give [
		item: 0xC,
		amount: 0x1,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0xC,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2D
	.string "The time of the\n"
	.string "offense was\n"
	.string "yesterday at 4 P.M."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Mr.Hikari has no\n"
	.string "alibi for that\n"
	.string "time yesterday."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "MegaMan...\n"
	.string "What's an alibi...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "An alibi is proof\n"
	.string "you didn't commit\n"
	.string "the crime..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Like...if we could\n"
	.string "prove that Dad was\n"
	.string "doing something"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "totally different\n"
	.string "at that time,we can\n"
	.string "prove he's innocent."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But we can't prove\n"
	.string "what Dad was doing\n"
	.string "at 4 P.M. yesterday."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Wait,hold on."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We saw Dad last\n"
	.string "evening,MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We talked to him\n"
	.string "in front of the\n"
	.string "station,remember!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Yeah! Good job\n"
	.string "remembering that\n"
	.string "one Lan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "That's proof my Dad\n"
	.string "isn't a criminal,\n"
	.string "right,Mr.Prosecutor?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2D
	.string "Unfortunately,\n"
	.string "your testimony is\n"
	.string "too vague..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You have to have\n"
	.string "a concrete,air-tight\n"
	.string "alibi as proof."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You have to prove\n"
	.string "what EXACTLY he was\n"
	.string "doing at 4 P.M."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Can we really\n"
	.string "prove his alibi?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Is there anything\n"
	.string "we can use to\n"
	.string "prove it?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This is no time\n"
	.string "to doubt myself!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Mr.Prosecutor!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We're going to go\n"
	.string "find something to\n"
	.string "prove Dad's alibi!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We have to!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x2D
	.string "I see..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,I'll see if\n"
	.string "we can't delay\n"
	.string "his punishment..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Please do that!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Lan... I was just\n"
	.string "thinking..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What is it\n"
	.string "MegaMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "So I was thinking\n"
	.string "we should do\n"
	.string "something like..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "we find where the\n"
	.string "real criminal is,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and get him to\n"
	.string "prove Dad's really\n"
	.string "innocent..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "For instance,\n"
	.string "that guy in the\n"
	.string "parka yesterday..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Yeah,that guy!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That guy did say\n"
	.string "something weird\n"
	.string "about the JudgeTree!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I mean,what is that\n"
	.string "guy's problem!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Anyways,we have to\n"
	.string "prove Dad's alibi\n"
	.string "quick..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Then after that,\n"
	.string "we'll go snag\n"
	.string "that guy!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright! Let's go\n"
	.string "find evidence that\n"
	.string "proves Dad's alibi!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's go to Central\n"
	.string "Town since we saw\n"
	.string "him there yesterday!"
	ts_sound_fade_in_bgm [
		track: 0xB,
		length: 0x7,
	]
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877CD94_unk21
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "I'll ask them\n"
	.string "to delay the\n"
	.string "punishment!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hurry and prove\n"
	.string "his alibi,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877CD94_unk22
	ts_msg_open
	.string "NO UNAUTHORIZED\n"
	.string "PERSONNEL!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877CD94_unk23

	def_text_script CompText877CD94_unk24

	def_text_script CompText877CD94_unk25

	def_text_script CompText877CD94_unk26

	def_text_script CompText877CD94_unk27

	def_text_script CompText877CD94_unk28

	def_text_script CompText877CD94_unk29

	def_text_script CompText877CD94_unk30

	def_text_script CompText877CD94_unk31

	def_text_script CompText877CD94_unk32

	def_text_script CompText877CD94_unk33

	def_text_script CompText877CD94_unk34

	def_text_script CompText877CD94_unk35

	def_text_script CompText877CD94_unk36

	def_text_script CompText877CD94_unk37

	def_text_script CompText877CD94_unk38

	def_text_script CompText877CD94_unk39

	def_text_script CompText877CD94_unk40

	def_text_script CompText877CD94_unk41

	def_text_script CompText877CD94_unk42

	def_text_script CompText877CD94_unk43

	def_text_script CompText877CD94_unk44

	def_text_script CompText877CD94_unk45

	def_text_script CompText877CD94_unk46

	def_text_script CompText877CD94_unk47

	def_text_script CompText877CD94_unk48

	def_text_script CompText877CD94_unk49

	def_text_script CompText877CD94_unk50

	def_text_script CompText877CD94_unk51

	def_text_script CompText877CD94_unk52

	def_text_script CompText877CD94_unk53

	def_text_script CompText877CD94_unk54

	def_text_script CompText877CD94_unk55

	def_text_script CompText877CD94_unk56

	def_text_script CompText877CD94_unk57

	def_text_script CompText877CD94_unk58

	def_text_script CompText877CD94_unk59

	def_text_script CompText877CD94_unk60

	def_text_script CompText877CD94_unk61

	def_text_script CompText877CD94_unk62

	def_text_script CompText877CD94_unk63

	def_text_script CompText877CD94_unk64

	def_text_script CompText877CD94_unk65

	def_text_script CompText877CD94_unk66

	def_text_script CompText877CD94_unk67

	def_text_script CompText877CD94_unk68

	def_text_script CompText877CD94_unk69

	def_text_script CompText877CD94_unk70

	def_text_script CompText877CD94_unk71

	def_text_script CompText877CD94_unk72

	def_text_script CompText877CD94_unk73

	def_text_script CompText877CD94_unk74

	def_text_script CompText877CD94_unk75

	def_text_script CompText877CD94_unk76

	def_text_script CompText877CD94_unk77

	def_text_script CompText877CD94_unk78

	def_text_script CompText877CD94_unk79

	def_text_script CompText877CD94_unk80

	def_text_script CompText877CD94_unk81

	def_text_script CompText877CD94_unk82

	def_text_script CompText877CD94_unk83

	def_text_script CompText877CD94_unk84

	def_text_script CompText877CD94_unk85

	def_text_script CompText877CD94_unk86

	def_text_script CompText877CD94_unk87

	def_text_script CompText877CD94_unk88

	def_text_script CompText877CD94_unk89

	def_text_script CompText877CD94_unk90

	def_text_script CompText877CD94_unk91

	def_text_script CompText877CD94_unk92

	def_text_script CompText877CD94_unk93

	def_text_script CompText877CD94_unk94

	def_text_script CompText877CD94_unk95

	def_text_script CompText877CD94_unk96

	def_text_script CompText877CD94_unk97

	def_text_script CompText877CD94_unk98

	def_text_script CompText877CD94_unk99

	def_text_script CompText877CD94_unk100

	def_text_script CompText877CD94_unk101

	def_text_script CompText877CD94_unk102

	def_text_script CompText877CD94_unk103

	def_text_script CompText877CD94_unk104

	def_text_script CompText877CD94_unk105

	def_text_script CompText877CD94_unk106

	def_text_script CompText877CD94_unk107

	def_text_script CompText877CD94_unk108

	def_text_script CompText877CD94_unk109

	def_text_script CompText877CD94_unk110

	def_text_script CompText877CD94_unk111

	def_text_script CompText877CD94_unk112

	def_text_script CompText877CD94_unk113

	def_text_script CompText877CD94_unk114

	def_text_script CompText877CD94_unk115

	def_text_script CompText877CD94_unk116

	def_text_script CompText877CD94_unk117

	def_text_script CompText877CD94_unk118

	def_text_script CompText877CD94_unk119

	def_text_script CompText877CD94_unk120

	def_text_script CompText877CD94_unk121

	def_text_script CompText877CD94_unk122

	def_text_script CompText877CD94_unk123

	def_text_script CompText877CD94_unk124

	def_text_script CompText877CD94_unk125

	def_text_script CompText877CD94_unk126

	def_text_script CompText877CD94_unk127

	def_text_script CompText877CD94_unk128

	def_text_script CompText877CD94_unk129

	def_text_script CompText877CD94_unk130

	def_text_script CompText877CD94_unk131

	def_text_script CompText877CD94_unk132

	def_text_script CompText877CD94_unk133

	def_text_script CompText877CD94_unk134

	def_text_script CompText877CD94_unk135

	def_text_script CompText877CD94_unk136

	def_text_script CompText877CD94_unk137

	def_text_script CompText877CD94_unk138

	def_text_script CompText877CD94_unk139

	def_text_script CompText877CD94_unk140

	def_text_script CompText877CD94_unk141

	def_text_script CompText877CD94_unk142

	def_text_script CompText877CD94_unk143

	def_text_script CompText877CD94_unk144

	def_text_script CompText877CD94_unk145

	def_text_script CompText877CD94_unk146

	def_text_script CompText877CD94_unk147

	def_text_script CompText877CD94_unk148

	def_text_script CompText877CD94_unk149

	def_text_script CompText877CD94_unk150

	def_text_script CompText877CD94_unk151

	def_text_script CompText877CD94_unk152

	def_text_script CompText877CD94_unk153

	def_text_script CompText877CD94_unk154

	def_text_script CompText877CD94_unk155

	def_text_script CompText877CD94_unk156

	def_text_script CompText877CD94_unk157

	def_text_script CompText877CD94_unk158

	def_text_script CompText877CD94_unk159

	def_text_script CompText877CD94_unk160

	def_text_script CompText877CD94_unk161

	def_text_script CompText877CD94_unk162

	def_text_script CompText877CD94_unk163

	def_text_script CompText877CD94_unk164

	def_text_script CompText877CD94_unk165

	def_text_script CompText877CD94_unk166

	def_text_script CompText877CD94_unk167

	def_text_script CompText877CD94_unk168

	def_text_script CompText877CD94_unk169

	def_text_script CompText877CD94_unk170

	def_text_script CompText877CD94_unk171

	def_text_script CompText877CD94_unk172

	def_text_script CompText877CD94_unk173

	def_text_script CompText877CD94_unk174

	def_text_script CompText877CD94_unk175

	def_text_script CompText877CD94_unk176

	def_text_script CompText877CD94_unk177

	def_text_script CompText877CD94_unk178

	def_text_script CompText877CD94_unk179

	def_text_script CompText877CD94_unk180

	def_text_script CompText877CD94_unk181

	def_text_script CompText877CD94_unk182

	def_text_script CompText877CD94_unk183

	def_text_script CompText877CD94_unk184

	def_text_script CompText877CD94_unk185

	def_text_script CompText877CD94_unk186

	def_text_script CompText877CD94_unk187

	def_text_script CompText877CD94_unk188

	def_text_script CompText877CD94_unk189

	def_text_script CompText877CD94_unk190

	def_text_script CompText877CD94_unk191

	def_text_script CompText877CD94_unk192

	def_text_script CompText877CD94_unk193

	def_text_script CompText877CD94_unk194

	def_text_script CompText877CD94_unk195

	def_text_script CompText877CD94_unk196

	def_text_script CompText877CD94_unk197

	def_text_script CompText877CD94_unk198

	def_text_script CompText877CD94_unk199

	def_text_script CompText877CD94_unk200

	def_text_script CompText877CD94_unk201

	def_text_script CompText877CD94_unk202

	def_text_script CompText877CD94_unk203

	def_text_script CompText877CD94_unk204

	def_text_script CompText877CD94_unk205

	def_text_script CompText877CD94_unk206

	def_text_script CompText877CD94_unk207

	def_text_script CompText877CD94_unk208

	def_text_script CompText877CD94_unk209

	def_text_script CompText877CD94_unk210

	def_text_script CompText877CD94_unk211

	def_text_script CompText877CD94_unk212

	def_text_script CompText877CD94_unk213

	def_text_script CompText877CD94_unk214

	def_text_script CompText877CD94_unk215

	def_text_script CompText877CD94_unk216

	def_text_script CompText877CD94_unk217

	def_text_script CompText877CD94_unk218

	def_text_script CompText877CD94_unk219

	def_text_script CompText877CD94_unk220

	def_text_script CompText877CD94_unk221

	def_text_script CompText877CD94_unk222

	def_text_script CompText877CD94_unk223

	def_text_script CompText877CD94_unk224

	def_text_script CompText877CD94_unk225

	def_text_script CompText877CD94_unk226

	def_text_script CompText877CD94_unk227

	def_text_script CompText877CD94_unk228

	def_text_script CompText877CD94_unk229

	def_text_script CompText877CD94_unk230

	def_text_script CompText877CD94_unk231

	def_text_script CompText877CD94_unk232

	def_text_script CompText877CD94_unk233

	def_text_script CompText877CD94_unk234

	def_text_script CompText877CD94_unk235

	def_text_script CompText877CD94_unk236

	def_text_script CompText877CD94_unk237

	def_text_script CompText877CD94_unk238

	def_text_script CompText877CD94_unk239

	def_text_script CompText877CD94_unk240

	def_text_script CompText877CD94_unk241

	def_text_script CompText877CD94_unk242

	def_text_script CompText877CD94_unk243

	def_text_script CompText877CD94_unk244

	def_text_script CompText877CD94_unk245

	def_text_script CompText877CD94_unk246

	def_text_script CompText877CD94_unk247

	def_text_script CompText877CD94_unk248

	def_text_script CompText877CD94_unk249

	def_text_script CompText877CD94_unk250

	def_text_script CompText877CD94_unk251

	def_text_script CompText877CD94_unk252

	def_text_script CompText877CD94_unk253

	def_text_script CompText877CD94_unk254

	