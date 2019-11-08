	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8795A44::
	.word 0x5C200

	text_archive_start

	def_text_script CompText8795A44_unk0
	ts_flag_set 0xB8, 0xA
	ts_end

	def_text_script CompText8795A44_unk1
	ts_flag_set 0xB9, 0xA
	ts_end

	def_text_script CompText8795A44_unk2

	def_text_script CompText8795A44_unk3

	def_text_script CompText8795A44_unk4

	def_text_script CompText8795A44_unk5

	def_text_script CompText8795A44_unk6

	def_text_script CompText8795A44_unk7

	def_text_script CompText8795A44_unk8

	def_text_script CompText8795A44_unk9

	def_text_script CompText8795A44_unk10

	def_text_script CompText8795A44_unk11

	def_text_script CompText8795A44_unk12

	def_text_script CompText8795A44_unk13

	def_text_script CompText8795A44_unk14

	def_text_script CompText8795A44_unk15

	def_text_script CompText8795A44_unk16

	def_text_script CompText8795A44_unk17

	def_text_script CompText8795A44_unk18

	def_text_script CompText8795A44_unk19

	def_text_script CompText8795A44_unk20
	ts_check_flag 0xD8, 0xC, 0xFF, 0x1A
	ts_check_flag 0xC2, 0xC, 0x16, 0xFF
	ts_check_flag 0xE4, 0xC, 0x15, 0xFF
	ts_mugshot_show 0x44
	ts_msg_open
	.string "......"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8795A44_unk21
	ts_mugshot_show 0x44
	ts_msg_open
	.string "If you want to get\n"
	.string "to Undernet2,it's\n"
	.string "through that door."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... But,that door is\n"
	.string "locked shut,bub."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The Navi who had the\n"
	.string "password was caught\n"
	.string "by the NetPolice..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Speaking of,that\n"
	.string "Navi's operator was\n"
	.string "also caught."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hee,hee,hee.\n"
	.string "What an idiot that\n"
	.string "operator was."
	ts_key_wait 0x0
	ts_clear_msg
	.string "What are they doing\n"
	.string "now? Probably doing\n"
	.string "their time,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "wouldn't you\n"
	.string "think...?\n"
	.string "Hee,hee,hee!"
	ts_key_wait 0x0
	ts_flag_set 0xC2, 0xC
	ts_end

	def_text_script CompText8795A44_unk22
	ts_mugshot_show 0x44
	ts_msg_open
	.string "... That door is\n"
	.string "locked shut,bub."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The Navi who had the\n"
	.string "password was caught\n"
	.string "by the NetPolice..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Speaking of,that\n"
	.string "Navi's operator was\n"
	.string "also caught."
	ts_key_wait 0x0
	ts_clear_msg
	.string "What are they doing\n"
	.string "now? Probably doing\n"
	.string "their time,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "wouldn't you\n"
	.string "think...?\n"
	.string "Hee,hee,hee!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8795A44_unk23
	ts_check_flag 0xC8, 0xC, 0x19, 0xFF
	ts_check_flag 0xE4, 0xC, 0x18, 0xFF
	ts_mugshot_show 0x44
	ts_msg_open
	.string "... Huh? MoonStone?\n"
	.string "Don't know. Never\n"
	.string "heard of it."
	ts_key_wait 0x0
	ts_clear_msg
	.string "No,wait a sec...\n"
	.string "Uh... I heard once\n"
	.string "that Undernet2 is"
	ts_key_wait 0x0
	ts_clear_msg
	.string "famous for sky\n"
	.string "gazing..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Undernet2,huh...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x44
	.string "... Ugh,why am I\n"
	.string "even giving you info\n"
	.string "anyway!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Go on,get outta\n"
	.string "here! Scram!"
	ts_key_wait 0x0
	ts_flag_set 0xE4, 0xC
	ts_end

	def_text_script CompText8795A44_unk24
	ts_mugshot_show 0x44
	ts_msg_open
	.string "Uh... I heard once\n"
	.string "that Undernet2 is"
	ts_key_wait 0x0
	ts_clear_msg
	.string "famous for sky\n"
	.string "gazing..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Ugh,why am I\n"
	.string "even giving you info\n"
	.string "anyway!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Go on,get outta\n"
	.string "here! Scram!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8795A44_unk25
	ts_mugshot_show 0x44
	ts_msg_open
	.string "... What do you\n"
	.string "want!? You got your\n"
	.string "stupid MoonStone!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You should be\n"
	.string "thanking me since it\n"
	.string "was my wonderful and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "useful advice that\n"
	.string "got you the stone!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8795A44_unk26
	ts_mugshot_show 0x44
	ts_msg_open
	.string "... How did you know\n"
	.string "the password...?"
	ts_key_wait 0x0
	ts_end

	