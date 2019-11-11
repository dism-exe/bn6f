	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AD7C8::
	.word 0x5B000

	text_archive_start

	def_text_script CompText87AD7C8_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Mick!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AD7C8_unk1
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Sorry,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I let my\n"
	.string "guard down..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87AD7C8_unk2
	ts_mugshot_show 0x2A
	ts_msg_open
	.string "Hey,shut yer trap!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87AD7C8_unk3
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Ugh...!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87AD7C8_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "S-Stop it!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AD7C8_unk5
	ts_mugshot_show 0x2A
	ts_msg_open
	.string "Heh! I wouldn't\n"
	.string "get any closer"
	ts_key_wait 0x0
	ts_clear_msg
	.string "if ye care 'bout\n"
	.string "yer friend 'ere,boy."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87AD7C8_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "That's low!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87AD7C8_unk7
	ts_mugshot_show 0x2A
	ts_msg_open
	.string "Say whatever ye\n"
	.string "want,boy!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yer no saint\n"
	.string "yerself!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ye come 'ere,messin'\n"
	.string "up me show!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I was goin' to take\n"
	.string "over this town's\n"
	.string "waterworks,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and stop the\n"
	.string "water in all of\n"
	.string "Cyber City,but"
	ts_key_wait 0x0
	ts_clear_msg
	.string "ye 'ad to come and\n"
	.string "mess it all up!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87AD7C8_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let Mick go!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87AD7C8_unk9
	ts_mugshot_show 0x2A
	ts_msg_open
	.string "Don't get\n"
	.string "any closer!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I didn't come 'ere\n"
	.string "to fail,boy!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I had to ask some\n"
	.string "favors of the\n"
	.string "\"organization\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "for me show. But yer\n"
	.string "ruinin' my standin'\n"
	.string "with \"'em\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ye get me?\n"
	.string "So ye better listen\n"
	.string "real good,boy!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Open all the cages\n"
	.string "and tanks again.\n"
	.string "NOW!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87AD7C8_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Standing with the\n"
	.string "\"organization\"?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What are you talking\n"
	.string "about!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87AD7C8_unk11
	ts_mugshot_show 0x2A
	ts_msg_open
	.string "None of ye business!\n"
	.string "If ye don't hurry,\n"
	.string "ye know what'll..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12
	ts_jump 12

	def_text_script CompText87AD7C8_unk12
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Ugh!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87AD7C8_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "M-Mick!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Darn it!\n"
	.string "If I don't...!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Huh?"
	ts_sound_fade_out 0x1F, 0xA
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AD7C8_unk14
	ts_mugshot_show 0x2A
	ts_msg_open
	.string "What's this...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AD7C8_unk15
	ts_mugshot_hide
	ts_msg_open
	ts_control_lock
	.string "*aur! aur! aur!*"
	ts_wait 0x23, 0x0
	ts_jump 16

	def_text_script CompText87AD7C8_unk16
	ts_mugshot_show 0x2A
	ts_msg_open
	ts_control_lock
	.string "Geeeeeh!!"
	ts_wait 0x23, 0x0
	ts_end

	def_text_script CompText87AD7C8_unk17
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x7B, 0x1
	.string "Thuuud!"
	ts_wait 0x27, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87AD7C8_unk18
	ts_mugshot_show 0x2A
	ts_msg_open
	.string "Gwaaaaah!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AD7C8_unk19
	ts_mugshot_show 0x2A
	ts_msg_open
	.string "... Nngh..."
	ts_key_wait 0x0
	ts_sound_fade_in_bgm 0x6, 0x7
	ts_clear_msg
	ts_jump 20

	def_text_script CompText87AD7C8_unk20
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Y-You did it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You did it!\n"
	.string "Great job,Plata!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 21

	def_text_script CompText87AD7C8_unk21
	ts_mugshot_hide
	ts_msg_open
	.string "*Squawk!!*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script CompText87AD7C8_unk22
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Y-You..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AD7C8_unk23
	ts_mugshot_show 0x14
	ts_msg_open
	.string "D-Did you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "come to save me...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 24

	def_text_script CompText87AD7C8_unk24
	ts_mugshot_hide
	ts_msg_open
	.string "*Squawk!! Squawk!!*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 25

	def_text_script CompText87AD7C8_unk25
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Yeah!\n"
	.string "Plata came to\n"
	.string "save you,Mick!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That was awesome,\n"
	.string "Plata!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 26

	def_text_script CompText87AD7C8_unk26
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Ha,ha,ha..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You stupid bird..."
	ts_key_wait 0x0
	ts_sound_fade_out 0x1F, 0xA
	ts_wait 0xA, 0x0
	ts_end

	