	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B25A4::
	.word 0x6A000

	text_archive_start

	def_text_script CompText87B25A4_unk0
	ts_msg_open
	.string "After MegaMan drank\n"
	.string "the Healing Water,\n"
	.string "Lan never left"
	ts_key_wait 0x0
	ts_clear_msg
	.string "his side for even\n"
	.string "a blink. That was\n"
	.string "10 hours ago."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And,now,\n"
	.string "it's sunrise..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87B25A4_unk1
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Lan...\n"
	.string "How...is MegaMan?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B25A4_unk2
	ts_mugshot_show 0x5
	ts_msg_open
	.string "L-Lan..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_play_bgm 0xD, 0x0
	ts_jump 3

	def_text_script CompText87B25A4_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Dad"
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B25A4_unk4
	ts_mugshot_show 0x5
	ts_msg_open
	.string "... How is..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87B25A4_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string " He did it."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He"
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string ".beat the\n"
	.string "Cybeast."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He's finally\n"
	.string "sleeping\n"
	.string "peacefully..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm kinda\n"
	.string "sleepy now..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "*wobble*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B25A4_unk6
	ts_mugshot_show 0x5
	ts_msg_open
	.string "You both...\n"
	.string "...did great."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now,get some sleep,\n"
	.string "son..."
	ts_key_wait 0x0
	ts_sound_fade_out 0x1F, 0xC
	ts_end

	def_text_script CompText87B25A4_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Nngh...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Huh? When did I\n"
	.string "get into bed?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Ah!\n"
	.string "MegaMan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B25A4_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... M-MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87B25A4_unk9
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Morning,Lan..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I could hear you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When the Cybeast was\n"
	.string "taking me over,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "your voice brought\n"
	.string "me back..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So,thank you...\n"
	.string "And... I'm sorry\n"
	.string "I made you worry!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87B25A4_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "You're OK now,\n"
	.string "though,right?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... I'm so glad..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87B25A4_unk11
	ts_mugshot_show 0x37
	ts_msg_open
	.string "The Cybeast will\n"
	.string "probably try to\n"
	.string "take control again,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but I won't lose!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Yeah!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87B25A4_unk12
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Just when I think\n"
	.string "everything's OK,my\n"
	.string "stomach yells at me!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Oh... You didn't\n"
	.string "eat anything since\n"
	.string "last night because"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you were watching\n"
	.string "over me,did you...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "And it's lunchtime\n"
	.string "already..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Yeah,I guess it\n"
	.string "is..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87B25A4_unk13
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_call_p_e_t_effect 0x2
	.string "*beep beep!*"
	ts_wait 0x3E, 0x0
	ts_call_p_e_t_effect 0x1
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87B25A4_unk14
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,you've got mail!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... It's from Dad!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll read it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"It looks like you\n"
	.string " were able to fight\n"
	.string " off the Cybeast."
	ts_key_wait 0x0
	ts_clear_msg
	.string " While you two were\n"
	.string " sleeping, I studied\n"
	.string " MegaMan's body a"
	ts_key_wait 0x0
	ts_clear_msg
	.string " little. The Cybeast\n"
	.string " is somehow living\n"
	.string " in there."
	ts_key_wait 0x0
	ts_clear_msg
	.string " I've installed a\n"
	.string " function in Lan's\n"
	.string " PET and in MegaMan"
	ts_key_wait 0x0
	ts_clear_msg
	.string " that will allow you\n"
	.string " to control the\n"
	.string " Cybeast. Whether"
	ts_key_wait 0x0
	ts_clear_msg
	.string " you can master that\n"
	.string " power depends on\n"
	.string " you!\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "... That's what it\n"
	.string "says!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hey,there's a battle\n"
	.string "program attached!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's try it out!\n"
	.string "Initiating program!"
	ts_key_wait 0x0
	ts_end

	