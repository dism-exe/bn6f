	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878C5C8::
	.word 0xE7800

	text_archive_start

	def_text_script CompText878C5C8_unk0
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "The toll is 50Z..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0x7,
	]
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space [
		count: 0x1,
	]
	.string " Pay  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space [
		count: 0x1,
	]
	.string " Don't pay"
	ts_select 0x6, 0x80, 0x1, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	.string "Hmmm..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk1
	ts_check_take_zenny [
		amount: 0x32,
		jumpIfAll: 0xFF,
		jumpIfNone: 0x2,
		jumpIfSome: 0x2,
	]
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "You may proceed..."
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1640,
	]
	ts_end

	def_text_script CompText878C5C8_unk2
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Unfortunately,\n"
	.string "you don't have\n"
	.string "enough money..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk3

	def_text_script CompText878C5C8_unk4

	def_text_script CompText878C5C8_unk5

	def_text_script CompText878C5C8_unk6

	def_text_script CompText878C5C8_unk7

	def_text_script CompText878C5C8_unk8

	def_text_script CompText878C5C8_unk9

	def_text_script CompText878C5C8_unk10
	ts_check_flag [
		flag: 0x11FD,
		jumpIfTrue: 0xD,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x11FC,
		jumpIfTrue: 0xC,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x11FB,
		jumpIfTrue: 0xB,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x11FB,
	]
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "Ahhh... How would\n"
	.string "you like some great\n"
	.string "diet goods?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Don't you want to\n"
	.string "look your best by\n"
	.string "using \"Lean Mean\"?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...Huh?\n"
	.string "...No effect?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...Hey kid!\n"
	.string "Quit making up\n"
	.string "lies like that!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Where's your proof?\n"
	.string "C'mon... Let's see\n"
	.string "it!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I haven't done a\n"
	.string "single thing outside\n"
	.string "the law!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This is just an\n"
	.string "elaborate shakedown!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So if you keep it\n"
	.string "up,I'm going to sue\n"
	.string "your pants off!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you don't like\n"
	.string "that idea,then get\n"
	.string "out of here now!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Lan,he's gonna\n"
	.string "sue us..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "He can if he wants,\n"
	.string "but we've got the\n"
	.string "power of the law!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He's the one up to\n"
	.string "something!\n"
	.string "Not us!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We should find\n"
	.string "someone who knows\n"
	.string "more about fraud..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk11
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "...Hey kid!\n"
	.string "Quit making up\n"
	.string "lies like that!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Where's your proof?\n"
	.string "C'mon... Let's see\n"
	.string "it!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This is just an\n"
	.string "elaborate shakedown!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So if you keep it\n"
	.string "up,I'm going to sue\n"
	.string "your pants off!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you don't like\n"
	.string "that idea,then get\n"
	.string "out of here now!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Lan,he's gonna\n"
	.string "sue us..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "He can if he wants,\n"
	.string "but we've got the\n"
	.string "power of the law!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He's the one up to\n"
	.string "something!\n"
	.string "Not us!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We should find\n"
	.string "someone who knows\n"
	.string "more about fraud..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk12
	ts_flag_set [
		flag: 0x11FD,
	]
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "...What is with\n"
	.string "these lawyers..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "These guys are an\n"
	.string "absolute pain!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Forgive me already!\n"
	.string "I've done wrong..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If it's just money,\n"
	.string "I'll give it back\n"
	.string "to all my customers."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll go to the bank\n"
	.string "and send it all\n"
	.string "back..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Just get these\n"
	.string "lawyers off my back!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They're annoying me\n"
	.string "to death..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk13
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "Forgive me already!\n"
	.string "I've done wrong..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If it's just money,\n"
	.string "I'll give it back\n"
	.string "to all my customers."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Just get these\n"
	.string "lawyers off my back!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They're annoying me\n"
	.string "to death..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk14
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	.string "Nowadays,they have\n"
	.string "something called\n"
	.string "chilling out..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But since there are\n"
	.string "creeps like you,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "people's suffering\n"
	.string "has increased!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_control_lock
	.string "Nag!"
	ts_wait [
		frames: 0x28,
	]
	.string " Nag!"
	ts_wait [
		frames: 0x28,
	]
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_control_lock
	.string "Nag!"
	ts_wait [
		frames: 0x28,
	]
	.string " Nag!"
	ts_wait [
		frames: 0x28,
	]
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk15
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Did you ever think\n"
	.string "of the feelings of\n"
	.string "your victims!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_control_lock
	.string "Nag!"
	ts_wait [
		frames: 0x28,
	]
	.string " Nag!"
	ts_wait [
		frames: 0x28,
	]
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_control_lock
	.string "Nag!"
	ts_wait [
		frames: 0x28,
	]
	.string " Nag!"
	ts_wait [
		frames: 0x28,
	]
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk16
	ts_mugshot_show [
		mugshot: 0x40,
	]
	ts_msg_open
	.string "We've got rules\n"
	.string "in this world!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You're goin' down\n"
	.string "for fraud buddy!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_control_lock
	.string "Nag!"
	ts_wait [
		frames: 0x28,
	]
	.string " Nag!"
	ts_wait [
		frames: 0x28,
	]
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_control_lock
	.string "Nag!"
	ts_wait [
		frames: 0x28,
	]
	.string " Nag!"
	ts_wait [
		frames: 0x28,
	]
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk17

	def_text_script CompText878C5C8_unk18

	def_text_script CompText878C5C8_unk19

	def_text_script CompText878C5C8_unk20
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	.string "How do I look?\n"
	.string "Do I seem like a\n"
	.string "suspicious Navi?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Huh? Not at all!?\n"
	.string "No way! Take another\n"
	.string "look!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk21
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "You have to start\n"
	.string "with one step..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...I'm nervous..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk22

	def_text_script CompText878C5C8_unk23

	def_text_script CompText878C5C8_unk24

	def_text_script CompText878C5C8_unk25
	ts_mugshot_show [
		mugshot: 0x4D,
	]
	ts_msg_open
	.string "Hey! Where you goin?\n"
	.string "You got nothin' to\n"
	.string "do over there!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk26

	def_text_script CompText878C5C8_unk27

	def_text_script CompText878C5C8_unk28

	def_text_script CompText878C5C8_unk29

	def_text_script CompText878C5C8_unk30
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "WELCOME TO SEASIDE\n"
	.string "AREA2!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "THIS AREA WAS MADE\n"
	.string "TO RESEMBLE THE\n"
	.string "BEACH!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...HOW IS IT?\n"
	.string "SMELLS LIKE THE\n"
	.string "BEACH,DOESN'T IT?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk31
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	.string "Darn!\n"
	.string "Flooded again!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's hard to keep\n"
	.string "going in this area!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Don't you think\n"
	.string "so? Don'tcha?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk32
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x21,
		jumpIfElecMan: 0x22,
		jumpIfSlashMan: 0x23,
		jumpIfEraseMan: 0x24,
		jumpIfChargeMan: 0x25,
		jumpIfSpoutMan: 0x26,
		jumpIfTomahawkMan: 0x27,
		jumpIfTenguMan: 0x28,
		jumpIfGroundMan: 0x29,
		jumpIfDustMan: 0x2A,
		jumpIfProtoMan: 0xFF,
	]
	ts_end

	def_text_script CompText878C5C8_unk33
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "You're a hottie!\n"
	.string "I like hotties!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll get skinnier\n"
	.string "just by standing"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "next to your\n"
	.string "hotness!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk34
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "Woooo!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hey! You!\n"
	.string "You're burning up!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Don't turn down\n"
	.string "that voltage,baby!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk35
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "Hey,SlashMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I know you!\n"
	.string "You're Ms.Fahran's\n"
	.string "Navi,right?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You're good at\n"
	.string "cooking too,huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I like guys who\n"
	.string "can cook..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk36
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "...Wh,What?..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Don't look at me!\n"
	.string "I'll scream!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk37
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "Ahhh,I'm tired of\n"
	.string "walking. Can I have\n"
	.string "a piggyback ride."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Haha! Just kidding!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk38
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "Awwwwwwww!!\n"
	.string "It's sooooo cute!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Can I take it\n"
	.string "home with me!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...No?\n"
	.string "That's too bad!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk39
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "If I went around\n"
	.string "carrying a tomahawk,\n"
	.string "I'd be arrested!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk40
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "Wow! What a\n"
	.string "beautiful nose!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...Sorry,am I\n"
	.string "embarrassing you?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk41
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "Is there\n"
	.string "construction here\n"
	.string "too?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...You don't know?\n"
	.string "Aren't you a\n"
	.string "construction Navi?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk42
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "I may have a scary\n"
	.string "face,but someone\n"
	.string "somewhere likes it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878C5C8_unk43

	def_text_script CompText878C5C8_unk44

	def_text_script CompText878C5C8_unk45

	def_text_script CompText878C5C8_unk46

	def_text_script CompText878C5C8_unk47

	def_text_script CompText878C5C8_unk48

	def_text_script CompText878C5C8_unk49

	def_text_script CompText878C5C8_unk50

	def_text_script CompText878C5C8_unk51

	def_text_script CompText878C5C8_unk52

	def_text_script CompText878C5C8_unk53

	def_text_script CompText878C5C8_unk54

	def_text_script CompText878C5C8_unk55

	def_text_script CompText878C5C8_unk56

	def_text_script CompText878C5C8_unk57

	def_text_script CompText878C5C8_unk58

	def_text_script CompText878C5C8_unk59

	def_text_script CompText878C5C8_unk60

	def_text_script CompText878C5C8_unk61

	def_text_script CompText878C5C8_unk62

	def_text_script CompText878C5C8_unk63

	def_text_script CompText878C5C8_unk64

	def_text_script CompText878C5C8_unk65

	def_text_script CompText878C5C8_unk66

	def_text_script CompText878C5C8_unk67

	def_text_script CompText878C5C8_unk68

	def_text_script CompText878C5C8_unk69

	def_text_script CompText878C5C8_unk70

	def_text_script CompText878C5C8_unk71

	def_text_script CompText878C5C8_unk72

	def_text_script CompText878C5C8_unk73

	def_text_script CompText878C5C8_unk74

	def_text_script CompText878C5C8_unk75

	def_text_script CompText878C5C8_unk76

	def_text_script CompText878C5C8_unk77

	def_text_script CompText878C5C8_unk78

	def_text_script CompText878C5C8_unk79

	def_text_script CompText878C5C8_unk80

	def_text_script CompText878C5C8_unk81

	def_text_script CompText878C5C8_unk82

	def_text_script CompText878C5C8_unk83

	def_text_script CompText878C5C8_unk84

	def_text_script CompText878C5C8_unk85

	def_text_script CompText878C5C8_unk86

	def_text_script CompText878C5C8_unk87

	def_text_script CompText878C5C8_unk88

	def_text_script CompText878C5C8_unk89

	def_text_script CompText878C5C8_unk90

	def_text_script CompText878C5C8_unk91

	def_text_script CompText878C5C8_unk92

	def_text_script CompText878C5C8_unk93

	def_text_script CompText878C5C8_unk94

	def_text_script CompText878C5C8_unk95

	def_text_script CompText878C5C8_unk96

	def_text_script CompText878C5C8_unk97

	def_text_script CompText878C5C8_unk98

	def_text_script CompText878C5C8_unk99

	def_text_script CompText878C5C8_unk100

	def_text_script CompText878C5C8_unk101

	def_text_script CompText878C5C8_unk102

	def_text_script CompText878C5C8_unk103

	def_text_script CompText878C5C8_unk104

	def_text_script CompText878C5C8_unk105

	def_text_script CompText878C5C8_unk106

	def_text_script CompText878C5C8_unk107

	def_text_script CompText878C5C8_unk108

	def_text_script CompText878C5C8_unk109

	def_text_script CompText878C5C8_unk110

	def_text_script CompText878C5C8_unk111

	def_text_script CompText878C5C8_unk112

	def_text_script CompText878C5C8_unk113

	def_text_script CompText878C5C8_unk114

	def_text_script CompText878C5C8_unk115

	def_text_script CompText878C5C8_unk116

	def_text_script CompText878C5C8_unk117

	def_text_script CompText878C5C8_unk118

	def_text_script CompText878C5C8_unk119

	def_text_script CompText878C5C8_unk120

	def_text_script CompText878C5C8_unk121

	def_text_script CompText878C5C8_unk122

	def_text_script CompText878C5C8_unk123

	def_text_script CompText878C5C8_unk124

	def_text_script CompText878C5C8_unk125

	def_text_script CompText878C5C8_unk126

	def_text_script CompText878C5C8_unk127

	def_text_script CompText878C5C8_unk128

	def_text_script CompText878C5C8_unk129

	