	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D1A44::
	.word 0x34D00

	text_archive_start

	def_text_script CompText87D1A44_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Where am I?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1A44_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Waaa!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87D1A44_unk2
	ts_mugshot_hide
	ts_msg_open
	.string "Someone's here!\n"
	.string "Hurry up!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1A44_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ah! You guys!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1A44_unk4
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "Eek! Lan Hikari!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1A44_unk5
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "Hurry up,Ito!!\n"
	.string "We're going to go\n"
	.string "on ahead!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1A44_unk6
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "Please wait a\n"
	.string "second! I'll be\n"
	.string "right there!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... OK!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1A44_unk7
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "*huff,huff...*\n"
	.string "Ah,I'm worn out..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "*sigh*\n"
	.string "OK,everything is\n"
	.string "set. Let's go."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1A44_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Wait!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1A44_unk9
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I can walk on these,\n"
	.string "right...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1A44_unk10
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "Sorry,not any more!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1A44_unk11
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "Switch on!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1A44_unk12
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x51, 0x1
	.string "*beep!*"
	ts_wait 0x14, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1A44_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Waaa!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87D1A44_unk14
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "Tee,hee.\n"
	.string "Looks like we\n"
	.string "get first dibs!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1A44_unk15
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Wait!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What should I do!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 16

	def_text_script CompText87D1A44_unk16
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1A44_unk17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,over there!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I think Ito did\n"
	.string "something to that!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D1A44_unk18
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... It looks like\n"
	.string "the control panel\n"
	.string "for this pavilion."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 19

	def_text_script CompText87D1A44_unk19
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,jack me in!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll fix the system!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 20

	def_text_script CompText87D1A44_unk20
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Alright,let's do it!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_control_lock
	ts_text_speed 0x1
	.string "Jack in!"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "MegaMan,"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "Execute!!"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_end

	