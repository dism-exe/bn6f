	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AD6D8::
	.word 0x10700

	text_archive_start

	def_text_script CompText87AD6D8_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Alright!\n"
	.string "The Aquarium's back\n"
	.string "to normal!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Did you see that,\n"
	.string "Blackbeard!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AD6D8_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Ahh!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AD6D8_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	ts_sound_play_bgm 0xC, 0x0
	.string "He... He's gone!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AD6D8_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Where did he...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87AD6D8_unk4
	ts_mugshot_hide
	ts_msg_open
	.string "Wh-What the heck\n"
	.string "do you want!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Waaah!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AD6D8_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "That was Mick!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Don't tell me...\n"
	.string "N-No!!"
	ts_key_wait 0x0
	ts_end

	