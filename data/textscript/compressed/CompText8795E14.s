	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8795E14::
	.word 0xB0B00

	text_archive_start

	def_text_script CompText8795E14_unk0
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "No targets there..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk1

	def_text_script CompText8795E14_unk2

	def_text_script CompText8795E14_unk3

	def_text_script CompText8795E14_unk4

	def_text_script CompText8795E14_unk5
	ts_mugshot_show mugshot=0x25
	ts_msg_open
	.string "Hey! Hey! Hey!\n"
	.string "The merchant isn't\n"
	.string "there man!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk6

	def_text_script CompText8795E14_unk7

	def_text_script CompText8795E14_unk8

	def_text_script CompText8795E14_unk9

	def_text_script CompText8795E14_unk10
	ts_check_flag [
		flag: 0xCB4,
		jumpIfTrue: 0xF,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xCAE,
		jumpIfTrue: 0xB,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0xCAE
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "I've got quite a bit\n"
	.string "of trash... Take\n"
	.string "care of it for me!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Sound good to you?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
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
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x44
	.string "What!\n"
	.string "Did you not\n"
	.string "hear me correctly!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk11
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "DustMan,I'd really\n"
	.string "like you to hurry\n"
	.string "and clean this up!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Do it! ...Please!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
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
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x44
	.string "What's the problem!?\n"
	.string "If I don't get rid\n"
	.string "of this,I'm fired!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk12
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Alright!\n"
	.string "Are you ready?\n"
	.string "Let's go!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xCB1
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText8795E14_unk13
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Temp"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk14
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "That's not like\n"
	.string "you at all...\n"
	.string "Something wrong?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Do you mind\n"
	.string "trying one more\n"
	.string "time?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
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
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x44
	.string "I really need your\n"
	.string "help with this..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk15
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "I'm relying on you!\n"
	.string "Help me out here!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk16

	def_text_script CompText8795E14_unk17

	def_text_script CompText8795E14_unk18

	def_text_script CompText8795E14_unk19

	def_text_script CompText8795E14_unk20
	ts_check_shop_stock [
		shop: 0xA,
		jumpIfStocked: 0xFF,
		jumpIfSoldOut: 0x16,
	]
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "I'm a SubChip\n"
	.string "merchant!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I got lots of\n"
	.string "great things!\n"
	ts_position_option_horizontal width=0xB
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Look "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Don't look "
	ts_select 0x6, 0x0, 0xFF, 0x15, 0xFF
	ts_start_shop shop=0xA

	def_text_script CompText8795E14_unk21
	ts_clear_msg
	.string "Come back again\n"
	.string "sometime!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk22
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "I'm a SubChip\n"
	.string "merchant!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But right now I'm\n"
	.string "all sold out!!\n"
	.string "Sorry!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk23

	def_text_script CompText8795E14_unk24

	def_text_script CompText8795E14_unk25

	def_text_script CompText8795E14_unk26

	def_text_script CompText8795E14_unk27

	def_text_script CompText8795E14_unk28

	def_text_script CompText8795E14_unk29

	def_text_script CompText8795E14_unk30

	def_text_script CompText8795E14_unk31

	def_text_script CompText8795E14_unk32

	def_text_script CompText8795E14_unk33

	def_text_script CompText8795E14_unk34

	def_text_script CompText8795E14_unk35

	def_text_script CompText8795E14_unk36

	def_text_script CompText8795E14_unk37

	def_text_script CompText8795E14_unk38

	def_text_script CompText8795E14_unk39

	def_text_script CompText8795E14_unk40
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "*STARE*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk41

	def_text_script CompText8795E14_unk42

	def_text_script CompText8795E14_unk43

	def_text_script CompText8795E14_unk44

	def_text_script CompText8795E14_unk45

	def_text_script CompText8795E14_unk46

	def_text_script CompText8795E14_unk47

	def_text_script CompText8795E14_unk48

	def_text_script CompText8795E14_unk49

	def_text_script CompText8795E14_unk50
	ts_check_flag [
		flag: 0x118F,
		jumpIfTrue: 0x36,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x118E,
		jumpIfTrue: 0x36,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x118D,
		jumpIfTrue: 0x36,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Did you come here\n"
	.string "to buy stock...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That girl told\n"
	.string "me you'd be\n"
	.string "coming..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't worry,she\n"
	.string "can wire transfer\n"
	.string "the money..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "All you have to do\n"
	.string "is decide what\n"
	.string "stocks to buy..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So which one will\n"
	.string "it be?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_text_speed delay=0x0
	ts_position_option_horizontal width=0xB
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Papaya Computer\n"
	ts_position_option_horizontal width=0xB
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Toyosan\n"
	ts_position_option_horizontal width=0xB
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Blackhole"
	ts_select 0x7, 0xC0, 0x33, 0x34, 0x35, 0xFF
	ts_end

	def_text_script CompText8795E14_unk51
	ts_flag_set flag=0x118D
	ts_text_speed delay=0x2
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "So you'd like to\n"
	.string "buy Papaya Computer?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "10,000 shares of\n"
	.string "Papaya Computer\n"
	.string "coming right up!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK! No problems\n"
	.string "with the trade."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'll let you know\n"
	.string "how it turns out!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should go back\n"
	.string "to the requestor\n"
	.string "now..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can get the\n"
	.string "results over there."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk52
	ts_flag_set flag=0x118E
	ts_text_speed delay=0x2
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "So you'd like to\n"
	.string "buy Toyosan?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "10,000 shares of\n"
	.string "Toyosan coming\n"
	.string "right up!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK! No problems\n"
	.string "with the trade."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'll let you know\n"
	.string "how it turns out!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should go back\n"
	.string "to the requestor\n"
	.string "now..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can get the\n"
	.string "results over there."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk53
	ts_flag_set flag=0x118F
	ts_text_speed delay=0x2
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "So you'd like to\n"
	.string "buy Blackhole?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "10,000 shares of\n"
	.string "Blackhole coming\n"
	.string "right up!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK! No problems\n"
	.string "with the trade."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We'll let you know\n"
	.string "how it turns out!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should go back\n"
	.string "to the requestor\n"
	.string "now..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can get the\n"
	.string "results over there."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk54
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Stocks are\n"
	.string "interesting..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You never know what\n"
	.string "will happen!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Predicting is\n"
	.string "what makes things\n"
	.string "fun... Hehehe..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk55
	ts_check_flag [
		flag: 0x11D4,
		jumpIfTrue: 0x38,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x11D4
	ts_item_take [
		item: 0x27,
		amount: 0x1,
	]
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Huh,what..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Huh? From my\n"
	.string "brother?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "MegaMan gave:\n"
	.string "\""
	ts_print_item [
		item: 0x27,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x44
	.string "I should be able to\n"
	.string "keep eating on just\n"
	.string "this money alone..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But what do I do\n"
	.string "with this huge\n"
	.string "bill...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Thanks for bringing\n"
	.string "me some money!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Here is proof you\n"
	.string "gave it to me..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x29,
		amount: 0x1,
	]
	ts_player_animate_scene animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x29,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show mugshot=0x44
	.string "Tell my brother\n"
	.string "not to take things\n"
	.string "too far..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk56
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Hey... You..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Tell my brother\n"
	.string "not to take things\n"
	.string "too far..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk57

	def_text_script CompText8795E14_unk58

	def_text_script CompText8795E14_unk59

	def_text_script CompText8795E14_unk60
	ts_check_flag [
		flag: 0xCD7,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x3D,
	]
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Uh-oh...\n"
	.string "I lost the memo with\n"
	.string "the password on it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I last saw it in...\n"
	.string "Some Comp in Sky\n"
	.string "Town I think..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8795E14_unk61
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Where is it...?\n"
	.string "Where is my memo...?"
	ts_key_wait any=0x0
	ts_end

	