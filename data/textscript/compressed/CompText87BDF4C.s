	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BDF4C::
	.word 0xC1700

	text_archive_start

	def_text_script CompText87BDF4C_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hang on,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87BDF4C_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Uuuugh...\n"
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string " Uuwaaaah!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BDF4C_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "M-MegaMan...!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_check_game_version 0x3, 0x4

	def_text_script CompText87BDF4C_unk3
	ts_mugshot_show 0x58
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x91, 0x1
	.string "*grrrrrr!!*"
	ts_wait 0x5A, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87BDF4C_unk4
	ts_mugshot_show 0x59
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x93, 0x1
	.string "*screeeeech!!*"
	ts_wait 0x46, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87BDF4C_unk5
	ts_check_navi_all 0xFF, 0xFF, 0x9, 0x7, 0xFF, 0xFF, 0x6, 0xA, 0x8, 0xFF, 0xFF, 0xFF
	ts_mugshot_show 0x47
	ts_msg_open
	.string "Yo,Lan!\n"
	.string "What's the plan!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87BDF4C_unk6
	ts_mugshot_show 0x48
	ts_msg_open
	.string "MegaMan's in pain,\n"
	.string "drip... Lan,what\n"
	.string "should I do,drip!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87BDF4C_unk7
	ts_mugshot_show 0x4B
	ts_msg_open
	.string "Here he comes!!\n"
	.string "Slash him...!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87BDF4C_unk8
	ts_mugshot_show 0x4C
	ts_msg_open
	.string "Hmm. The beast\n"
	.string "comes,Lan. What\n"
	.string "shall I do!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87BDF4C_unk9
	ts_mugshot_show 0x49
	ts_msg_open
	.string "He's coming at me!!\n"
	.string "I'm going to zap\n"
	.string "him a bit,OK,Lan!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87BDF4C_unk10
	ts_mugshot_show 0x4A
	ts_msg_open
	.string "Hmph! MegaMan's\n"
	.string "always getting him-\n"
	.string "self into trouble!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,Lan,what now?\n"
	.string "He's charging!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87BDF4C_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hold on..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "A little bit of his\n"
	.string "spirit might still\n"
	.string "be in there!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "MegaMan!!\n"
	.string "Please!! Wake up!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87BDF4C_unk12
	ts_check_navi_all 0xFF, 0xFF, 0x10, 0xE, 0xFF, 0xFF, 0xD, 0x11, 0xF, 0xFF, 0xFF, 0xFF
	ts_mugshot_show 0x47
	ts_msg_open
	.string "What in the blazes\n"
	.string "are you doing!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "He's gone,gone,gone!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hurry up and\n"
	.string "operate!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87BDF4C_unk13
	ts_mugshot_show 0x48
	ts_msg_open
	.string "But...if I wait any\n"
	.string "longer,I'll get\n"
	.string "evaporated,drip..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87BDF4C_unk14
	ts_mugshot_show 0x4B
	ts_msg_open
	.string "Tsk,I've got claws\n"
	.string "and you can't move\n"
	.string "YOUR hands!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87BDF4C_unk15
	ts_mugshot_show 0x4C
	ts_msg_open
	.string "Oogh!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I understand how you\n"
	.string "feel about MegaMan,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but his heart has\n"
	.string "been totally taken\n"
	.string "over!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87BDF4C_unk16
	ts_mugshot_show 0x49
	ts_msg_open
	.string "What are you doing\n"
	.string "being nice!? Attack\n"
	.string "now or I'll suffer!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Can you make those\n"
	.string "kinds of decisions!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87BDF4C_unk17
	ts_mugshot_show 0x4A
	ts_msg_open
	.string "I know how you feel,\n"
	.string "looking for any sign\n"
	.string "until the end..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87BDF4C_unk18
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan!!\n"
	.string "P-Please!!\n"
	.string "W-Wake up!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BDF4C_unk19
	ts_check_game_version 0xFF, 0x14
	ts_mugshot_show 0x58
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x91, 0x1
	.string "*grrrrrrrr!!*"
	ts_wait 0x5A, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 21

	def_text_script CompText87BDF4C_unk20
	ts_mugshot_show 0x59
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x93, 0x1
	.string "*screeeech!!*"
	ts_wait 0x46, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 21

	def_text_script CompText87BDF4C_unk21
	ts_check_navi_all 0xFF, 0xFF, 0x19, 0x17, 0xFF, 0xFF, 0x16, 0x1A, 0x18, 0xFF, 0xFF, 0xFF
	ts_mugshot_show 0x47
	ts_msg_open
	.string "Hooooo!!"
	ts_key_wait 0x0
	ts_sound_play_bgm 0x63, 0x0
	ts_end

	def_text_script CompText87BDF4C_unk22
	ts_mugshot_show 0x48
	ts_msg_open
	.string "D-Drip...!!"
	ts_key_wait 0x0
	ts_sound_play_bgm 0x63, 0x0
	ts_end

	def_text_script CompText87BDF4C_unk23
	ts_mugshot_show 0x4B
	ts_msg_open
	.string "Aaaah...!!"
	ts_key_wait 0x0
	ts_sound_play_bgm 0x63, 0x0
	ts_end

	def_text_script CompText87BDF4C_unk24
	ts_mugshot_show 0x4C
	ts_msg_open
	.string "Unnngh!!"
	ts_key_wait 0x0
	ts_sound_play_bgm 0x63, 0x0
	ts_end

	def_text_script CompText87BDF4C_unk25
	ts_mugshot_show 0x49
	ts_msg_open
	.string "Mmmmgn...!!"
	ts_key_wait 0x0
	ts_sound_play_bgm 0x63, 0x0
	ts_end

	def_text_script CompText87BDF4C_unk26
	ts_mugshot_show 0x4A
	ts_msg_open
	.string "Uuuwh...!!"
	ts_key_wait 0x0
	ts_sound_play_bgm 0x63, 0x0
	ts_end

	def_text_script CompText87BDF4C_unk27
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Who are you!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You move at such an\n"
	.string "incredible speed\n"
	.string "that"
	ts_key_wait 0x0
	ts_clear_msg
	.string "no one can see\n"
	.string "you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Are you the Navi\n"
	.string "that fought Colonel\n"
	.string "in the JudgeTree...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BDF4C_unk28
	ts_mugshot_show 0x5A
	ts_msg_open
	.string "... Don't worry. He\n"
	.string "is merely\n"
	.string "unconscious..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan Hikari,even if\n"
	.string "you have to delete\n"
	.string "MegaMan,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you must stop him.\n"
	.string "Would you let your\n"
	.string "weakness for him"
	ts_key_wait 0x0
	ts_clear_msg
	.string "put this Navi,and\n"
	.string "the whole Cyber-\n"
	.string "world in danger?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Don't forget that\n"
	.string "MegaMan is now a\n"
	.string "great danger to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "everyone. This time\n"
	.string "was a warning. Next\n"
	.string "time... No mercy..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BDF4C_unk29
	ts_mugshot_show 0x0
	ts_msg_open
	.string "My weakness..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm... I'm..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BDF4C_unk30
	ts_check_navi_all 0xFF, 0xFF, 0x22, 0x20, 0xFF, 0xFF, 0x1F, 0x23, 0x21, 0xFF, 0xFF, 0xFF
	ts_mugshot_show 0x47
	ts_msg_open
	.string "... Well,hey,it was\n"
	.string "looking kinda bad,\n"
	.string "I don't think you"
	ts_key_wait 0x0
	ts_clear_msg
	.string "were wrong...\n"
	.string "We got MegaMan back,\n"
	.string "right?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's just beat it!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BDF4C_unk31
	ts_mugshot_show 0x48
	ts_msg_open
	.string "That was scary,drip,\n"
	.string "but I'm glad we got\n"
	.string "MegaMan back,drip..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... I don't think\n"
	.string "you did anything\n"
	.string "wrong,Lan,drip!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Cheer up,and let's\n"
	.string "jack out,drip!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BDF4C_unk32
	ts_mugshot_show 0x4B
	ts_msg_open
	.string "Hey,my operator\n"
	.string "woulda done the same\n"
	.string "thing in that"
	ts_key_wait 0x0
	ts_clear_msg
	.string "situation... Come\n"
	.string "on,no harm done.\n"
	.string "Let's jack out."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BDF4C_unk33
	ts_mugshot_show 0x4C
	ts_msg_open
	.string "I could see your\n"
	.string "strong feelings for\n"
	.string "MegaMan..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You must be tired as\n"
	.string "well. Come,let us\n"
	.string "jack out."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BDF4C_unk34
	ts_mugshot_show 0x49
	ts_msg_open
	.string "I thought I was a\n"
	.string "goner for a little\n"
	.string "while..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Um,maybe that\n"
	.string "isn't the best thing\n"
	.string "to be saying..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Anyway,I managed to\n"
	.string "dodge MegaMan's\n"
	.string "attacks like"
	ts_key_wait 0x0
	ts_clear_msg
	.string "lightning,so let's\n"
	.string "jack out."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This isn't exactly\n"
	.string "the best place..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BDF4C_unk35
	ts_mugshot_show 0x4A
	ts_msg_open
	.string "It all turned out OK\n"
	.string "in the end,right? We\n"
	.string "got MegaMan back"
	ts_key_wait 0x0
	ts_clear_msg
	.string "unscratched...\n"
	.string "Well,not quite...\n"
	.string "At least he's back!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Lan,you weren't\n"
	.string "wrong."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There is a saying..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"Happiness visits\n"
	.string " those who trust\n"
	.string " their friends\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Come on,jack me out,\n"
	.string "or MegaMan won't get\n"
	.string "to get any rest!"
	ts_key_wait 0x0
	ts_end

	