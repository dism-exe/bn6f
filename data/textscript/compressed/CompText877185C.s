	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877185C::
	.word 0xC5300

	text_archive_start

	def_text_script CompText877185C_unk0
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan,where ya goin!?\n"
	.string "Class isn't over\n"
	.string "yet!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877185C_unk1

	def_text_script CompText877185C_unk2

	def_text_script CompText877185C_unk3

	def_text_script CompText877185C_unk4

	def_text_script CompText877185C_unk5

	def_text_script CompText877185C_unk6

	def_text_script CompText877185C_unk7

	def_text_script CompText877185C_unk8

	def_text_script CompText877185C_unk9

	def_text_script CompText877185C_unk10
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "MegaMan,one more\n"
	.string "time!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877185C_unk11
	ts_mugshot_show [
		mugshot: 0x1E,
	]
	ts_msg_open
	.string "Ya think ya got the\n"
	.string "hang of the\n"
	.string "CrossSystem?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "All that's left now\n"
	.string "is for ya to fine-\n"
	.string "tune it in battle!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Oh,whenever ya\n"
	.string "wanna operate\n"
	.string "HeatMan,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "just come here and\n"
	.string "use that comp,OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "OK! Thank you,\n"
	.string "Mr.Match!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x1E,
	]
	.string "Heh,ya treating me\n"
	.string "like a real teacher\n"
	.string "is kinda strange..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877185C_unk12
	ts_mugshot_show [
		mugshot: 0x1F,
	]
	ts_msg_open
	.string "Do you think you\n"
	.string "understand the\n"
	.string "CrossSystem?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Now you've gotta\n"
	.string "learn from fighting\n"
	.string "real battles!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Um... Oh,and if you\n"
	.string "wanna use SpoutMan,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "feel free to operate\n"
	.string "him from that\n"
	.string "computer anytime,OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "OK! Thank you,\n"
	.string "Ms.Shuko!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x1F,
	]
	.string "Make sure you use\n"
	.string "the SpoutCross\n"
	.string "wisely,Lan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877185C_unk13

	def_text_script CompText877185C_unk14

	def_text_script CompText877185C_unk15

	def_text_script CompText877185C_unk16

	def_text_script CompText877185C_unk17

	def_text_script CompText877185C_unk18

	def_text_script CompText877185C_unk19

	def_text_script CompText877185C_unk20

	def_text_script CompText877185C_unk21

	def_text_script CompText877185C_unk22

	def_text_script CompText877185C_unk23

	def_text_script CompText877185C_unk24

	def_text_script CompText877185C_unk25

	def_text_script CompText877185C_unk26

	def_text_script CompText877185C_unk27

	def_text_script CompText877185C_unk28

	def_text_script CompText877185C_unk29

	def_text_script CompText877185C_unk30

	def_text_script CompText877185C_unk31

	def_text_script CompText877185C_unk32

	def_text_script CompText877185C_unk33

	def_text_script CompText877185C_unk34

	def_text_script CompText877185C_unk35

	def_text_script CompText877185C_unk36

	def_text_script CompText877185C_unk37

	def_text_script CompText877185C_unk38

	def_text_script CompText877185C_unk39

	def_text_script CompText877185C_unk40

	def_text_script CompText877185C_unk41

	def_text_script CompText877185C_unk42

	def_text_script CompText877185C_unk43

	def_text_script CompText877185C_unk44

	def_text_script CompText877185C_unk45

	def_text_script CompText877185C_unk46

	def_text_script CompText877185C_unk47

	def_text_script CompText877185C_unk48

	def_text_script CompText877185C_unk49

	def_text_script CompText877185C_unk50
	ts_check_flag [
		flag: 0x120,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x46,
	]
	ts_check_flag [
		flag: 0x1300,
		jumpIfTrue: 0x33,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x1300,
	]
	ts_mugshot_show [
		mugshot: 0x1E,
	]
	ts_msg_open
	.string "Lan Hikari,ya wanna\n"
	.string "try and battle\n"
	.string "HeatMan and I?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It'll be hot!!"
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
	.string " Yes  "
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
	.string " No"
	ts_select 0x6, 0x80, 0x34, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x1E,
	]
	.string "Don't feel up to\n"
	.string "it,huh? Come back\n"
	.string "when yer ready!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877185C_unk51
	ts_mugshot_show [
		mugshot: 0x1E,
	]
	ts_msg_open
	.string "Lan,time to heat\n"
	.string "things up!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's light it up\n"
	.string "in a crazy battle!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ya ready for it!?"
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
	.string " Yes  "
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
	.string " No"
	ts_select 0x6, 0x80, 0x34, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x1E,
	]
	.string "The fire in\n"
	.string "my heart is\n"
	.string "smolderin..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Alright!\n"
	.string "Just come back when\n"
	.string "yer ready!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877185C_unk52
	ts_check_chapter [
		lower: 0x60,
		upper: 0xFF,
		jumpIfInRange: 0x37,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x40,
		upper: 0x5F,
		jumpIfInRange: 0x36,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x21,
		upper: 0x3F,
		jumpIfInRange: 0x35,
		jumpIfOutOfRange: 0xFF,
	]
	ts_end

	def_text_script CompText877185C_unk53
	ts_mugshot_show [
		mugshot: 0x1E,
	]
	ts_msg_open
	.string "Hehehe,ya ready!?\n"
	.string "I'm gonna heat\n"
	.string "this battle up!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_print_current_navi
	.string ",\n"
	.string "give me everything\n"
	.string "ya got!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x47,
	]
	.string "Time to burn!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x130A,
	]
	ts_end

	def_text_script CompText877185C_unk54
	ts_check_flag [
		flag: 0x130E,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x35,
	]
	ts_mugshot_show [
		mugshot: 0x1E,
	]
	ts_msg_open
	.string "Let's set this\n"
	.string "party on fire\n"
	.string "HeatMan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "I'm gonna do my\n"
	.string "best too!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x47,
	]
	.string "Time to see why\n"
	.string "I'm the firestarter!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x130B,
	]
	ts_end

	def_text_script CompText877185C_unk55
	ts_check_flag [
		flag: 0x302,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x36,
	]
	ts_check_flag [
		flag: 0x130E,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x35,
	]
	ts_mugshot_show [
		mugshot: 0x1E,
	]
	ts_msg_open
	.string "This time it won't\n"
	.string "be yer normal\n"
	.string "HeatMan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He can melt metal!!\n"
	.string "HeatMan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_print_current_navi
	.string ",\n"
	.string "don't drop your\n"
	.string "guard!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x47,
	]
	.string "Whoooooaaa!! FLAME!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x130C,
	]
	ts_end

	def_text_script CompText877185C_unk56

	def_text_script CompText877185C_unk57
	ts_check_flag [
		flag: 0x130E,
		jumpIfTrue: 0x3A,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x130E,
	]
	ts_jump [
		target: 58,
	]

	def_text_script CompText877185C_unk58
	ts_mugshot_show [
		mugshot: 0x1E,
	]
	ts_msg_open
	.string "Whoa. Impressive...\n"
	.string "All burnt out..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877185C_unk59
	ts_mugshot_show [
		mugshot: 0x1E,
	]
	ts_msg_open
	.string "Hehehehe!\n"
	.string "Don't get burned too\n"
	.string "bad! Try again!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877185C_unk60
	ts_check_flag [
		flag: 0x120,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x47,
	]
	ts_check_flag [
		flag: 0x1301,
		jumpIfTrue: 0x3D,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x1301,
	]
	ts_mugshot_show [
		mugshot: 0x1F,
	]
	ts_msg_open
	.string "Lan,would you\n"
	.string "like to battle\n"
	.string "my Navi,SpoutMan?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I want to become a\n"
	.string "better NetBattler."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Please!"
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
	.string " Yes  "
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
	.string " No"
	ts_select 0x6, 0x80, 0x3E, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x1F,
	]
	.string "I see..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877185C_unk61
	ts_mugshot_show [
		mugshot: 0x1F,
	]
	ts_msg_open
	.string "Fight with my\n"
	.string "Navi,SpoutMan?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Please!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "C'mon!? Please!!"
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
	.string " Yes  "
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
	.string " No"
	ts_select 0x6, 0x80, 0x3E, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x1F,
	]
	.string "Don't say that...\n"
	.string "It'll make me sad..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877185C_unk62
	ts_check_chapter [
		lower: 0x60,
		upper: 0xFF,
		jumpIfInRange: 0x41,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x40,
		upper: 0x5F,
		jumpIfInRange: 0x40,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x21,
		upper: 0x3F,
		jumpIfInRange: 0x3F,
		jumpIfOutOfRange: 0xFF,
	]
	ts_end

	def_text_script CompText877185C_unk63
	ts_mugshot_show [
		mugshot: 0x1F,
	]
	ts_msg_open
	.string "SpoutMan,\n"
	.string "Show him what you've\n"
	.string "got!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_print_current_navi
	.string ",\n"
	.string "Don't underestimate\n"
	.string "this Navi!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Use 100% of your\n"
	.string "power!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x48,
	]
	.string "Let's do it,drip!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x130F,
	]
	ts_end

	def_text_script CompText877185C_unk64
	ts_check_flag [
		flag: 0x1313,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x3F,
	]
	ts_mugshot_show [
		mugshot: 0x1F,
	]
	ts_msg_open
	.string "SpoutMan,\n"
	.string "Show him what you've\n"
	.string "got!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Yeah,show me!\n"
	.string "C'mon SpoutMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x48,
	]
	.string "Here I come,\n"
	ts_print_current_navi
	.string "!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x1310,
	]
	ts_end

	def_text_script CompText877185C_unk65
	ts_check_flag [
		flag: 0x320,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x40,
	]
	ts_check_flag [
		flag: 0x1313,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x3F,
	]
	ts_mugshot_show [
		mugshot: 0x1F,
	]
	ts_msg_open
	.string "SpoutMan,\n"
	.string "Soak him!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "I'm not gonna get\n"
	.string "drenched that easy!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_print_current_navi
	.string ",time for a\n"
	.string "shower!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_flag_set [
		flag: 0x1311,
	]
	ts_end

	def_text_script CompText877185C_unk66

	def_text_script CompText877185C_unk67
	ts_check_flag [
		flag: 0x1313,
		jumpIfTrue: 0x44,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x1313,
	]
	ts_jump [
		target: 68,
	]

	def_text_script CompText877185C_unk68
	ts_mugshot_show [
		mugshot: 0x1F,
	]
	ts_msg_open
	.string "That's true skill...\n"
	.string "We've gotta practice\n"
	.string "and get better!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Then show Lan our\n"
	.string "improvement!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877185C_unk69
	ts_mugshot_show [
		mugshot: 0x1F,
	]
	ts_msg_open
	.string "We did it! YEAH!!\n"
	.string "SpoutMan is king!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877185C_unk70
	ts_check_chapter [
		lower: 0x52,
		upper: 0x52,
		jumpIfInRange: 0x48,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x24,
		upper: 0x24,
		jumpIfInRange: 0x4A,
		jumpIfOutOfRange: 0xFF,
	]
	ts_jump [
		target: 76,
	]

	def_text_script CompText877185C_unk71
	ts_check_chapter [
		lower: 0x52,
		upper: 0x52,
		jumpIfInRange: 0x49,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x24,
		upper: 0x24,
		jumpIfInRange: 0x4B,
		jumpIfOutOfRange: 0xFF,
	]
	ts_jump [
		target: 77,
	]

	def_text_script CompText877185C_unk72
	ts_check_flag [
		flag: 0xC1F,
		jumpIfTrue: 0x4A,
		jumpIfFalse: 0xFF,
	]
	ts_jump [
		target: 76,
	]

	def_text_script CompText877185C_unk73
	ts_check_flag [
		flag: 0xC1F,
		jumpIfTrue: 0x4B,
		jumpIfFalse: 0xFF,
	]
	ts_jump [
		target: 77,
	]

	def_text_script CompText877185C_unk74
	ts_mugshot_show [
		mugshot: 0x1E,
	]
	ts_msg_open
	.string "...Huh? MegaMan!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Use HeatMan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "HeatMan is yer\n"
	.string "LinkNavi!\n"
	.string "Don't forget it!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877185C_unk75
	ts_mugshot_show [
		mugshot: 0x1F,
	]
	ts_msg_open
	.string "What is it,MegaMan?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Lan!\n"
	.string "Use SpoutMan!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "SpoutMan is your\n"
	.string "LinkNavi! You\n"
	.string "should try him!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877185C_unk76
	ts_mugshot_show [
		mugshot: 0x1E,
	]
	ts_msg_open
	.string "This doesn't seem\n"
	.string "like a NetBattle..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Without MegaMan,\n"
	.string "ya can't battle!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "However,HeatMan's\n"
	.string "always ready to\n"
	.string "be operated!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877185C_unk77
	ts_mugshot_show [
		mugshot: 0x1F,
	]
	ts_msg_open
	.string "Without MegaMan\n"
	.string "it seems you can't\n"
	.string "NetBattle..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But SpoutMan is\n"
	.string "always ready to be\n"
	.string "operated!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText877185C_unk78

	def_text_script CompText877185C_unk79

	def_text_script CompText877185C_unk80

	def_text_script CompText877185C_unk81

	def_text_script CompText877185C_unk82

	def_text_script CompText877185C_unk83

	def_text_script CompText877185C_unk84

	def_text_script CompText877185C_unk85

	def_text_script CompText877185C_unk86

	def_text_script CompText877185C_unk87

	def_text_script CompText877185C_unk88

	def_text_script CompText877185C_unk89

	def_text_script CompText877185C_unk90

	def_text_script CompText877185C_unk91

	def_text_script CompText877185C_unk92

	def_text_script CompText877185C_unk93

	def_text_script CompText877185C_unk94

	def_text_script CompText877185C_unk95

	def_text_script CompText877185C_unk96

	def_text_script CompText877185C_unk97

	def_text_script CompText877185C_unk98

	def_text_script CompText877185C_unk99

	def_text_script CompText877185C_unk100

	def_text_script CompText877185C_unk101

	def_text_script CompText877185C_unk102

	def_text_script CompText877185C_unk103

	def_text_script CompText877185C_unk104

	def_text_script CompText877185C_unk105

	def_text_script CompText877185C_unk106

	def_text_script CompText877185C_unk107

	def_text_script CompText877185C_unk108

	def_text_script CompText877185C_unk109

	