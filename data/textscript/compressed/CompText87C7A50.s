	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C7A50::
	.word 0x107C00

	text_archive_start

	def_text_script CompText87C7A50_unk0

	def_text_script CompText87C7A50_unk1

	def_text_script CompText87C7A50_unk2

	def_text_script CompText87C7A50_unk3

	def_text_script CompText87C7A50_unk4

	def_text_script CompText87C7A50_unk5

	def_text_script CompText87C7A50_unk6

	def_text_script CompText87C7A50_unk7

	def_text_script CompText87C7A50_unk8

	def_text_script CompText87C7A50_unk9

	def_text_script CompText87C7A50_unk10

	def_text_script CompText87C7A50_unk11

	def_text_script CompText87C7A50_unk12

	def_text_script CompText87C7A50_unk13

	def_text_script CompText87C7A50_unk14

	def_text_script CompText87C7A50_unk15

	def_text_script CompText87C7A50_unk16

	def_text_script CompText87C7A50_unk17

	def_text_script CompText87C7A50_unk18

	def_text_script CompText87C7A50_unk19

	def_text_script CompText87C7A50_unk20

	def_text_script CompText87C7A50_unk21

	def_text_script CompText87C7A50_unk22

	def_text_script CompText87C7A50_unk23

	def_text_script CompText87C7A50_unk24

	def_text_script CompText87C7A50_unk25

	def_text_script CompText87C7A50_unk26

	def_text_script CompText87C7A50_unk27

	def_text_script CompText87C7A50_unk28

	def_text_script CompText87C7A50_unk29

	def_text_script CompText87C7A50_unk30

	def_text_script CompText87C7A50_unk31

	def_text_script CompText87C7A50_unk32

	def_text_script CompText87C7A50_unk33

	def_text_script CompText87C7A50_unk34

	def_text_script CompText87C7A50_unk35

	def_text_script CompText87C7A50_unk36

	def_text_script CompText87C7A50_unk37

	def_text_script CompText87C7A50_unk38

	def_text_script CompText87C7A50_unk39
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "... So you see,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I must have the\n"
	.string "Cybeasts because..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that \"devil\"\n"
	.string "scientist was...\n"
	.string "my grandfather..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=40

	def_text_script CompText87C7A50_unk40
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "...!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=41

	def_text_script CompText87C7A50_unk41
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "My grandfather was\n"
	.string "never able to master\n"
	.string "the Cybeasts,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but I will master\n"
	.string "them!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "With 2 Cybeasts,I\n"
	.string "will control the\n"
	.string "world,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and then the world\n"
	.string "will see"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "just how brilliant\n"
	.string "my grandfather\n"
	.string "really was!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C7A50_unk42
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "Well,that's enough\n"
	.string "talk about the past\n"
	.string "for now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now be a good boy.\n"
	.string "You know you have no\n"
	.string "way to escape..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C7A50_unk43
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "Gahahaha!\n"
	.string "I'd tell ye not to\n"
	.string "struggle,boy,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "it doesn't matter\n"
	.string "'cause I'll get ye\n"
	.string "in the end anyway!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C7A50_unk44
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "Ah,perfect timing."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This boy just barged\n"
	.string "into my room uninvited."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Take him away and\n"
	.string "see that he gets\n"
	.string "what he deserves."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=45

	def_text_script CompText87C7A50_unk45
	ts_mugshot_show mugshot=0x2C
	ts_msg_open
	.string "Actually,Mayor,I'd\n"
	.string "like to know if"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you know Mr.Pirate\n"
	.string "there."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=46

	def_text_script CompText87C7A50_unk46
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "A bodyguard doesn't\n"
	.string "need to know that\n"
	.string "sort of information."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=47

	def_text_script CompText87C7A50_unk47
	ts_mugshot_show mugshot=0x2C
	ts_msg_open
	.string "He is someone you\n"
	.string "know,then?"
	ts_key_wait any=0x0
	ts_clear_msg

	def_text_script CompText87C7A50_unk48
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "... You're acting\n"
	.string "funny..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're just a pit-\n"
	.string "bull whose job is\n"
	.string "to protect me."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=49

	def_text_script CompText87C7A50_unk49
	ts_mugshot_show mugshot=0x2C
	ts_msg_open
	.string "Actually,that's not\n"
	.string "quite true."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "My real job..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "is to find out about\n"
	.string "your connection to\n"
	.string "WWW!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Enter."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C7A50_unk50
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "They're...\n"
	.string "They're CopyBots!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=51

	def_text_script CompText87C7A50_unk51
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "What is the meaning\n"
	.string "of this!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=52

	def_text_script CompText87C7A50_unk52
	ts_mugshot_show mugshot=0x2C
	ts_msg_open
	.string "The meaning?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm just doing what\n"
	.string "I came here to do."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "To find evil people\n"
	.string "like you,arrest\n"
	.string "them,and"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "reveal them to the\n"
	.string "public no matter who\n"
	.string "they are!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C7A50_unk53
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Aaaaaaaaaah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ch-"
	ts_wait frames=0x1E
	.string "Ch-"
	ts_wait frames=0x1E
	.string "Ch-"
	ts_wait frames=0x1E
	.string "Chaud!!!"
	ts_sound_play_bgm track=0xE
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x32
	.string "Curses! An Official!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You tricked me!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=54

	def_text_script CompText87C7A50_unk54
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Mayor Cain,Captain\n"
	.string "Blackbeard--you two\n"
	.string "are under arrest."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Arrest them!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C7A50_unk55
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "Let me go!\n"
	.string "Let me go,ye yellow\n"
	.string "scrap of junk!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=56

	def_text_script CompText87C7A50_unk56
	ts_mugshot_show mugshot=0x32
	ts_msg_open
	.string "N-No! Not now..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The Cybeasts are\n"
	.string "mine!!"
	ts_key_wait any=0x0
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x7,
	]
	ts_end

	def_text_script CompText87C7A50_unk57
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I can't believe that\n"
	.string "weird guy was you\n"
	.string "all along,Chaud..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I know you had to\n"
	.string "hide who you were on\n"
	.string "this mission,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "couldn't you have at\n"
	.string "least told me!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=58

	def_text_script CompText87C7A50_unk58
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "To fool your enemy,\n"
	.string "first you must fool\n"
	.string "your friend..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Didn't I say that\n"
	.string "a long time ago?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=59

	def_text_script CompText87C7A50_unk59
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "You're just as\n"
	.string "straight-laced as\n"
	.string "ever!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=60

	def_text_script CompText87C7A50_unk60
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "And you're still\n"
	.string "too nice."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=61

	def_text_script CompText87C7A50_unk61
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hey!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=62

	def_text_script CompText87C7A50_unk62
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "After the Cybeast\n"
	.string "was sealed inside\n"
	.string "MegaMan,you were"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "being followed\n"
	.string "by many people on\n"
	.string "Mayor Cain's orders"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "so that he could get\n"
	.string "the Cybeast."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... You probably had\n"
	.string "no idea,I'd imagine."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If I were to have\n"
	.string "even tried to talk\n"
	.string "to you,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "my cover would've\n"
	.string "been blown."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=63

	def_text_script CompText87C7A50_unk63
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I-I see..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=64

	def_text_script CompText87C7A50_unk64
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Anyway,Lan,we don't\n"
	.string "have time to stand\n"
	.string "around and talk."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=65

	def_text_script CompText87C7A50_unk65
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah! I've got to\n"
	.string "go after MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=66

	def_text_script CompText87C7A50_unk66
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "I've already used\n"
	.string "that computer to"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "remove the barrier\n"
	.string "to the Underground."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There was security,\n"
	.string "but it wasn't\n"
	.string "anything special."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should be able\n"
	.string "to get to the\n"
	.string "Underground now."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=67

	def_text_script CompText87C7A50_unk67
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Thank you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm going to find\n"
	.string "and bring MegaMan\n"
	.string "home!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=68

	def_text_script CompText87C7A50_unk68
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Lan,be careful."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The situation right\n"
	.string "now is very complex."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Listen carefully."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Right now,there are\n"
	.string "2 groups after\n"
	.string "MegaMan."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The first is a group\n"
	.string "you know very\n"
	.string "well... WWW."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The second is a\n"
	.string "group that was being\n"
	.string "run by the Mayor."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Originally,the Mayor\n"
	.string "was working hand in\n"
	.string "hand with WWW,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "recently,they seem\n"
	.string "to have parted ways."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Mayor Cain seemed to\n"
	.string "have found his own\n"
	.string "power..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "For example,the\n"
	.string "Cybeast Worshippers\n"
	.string "of the Undernet..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=69

	def_text_script CompText87C7A50_unk69
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "They were working\n"
	.string "for the Mayor!?"
	ts_key_wait any=0x0
	ts_clear_msg

	def_text_script CompText87C7A50_unk70
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "They only knew him\n"
	.string "as the \"priest\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Hmph,those\n"
	.string "Worshippers'\n"
	.string "teachings..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They were all made\n"
	.string "up by the Mayor."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But those guys are\n"
	.string "not a big deal."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now that their\n"
	.string "\"priest\" has been\n"
	.string "arrested,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "they should\n"
	.string "naturally stop their\n"
	.string "operations."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The real problem is\n"
	.string "the other part of\n"
	.string "the Mayor's group."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=71

	def_text_script CompText87C7A50_unk71
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "The other part?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=72

	def_text_script CompText87C7A50_unk72
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "It seems the Mayor\n"
	.string "was able to steal a\n"
	.string "few people from WWW."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "From the looks of it\n"
	.string "earlier,I'd say\n"
	.string "Blackbeard was one."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Anyway,even with the\n"
	.string "Mayor gone,they\n"
	.string "probably won't stop."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They're almost\n"
	.string "definitely still\n"
	.string "after MegaMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=73

	def_text_script CompText87C7A50_unk73
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I gotcha.\n"
	.string "I'll be careful."
	ts_key_wait any=0x0
	ts_clear_msg

	def_text_script CompText87C7A50_unk74
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "I've still got a few\n"
	.string "things I have to ask\n"
	.string "the Mayor,so I can't"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "go with you to the\n"
	.string "Underground. Will\n"
	.string "you be OK alone?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=75

	def_text_script CompText87C7A50_unk75
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'll be OK.\n"
	.string "I'm not gonna do\n"
	.string "anything stupid!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=76

	def_text_script CompText87C7A50_unk76
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Hmm,alright."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If I can make it,I\n"
	.string "will send ProtoMan\n"
	.string "to you later."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Lan,stay alert."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=77

	def_text_script CompText87C7A50_unk77
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I will!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C7A50_unk78

	def_text_script CompText87C7A50_unk79

	def_text_script CompText87C7A50_unk80

	