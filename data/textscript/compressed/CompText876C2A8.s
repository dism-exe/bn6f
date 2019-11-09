	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876C2A8::
	.word 0x98A00

	text_archive_start

	def_text_script CompText876C2A8_unk0
	ts_check_flag 0x1, 0x11, 0x3, 0xFF
	ts_check_flag 0x0, 0x11, 0x2, 0xFF
	ts_flag_set 0x0, 0x11
	ts_mugshot_show 0xC
	ts_msg_open
	.string "You must be the\n"
	.string "one that took my\n"
	.string "request!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well let me tell\n"
	.string "you about my\n"
	.string "request..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I was going to\n"
	.string "practice virus\n"
	.string "busting,so I brought"
	ts_key_wait 0x0
	ts_clear_msg
	.string "a virus from home,\n"
	.string "plugged it into the\n"
	.string "blackboard;but now,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "no matter what I do,\n"
	.string "I can't delete the\n"
	.string "virus..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please! Take care\n"
	.string "of the virus for\n"
	.string "me!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If my teacher finds\n"
	.string "out,he's going to\n"
	.string "OWN me!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks for your\n"
	.string "help!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876C2A8_unk1
	ts_mugshot_show 0xC
	ts_msg_open
	.string "Please delete the\n"
	.string "virus I left inside\n"
	.string "the blackboard!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks for your\n"
	.string "help!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876C2A8_unk2
	ts_check_flag 0x6, 0x11, 0xFF, 0x1
	ts_check_flag 0x7, 0x11, 0xFF, 0x1
	ts_check_flag 0x8, 0x11, 0xFF, 0x1
	ts_check_flag 0x9, 0x11, 0xFF, 0x1
	ts_flag_set 0x1, 0x11
	ts_mugshot_show 0xC
	ts_msg_open
	.string "You got all the\n"
	.string "viruses!?\n"
	.string "THANKS!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here is a reward\n"
	.string "for your help!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_bug_frags 0xA, 0x0, 0x0, 0x0, 0xFF, 0xFF, 0xFF
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\"10 BugFrags\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0xC
	.string "Thank you!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Request Point\n"
	ts_call_request_points_buffer
	ts_print_buffer03 0x1, 0x1
	.string " Points!"
	ts_key_wait 0x0
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText876C2A8_unk3
	ts_mugshot_show 0xC
	ts_msg_open
	.string "Next time,I'll make\n"
	.string "sure to use only a\n"
	.string "virus I can delete!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But now I got to\n"
	.string "get back to\n"
	.string "practicing!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876C2A8_unk4

	def_text_script CompText876C2A8_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "All the way out\n"
	.string "here... This thing\n"
	.string "really moved!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Penguin Capture!"
	ts_key_wait 0x0
	ts_flag_set 0xAC, 0x11
	ts_check_flag 0xAF, 0x11, 0xFF, 0x6
	ts_check_flag 0xAE, 0x11, 0xFF, 0x6
	ts_check_flag 0xAD, 0x11, 0xFF, 0x6
	ts_check_flag 0xAC, 0x11, 0xFF, 0x6
	ts_check_flag 0xAB, 0x11, 0xFF, 0x6
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "We've got all\n"
	.string "the penguins now!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright! Let's get\n"
	.string "back to the\n"
	.string "requestor!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876C2A8_unk6
	ts_end

	def_text_script CompText876C2A8_unk7

	def_text_script CompText876C2A8_unk8

	def_text_script CompText876C2A8_unk9

	def_text_script CompText876C2A8_unk10
	ts_check_flag 0x48, 0x11, 0xB, 0xFF
	ts_flag_set 0x48, 0x11
	ts_mugshot_show 0x8
	ts_msg_open
	.string "You got something\n"
	.string "to say?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "How rude!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x8
	.string "Rude!?\n"
	.string "Mirror time,buddy!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "They call me the\n"
	.string "\"Dolphin\" because"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it matches my\n"
	.string "attitude!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "What!? You're the\n"
	.string "famous swimmer!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x8
	.string "I never get sick\n"
	.string "of hearing that...\n"
	.string "But that's me..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "...I can't believe\n"
	.string "it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh...by the way..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x8
	.string "What now..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You want me to\n"
	.string "teach you how to\n"
	.string "swim,right?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's easy!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "No need to have\n"
	.string "me teach something\n"
	.string "that simple..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Really?\n"
	.string "What should I\n"
	.string "do then?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x8
	.string "Get fat."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "......"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x8
	.string "You don't believe\n"
	.string "me!?!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I figured that out\n"
	.string "after long years of\n"
	.string "research!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If people had more\n"
	.string "blubber on them,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "they'd move like\n"
	.string "a fish!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's why I am\n"
	.string "this big..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "......"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x8
	.string "You still don't\n"
	.string "believe it!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Fine. Just this one\n"
	.string "time I'll give this\n"
	.string "to you to try out!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x41, 0x1
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x4, 0x10
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "What's this...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x8
	.string "Some nice greasy\n"
	.string "fries..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Special,crispy,\n"
	.string "high-calorie fries."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Eat those for a\n"
	.string "week and get some\n"
	.string "blubber!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Then jump in the\n"
	.string "water and try\n"
	.string "swimming!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You'll float for\n"
	.string "sure!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "I don't know if\n"
	.string "you're lying or\n"
	.string "if you're right!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x8
	.string "Believe!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876C2A8_unk11
	ts_mugshot_show 0x8
	ts_msg_open
	.string "Those are some nice\n"
	.string "greasy fries..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Special,crispy,\n"
	.string "high-calorie fries."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Eat those for a\n"
	.string "week and get some\n"
	.string "blubber!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Then jump in the\n"
	.string "water and try\n"
	.string "swimming!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You'll float for\n"
	.string "sure!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "I don't know if\n"
	.string "you're lying or\n"
	.string "if you're right!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x8
	.string "Believe!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876C2A8_unk12

	def_text_script CompText876C2A8_unk13

	def_text_script CompText876C2A8_unk14

	def_text_script CompText876C2A8_unk15

	def_text_script CompText876C2A8_unk16

	def_text_script CompText876C2A8_unk17

	def_text_script CompText876C2A8_unk18

	def_text_script CompText876C2A8_unk19

	def_text_script CompText876C2A8_unk20

	def_text_script CompText876C2A8_unk21

	def_text_script CompText876C2A8_unk22

	def_text_script CompText876C2A8_unk23

	def_text_script CompText876C2A8_unk24

	def_text_script CompText876C2A8_unk25

	def_text_script CompText876C2A8_unk26

	def_text_script CompText876C2A8_unk27

	def_text_script CompText876C2A8_unk28

	def_text_script CompText876C2A8_unk29

	def_text_script CompText876C2A8_unk30

	def_text_script CompText876C2A8_unk31

	def_text_script CompText876C2A8_unk32

	def_text_script CompText876C2A8_unk33

	def_text_script CompText876C2A8_unk34

	def_text_script CompText876C2A8_unk35

	def_text_script CompText876C2A8_unk36

	def_text_script CompText876C2A8_unk37

	def_text_script CompText876C2A8_unk38

	def_text_script CompText876C2A8_unk39

	def_text_script CompText876C2A8_unk40

	def_text_script CompText876C2A8_unk41

	def_text_script CompText876C2A8_unk42

	def_text_script CompText876C2A8_unk43

	def_text_script CompText876C2A8_unk44

	def_text_script CompText876C2A8_unk45

	def_text_script CompText876C2A8_unk46

	def_text_script CompText876C2A8_unk47

	def_text_script CompText876C2A8_unk48

	def_text_script CompText876C2A8_unk49

	def_text_script CompText876C2A8_unk50

	def_text_script CompText876C2A8_unk51

	def_text_script CompText876C2A8_unk52

	def_text_script CompText876C2A8_unk53

	def_text_script CompText876C2A8_unk54

	def_text_script CompText876C2A8_unk55

	