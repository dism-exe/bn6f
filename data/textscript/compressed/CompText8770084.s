	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8770084::
	.word 0xC7100

	text_archive_start

	def_text_script CompText8770084_unk0
	ts_check_flag 0x71, 0x4, 0x1, 0xFF
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Very good,Lan!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm your homeroom\n"
	.string "teacher,Joe Mach!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Call me Mr.Mach!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now you are a\n"
	.string "member of Cyber\n"
	.string "Academy!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here,let me give\n"
	.string "you this!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x1, 0x1
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x0, 0x10
	.string "\"!!"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x12
	.string "Now you can enter\n"
	.string "the classroom."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Your classroom is\n"
	.string "Class 6-1 on the\n"
	.string "second floor."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll be there in a\n"
	.string "minute,but you go\n"
	.string "on ahead!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Nervous?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hahaha! No need to\n"
	.string "be nervous. You'll\n"
	.string "be fine!!"
	ts_key_wait 0x0
	ts_flag_set 0x71, 0x4
	ts_end

	def_text_script CompText8770084_unk1
	ts_mugshot_show 0x12
	ts_msg_open
	.string "To get to the 2nd\n"
	.string "floor,go back to the\n"
	.string "lobby,take the right"
	ts_key_wait 0x0
	ts_clear_msg
	.string "gate,then use the\n"
	.string "stairs at the end of\n"
	.string "the hall."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8770084_unk2
	ts_mugshot_show 0xD
	ts_msg_open
	.string "Hey! You!\n"
	.string "If you don't hurry\n"
	.string "you'll be late!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8770084_unk3
	ts_mugshot_show 0xE
	ts_msg_open
	.string "Alright,time to get\n"
	.string "ready for my next\n"
	.string "class..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8770084_unk4
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Excuse me! We're\n"
	.string "grading tests! You\n"
	.string "can't be in here!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8770084_unk5

	def_text_script CompText8770084_unk6

	def_text_script CompText8770084_unk7

	def_text_script CompText8770084_unk8

	def_text_script CompText8770084_unk9

	def_text_script CompText8770084_unk10

	def_text_script CompText8770084_unk11

	def_text_script CompText8770084_unk12

	def_text_script CompText8770084_unk13

	def_text_script CompText8770084_unk14

	def_text_script CompText8770084_unk15
	ts_check_flag 0x34, 0x4, 0x10, 0xFF
	ts_mugshot_show 0x14
	ts_msg_open
	.string "......"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8770084_unk16
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Yikes! So things\n"
	.string "are like this..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8770084_unk17

	def_text_script CompText8770084_unk18

	def_text_script CompText8770084_unk19
	ts_check_flag 0x7D, 0x4, 0x14, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hey,Mick!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Where's your Navi!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x14
	.string "No clue..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He just went off\n"
	.string "on his own..."
	ts_key_wait 0x0
	ts_flag_set 0x7D, 0x4
	ts_end

	def_text_script CompText8770084_unk20
	ts_check_flag 0x7E, 0x4, 0x15, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "So you're an\n"
	.string "operator,huh!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you've been\n"
	.string "with your Navi\n"
	.string "for a long time..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You should know\n"
	.string "each others patterns\n"
	.string "in and out..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x14
	.string "........."
	ts_key_wait 0x0
	ts_flag_set 0x7E, 0x4
	ts_end

	def_text_script CompText8770084_unk21
	ts_check_flag 0x7F, 0x4, 0x17, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Mick!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x14
	.string ".........\n"
	.string "He's probably near\n"
	.string "the electronics..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can't see it,\n"
	.string "but he's a worrier!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I bet he is\n"
	.string "watching from a\n"
	.string "monitor somewhere."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "A monitor,huh?\n"
	.string "Makes sense!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go!"
	ts_key_wait 0x0
	ts_flag_set 0x7F, 0x4
	ts_end

	def_text_script CompText8770084_unk22
	ts_mugshot_show 0x14
	ts_msg_open
	.string "I can't believe\n"
	.string "my Navi did that\n"
	.string "for me..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan,get rid of\n"
	.string "BlastMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8770084_unk23
	ts_mugshot_show 0x14
	ts_msg_open
	.string "My Navi doesn't look\n"
	.string "like it,but he's a\n"
	.string "worrier."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder if he's\n"
	.string "inside the monitors\n"
	.string "nearby..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8770084_unk24

	def_text_script CompText8770084_unk25
	ts_check_flag 0x3A, 0x4, 0x1A, 0xFF
	ts_msg_open
	.string "*Rumble Rumble!!*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8770084_unk26
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Well,there's no\n"
	.string "more fire coming\n"
	.string "out..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't think I\n"
	.string "am strong enough\n"
	.string "to push this thing!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8770084_unk27

	def_text_script CompText8770084_unk28

	def_text_script CompText8770084_unk29

	def_text_script CompText8770084_unk30

	def_text_script CompText8770084_unk31

	def_text_script CompText8770084_unk32

	def_text_script CompText8770084_unk33

	def_text_script CompText8770084_unk34

	def_text_script CompText8770084_unk35
	ts_mugshot_show 0x10
	ts_msg_open
	.string "All of the teachers\n"
	.string "have gone home."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mr.Mach is OK.\n"
	.string "We just got word\n"
	.string "from the hospital"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that his injury\n"
	.string "was minor..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright. You hurry\n"
	.string "up and get home\n"
	.string "too."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8770084_unk36

	def_text_script CompText8770084_unk37

	def_text_script CompText8770084_unk38

	def_text_script CompText8770084_unk39

	def_text_script CompText8770084_unk40

	def_text_script CompText8770084_unk41

	def_text_script CompText8770084_unk42

	def_text_script CompText8770084_unk43

	def_text_script CompText8770084_unk44

	def_text_script CompText8770084_unk45

	def_text_script CompText8770084_unk46

	def_text_script CompText8770084_unk47

	def_text_script CompText8770084_unk48

	def_text_script CompText8770084_unk49

	def_text_script CompText8770084_unk50
	ts_check_flag 0x3C, 0x5, 0x33, 0xFF
	ts_flag_set 0x3C, 0x5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I have something\n"
	.string "I'd like to ask..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x10
	.string "Yes,Yes...\n"
	.string "What is it?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hmmm... What does\n"
	.string "a penguin eat?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let me see... They\n"
	.string "would eat fish,I\n"
	.string "suppose."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "I see... Fish..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x10
	.string "What makes you ask\n"
	.string "such a strange\n"
	.string "question?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Well,the truth is..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x10
	.string "You've got to feed\n"
	.string "a hungry penguin?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hmmmm...."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,I don't have\n"
	.string "any fish you could\n"
	.string "use as food..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If anyone around\n"
	.string "here would have\n"
	.string "some,it would be"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the Biology\n"
	.string "teacher's aide."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He feeds the animals\n"
	.string "here everyday,so you\n"
	.string "should go ask him."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "The Biology\n"
	.string "teacher's aide..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Gotcha...\n"
	.string "Thanks!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8770084_unk51
	ts_mugshot_show 0x10
	ts_msg_open
	.string "You should talk to\n"
	.string "the Biology\n"
	.string "teacher's aide."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He feeds the animals\n"
	.string "here everyday,so you\n"
	.string "should go ask him."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8770084_unk52
	ts_mugshot_show 0xD
	ts_msg_open
	.string "Huh?\n"
	.string "There is a student\n"
	.string "we've been watching"
	ts_key_wait 0x0
	ts_clear_msg
	.string "who makes weird\n"
	.string "faces at the\n"
	.string "security camera in"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the hallway."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8770084_unk53
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Ahh,I have to get\n"
	.string "ready for my class!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I guess it's\n"
	.string "overtime for me..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8770084_unk54

	def_text_script CompText8770084_unk55

	def_text_script CompText8770084_unk56
	ts_mugshot_show 0x16
	ts_msg_open
	.string "I gave up my holiday\n"
	.string "to make handouts for\n"
	.string "class..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's not easy being\n"
	.string "a teacher..."
	ts_key_wait 0x0
	ts_end

	