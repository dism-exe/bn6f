	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879073C::
	.word 0x183600

	text_archive_start

	def_text_script CompText879073C_unk0
	ts_mugshot_show [
		mugshot: 0x22,
	]
	ts_msg_open
	.string "Where are you\n"
	.string "going!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk1

	def_text_script CompText879073C_unk2

	def_text_script CompText879073C_unk3

	def_text_script CompText879073C_unk4

	def_text_script CompText879073C_unk5
	ts_mugshot_show [
		mugshot: 0x23,
	]
	ts_msg_open
	.string "Where are you\n"
	.string "running to!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk6
	ts_mugshot_show [
		mugshot: 0x40,
	]
	ts_msg_open
	.string "Ahhhh...\n"
	.string "A prosecutor's work\n"
	.string "is never done..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If I didn't take a\n"
	.string "short break at a\n"
	.string "NetCafe sometimes,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I couldn't do\n"
	.string "this kind of work!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk7
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	.string "Haha...\n"
	.string "Being a lawyer is\n"
	.string "a tough job..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sometimes you just\n"
	.string "have to relax...\n"
	.string "Really."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk8

	def_text_script CompText879073C_unk9

	def_text_script CompText879073C_unk10
	ts_check_flag [
		flag: 0x1153,
		jumpIfTrue: 0xB,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x1153,
	]
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "Huh? What do you\n"
	.string "want?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm doing research\n"
	.string "on the environment\n"
	.string "via the Net."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "My dad?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's mean to say,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "but that man isn't\n"
	.string "my father anymore."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I wiped any memory\n"
	.string "of a father from\n"
	.string "my mind."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So if those\n"
	.string "memories come back\n"
	.string "it'd be awful..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...Huh?\n"
	.string "He remembered my\n"
	.string "birthday...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...I see..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He remembered..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string " OK,\n"
	.string "if it's just\n"
	.string "meeting him..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Where should I go?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The Sky HP?\n"
	.string "I'm on my way!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk11
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "...OK,I'll go\n"
	.string "meet him..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The Sky HP?\n"
	.string "I'm on my way!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk12

	def_text_script CompText879073C_unk13

	def_text_script CompText879073C_unk14

	def_text_script CompText879073C_unk15
	ts_mugshot_show [
		mugshot: 0x40,
	]
	ts_msg_open
	.string "The air is clean\n"
	.string "thanks to all the\n"
	.string "greenery!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Take it in!\n"
	.string "Even the coffee\n"
	.string "is great!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The Green Area\n"
	.string "NetCafe is second\n"
	.string "to none."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk16
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	.string "Battling here will\n"
	.string "get you nothing but\n"
	.string "grass panels."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So all of the grass-\n"
	.string "type viruses come\n"
	.string "with the territory."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk17

	def_text_script CompText879073C_unk18

	def_text_script CompText879073C_unk19

	def_text_script CompText879073C_unk20
	ts_check_shop_stock [
		shop: 0x3,
		jumpIfStocked: 0xFF,
		jumpIfSoldOut: 0x16,
	]
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "I sell programs.\n"
	.string "Look at my stock?\n"
	ts_position_option_horizontal [
		width: 0x8,
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
	.string " Look  "
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
	.string " Don't look"
	ts_select 0x6, 0x0, 0xFF, 0x15, 0xFF
	ts_start_shop [
		shop: 0x3,
	]

	def_text_script CompText879073C_unk21
	ts_clear_msg
	.string "Come back again."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk22
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "Sorry,but I'm\n"
	.string "sold out..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk23

	def_text_script CompText879073C_unk24

	def_text_script CompText879073C_unk25

	def_text_script CompText879073C_unk26

	def_text_script CompText879073C_unk27

	def_text_script CompText879073C_unk28

	def_text_script CompText879073C_unk29

	def_text_script CompText879073C_unk30
	ts_check_flag [
		flag: 0x11EE,
		jumpIfTrue: 0x21,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x11EB,
		jumpIfTrue: 0x20,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x11E9,
		jumpIfTrue: 0x1F,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x11E9,
	]
	ts_mugshot_show [
		mugshot: 0x40,
	]
	ts_msg_open
	.string "I've been waiting\n"
	.string "for you...\n"
	.string "I'm the requestor."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm also a\n"
	.string "lumberjack."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I cut down the\n"
	.string "cybertrees for a\n"
	.string "living..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Lately,the axe I\n"
	.string "use has become\n"
	.string "damaged..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That is why I made\n"
	.string "a request..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There should be a\n"
	.string "\"Spirit of the"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Spring\" somewhere\n"
	.string "in SeasideArea."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That spirit should\n"
	.string "take a regular axe"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and turn it into a\n"
	.string "gold axe..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Would you please\n"
	.string "find that spring\n"
	.string "for me..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "The Spirit of the\n"
	.string "Spring...\n"
	.string "I'll go find it!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x40,
	]
	.string "...and give him my\n"
	.string "CyberAxe,OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_item_give [
		item: 0x2D,
		amount: 0x1,
	]
	ts_mugshot_hide
	ts_player_animate_object [
		animation: 0x18,
	]
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x2D,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x11EA,
	]
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x40,
	]
	.string "Go out there and\n"
	.string "break a leg!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk31
	ts_mugshot_show [
		mugshot: 0x40,
	]
	ts_msg_open
	.string "Checking up on\n"
	.string "things,I see..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There should be a\n"
	.string "\"Spirit of the"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Spring\" somewhere\n"
	.string "in SeasideArea."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you toss the Axe\n"
	.string "in,the spirit should\n"
	.string "appear..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That spirit should\n"
	.string "take a regular axe"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and turn it into a\n"
	.string "gold axe..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Would you please\n"
	.string "find that spring\n"
	.string "for me..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Go out there and\n"
	.string "break a leg!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk32
	ts_flag_set [
		flag: 0x11EE,
	]
	ts_mugshot_show [
		mugshot: 0x40,
	]
	ts_msg_open
	.string "Ahhh!! You had my\n"
	.string "CyberAxe customized!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The legend must\n"
	.string "actually be true!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_print_current_navi
	.string " returned the\n"
	.string "\""
	ts_print_item [
		item: 0x2D,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_item_take [
		item: 0x2D,
		amount: 0x1,
	]
	ts_mugshot_show [
		mugshot: 0x40,
	]
	.string "Here is your reward\n"
	.string "for helping me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_check_give_bug_frags [
		amount: 0xA,
		jumpIfAll: 0xFF,
		jumpIfNone: 0xFF,
		jumpIfSome: 0xFF,
	]
	ts_mugshot_hide
	ts_player_animate_object [
		animation: 0x18,
	]
	ts_print_current_navi
	.string " got:\n"
	.string "\"10 BugFrags\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x40,
	]
	.string "...By the way,\n"
	.string "what was the\n"
	.string "spirit like?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'd love to see\n"
	.string "it someday..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	.string "Request Point\n"
	ts_call_request_points_buffer
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " Points!"
	ts_key_wait [
		any: 0x0,
	]
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText879073C_unk33
	ts_mugshot_show [
		mugshot: 0x40,
	]
	ts_msg_open
	.string "...By the way,\n"
	.string "what was the\n"
	.string "spirit like?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk34

	def_text_script CompText879073C_unk35

	def_text_script CompText879073C_unk36

	def_text_script CompText879073C_unk37

	def_text_script CompText879073C_unk38

	def_text_script CompText879073C_unk39

	def_text_script CompText879073C_unk40

	def_text_script CompText879073C_unk41

	def_text_script CompText879073C_unk42

	def_text_script CompText879073C_unk43

	def_text_script CompText879073C_unk44

	def_text_script CompText879073C_unk45
	ts_check_flag [
		flag: 0x11D6,
		jumpIfTrue: 0x2E,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x11D6,
	]
	ts_item_take [
		item: 0x28,
		amount: 0x1,
	]
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "...Who are you?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "I was told to\n"
	.string "give you this..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_print_current_navi
	.string " gave:\n"
	.string "\""
	ts_print_item [
		item: 0x28,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x45,
	]
	.string "\"Sorry that you\n"
	.string " can't do the"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " things that\n"
	.string " make you happy.\n"
	.string " Forget me.\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "What a dummy!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You. Wait a second."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'd like you to\n"
	.string "give this letter\n"
	.string "to him..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x2A,
		amount: 0x1,
	]
	ts_player_animate_scene [
		animation: 0x18,
	]
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x2A,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x45,
	]
	.string "...Thanks..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk46
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "Give him my\n"
	.string "letter..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk47

	def_text_script CompText879073C_unk48

	def_text_script CompText879073C_unk49

	def_text_script CompText879073C_unk50
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Ahh,Lan... There's\n"
	.string "something at the\n"
	.string "base of the tree!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's dig it up!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "It's a TimeCpsl!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give [
		item: 0x26,
		amount: 0x1,
	]
	ts_player_animate_object [
		animation: 0x18,
	]
	ts_print_current_navi
	.string " got a\n"
	.string "\"TimeCpsl\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Alright! Let's\n"
	.string "get back to the\n"
	.string "requestor!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1181,
	]
	ts_end

	def_text_script CompText879073C_unk51
	ts_check_flag [
		flag: 0x1181,
		jumpIfTrue: 0x39,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Ahh,Lan... There's\n"
	.string "something at the\n"
	.string "base of the tree!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's dig it up!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "It's a TimeCpsl!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Huh? What's written\n"
	.string "on it...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "PHONE-Y?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ahh! Phoney!\n"
	.string "It's a fake!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	.string "A virus has jumped\n"
	.string "out of the capsule!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1182,
	]
	ts_end

	def_text_script CompText879073C_unk52
	ts_check_flag [
		flag: 0x1181,
		jumpIfTrue: 0x39,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Ahh,Lan... There's\n"
	.string "something at the\n"
	.string "base of the tree!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's dig it up!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "It's a TimeCpsl!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Huh? What's written\n"
	.string "on it...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "PHONE-Y?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ahh! Phoney!\n"
	.string "It's a fake!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	.string "A virus has jumped\n"
	.string "out of the capsule!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1183,
	]
	ts_end

	def_text_script CompText879073C_unk53
	ts_check_flag [
		flag: 0x1181,
		jumpIfTrue: 0x39,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Ahh,Lan... There's\n"
	.string "something at the\n"
	.string "base of the tree!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's dig it up!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "It's a TimeCpsl!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Huh? What's written\n"
	.string "on it...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "PHONE-Y?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ahh! Phoney!\n"
	.string "It's a fake!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	.string "A virus has jumped\n"
	.string "out of the capsule!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1184,
	]
	ts_end

	def_text_script CompText879073C_unk54
	ts_check_flag [
		flag: 0x1181,
		jumpIfTrue: 0x39,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Ahh,Lan... There's\n"
	.string "something at the\n"
	.string "base of the tree!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's dig it up!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "It's a TimeCpsl!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Huh? What's written\n"
	.string "on it...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "PHONE-Y?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ahh! Phoney!\n"
	.string "It's a fake!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	.string "A virus has jumped\n"
	.string "out of the capsule!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1185,
	]
	ts_end

	def_text_script CompText879073C_unk55
	ts_check_flag [
		flag: 0x1181,
		jumpIfTrue: 0x39,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Ahh,Lan... There's\n"
	.string "something at the\n"
	.string "base of the tree!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's dig it up!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "."
	ts_wait_skip [
		frames: 0x1E,
	]
	.string "It's a TimeCpsl!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Huh? What's written\n"
	.string "on it...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "PHONE-Y?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ahh! Phoney!\n"
	.string "It's a fake!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	.string "A virus has jumped\n"
	.string "from the capsule!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x1186,
	]
	ts_end

	def_text_script CompText879073C_unk56
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Whoa!\n"
	.string "That surprised me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk57
	ts_end

	def_text_script CompText879073C_unk58

	def_text_script CompText879073C_unk59

	def_text_script CompText879073C_unk60
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Welcome to the\n"
	.string "Green Area NetCafe!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Would you like to\n"
	.string "have a few drinks?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Our specialty\n"
	.string "cybercoffee is\n"
	.string "10Z for one cup!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal [
		width: 0xC,
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
	.string " Drink  "
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
	.string " Don't drink"
	ts_select 0x6, 0x80, 0xFF, 0x3D, 0xFF
	ts_check_take_zenny [
		amount: 0xA,
		jumpIfAll: 0xFF,
		jumpIfNone: 0x4A,
		jumpIfSome: 0x4A,
	]
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	.string "Thank you!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_print_current_navi
	.string " drank some\n"
	.string "sweet smelling\n"
	.string "cybercoffee."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "A mild brew with\n"
	.string "a refreshing bitter\n"
	.string "taste..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 62,
	]

	def_text_script CompText879073C_unk61
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "...Come again..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk62
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x4B,
		jumpIfElecMan: 0x4B,
		jumpIfSlashMan: 0x4B,
		jumpIfEraseMan: 0x4B,
		jumpIfChargeMan: 0x4B,
		jumpIfSpoutMan: 0x4B,
		jumpIfTomahawkMan: 0x4B,
		jumpIfTenguMan: 0x4B,
		jumpIfGroundMan: 0x4B,
		jumpIfDustMan: 0x4B,
		jumpIfProtoMan: 0x4B,
	]
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "...Ahh,wonderful..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "These are the times\n"
	.string "that make me want to\n"
	.string "keep fighting..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	.string "A small amount\n"
	.string "of HP was\n"
	.string "recovered."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_start_heal [
		amount: 0xA,
	]
	ts_check_chapter [
		lower: 0x30,
		upper: 0x33,
		jumpIfInRange: 0x46,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x40,
		upper: 0x46,
		jumpIfInRange: 0x47,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x50,
		upper: 0x53,
		jumpIfInRange: 0x48,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x60,
		upper: 0x64,
		jumpIfInRange: 0x49,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	.string "...A customer\n"
	.string "I've never seen\n"
	.string "before..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk63
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "...Hey,have you\n"
	.string "ever heard this\n"
	.string "one before?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There is a huge\n"
	.string "tree growing in the\n"
	.string "center of Green"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Area2,but I've heard\n"
	.string "about people being\n"
	.string "spirited away..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Scary,huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x115,
	]
	ts_end

	def_text_script CompText879073C_unk64
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "...Hey,have you\n"
	.string "ever heard this\n"
	.string "one before?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There was some\n"
	.string "strange guy in here\n"
	.string "who kept babbling"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"LRABARBBLR\"..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "After hearing this,\n"
	.string "I felt refreshed."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Is it some kind of\n"
	.string "spell?"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x116,
	]
	ts_end

	def_text_script CompText879073C_unk65
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "...Hey,have you\n"
	.string "ever heard this\n"
	.string "one before?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I hear that there's\n"
	.string "a program that will"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "make your Navi a\n"
	.string "real funnyman!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...Sounds useful\n"
	.string "doesn't it?"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x117,
	]
	ts_end

	def_text_script CompText879073C_unk66
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "...Hey there..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Have you ever\n"
	.string "written a poem?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Apparently there\n"
	.string "is a poem that will"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "make you an expert\n"
	.string "poet!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...I wonder who\n"
	.string "made that?"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x118,
	]
	ts_end

	def_text_script CompText879073C_unk67
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "...You sure do\n"
	.string "come here often!\n"
	.string "I'm quite happy!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I've got to take\n"
	.string "care of my regular\n"
	.string "customers!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So... I'd like you\n"
	.string "to have this!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip [
		chip: 0xBC,
		code: 0x1A,
		amount: 0x1,
	]
	ts_player_animate_object [
		animation: 0x18,
	]
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xBC,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x1A,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	.string "Using it would\n"
	.string "make me really\n"
	.string "happy!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x119,
	]
	ts_end

	def_text_script CompText879073C_unk68

	def_text_script CompText879073C_unk69

	def_text_script CompText879073C_unk70
	ts_check_flag [
		flag: 0x115,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x3F,
	]
	ts_jump [
		target: 63,
	]
	ts_end

	def_text_script CompText879073C_unk71
	ts_check_flag [
		flag: 0x115,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x3F,
	]
	ts_check_flag [
		flag: 0x116,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x40,
	]
	ts_jump_random 71, 0x20, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3F, 0x40, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.string "Temp message.@"

	def_text_script CompText879073C_unk72
	ts_check_flag [
		flag: 0x115,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x3F,
	]
	ts_check_flag [
		flag: 0x116,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x40,
	]
	ts_check_flag [
		flag: 0x117,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x41,
	]
	ts_jump_random 71, 0x20, 0x20, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3F, 0x40, 0x41, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.string "Temp message.@"

	def_text_script CompText879073C_unk73
	ts_check_flag [
		flag: 0x115,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x3F,
	]
	ts_check_flag [
		flag: 0x116,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x40,
	]
	ts_check_flag [
		flag: 0x117,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x41,
	]
	ts_check_flag [
		flag: 0x118,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x42,
	]
	ts_check_flag [
		flag: 0x119,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x43,
	]
	ts_jump_random 71, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0x0, 0x0, 0x3F, 0x40, 0x41, 0x42, 0xFF, 0xFF, 0xFF, 0xFF
	.string "Temp message.@"

	def_text_script CompText879073C_unk74
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "I'm sorry,but you\n"
	.string "don't have enough\n"
	.string "money..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText879073C_unk75
	ts_mugshot_hide
	ts_msg_open
	.string "A small amount\n"
	.string "of HP was\n"
	.string "recovered."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_start_heal [
		amount: 0xA,
	]
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	.string "...A customer\n"
	.string "I've never seen\n"
	.string "before..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	