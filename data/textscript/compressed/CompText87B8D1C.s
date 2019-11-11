	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B8D1C::
	.word 0x4DE00

	text_archive_start

	def_text_script CompText87B8D1C_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... There's nothing\n"
	.string "really useful here."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87B8D1C_unk1
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "HOLD ON...\n"
	.string "AH,HERE WE ARE!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B8D1C_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It's just Mick."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Him being in the\n"
	.string "classroom isn't\n"
	.string "that strange."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B8D1C_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What's with him?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "He's all fidgety..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B8D1C_unk4
	ts_mugshot_show 0x14
	ts_msg_open
	.string "\"Hey,you,come here!"
	ts_key_wait 0x0
	ts_clear_msg
	.string " There's some weird\n"
	.string " thing here!\""
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B8D1C_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It's a Security\n"
	.string "Bot..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "What's Mick up\n"
	.string "to now...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B8D1C_unk6
	ts_mugshot_show 0x14
	ts_msg_open
	.string "\"Look,something\n"
	.string " strange's in this\n"
	.string " closet,I tell you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string " Aren't you a\n"
	.string " Security Bot?\n"
	.string " Aren't you supposed"
	ts_key_wait 0x0
	ts_clear_msg
	.string " to protect the\n"
	.string " school? Well,then,\n"
	.string " do your job!\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87B8D1C_unk7
	ts_mugshot_hide
	ts_msg_open
	.string "\"I UNDERSTAND.\""
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B8D1C_unk8
	ts_mugshot_show 0x14
	ts_msg_open
	.string "\"Look real closely!\""
	ts_key_wait 0x0
	ts_end
	ts_jump 9

	def_text_script CompText87B8D1C_unk9
	ts_mugshot_hide
	ts_msg_open
	.string "\"."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string "\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"I DON'T SEE\n"
	.string " ANYTHING\n"
	.string " STRANGE...\""
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87B8D1C_unk10
	ts_mugshot_show 0x14
	ts_msg_open
	.string "\"Aw,come on,you're\n"
	.string " not looking hard\n"
	.string " enough! It's..."
	ts_key_wait 0x0
	ts_clear_msg
	.string " here!\""
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B8D1C_unk11
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0xA1, 0x1
	.string "*clank! "
	ts_wait 0x6, 0x0
	ts_sound_play00 0xA1, 0x1
	.string "clank!*"
	ts_wait 0x6, 0x0
	.string "\n"
	ts_sound_play00 0xA1, 0x1
	.string "*clank! "
	ts_wait 0x6, 0x0
	ts_sound_play00 0xA1, 0x1
	.string "clank!*"
	ts_wait 0x6, 0x0
	.string "\n"
	ts_sound_play00 0xA1, 0x1
	.string "*clank!*"
	ts_wait 0x1A, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
	.string "... "
	ts_sound_play00 0xA1, 0x1
	.string "*clank! "
	ts_wait 0xD, 0x0
	ts_sound_play00 0xA1, 0x1
	.string "clank!*"
	ts_wait 0x6, 0x0
	.string "\n"
	.string "... "
	ts_sound_play00 0xA1, 0x1
	.string "*clank!*"
	ts_wait 0x1A, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
	.string "... "
	ts_sound_play00 0xA1, 0x1
	.string "*clank!*"
	ts_wait 0x1A, 0x0
	.string "\n"
	.string "........."
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B8D1C_unk12
	ts_mugshot_show 0x14
	ts_msg_open
	.string "\"Hehehe! I got a\n"
	.string " Security Bot!"
	ts_key_wait 0x0
	ts_clear_msg
	.string " I'm gonna tell\n"
	.string " everyone all\n"
	.string " about it!\""
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B8D1C_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It's just another\n"
	.string "one of his pranks..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If I tell Mr.Mach,\n"
	.string "he'll get in trouble\n"
	.string "again..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And anyway,this has\n"
	.string "nothing to do with\n"
	.string "Dad."
	ts_key_wait 0x0
	ts_clear_msg
	.string "*sigh*..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We're almost out\n"
	.string "of time..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "MegaMan,let's try\n"
	.string "to think of another\n"
	.string "plan."
	ts_key_wait 0x0
	ts_end

	