	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87825CC::
	.word 0x101700

	text_archive_start

	def_text_script CompText87825CC_unk0
	ts_check_chapter 0x5, 0x5, 0xA, 0xFF
	ts_check_flag 0x69, 0x4, 0x1, 0xFF
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Excuse me. Do you\n"
	.string "have some of that\n"
	.string "sparkling data that"
	ts_key_wait 0x0
	ts_clear_msg
	.string "often falls off the\n"
	.string "side of the road?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "They call it mystery\n"
	.string "data."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Chips or Zennys are\n"
	.string "often found inside."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The contents of\n"
	.string "green mystery data\n"
	.string "are different,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and sometimes might\n"
	.string "even contain a\n"
	.string "virus!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The mystery data\n"
	.string "around here should\n"
	.string "be OK though."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh yeah! Purple\n"
	.string "mystery data is\n"
	.string "locked!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "To open it,you need\n"
	.string "the Unlocker\n"
	.string "SubChip!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So did you learn\n"
	.string "anything today?"
	ts_key_wait 0x0
	ts_flag_set 0x69, 0x4
	ts_end

	def_text_script CompText87825CC_unk1
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "There's no reason to\n"
	.string "avoid mystery data,\n"
	.string "so pick them up!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk2
	ts_check_chapter 0x5, 0x5, 0xB, 0xFF
	ts_check_flag 0x6A, 0x4, 0x3, 0xFF
	ts_mugshot_show 0x42
	ts_msg_open
	.string "I've never seen you\n"
	.string "before..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is a NetCafe.\n"
	.string "It's a good place\n"
	.string "to gather info."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So you should make\n"
	.string "friends with lots\n"
	.string "of Navis here!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Thanks... So I can\n"
	.string "learn the Net basics\n"
	.string "here,huh!?"
	ts_key_wait 0x0
	ts_flag_set 0x6A, 0x4
	ts_end

	def_text_script CompText87825CC_unk3
	ts_mugshot_show 0x42
	ts_msg_open
	.string "There are lots of\n"
	.string "cafes like this on\n"
	.string "the Cyber City Net!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk4
	ts_check_chapter 0x5, 0x5, 0xC, 0xFF
	ts_check_flag 0x6B, 0x4, 0x5, 0xFF
	ts_mugshot_show 0x45
	ts_msg_open
	.string "Sometimes there are\n"
	.string "huge square cubes on\n"
	.string "the roadside,right?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "They are called\n"
	.string "Security Cubes."
	ts_key_wait 0x0
	ts_clear_msg
	.string "They're there to\n"
	.string "block access to\n"
	.string "private homepages."
	ts_key_wait 0x0
	ts_clear_msg
	.string "To unlock a Cube\n"
	.string "you need the P-Code"
	ts_key_wait 0x0
	ts_clear_msg
	.string "(Passcode) from the\n"
	.string "webmaster."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Some Cubes can also\n"
	.string "be opened with\n"
	.string "money."
	ts_key_wait 0x0
	ts_flag_set 0x6B, 0x4
	ts_end

	def_text_script CompText87825CC_unk5
	ts_mugshot_show 0x45
	ts_msg_open
	.string "Security Cubes\n"
	.string "blocking the road\n"
	.string "can be annoying,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but you have to take\n"
	.string "security seriously."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk6
	ts_check_flag 0x6C, 0x4, 0x7, 0xFF
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WELCOME TO CENTRAL\n"
	.string "AREA1!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THERE ARE 3\n"
	.string "CENTRALAREAS!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE LAYOUT AROUND\n"
	.string "HERE'S SIMPLE,SO YOU\n"
	.string "SHOULDN'T GET LOST."
	ts_key_wait 0x0
	ts_flag_set 0x6C, 0x4
	ts_end

	def_text_script CompText87825CC_unk7
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THE LAYOUT AROUND\n"
	.string "HERE'S SIMPLE,SO YOU\n"
	.string "SHOULDN'T GET LOST."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk8

	def_text_script CompText87825CC_unk9

	def_text_script CompText87825CC_unk10
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "It sounds like there\n"
	.string "was an incident at\n"
	.string "Cyber Academy."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There have been\n"
	.string "incidents against\n"
	.string "Navis without any"
	ts_key_wait 0x0
	ts_clear_msg
	.string "discrimination.\n"
	.string "These are dangerous\n"
	.string "times."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk11
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Welcome to the Net\n"
	.string "Cafe. Take your time\n"
	.string "and look around."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk12
	ts_mugshot_show 0x45
	ts_msg_open
	.string "The NetPolice seem\n"
	.string "to have stepped up\n"
	.string "their patrols."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder if\n"
	.string "something happened?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk13

	def_text_script CompText87825CC_unk14

	def_text_script CompText87825CC_unk15

	def_text_script CompText87825CC_unk16

	def_text_script CompText87825CC_unk17

	def_text_script CompText87825CC_unk18

	def_text_script CompText87825CC_unk19

	def_text_script CompText87825CC_unk20
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THE NET SURE DOES\n"
	.string "SEEM DANGEROUS\n"
	.string "LATELY!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "STRANGE NAVIS HAVE\n"
	.string "BEEN ATTACKING..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "YOU NEED TO BE\n"
	.string "CAREFUL WHEN USING\n"
	.string "THE INTERNET."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk21
	ts_mugshot_show 0x40
	ts_msg_open
	.string "There have been\n"
	.string "a lot of NetQuakes\n"
	.string "around here lately."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Speaking of...there\n"
	.string "have also been\n"
	.string "attacks on Navis."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hope there isn't\n"
	.string "something bad going\n"
	.string "on..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk22
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "The taste of the\n"
	.string "coffee at the Net\n"
	.string "Cafe is great."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Besides,you can hear\n"
	.string "lots of great info\n"
	.string "there too!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk23

	def_text_script CompText87825CC_unk24

	def_text_script CompText87825CC_unk25
	ts_mugshot_show 0x40
	ts_msg_open
	.string "Seems there was a\n"
	.string "quake on the Net\n"
	.string "yesterday."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hear it happened\n"
	.string "in CentralArea3..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "These quakes have\n"
	.string "been frequent,so\n"
	.string "be careful,OK?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk26
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Hey! I'm here!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go over\n"
	.string "there now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk27
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "Get over here\n"
	.string "quick!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You're late!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ARRRGGGHHHH!!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk28

	def_text_script CompText87825CC_unk29

	def_text_script CompText87825CC_unk30

	def_text_script CompText87825CC_unk31

	def_text_script CompText87825CC_unk32

	def_text_script CompText87825CC_unk33

	def_text_script CompText87825CC_unk34

	def_text_script CompText87825CC_unk35

	def_text_script CompText87825CC_unk36

	def_text_script CompText87825CC_unk37

	def_text_script CompText87825CC_unk38

	def_text_script CompText87825CC_unk39

	def_text_script CompText87825CC_unk40

	def_text_script CompText87825CC_unk41

	def_text_script CompText87825CC_unk42

	def_text_script CompText87825CC_unk43

	def_text_script CompText87825CC_unk44

	def_text_script CompText87825CC_unk45

	def_text_script CompText87825CC_unk46

	def_text_script CompText87825CC_unk47

	def_text_script CompText87825CC_unk48

	def_text_script CompText87825CC_unk49

	def_text_script CompText87825CC_unk50
	ts_check_flag 0x40, 0x5, 0x33, 0xFF
	ts_flag_set 0x40, 0x5
	ts_msg_open
	ts_mugshot_show 0x41
	.string "Ahhh...\n"
	.string "What do I do?\n"
	.string "What do I do?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Where did I lose\n"
	.string "it,I wonder?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh no...\n"
	.string "Work will be upset\n"
	.string "with me now!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "What's the matter?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "Huh?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's nothing...\n"
	.string "It's nothing at all!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm fine..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ahhh..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "He doesn't seem\n"
	.string "fine to me..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "He says he is fine,\n"
	.string "so let's just hurry\n"
	.string "up and get moving."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk51
	ts_msg_open
	ts_mugshot_show 0x41
	.string "Where did I lose\n"
	.string "it,I wonder?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ahhh..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk52
	ts_check_flag 0x42, 0x5, 0x35, 0xFF
	ts_flag_set 0x42, 0x5
	ts_msg_open
	ts_mugshot_show 0x41
	.string "I'm in trouble..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can't go to\n"
	.string "work without it..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Umm... Excuse me."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You wouldn't be the\n"
	.string "Repair Navi would\n"
	.string "you?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "...!!\n"
	.string "How did you know!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "I thought so!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "They are waiting for\n"
	.string "you to fix the leak\n"
	.string "in CentralArea3..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "Ahhh!\n"
	.string "I'm sorry I'm late!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The truth is I\n"
	.string "can't seem to find\n"
	.string "my \""
	ts_print_item 0x8, 0x0
	.string "\",and I"
	ts_key_wait 0x0
	ts_clear_msg
	.string "really need it for\n"
	.string "work..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Without it,I can't\n"
	.string "fix the leak!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Do you remember\n"
	.string "where you dropped\n"
	.string "the \""
	ts_print_item 0x8, 0x0
	.string "\"?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "Well,I've been so\n"
	.string "busy these days..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've been to lots\n"
	.string "of places to make\n"
	.string "repairs."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I can't narrow\n"
	.string "it down to one\n"
	.string "place..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Well,it would be\n"
	.string "very hard for you\n"
	.string "to find it alone,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so I'll help you\n"
	.string "go around to the\n"
	.string "places you visited."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "Really!?\n"
	.string "That would really\n"
	.string "help out a lot!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Let's split up and\n"
	.string "look for the\n"
	.string "\""
	ts_print_item 0x8, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Where should I look?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "Hmmm..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Today,I went to\n"
	.string "several homes in\n"
	.string "Central Town."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I may have dropped\n"
	.string "it in a Comp at one\n"
	.string "of those homes."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do you mind checking\n"
	.string "that out for me?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I will check out the\n"
	.string "other places..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Houses in Central\n"
	.string "Town! Got it!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk53
	ts_msg_open
	ts_mugshot_show 0x41
	.string "I lost the\n"
	.string "\""
	ts_print_item 0x8, 0x0
	.string "\" I need for\n"
	.string "work..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do you mind checking\n"
	.string "out Central Town?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm sorry to\n"
	.string "inconvenience you."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87825CC_unk54

	def_text_script CompText87825CC_unk55

	def_text_script CompText87825CC_unk56

	def_text_script CompText87825CC_unk57

	def_text_script CompText87825CC_unk58

	def_text_script CompText87825CC_unk59

	def_text_script CompText87825CC_unk60

	def_text_script CompText87825CC_unk61

	def_text_script CompText87825CC_unk62

	def_text_script CompText87825CC_unk63

	def_text_script CompText87825CC_unk64

	def_text_script CompText87825CC_unk65

	def_text_script CompText87825CC_unk66

	def_text_script CompText87825CC_unk67

	def_text_script CompText87825CC_unk68

	def_text_script CompText87825CC_unk69

	def_text_script CompText87825CC_unk70

	def_text_script CompText87825CC_unk71

	def_text_script CompText87825CC_unk72

	def_text_script CompText87825CC_unk73

	def_text_script CompText87825CC_unk74

	def_text_script CompText87825CC_unk75

	def_text_script CompText87825CC_unk76

	def_text_script CompText87825CC_unk77

	def_text_script CompText87825CC_unk78

	def_text_script CompText87825CC_unk79

	def_text_script CompText87825CC_unk80

	def_text_script CompText87825CC_unk81

	def_text_script CompText87825CC_unk82

	def_text_script CompText87825CC_unk83

	def_text_script CompText87825CC_unk84

	def_text_script CompText87825CC_unk85

	def_text_script CompText87825CC_unk86

	def_text_script CompText87825CC_unk87

	def_text_script CompText87825CC_unk88

	def_text_script CompText87825CC_unk89

	def_text_script CompText87825CC_unk90

	def_text_script CompText87825CC_unk91

	def_text_script CompText87825CC_unk92

	def_text_script CompText87825CC_unk93

	def_text_script CompText87825CC_unk94

	def_text_script CompText87825CC_unk95

	def_text_script CompText87825CC_unk96

	def_text_script CompText87825CC_unk97

	def_text_script CompText87825CC_unk98

	def_text_script CompText87825CC_unk99

	