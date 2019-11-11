	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A5A60::
	.word 0x66600

	text_archive_start

	def_text_script CompText87A5A60_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	ts_mugshot_animation 0x1
	.string "(I'm really here...!"
	ts_key_wait 0x0
	ts_clear_msg
	.string " My new classroom,\n"
	.string " and classmates..."
	ts_key_wait 0x0
	ts_clear_msg
	.string " *gulp*\n"
	.string " I'm so nervous...)"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A5A60_unk1
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Everyone!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Like I said,starting\n"
	.string "today,we have a new\n"
	.string "student!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87A5A60_unk2
	ts_mugshot_hide
	ts_msg_open
	.string "*chatter,chatter*...\n"
	.string "...*whisper,whisper*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xC
	.string "I wonder what\n"
	.string "they're like?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x9
	.string "Is it a guy?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Or maybe a girl?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xB
	.string "Ah,I can't wait!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87A5A60_unk3
	ts_mugshot_show 0x14
	ts_msg_open
	.string "...... Hmph!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87A5A60_unk4
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Ok,now settle down!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Alright,come on\n"
	.string "in,Lan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A5A60_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I'm L-Lan H-Hikari!\n"
	.string "Nice to meet you!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87A5A60_unk6
	ts_mugshot_hide
	ts_msg_open
	.string "*clap,clap,clap*..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87A5A60_unk7
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Hmm,that was a nice,\n"
	.string "energetic greeting!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_play_bgm 0x5, 0x0
	.string "He's quite the\n"
	.string "fearless guy!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can tell he has a\n"
	.string "lot of faith in his\n"
	.string "NetBattling skills!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But! Reckless\n"
	.string "NetBattling is a\n"
	.string "no-no!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So let's play nice\n"
	.string "and be good friends!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now,then..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan,your seat...\n"
	.string "is over there."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A5A60_unk8
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Right behind Mick."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hey,Mick,try to be\n"
	.string "nice,OK!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x14
	.string "........."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x12
	.string "His name's Mick."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He's a little\n"
	.string "grouchy,but he's\n"
	.string "not a bad guy."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's all. You can\n"
	.string "sit down now,Lan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87A5A60_unk9
	ts_mugshot_show 0x0
	ts_msg_open
	.string "OK."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A5A60_unk10
	ts_mugshot_show 0x14
	ts_msg_open
	ts_mugshot_animation 0x1
	.string "... *eye roll*"
	ts_key_wait 0x0
	ts_sound_play_bgm 0x63, 0x0
	ts_end

	def_text_script CompText87A5A60_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I'm Lan Hikari.\n"
	.string "N-Nice to meet you!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87A5A60_unk12
	ts_mugshot_show 0x14
	ts_msg_open
	.string "........."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...... Hmph!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_play_bgm 0x5, 0x0
	ts_jump 13

	def_text_script CompText87A5A60_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Eh,heh heh heh..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_animation 0x1
	.string "(W-What's with him!?\n"
	.string " I've got a bad\n"
	.string " feeling...)"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A5A60_unk14
	ts_mugshot_show 0x0
	ts_msg_open
	ts_mugshot_animation 0x1
	.string "(Boy,that was\n"
	.string " scary..."
	ts_key_wait 0x0
	ts_clear_msg
	.string " but it'd be nice\n"
	.string " if we could\n"
	.string " be friends...)"
	ts_key_wait 0x0
	ts_sound_fade_out 0x1F, 0x5
	ts_end

	def_text_script CompText87A5A60_unk15
	ts_sound_play_bgm 0x63, 0x0
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x77, 0x1
	.string "*ding,"
	ts_wait 0x2A, 0x0
	.string "dong,"
	ts_wait 0x28, 0x0
	.string "ding,"
	ts_wait 0x28, 0x0
	.string "dong*"
	ts_wait 0x50, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 16

	def_text_script CompText87A5A60_unk16
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Oh,it's already\n"
	.string "break time!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "OK,next period is\n"
	.string "Virus Busting!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Did anyone forget to\n"
	.string "bring their Navi?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Wow,no one!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script CompText87A5A60_unk17
	ts_msg_open
	.string "Wahahahahahahahaha!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87A5A60_unk18
	ts_mugshot_show 0x0
	ts_mugshot_animation 0x1
	ts_msg_open
	.string "Mr.Mach seems like\n"
	.string "he can do anything.\n"
	.string "...... Maybe."
	ts_key_wait 0x0
	ts_clear_msg
	.string "My first recess.\n"
	.string "Guess I should go\n"
	.string "talk with everyone."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Talk about nerve-\n"
	.string "wracking."
	ts_key_wait 0x0
	ts_end

	