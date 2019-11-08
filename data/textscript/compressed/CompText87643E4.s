	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87643E4::
	.word 0x144400

	text_archive_start

	def_text_script CompText87643E4_unk0
	ts_check_flag 0x64, 0x4, 0x1, 0xFF
	ts_mugshot_show 0x9
	ts_msg_open
	.string "Hey bro,\n"
	.string "have you heard of\n"
	.string "virus busting?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If viruses get in\n"
	.string "electronics they\n"
	.string "damage them,so"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Navis are sent in\n"
	.string "to delete viruses!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm pretty smart,\n"
	.string "huh?"
	ts_key_wait 0x0
	ts_flag_set 0x64, 0x4
	ts_end

	def_text_script CompText87643E4_unk1
	ts_mugshot_show 0x9
	ts_msg_open
	.string "Today,I'm gonna give\n"
	.string "virus busting my\n"
	.string "all!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk2
	ts_check_flag 0x65, 0x4, 0x3, 0xFF
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Whew...\n"
	.string "Job's done..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's all thanks to\n"
	.string "my PET and my\n"
	.string "Navi!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's used for work\n"
	.string "data,receiving mail,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "or for students to\n"
	.string "upload their\n"
	.string "textbook data."
	ts_key_wait 0x0
	ts_clear_msg
	.string "For such a small\n"
	.string "object,it has a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "large number of\n"
	.string "functions. Even\n"
	.string "bothersome tasks"
	ts_key_wait 0x0
	ts_clear_msg
	.string "can be handed off\n"
	.string "to your Navi.\n"
	.string "It's a great tool!"
	ts_key_wait 0x0
	ts_flag_set 0x65, 0x4
	ts_end

	def_text_script CompText87643E4_unk3
	ts_mugshot_show 0xF
	ts_msg_open
	.string "A PET is great,\n"
	.string "but it's only as\n"
	.string "great as it's user."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk4
	ts_check_flag 0x66, 0x4, 0x5, 0xFF
	ts_mugshot_show 0xE
	ts_msg_open
	.string "Let me tell ya\n"
	.string "something cool!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can hold the\n"
	.string "B Button to dash!\n"
	.string "Try it out!"
	ts_key_wait 0x0
	ts_flag_set 0x66, 0x4
	ts_end

	def_text_script CompText87643E4_unk5
	ts_mugshot_show 0xE
	ts_msg_open
	.string "You can hold the\n"
	.string "B Button to dash!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is the basic\n"
	.string "of the basic!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk6
	ts_check_flag 0x67, 0x4, 0x7, 0xFF
	ts_mugshot_show 0x19
	ts_msg_open
	.string "Sending the NetNavi\n"
	.string "in your PET into\n"
	.string "the Cyberworld is"
	ts_key_wait 0x0
	ts_clear_msg
	.string "called \"Jacking In\"!\n"
	.string "When you want to\n"
	.string "jack in,stand in"
	ts_key_wait 0x0
	ts_clear_msg
	.string "front of a device\n"
	.string "and press the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "R Button! Don't\n"
	.string "forget it!"
	ts_key_wait 0x0
	ts_flag_set 0x67, 0x4
	ts_end

	def_text_script CompText87643E4_unk7
	ts_mugshot_show 0x19
	ts_msg_open
	.string "You jacking in,\n"
	.string "whippersnapper?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Press the R Button\n"
	.string "in front of a device\n"
	.string "and you can jack in!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk8
	ts_check_flag 0x68, 0x4, 0x9, 0xFF
	ts_mugshot_show 0xB
	ts_msg_open
	.string "I've never seen you\n"
	.string "around here before!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh yeah... You just\n"
	.string "moved here!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Central Town is the\n"
	.string "heart of Cyber City!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We are going to have\n"
	.string "an Expo here later\n"
	.string "this year!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's the Expo Site\n"
	.string "over there..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,actually they\n"
	.string "are still making it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Next to that is my\n"
	.string "school...\n"
	.string "Cyber Academy!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Are you going to\n"
	.string "transfer there?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hope you get used\n"
	.string "to things here fast!"
	ts_key_wait 0x0
	ts_flag_set 0x68, 0x4
	ts_end

	def_text_script CompText87643E4_unk9
	ts_mugshot_show 0xB
	ts_msg_open
	.string "I hope you get used\n"
	.string "to things quick!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk10

	def_text_script CompText87643E4_unk11

	def_text_script CompText87643E4_unk12

	def_text_script CompText87643E4_unk13

	def_text_script CompText87643E4_unk14

	def_text_script CompText87643E4_unk15
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Alright!!\n"
	.string "Today I'm gonna\n"
	.string "give it my all!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk16
	ts_mugshot_show 0xE
	ts_msg_open
	.string "This is a chip shop;"
	ts_key_wait 0x0
	ts_clear_msg
	.string "however,it's closed\n"
	.string "for renovations now."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hope they open\n"
	.string "again soon..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk17
	ts_check_chapter 0x5, 0x5, 0x17, 0xFF
	ts_mugshot_show 0x19
	ts_msg_open
	.string "Hey whippersnapper!\n"
	.string "Hurry up or you're\n"
	.string "gonna be late!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk18

	def_text_script CompText87643E4_unk19

	def_text_script CompText87643E4_unk20
	ts_mugshot_show 0x9
	ts_msg_open
	.string "I heard one of the\n"
	.string "6th graders solved\n"
	.string "that thing that"
	ts_key_wait 0x0
	ts_clear_msg
	.string "happened today!\n"
	.string "The upperclassmen\n"
	.string "here are amazing!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk21
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Whew! I worked\n"
	.string "really hard today!\n"
	.string "Time for a soda!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk22
	ts_mugshot_show 0xE
	ts_msg_open
	.string "I was just on the\n"
	.string "Net,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and it seems like\n"
	.string "someone hid the key"
	ts_key_wait 0x0
	ts_clear_msg
	.string "for the security\n"
	.string "door in Central"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Area2! Now I can't\n"
	.string "get to CentralArea3!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "WHAT A PAIN!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk23
	ts_mugshot_show 0x19
	ts_msg_open
	.string "There was quite a\n"
	.string "racket at school!!\n"
	.string "Was it a festival?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk24
	ts_mugshot_show 0xB
	ts_msg_open
	.string "I want to buy a\n"
	.string "strong chip in case"
	ts_key_wait 0x0
	ts_clear_msg
	.string "something bad\n"
	.string "happens again,but"
	ts_key_wait 0x0
	ts_clear_msg
	.string "AsterLand is closed\n"
	.string "for renovations..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I gotta tell Tab to\n"
	.string "hurry up and open\n"
	.string "his store..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk25

	def_text_script CompText87643E4_unk26

	def_text_script CompText87643E4_unk27

	def_text_script CompText87643E4_unk28

	def_text_script CompText87643E4_unk29

	def_text_script CompText87643E4_unk30

	def_text_script CompText87643E4_unk31

	def_text_script CompText87643E4_unk32

	def_text_script CompText87643E4_unk33

	def_text_script CompText87643E4_unk34

	def_text_script CompText87643E4_unk35

	def_text_script CompText87643E4_unk36

	def_text_script CompText87643E4_unk37

	def_text_script CompText87643E4_unk38

	def_text_script CompText87643E4_unk39

	def_text_script CompText87643E4_unk40

	def_text_script CompText87643E4_unk41

	def_text_script CompText87643E4_unk42

	def_text_script CompText87643E4_unk43

	def_text_script CompText87643E4_unk44

	def_text_script CompText87643E4_unk45

	def_text_script CompText87643E4_unk46

	def_text_script CompText87643E4_unk47

	def_text_script CompText87643E4_unk48

	def_text_script CompText87643E4_unk49

	def_text_script CompText87643E4_unk50
	ts_check_flag 0x4, 0x5, 0x38, 0xFF
	ts_check_flag 0x3F, 0x5, 0x35, 0xFF
	ts_check_flag 0x3E, 0x5, 0x33, 0xFF
	ts_flag_set 0x3E, 0x5
	ts_msg_open
	ts_mugshot_show 0x19
	.string "Aggggghhhh...\n"
	.string "This is no good..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "What's the matter\n"
	.string "mister?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x19
	.string "My grandkid told\n"
	.string "me to bring some\n"
	.string "fish that I caught"
	ts_key_wait 0x0
	ts_clear_msg
	.string "here,but the\n"
	.string "IceBox I use for the\n"
	.string "fish is broken."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can't open the\n"
	.string "lid!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Fish huh..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This has to be the\n"
	.string "man that I heard\n"
	.string "about... Alright!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mister! Could you\n"
	.string "please show me this\n"
	.string "IceBox?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string "MegaMan,\n"
	.string "This has gotta be..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Yep... It's probably\n"
	.string "a virus' fault!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan!\n"
	.string "If we delete the\n"
	.string "virus,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that IceBox will go\n"
	.string "back to normal!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ready to battle?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " OK!  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Wait!"
	ts_select 0x6, 0x80, 0xFF, 0x39, 0xFF
	ts_mugshot_show 0x0
	.string "Battle routine,set!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Execute!!"
	ts_key_wait 0x0
	ts_flag_set 0x57, 0x5
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText87643E4_unk51
	ts_msg_open
	ts_mugshot_show 0x19
	.string "Shucks!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Lan!\n"
	.string "If we delete the\n"
	.string "virus,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that IceBox will go\n"
	.string "back to normal!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ready to battle?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " OK!  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Wait!"
	ts_select 0x6, 0x80, 0xFF, 0x39, 0xFF
	ts_mugshot_show 0x0
	.string "Battle routine,set!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Execute!!"
	ts_key_wait 0x0
	ts_flag_set 0x57, 0x5
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText87643E4_unk52
	ts_msg_open
	ts_mugshot_show 0x19
	.string "Ahhh,thank you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks to you,\n"
	.string "the IceBox is back\n"
	.string "to normal!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But...you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string "I see,I see..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Are you the youngin'\n"
	.string "looking for fish?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've heard of you."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Since you helped\n"
	.string "with the IceBox,I'll\n"
	.string "give you a fish!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x7, 0x1
	ts_player_animate_scene 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x0, 0x70
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Thanks,mister!!"
	ts_key_wait 0x0
	ts_flag_set 0x3F, 0x5
	ts_end

	def_text_script CompText87643E4_unk53
	ts_msg_open
	ts_mugshot_show 0x19
	.string "So what are you\n"
	.string "going to use the\n"
	.string "fish for?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk54
	ts_msg_open
	ts_mugshot_show 0x0
	.string "This is harder than\n"
	.string "I thought!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "MegaMan,let's get\n"
	.string "ready and try\n"
	.string "again!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk55
	ts_msg_open
	ts_mugshot_show 0x14
	.string "Too much has\n"
	.string "happened today...\n"
	.string "I'm tired..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk56
	ts_msg_open
	ts_mugshot_show 0x19
	.string "Was the fish\n"
	.string "useful?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk57
	ts_msg_open
	ts_mugshot_show 0x0
	.string "MegaMan!\n"
	.string "Let's get ready and\n"
	.string "fight later!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk58

	def_text_script CompText87643E4_unk59

	def_text_script CompText87643E4_unk60
	ts_mugshot_show 0xC
	ts_msg_open
	.string "Man! That kid is\n"
	.string "late! He promised to\n"
	.string "go back with me..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I guess he stood me\n"
	.string "up..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk61
	ts_mugshot_show 0xF
	ts_msg_open
	.string "The chip shop is\n"
	.string "closed,huh?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wanted to buy\n"
	.string "a chip as a present\n"
	.string "for my son..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk62
	ts_mugshot_show 0xE
	ts_msg_open
	.string "This is \n"
	.string "Central Town's\n"
	.string "Residential Area..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Take a good look...\n"
	.string "There are lots of\n"
	.string "high-class houses!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So there are lots\n"
	.string "of people who'd\n"
	.string "love to live here!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk63

	def_text_script CompText87643E4_unk64

	def_text_script CompText87643E4_unk65
	ts_check_flag 0x38, 0x5, 0x44, 0xFF
	ts_mugshot_show 0xE
	ts_msg_open
	.string "I heard some strange\n"
	.string "cry while I was at\n"
	.string "home yesterday!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Sounded like...\n"
	.string "\"SQUAWK! SQUAAWWKK!\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder what that\n"
	.string "was?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk66
	ts_check_flag 0x38, 0x5, 0x45, 0xFF
	ts_mugshot_show 0x1A
	ts_msg_open
	.string "Have you ever been\n"
	.string "to Seaside Town?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The water there is\n"
	.string "incredibly tasty!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I drink it everyday!\n"
	.string "That is why I am so\n"
	.string "active!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk67
	ts_check_flag 0x38, 0x5, 0x46, 0xFF
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Are you using the\n"
	.string "LevBus?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Today's a holiday,so\n"
	.string "lots of people are\n"
	.string "riding the LevBus!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk68
	ts_mugshot_show 0xE
	ts_msg_open
	.string "That strange cry I\n"
	.string "heard last night\n"
	.string "was an escaped"
	ts_key_wait 0x0
	ts_clear_msg
	.string "penguin from the\n"
	.string "Aquarium! I hope he\n"
	.string "got back there OK!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk69
	ts_mugshot_show 0x1A
	ts_msg_open
	.string "Hey! You went\n"
	.string "to Seaside Town,huh?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Did you like the\n"
	.string "water there? I drink\n"
	.string "it everyday!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87643E4_unk70
	ts_mugshot_show 0xF
	ts_msg_open
	.string "How was it?\n"
	.string "Did you enjoy the\n"
	.string "weekend?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You have to spread\n"
	.string "your wings and enjoy\n"
	.string "the weekends!!"
	ts_key_wait 0x0
	ts_end

	