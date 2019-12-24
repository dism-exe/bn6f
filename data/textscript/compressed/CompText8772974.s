	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8772974::
	.word 0xADF00

	text_archive_start

	def_text_script CompText8772974_unk0
	ts_msg_open
	ts_mugshot_show mugshot=0x14
	.string "Those Fish Sticks\n"
	.string "look good..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And I'm hungry...\n"
	.string "Guess I'll buy\n"
	.string "some!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "*Squawk! Squawk!*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "What?\n"
	.string "You want some too?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You just ate fish!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "*Squawk! Squawk!*\n"
	.string "*Squawk! Squawk!*\n"
	.string "*Squawk! Squawk!*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "OK! OK!\n"
	.string "I got it.\n"
	.string "Be quiet already!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Awww...my allowance!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk1
	ts_msg_open
	ts_mugshot_hide
	.string "*Squawk! Squawk!*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "I told you not\n"
	.string "to follow me!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk2
	ts_msg_open
	ts_mugshot_show mugshot=0x14
	.string "Staying with\n"
	.string "the penguin\n"
	.string "overnight..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Just thinking\n"
	.string "about it gives me\n"
	.string "the chills..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "*Squawk! Squawk!*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk3
	ts_msg_open
	ts_mugshot_hide
	.string "*Squawk! Squawk!*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "Hey,I told you to\n"
	.string "leave me alone!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...why won't this\n"
	.string "featherhead listen\n"
	.string "to me and buzz off!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Maybe it's because\n"
	.string "you fed him that\n"
	.string "pigeon feed?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I bet he was\n"
	.string "really hungry then!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "That food was that\n"
	.string "good,huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Pigeon feed..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "*Squawk! Squawk!*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk4

	def_text_script CompText8772974_unk5

	def_text_script CompText8772974_unk6

	def_text_script CompText8772974_unk7
	ts_check_flag [
		flag: 0x544,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x544
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "You're late!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I know,I know..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So how'd it go?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You know... Your\n"
	.string "night with the\n"
	.string "penguin?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "It was awful!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He'd just run into\n"
	.string "my room!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And when I put\n"
	.string "him in the bath tub\n"
	.string "he just splashed!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But the worst part\n"
	.string "was bedtime!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He cuddled up right\n"
	.string "next to me!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I couldn't sleep\n"
	.string "at all!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's why I'm so\n"
	.string "tired today!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Huh..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're like members\n"
	.string "of the same family\n"
	.string "now!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "Family!\n"
	.string "What are you talking\n"
	.string "about!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm human!\n"
	.string "That's a penguin!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Yeah..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But you're looking\n"
	.string "more like a penguin\n"
	.string "every second!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "What!? How!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "You're mouth..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "My mouth!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Lan!\n"
	.string "Don't make fun of\n"
	.string "him!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Hahaha!\n"
	.string "But it's fun!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright,let's\n"
	.string "go inside the\n"
	.string "Aquarium!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "My mouth..."
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0x6
	ts_end

	def_text_script CompText8772974_unk8
	ts_msg_open
	ts_mugshot_show mugshot=0x14
	.string "Mou...Mouth..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk9
	ts_msg_open
	.string "*Squawk! Squawk!*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk10
	ts_check_flag [
		flag: 0x546,
		jumpIfTrue: 0xF,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x546
	ts_end

	def_text_script CompText8772974_unk11
	ts_msg_open
	ts_mugshot_show mugshot=0x14
	.string "I'm hurrying home!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk12

	def_text_script CompText8772974_unk13

	def_text_script CompText8772974_unk14

	def_text_script CompText8772974_unk15
	ts_check_flag [
		flag: 0x1729,
		jumpIfTrue: 0x10,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan,wanna jump\n"
	.string "into the CopyBot?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x11, 0xFF, 0xFF
	ts_end

	def_text_script CompText8772974_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Return to PET?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x11, 0xFF, 0xFF
	ts_end

	def_text_script CompText8772974_unk17
	ts_flag_set flag=0x171A
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText8772974_unk18

	def_text_script CompText8772974_unk19

	def_text_script CompText8772974_unk20
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "No matter when you\n"
	.string "see it... It sure\n"
	.string "makes an impression!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk21
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "I'm gonna go buy a\n"
	.string "souvenir or two\n"
	.string "for my daughter!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk22
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "The waterways and\n"
	.string "fountains in this\n"
	.string "town are all linked!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The tanks at the\n"
	.string "Aquarium are\n"
	.string "probably linked too!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Interesting,isn't\n"
	.string "it? The heart of the\n"
	.string "town's in the water!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk23

	def_text_script CompText8772974_unk24

	def_text_script CompText8772974_unk25
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "Do you know that\n"
	.string "if you go inside"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "this whale's mouth,\n"
	.string "it's connected to\n"
	.string "the Aquarium!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Whoever made this\n"
	.string "building loved to\n"
	.string "play!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk26
	ts_mugshot_show mugshot=0x18
	ts_msg_open
	.string "How about some\n"
	.string "Fish Sticks!?!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Fresh from the sea\n"
	.string "for you from me!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk27
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "This waterway's\n"
	.string "water is crystal\n"
	.string "clear!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This town really\n"
	.string "does care about\n"
	.string "the water!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk28

	def_text_script CompText8772974_unk29

	def_text_script CompText8772974_unk30
	ts_mugshot_show mugshot=0x18
	ts_msg_open
	.string "Pir...Pir... That\n"
	.string "fountain is filled\n"
	.string "with piranhas!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk31
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Sharks! Real Sharks!\n"
	.string "What are they doing\n"
	.string "here!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk32
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "Grandpa! Hurry!\n"
	.string "Get out of the\n"
	.string "Aquarium!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x19
	.string "Wait a second...\n"
	.string "This is as fast\n"
	.string "as I can go!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk33
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "It's even worse\n"
	.string "inside the Aquarium!\n"
	.string "Don't get too close!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8772974_unk34

	def_text_script CompText8772974_unk35

	def_text_script CompText8772974_unk36

	def_text_script CompText8772974_unk37

	def_text_script CompText8772974_unk38

	def_text_script CompText8772974_unk39

	def_text_script CompText8772974_unk40

	def_text_script CompText8772974_unk41

	def_text_script CompText8772974_unk42

	def_text_script CompText8772974_unk43

	def_text_script CompText8772974_unk44

	def_text_script CompText8772974_unk45

	def_text_script CompText8772974_unk46

	def_text_script CompText8772974_unk47

	def_text_script CompText8772974_unk48

	def_text_script CompText8772974_unk49

	def_text_script CompText8772974_unk50

	def_text_script CompText8772974_unk51

	def_text_script CompText8772974_unk52

	def_text_script CompText8772974_unk53

	def_text_script CompText8772974_unk54

	def_text_script CompText8772974_unk55

	def_text_script CompText8772974_unk56

	def_text_script CompText8772974_unk57

	def_text_script CompText8772974_unk58

	def_text_script CompText8772974_unk59

	def_text_script CompText8772974_unk60

	def_text_script CompText8772974_unk61

	def_text_script CompText8772974_unk62

	def_text_script CompText8772974_unk63

	def_text_script CompText8772974_unk64

	def_text_script CompText8772974_unk65

	def_text_script CompText8772974_unk66

	def_text_script CompText8772974_unk67

	def_text_script CompText8772974_unk68

	def_text_script CompText8772974_unk69

	def_text_script CompText8772974_unk70

	def_text_script CompText8772974_unk71

	def_text_script CompText8772974_unk72

	def_text_script CompText8772974_unk73

	def_text_script CompText8772974_unk74

	def_text_script CompText8772974_unk75

	def_text_script CompText8772974_unk76

	def_text_script CompText8772974_unk77

	def_text_script CompText8772974_unk78

	def_text_script CompText8772974_unk79

	def_text_script CompText8772974_unk80

	def_text_script CompText8772974_unk81

	def_text_script CompText8772974_unk82

	def_text_script CompText8772974_unk83

	def_text_script CompText8772974_unk84

	def_text_script CompText8772974_unk85

	def_text_script CompText8772974_unk86

	def_text_script CompText8772974_unk87

	def_text_script CompText8772974_unk88

	def_text_script CompText8772974_unk89

	def_text_script CompText8772974_unk90

	def_text_script CompText8772974_unk91

	def_text_script CompText8772974_unk92

	def_text_script CompText8772974_unk93

	def_text_script CompText8772974_unk94

	def_text_script CompText8772974_unk95

	def_text_script CompText8772974_unk96

	def_text_script CompText8772974_unk97

	def_text_script CompText8772974_unk98

	def_text_script CompText8772974_unk99

	