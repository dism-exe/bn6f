	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876A5B4::
	.word 0x126000

	text_archive_start

	def_text_script CompText876A5B4_unk0
	ts_check_flag [
		flag: 0x472,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "...*sigh!*"
	ts_key_wait any=0x0
	ts_flag_set flag=0x472
	ts_end

	def_text_script CompText876A5B4_unk1
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Hmmphh!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk2
	ts_check_flag [
		flag: 0x473,
		jumpIfTrue: 0x3,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Nice to meet you!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x473
	ts_end

	def_text_script CompText876A5B4_unk3
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Mick,the kid sitting\n"
	.string "in front of you,may"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "be wild...but he is\n"
	.string "a good kid inside..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk4
	ts_check_flag [
		flag: 0x474,
		jumpIfTrue: 0x5,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "Our homeroom teacher\n"
	.string "is pretty excitable,\n"
	.string "huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I didn't like him at\n"
	.string "first... Now he's my\n"
	.string "favorite teacher!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x474
	ts_end

	def_text_script CompText876A5B4_unk5
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "I want to be\n"
	.string "energetic too,\n"
	.string "just like Mr.Mach!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk6
	ts_check_flag [
		flag: 0x475,
		jumpIfTrue: 0x7,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "You're Lan,right?\n"
	.string "Nice to meet ya!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x475
	ts_end

	def_text_script CompText876A5B4_unk7
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "Well,time to get\n"
	.string "ready for the next\n"
	.string "class!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk8
	ts_check_flag [
		flag: 0x476,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x17
	ts_msg_open
	.string "I'm horrible at\n"
	.string "virus busting,but..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You look like a\n"
	.string "strong NetBattler..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can tell just by\n"
	.string "looking at you!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x476
	ts_end

	def_text_script CompText876A5B4_unk9
	ts_mugshot_show mugshot=0x17
	ts_msg_open
	.string "Ahh,I gotta stock\n"
	.string "up on new chips!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk10
	ts_check_flag [
		flag: 0x477,
		jumpIfTrue: 0xB,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Mick wants to be\n"
	.string "a rebel,so he acts\n"
	.string "like one,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but when you peel\n"
	.string "back the layers,he's\n"
	.string "not so bad at all!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Although there are\n"
	.string "a lot of layers to\n"
	.string "peel through."
	ts_key_wait any=0x0
	ts_flag_set flag=0x477
	ts_end

	def_text_script CompText876A5B4_unk11
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "I'm not really a\n"
	.string "good NetBattler,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but when it comes\n"
	.string "to having chips,no\n"
	.string "one can beat me!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk12
	ts_check_flag [
		flag: 0x478,
		jumpIfTrue: 0xD,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "Lan,are you already\n"
	.string "using the Net?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's different from\n"
	.string "the Net in your\n"
	.string "hometown,huh?"
	ts_key_wait any=0x0
	ts_flag_set flag=0x478
	ts_end

	def_text_script CompText876A5B4_unk13
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "When I get home\n"
	.string "today,I'm gonna hop\n"
	.string "on the Net!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk14
	ts_check_flag [
		flag: 0x479,
		jumpIfTrue: 0xF,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "Our next class is\n"
	.string "Virus Busting!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Is your Navi ready?"
	ts_key_wait any=0x0
	ts_flag_set flag=0x479
	ts_end

	def_text_script CompText876A5B4_unk15
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "Today is Chore Day!\n"
	.string "Arrgghhh... Boring!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk16

	def_text_script CompText876A5B4_unk17

	def_text_script CompText876A5B4_unk18

	def_text_script CompText876A5B4_unk19

	def_text_script CompText876A5B4_unk20
	ts_check_flag [
		flag: 0x47A,
		jumpIfTrue: 0x15,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Ummphh!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x47A
	ts_end

	def_text_script CompText876A5B4_unk21
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Enjoy this one while\n"
	.string "you can!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk22
	ts_check_flag [
		flag: 0x484,
		jumpIfTrue: 0x17,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "So... How's your\n"
	.string "first time in the\n"
	.string "real world?"
	ts_key_wait any=0x0
	ts_flag_set flag=0x484
	ts_end

	def_text_script CompText876A5B4_unk23
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "I'd like to see\n"
	.string "my Navi in the real\n"
	.string "world."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Even if we can only\n"
	.string "do it in Cyber City."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk24
	ts_check_flag [
		flag: 0x485,
		jumpIfTrue: 0x19,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "Wow! You're so cool!\n"
	.string "Who did your\n"
	.string "customizations?"
	ts_key_wait any=0x0
	ts_flag_set flag=0x485
	ts_end

	def_text_script CompText876A5B4_unk25
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "Hey... Do you know\n"
	.string "where I could buy\n"
	.string "that helmet?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk26
	ts_check_flag [
		flag: 0x486,
		jumpIfTrue: 0x1B,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "Check this out...\n"
	.string "You kinda look like\n"
	.string "Lan!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x486
	ts_end

	def_text_script CompText876A5B4_unk27
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "Whoa... You look\n"
	.string "like Lan's twin\n"
	.string "or something!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk28
	ts_check_flag [
		flag: 0x487,
		jumpIfTrue: 0x1D,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Uh-huh..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Looks like you're\n"
	.string "heavily customized!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x487
	ts_end

	def_text_script CompText876A5B4_unk29
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "My Navi is the kind\n"
	.string "you combine with\n"
	.string "chips to fight!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk30
	ts_check_flag [
		flag: 0x488,
		jumpIfTrue: 0x1F,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x17
	ts_msg_open
	.string "Hmm... Completely\n"
	.string "different from my\n"
	.string "Navi..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll have to ask\n"
	.string "Lan for some\n"
	.string "customizing tips!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x488
	ts_end

	def_text_script CompText876A5B4_unk31
	ts_mugshot_show mugshot=0x17
	ts_msg_open
	.string "Lan really loves\n"
	.string "you,huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can tell just\n"
	.string "by lookin' at you!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk32
	ts_check_flag [
		flag: 0x489,
		jumpIfTrue: 0x21,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "That virus busting\n"
	.string "just now was\n"
	.string "awesome!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x489
	ts_end

	def_text_script CompText876A5B4_unk33
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "I gotta keep\n"
	.string "practicing..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk34
	ts_check_flag [
		flag: 0x48A,
		jumpIfTrue: 0x23,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "*Snore! Snore!*\n"
	.string "Ahhhh!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I dozed off!\n"
	.string "Did the teacher\n"
	.string "notice?!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Whew... Thanks for\n"
	.string "waking me up!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x48A
	ts_end

	def_text_script CompText876A5B4_unk35
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "If you get caught\n"
	.string "sleeping,you're sure\n"
	.string "to get extra work!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk36
	ts_check_flag [
		flag: 0x48B,
		jumpIfTrue: 0x25,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Enjoy the real world!\n"
	.string "Hahahaha!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x48B
	ts_end

	def_text_script CompText876A5B4_unk37
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "So,is the real world\n"
	.string "much different from\n"
	.string "the Cyberworld?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk38
	ts_check_flag [
		flag: 0x48C,
		jumpIfTrue: 0x27,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan...\n"
	.string "This is like a\n"
	.string "dream..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x48C
	ts_end

	def_text_script CompText876A5B4_unk39
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I'm pretty lucky\n"
	.string "to have moved to\n"
	.string "a place like this!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk40
	ts_check_flag [
		flag: 0x42E,
		jumpIfTrue: 0x34,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Mr.Mach!!\n"
	.string "Hang in there!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk41
	ts_check_flag [
		flag: 0x42E,
		jumpIfTrue: 0x35,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "Huh? What!?\n"
	.string "..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk42
	ts_check_flag [
		flag: 0x42E,
		jumpIfTrue: 0x36,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "C,creepy..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk43
	ts_check_flag [
		flag: 0x42E,
		jumpIfTrue: 0x37,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "I love to BBQ,but\n"
	.string "not when I'm the\n"
	.string "meat!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk44
	ts_check_flag [
		flag: 0x42E,
		jumpIfTrue: 0x38,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "What do I do!?\n"
	.string "What do I do!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk45
	ts_check_flag [
		flag: 0x42E,
		jumpIfTrue: 0x32,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	ts_mugshot_animation animation=0x1
	.string "Yaaaaahhhhhh..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk46

	def_text_script CompText876A5B4_unk47
	ts_check_flag [
		flag: 0x1729,
		jumpIfTrue: 0x30,
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
	ts_select 0x6, 0x80, 0x31, 0xFF, 0xFF
	ts_end

	def_text_script CompText876A5B4_unk48
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
	ts_select 0x6, 0x80, 0x31, 0xFF, 0xFF
	ts_end

	def_text_script CompText876A5B4_unk49
	ts_flag_set flag=0x171A
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText876A5B4_unk50
	ts_check_flag [
		flag: 0x47C,
		jumpIfTrue: 0x33,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "*huff*..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh,no...\n"
	.string "Everyone saw\n"
	.string "me fail..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You'll need this\n"
	.string "to get into the\n"
	.string "Teachers' Room..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Take this..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x3,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0x3,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x12
	.string "Help..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x47C
	ts_end

	def_text_script CompText876A5B4_unk51
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Please... Help..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk52
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "You helped me\n"
	.string "out there..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk53
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "Ahhh...\n"
	.string "That really scared\n"
	.string "me!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk54
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "Thanks Lan...\n"
	.string "Thanks MegaMan..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk55
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Whew...."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk56
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "The Security Bots\n"
	.string "are out of control!\n"
	.string "I can't believe it!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk57
	ts_check_flag [
		flag: 0x42E,
		jumpIfTrue: 0x3A,
		jumpIfFalse: 0xFF,
	]
	ts_msg_open
	.string "VOOOOOFFF!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Those flames are\n"
	.string "really hot!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "No human could\n"
	.string "handle that heat!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk58
	ts_msg_open
	.string "*Whoosh...*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "It can't move\n"
	.string "anymore..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk59
	ts_msg_open
	.string "The CopyBot can't\n"
	.string "move due to lack\n"
	.string "of energy..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk60

	def_text_script CompText876A5B4_unk61

	def_text_script CompText876A5B4_unk62

	def_text_script CompText876A5B4_unk63

	def_text_script CompText876A5B4_unk64

	def_text_script CompText876A5B4_unk65

	def_text_script CompText876A5B4_unk66

	def_text_script CompText876A5B4_unk67

	def_text_script CompText876A5B4_unk68

	def_text_script CompText876A5B4_unk69

	def_text_script CompText876A5B4_unk70
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Everytime I try\n"
	.string "to get away,he just\n"
	.string "follows me crying!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can't move...\n"
	.string "I just can't move!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So I'm trusting you\n"
	.string "to get some food!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk71
	ts_mugshot_hide
	ts_msg_open
	.string "*Squawk! Squawk!*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "I'm begging you!\n"
	.string "Quit squawking!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "*Squawk! Squawk!*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk72
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Guess I'm like a\n"
	.string "big brother to\n"
	.string "this thing?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Who do you think\n"
	.string "I am!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I can still destroy\n"
	.string "you in a NetBattle!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "OK,OK..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk73
	ts_mugshot_hide
	ts_msg_open
	.string "*Squawk! Squawk!*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "Don't follow me,OK!?\n"
	.string "You're in the way!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "*Squawk! Squawk!*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x14
	.string "Grrrrrrr..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk74
	ts_check_flag [
		flag: 0x50C,
		jumpIfTrue: 0x4B,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "Looks like that\n"
	.string "penguin is really\n"
	.string "attached to Mick..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's gotta be\n"
	.string "rough..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk75
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "Are Mick and the\n"
	.string "penguin getting\n"
	.string "along well?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Is he taking good\n"
	.string "care of him?\n"
	.string "I'm worried..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk76

	def_text_script CompText876A5B4_unk77

	def_text_script CompText876A5B4_unk78

	def_text_script CompText876A5B4_unk79

	def_text_script CompText876A5B4_unk80
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "I forgot something\n"
	.string "in the classroom! I\n"
	.string "came to get it even"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "though today's a\n"
	.string "day off! It's so"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "weird to see the\n"
	.string "school so empty!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876A5B4_unk81

	def_text_script CompText876A5B4_unk82

	def_text_script CompText876A5B4_unk83

	def_text_script CompText876A5B4_unk84

	def_text_script CompText876A5B4_unk85

	def_text_script CompText876A5B4_unk86

	def_text_script CompText876A5B4_unk87

	def_text_script CompText876A5B4_unk88

	def_text_script CompText876A5B4_unk89

	def_text_script CompText876A5B4_unk90

	def_text_script CompText876A5B4_unk91

	def_text_script CompText876A5B4_unk92

	def_text_script CompText876A5B4_unk93

	def_text_script CompText876A5B4_unk94

	def_text_script CompText876A5B4_unk95

	def_text_script CompText876A5B4_unk96

	def_text_script CompText876A5B4_unk97

	def_text_script CompText876A5B4_unk98

	def_text_script CompText876A5B4_unk99

	def_text_script CompText876A5B4_unk100

	def_text_script CompText876A5B4_unk101

	def_text_script CompText876A5B4_unk102

	def_text_script CompText876A5B4_unk103

	def_text_script CompText876A5B4_unk104

	def_text_script CompText876A5B4_unk105

	def_text_script CompText876A5B4_unk106

	def_text_script CompText876A5B4_unk107

	def_text_script CompText876A5B4_unk108

	def_text_script CompText876A5B4_unk109

	def_text_script CompText876A5B4_unk110

	def_text_script CompText876A5B4_unk111

	def_text_script CompText876A5B4_unk112

	def_text_script CompText876A5B4_unk113

	def_text_script CompText876A5B4_unk114

	def_text_script CompText876A5B4_unk115

	def_text_script CompText876A5B4_unk116

	def_text_script CompText876A5B4_unk117

	def_text_script CompText876A5B4_unk118

	def_text_script CompText876A5B4_unk119

	def_text_script CompText876A5B4_unk120

	def_text_script CompText876A5B4_unk121

	def_text_script CompText876A5B4_unk122

	def_text_script CompText876A5B4_unk123

	def_text_script CompText876A5B4_unk124

	def_text_script CompText876A5B4_unk125

	def_text_script CompText876A5B4_unk126

	def_text_script CompText876A5B4_unk127

	def_text_script CompText876A5B4_unk128

	def_text_script CompText876A5B4_unk129

	def_text_script CompText876A5B4_unk130

	def_text_script CompText876A5B4_unk131

	def_text_script CompText876A5B4_unk132

	def_text_script CompText876A5B4_unk133

	def_text_script CompText876A5B4_unk134

	def_text_script CompText876A5B4_unk135

	def_text_script CompText876A5B4_unk136

	def_text_script CompText876A5B4_unk137

	def_text_script CompText876A5B4_unk138

	def_text_script CompText876A5B4_unk139

	def_text_script CompText876A5B4_unk140

	def_text_script CompText876A5B4_unk141

	def_text_script CompText876A5B4_unk142

	def_text_script CompText876A5B4_unk143

	def_text_script CompText876A5B4_unk144

	def_text_script CompText876A5B4_unk145

	def_text_script CompText876A5B4_unk146

	def_text_script CompText876A5B4_unk147

	def_text_script CompText876A5B4_unk148

	def_text_script CompText876A5B4_unk149

	def_text_script CompText876A5B4_unk150

	def_text_script CompText876A5B4_unk151

	def_text_script CompText876A5B4_unk152

	def_text_script CompText876A5B4_unk153

	def_text_script CompText876A5B4_unk154

	def_text_script CompText876A5B4_unk155

	def_text_script CompText876A5B4_unk156

	def_text_script CompText876A5B4_unk157

	def_text_script CompText876A5B4_unk158

	def_text_script CompText876A5B4_unk159

	def_text_script CompText876A5B4_unk160

	def_text_script CompText876A5B4_unk161

	def_text_script CompText876A5B4_unk162

	def_text_script CompText876A5B4_unk163

	def_text_script CompText876A5B4_unk164

	def_text_script CompText876A5B4_unk165

	def_text_script CompText876A5B4_unk166

	def_text_script CompText876A5B4_unk167

	def_text_script CompText876A5B4_unk168

	def_text_script CompText876A5B4_unk169

	def_text_script CompText876A5B4_unk170

	def_text_script CompText876A5B4_unk171

	def_text_script CompText876A5B4_unk172

	def_text_script CompText876A5B4_unk173

	def_text_script CompText876A5B4_unk174

	def_text_script CompText876A5B4_unk175

	def_text_script CompText876A5B4_unk176

	def_text_script CompText876A5B4_unk177

	def_text_script CompText876A5B4_unk178

	def_text_script CompText876A5B4_unk179

	def_text_script CompText876A5B4_unk180

	def_text_script CompText876A5B4_unk181

	def_text_script CompText876A5B4_unk182

	def_text_script CompText876A5B4_unk183

	def_text_script CompText876A5B4_unk184

	def_text_script CompText876A5B4_unk185

	def_text_script CompText876A5B4_unk186

	def_text_script CompText876A5B4_unk187

	def_text_script CompText876A5B4_unk188

	def_text_script CompText876A5B4_unk189

	def_text_script CompText876A5B4_unk190

	def_text_script CompText876A5B4_unk191

	def_text_script CompText876A5B4_unk192

	def_text_script CompText876A5B4_unk193

	def_text_script CompText876A5B4_unk194

	def_text_script CompText876A5B4_unk195

	def_text_script CompText876A5B4_unk196

	def_text_script CompText876A5B4_unk197

	def_text_script CompText876A5B4_unk198

	def_text_script CompText876A5B4_unk199

	def_text_script CompText876A5B4_unk200

	def_text_script CompText876A5B4_unk201

	def_text_script CompText876A5B4_unk202

	def_text_script CompText876A5B4_unk203

	def_text_script CompText876A5B4_unk204

	def_text_script CompText876A5B4_unk205

	def_text_script CompText876A5B4_unk206

	def_text_script CompText876A5B4_unk207

	def_text_script CompText876A5B4_unk208

	def_text_script CompText876A5B4_unk209

	def_text_script CompText876A5B4_unk210

	def_text_script CompText876A5B4_unk211

	def_text_script CompText876A5B4_unk212

	def_text_script CompText876A5B4_unk213

	def_text_script CompText876A5B4_unk214

	def_text_script CompText876A5B4_unk215

	def_text_script CompText876A5B4_unk216

	def_text_script CompText876A5B4_unk217

	def_text_script CompText876A5B4_unk218

	def_text_script CompText876A5B4_unk219

	def_text_script CompText876A5B4_unk220

	def_text_script CompText876A5B4_unk221

	def_text_script CompText876A5B4_unk222

	def_text_script CompText876A5B4_unk223

	def_text_script CompText876A5B4_unk224

	def_text_script CompText876A5B4_unk225

	def_text_script CompText876A5B4_unk226

	def_text_script CompText876A5B4_unk227

	def_text_script CompText876A5B4_unk228

	def_text_script CompText876A5B4_unk229

	def_text_script CompText876A5B4_unk230

	def_text_script CompText876A5B4_unk231

	def_text_script CompText876A5B4_unk232

	def_text_script CompText876A5B4_unk233

	def_text_script CompText876A5B4_unk234

	def_text_script CompText876A5B4_unk235

	def_text_script CompText876A5B4_unk236

	def_text_script CompText876A5B4_unk237

	def_text_script CompText876A5B4_unk238

	def_text_script CompText876A5B4_unk239

	def_text_script CompText876A5B4_unk240

	def_text_script CompText876A5B4_unk241

	def_text_script CompText876A5B4_unk242

	def_text_script CompText876A5B4_unk243

	def_text_script CompText876A5B4_unk244

	def_text_script CompText876A5B4_unk245

	def_text_script CompText876A5B4_unk246

	def_text_script CompText876A5B4_unk247

	def_text_script CompText876A5B4_unk248

	def_text_script CompText876A5B4_unk249

	def_text_script CompText876A5B4_unk250

	def_text_script CompText876A5B4_unk251

	def_text_script CompText876A5B4_unk252

	def_text_script CompText876A5B4_unk253

	def_text_script CompText876A5B4_unk254
	ts_end

	