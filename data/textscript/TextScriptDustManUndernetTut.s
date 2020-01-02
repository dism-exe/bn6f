TextScriptDustManUndernetTut::
	text_archive_start

	def_text_script TextScriptDustManUndernetTut_unk0
	ts_check_flag [
		flag: 0xCEB,
		jumpIfTrue: TextScriptDustManUndernetTut_unk4_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0xCEB
	ts_jump target=TextScriptDustManUndernetTut_unk4_id

	def_text_script TextScriptDustManUndernetTut_unk1
	ts_jump target=TextScriptDustManUndernetTut_unk4_id

	def_text_script TextScriptDustManUndernetTut_unk2
	ts_jump target=TextScriptDustManUndernetTut_unk4_id

	def_text_script TextScriptDustManUndernetTut_unk3
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Alright! Let's\n"
	.string "get started!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I think you already\n"
	.string "know this,but I'm"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "gonna keep throwing\n"
	.string "trash from here,so"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "suck it all into the\n"
	.string "DustChute in your\n"
	.string "chest!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You know the\n"
	.string "DustChute is the\n"
	.string "A Button,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh yeah! Sometimes\n"
	.string "there will be a\n"
	.string "bomb inside the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "trash,so be careful!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why bombs!?\n"
	.string "Because this is the\n"
	.string "Undernet!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When a bomb goes\n"
	.string "flying,use your"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "DustBrk by pressing\n"
	.string "the B Button to grab\n"
	.string "and smash it!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you don't break\n"
	.string "it,it'll cause a\n"
	.string "huge explosion!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So be careful!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh,and if you catch\n"
	.string "a heart among the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "trash you will\n"
	.string "recover your HP!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When the Trash Meter\n"
	.string "at the top of the\n"
	.string "screen is full..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that's about all you\n"
	.string "can carry,so you can\n"
	.string "call it quits."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Enough talk!\n"
	.string "Ready! Set! Go!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptDustManUndernetTut_unk4
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Alright!\n"
	.string "Let's start!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But before we do,\n"
	.string "you want me to give\n"
	.string "your memory a little"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "brushin' up? Like,\n"
	.string "help you remember\n"
	.string "how it's done?"
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
	ts_select 0x6, 0x80, 0x3, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x44
	.string "Oops! I hope I\n"
	.string "didn't make you mad!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's start!\n"
	.string "Ready! Set! Go!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptDustManUndernetTut_unk5

	def_text_script TextScriptDustManUndernetTut_unk6

	def_text_script TextScriptDustManUndernetTut_unk7

	def_text_script TextScriptDustManUndernetTut_unk8

	def_text_script TextScriptDustManUndernetTut_unk9

	def_text_script TextScriptDustManUndernetTut_unk10

	def_text_script TextScriptDustManUndernetTut_unk11

	def_text_script TextScriptDustManUndernetTut_unk12

	def_text_script TextScriptDustManUndernetTut_unk13

	def_text_script TextScriptDustManUndernetTut_unk14

	def_text_script TextScriptDustManUndernetTut_unk15

	def_text_script TextScriptDustManUndernetTut_unk16

	def_text_script TextScriptDustManUndernetTut_unk17

	def_text_script TextScriptDustManUndernetTut_unk18

	def_text_script TextScriptDustManUndernetTut_unk19
	.string " "

	.balign 4, 0
