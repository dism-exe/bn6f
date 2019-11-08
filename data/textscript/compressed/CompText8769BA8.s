	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8769BA8::
	.word 0x2C300

	text_archive_start

	def_text_script CompText8769BA8_unk0
	ts_check_flag 0x5D, 0xE, 0x1, 0xFF
	ts_mugshot_show 0x33
	ts_msg_open
	.string "Ahhh,welcome!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Huh,you're inviting\n"
	.string "me to the Expo too?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thank you!!\n"
	.string "I'm so happy!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I will go with you\n"
	.string "for sure!!"
	ts_key_wait 0x0
	ts_flag_set 0x5D, 0xE
	ts_end

	def_text_script CompText8769BA8_unk1
	ts_mugshot_show 0x33
	ts_msg_open
	.string "Lan's great!\n"
	.string "He even invited me\n"
	.string "to the Expo!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769BA8_unk2

	def_text_script CompText8769BA8_unk3

	def_text_script CompText8769BA8_unk4

	def_text_script CompText8769BA8_unk5
	ts_mugshot_show 0xB
	ts_msg_open
	.string "I really like this\n"
	.string "chip magazine."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The comic in the\n"
	.string "back is the best!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769BA8_unk6
	ts_mugshot_show 0xE
	ts_msg_open
	.string "Buy the best chip\n"
	.string "you can afford..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is important\n"
	.string "for every great\n"
	.string "NetBattler to know!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769BA8_unk7

	def_text_script CompText8769BA8_unk8

	def_text_script CompText8769BA8_unk9

	def_text_script CompText8769BA8_unk10
	ts_mugshot_show 0xD
	ts_msg_open
	.string "The Net here\n"
	.string "has always been\n"
	.string "dangerous,so if you"
	ts_key_wait 0x0
	ts_clear_msg
	.string "don't prepare chips\n"
	.string "properly,your navi\n"
	.string "could be defeated!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Even if the chip's\n"
	.string "expensive,you need\n"
	.string "to buy good chips!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8769BA8_unk11
	ts_mugshot_show 0xA
	ts_msg_open
	.string "It was a hard number\n"
	.string "to get,but all I got\n"
	.string "was a MiniEnrg!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Cheeeapppp..."
	ts_key_wait 0x0
	ts_end

	