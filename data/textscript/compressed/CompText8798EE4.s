	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8798EE4::
	.word 0x8EC00

	text_archive_start

	def_text_script CompText8798EE4_unk0
	ts_mugshot_show 0x37
	ts_msg_open
	.string "It's a dead-end!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8798EE4_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "That Mr.Prog looks\n"
	.string "like he's in\n"
	.string "trouble."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go talk to\n"
	.string "him!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8798EE4_unk2
	ts_msg_open
	.string "The cloud seems to\n"
	.string "be undergoing\n"
	.string "maintenance."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8798EE4_unk3

	def_text_script CompText8798EE4_unk4

	def_text_script CompText8798EE4_unk5

	def_text_script CompText8798EE4_unk6

	def_text_script CompText8798EE4_unk7

	def_text_script CompText8798EE4_unk8

	def_text_script CompText8798EE4_unk9

	def_text_script CompText8798EE4_unk10
	ts_check_flag 0xDA, 0x11, 0xF, 0xFF
	ts_check_flag 0xD5, 0x11, 0xD, 0xFF
	ts_check_flag 0xD3, 0x11, 0xB, 0xFF
	ts_flag_set 0xD3, 0x11
	ts_mugshot_show 0x44
	ts_msg_open
	.string "YOU!!\n"
	.string "You're the new\n"
	.string "negotiator,right?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Ummm...yeah..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But... I'm not a\n"
	.string "member of the\n"
	.string "NetPolice though,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so calm down..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've no plans to\n"
	.string "hurt you..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "Really?\n"
	.string "Prove it..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Prove it...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "Yeah..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Go give this to my\n"
	.string "brother at the back\n"
	.string "of Undernet1."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x27, 0x1
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x27, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "This must be..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "It's the money\n"
	.string "I got as ransom."
	ts_key_wait 0x0
	ts_clear_msg
	.string "My brother looks\n"
	.string "just like me."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Go find him in the\n"
	.string "Undernet."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And don't forget to\n"
	.string "bring back proof\n"
	.string "that you met him!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hurry up!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8798EE4_unk11
	ts_check_flag 0xD4, 0x11, 0xFF, 0xC
	ts_flag_set 0xD5, 0x11
	ts_item_take 0x29, 0x1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "This is from your\n"
	.string "brother..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "MegaMan gave:\n"
	.string "\""
	ts_print_item 0x29, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "It's my brother's\n"
	.string "pendant..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You might be of\n"
	.string "use to me after\n"
	.string "all..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Ummm..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Your brother is\n"
	.string "worried about you."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He let the hostage\n"
	.string "go,and came out of\n"
	.string "hiding..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "SHUDDUP!\n"
	.string "We were thrown away\n"
	.string "together..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We will always stick\n"
	.string "together..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...We had no choice\n"
	.string "but to become\n"
	.string "criminals..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There is no way\n"
	.string "we will get caught\n"
	.string "now..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "But..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "SILENCE!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I haven't lowered\n"
	.string "my guard against\n"
	.string "you yet!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now you need to\n"
	.string "deliver this for me!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x28, 0x1
	ts_player_animate_scene 0x18
	ts_print_current_navi_ow
	.string " got:\n"
	.string "\""
	ts_print_item 0x28, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "Give that to the\n"
	.string "pink girl type\n"
	.string "Navi in Green Area2."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8798EE4_unk12
	ts_mugshot_show 0x44
	ts_msg_open
	.string "What're you doing!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Give that money\n"
	.string "to my brother in\n"
	.string "Undernet1!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "He looks just like\n"
	.string "me... You'll know\n"
	.string "when you see him!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "And don't forget to\n"
	.string "bring back proof\n"
	.string "that you met him!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hurry up!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8798EE4_unk13
	ts_check_flag 0xD6, 0x11, 0xFF, 0xE
	ts_flag_set 0xDA, 0x11
	ts_item_take 0x2A, 0x1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I'm back from\n"
	.string "handing over the\n"
	.string "TextData."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is her reply..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "MegaMan gave:\n"
	.string "\""
	ts_print_item 0x2A, 0x0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "\"I read your letter.\n"
	.string " Don't keep piling\n"
	.string " up your crimes..."
	ts_key_wait 0x0
	ts_clear_msg
	.string " Turn yourself in.\n"
	.string " Admit your crimes."
	ts_key_wait 0x0
	ts_clear_msg
	.string " Then come and get\n"
	.string " me..."
	ts_key_wait 0x0
	ts_clear_msg
	.string " I'm waiting for\n"
	.string " you... I'll always\n"
	.string " be waiting...\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "Waaaaahhhh..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Why don't you give\n"
	.string "up... For her..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "QUIET!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Green Town\n"
	.string "JudgeTreeComp3."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "What!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "The hostage\n"
	.string "took off from\n"
	.string "JudgeTreeComp3."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Check things out\n"
	.string "there."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "OK!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "Grrrrr..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8798EE4_unk14
	ts_mugshot_show 0x44
	ts_msg_open
	.string "What are you\n"
	.string "doing!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hurry up and take\n"
	.string "this TextData to\n"
	.string "Green Area2!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Give it to the\n"
	.string "pink girl type Navi!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8798EE4_unk15
	ts_mugshot_show 0x44
	ts_msg_open
	.string "The hostage\n"
	.string "took off from\n"
	.string "JudgeTreeComp3."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Check things out\n"
	.string "there."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8798EE4_unk16

	def_text_script CompText8798EE4_unk17

	def_text_script CompText8798EE4_unk18

	def_text_script CompText8798EE4_unk19

	def_text_script CompText8798EE4_unk20

	def_text_script CompText8798EE4_unk21

	def_text_script CompText8798EE4_unk22

	def_text_script CompText8798EE4_unk23

	def_text_script CompText8798EE4_unk24

	def_text_script CompText8798EE4_unk25

	def_text_script CompText8798EE4_unk26

	def_text_script CompText8798EE4_unk27

	def_text_script CompText8798EE4_unk28

	def_text_script CompText8798EE4_unk29

	def_text_script CompText8798EE4_unk30

	