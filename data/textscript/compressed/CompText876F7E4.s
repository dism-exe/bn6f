	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876F7E4::
	.word 0x81400

	text_archive_start

	def_text_script CompText876F7E4_unk0
	ts_check_flag 0x10, 0xA, 0x5, 0xFF
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Alright now,\n"
	.string "take care."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F7E4_unk1
	ts_check_flag 0x10, 0xA, 0x6, 0xFF
	ts_mugshot_show 0xB
	ts_msg_open
	.string "Huh? The CopyBot's\n"
	.string "missing? Maybe it\n"
	.string "went off somewhere."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xA
	.string "Or maybe they\n"
	.string "took it in for\n"
	.string "maintenance?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F7E4_unk2
	ts_check_flag 0x10, 0xA, 0x7, 0xFF
	ts_mugshot_show 0xA
	ts_msg_open
	.string "Maybe it decided to\n"
	.string "go for a walk?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xB
	.string "Ahahahaha!\n"
	.string "As if!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F7E4_unk3

	def_text_script CompText876F7E4_unk4

	def_text_script CompText876F7E4_unk5
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Please hurry home."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The weather has\n"
	.string "become quite\n"
	.string "strange."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F7E4_unk6
	ts_mugshot_show 0xB
	ts_msg_open
	.string "Hmmmm...\n"
	.string "I know I should go\n"
	.string "home,but..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "isn't it dangerous\n"
	.string "to walk around\n"
	.string "outside too?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I guess I'll wait\n"
	.string "for a little bit and\n"
	.string "see how it looks..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F7E4_unk7
	ts_mugshot_show 0xA
	ts_msg_open
	.string "The teachers are all\n"
	.string "running around like\n"
	.string "they're confused,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the rain isn't\n"
	.string "stopping,and the\n"
	.string "wind's howling..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Isn't it awesome\n"
	.string "when the weather is\n"
	.string "so messed up?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F7E4_unk8

	def_text_script CompText876F7E4_unk9

	def_text_script CompText876F7E4_unk10

	def_text_script CompText876F7E4_unk11

	def_text_script CompText876F7E4_unk12

	def_text_script CompText876F7E4_unk13

	def_text_script CompText876F7E4_unk14

	def_text_script CompText876F7E4_unk15

	def_text_script CompText876F7E4_unk16

	def_text_script CompText876F7E4_unk17

	def_text_script CompText876F7E4_unk18

	def_text_script CompText876F7E4_unk19

	def_text_script CompText876F7E4_unk20
	ts_check_flag 0xCF, 0xC, 0x16, 0xFF
	ts_check_flag 0xCE, 0xC, 0x15, 0xFF
	ts_msg_open
	.string "THE MAYOR IS IN THE\n"
	.string "MIDDLE OF VERY\n"
	.string "IMPORTANT WORK."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THEREFORE,YOU MAY\n"
	.string "NOT ENTER THIS ROOM."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F7E4_unk21
	ts_msg_open
	ts_flag_set 0xCF, 0xC
	.string "THE MAYOR IS IN THE\n"
	.string "MIDDLE OF VERY\n"
	.string "IMPORTANT WORK."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THEREFORE,YOU MAY\n"
	.string "NOT ENTER THIS ROOM."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "But I have to talk\n"
	.string "to the Mayor! It's\n"
	.string "important!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm running out of\n"
	.string "time! Can't you\n"
	.string "please do something?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "THE MAYOR IS IN THE\n"
	.string "MIDDLE OF VERY\n"
	.string "IMPORTANT WORK."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Aaargh. Now what...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F7E4_unk22
	ts_msg_open
	.string "THE MAYOR IS IN THE\n"
	.string "MIDDLE OF VERY\n"
	.string "IMPORTANT WORK."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THEREFORE,YOU MAY\n"
	.string "NOT ENTER THIS ROOM."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Aaargh. Now what...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F7E4_unk23
	ts_flag_set 0x15, 0x17
	ts_flag_set 0xD6, 0xC
	ts_end

	def_text_script CompText876F7E4_unk24

	def_text_script CompText876F7E4_unk25
	ts_mugshot_show 0x14
	ts_msg_open
	.string "I helped move a\n"
	.string "bunch of CopyBots in\n"
	.string "a little while ago."
	ts_key_wait 0x0
	ts_clear_msg
	.string "After that,we moved\n"
	.string "them to the\n"
	.string "Principal's Office."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder what\n"
	.string "happened to them..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F7E4_unk26

	def_text_script CompText876F7E4_unk27

	def_text_script CompText876F7E4_unk28

	def_text_script CompText876F7E4_unk29

	def_text_script CompText876F7E4_unk30
	ts_mugshot_show 0x8
	ts_msg_open
	.string "... Is it\n"
	.string "really true that\n"
	.string "Mr.Weather's broken?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x9
	.string "Yeah,it's not just a\n"
	.string "rumor. Sounds like\n"
	.string "someone broke him."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F7E4_unk31

	def_text_script CompText876F7E4_unk32

	def_text_script CompText876F7E4_unk33

	def_text_script CompText876F7E4_unk34

	def_text_script CompText876F7E4_unk35

	def_text_script CompText876F7E4_unk36

	def_text_script CompText876F7E4_unk37

	def_text_script CompText876F7E4_unk38

	def_text_script CompText876F7E4_unk39

	def_text_script CompText876F7E4_unk40
	ts_check_flag 0x24, 0xC, 0x2A, 0xFF
	ts_check_flag 0x22, 0xC, 0x29, 0xFF
	ts_mugshot_show 0x19
	ts_msg_open
	.string "There's no school\n"
	.string "today,so there's\n"
	.string "just a few folks"
	ts_key_wait 0x0
	ts_clear_msg
	.string "here... Including\n"
	.string "the Principal,Mayor"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Cain,who's been here\n"
	.string "since yesterday."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He's been in the\n"
	.string "Principal's Office"
	ts_key_wait 0x0
	ts_clear_msg
	.string "like a bat in a cave\n"
	.string "working like crazy."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Being a Mayor and a\n"
	.string "Principal sure\n"
	.string "sounds stressful!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F7E4_unk41
	ts_mugshot_show 0x19
	ts_msg_open
	.string "What!? What!?\n"
	.string "Is something big\n"
	.string "happening!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F7E4_unk42
	ts_mugshot_show 0x19
	ts_msg_open
	.string "... It was probably\n"
	.string "just my imagination."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mayor Cain was being\n"
	.string "led out in handcuffs\n"
	.string "just now..."
	ts_key_wait 0x0
	ts_end

	