	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87921F4::
	.word 0x36500

	text_archive_start

	def_text_script CompText87921F4_unk0
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WELCOME TO\n"
	.string "SKY AREA1.\n"
	.string "ENJOY YOUR STAY..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87921F4_unk1
	ts_check_chapter 0x62, 0x62, 0xA, 0xFF
	ts_check_chapter 0x61, 0x61, 0x5, 0xFF
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Lately there\n"
	.string "has been a lot\n"
	.string "of crime..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The Undernet is next\n"
	.string "to this area,so it's\n"
	.string "kind of scary..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87921F4_unk2
	ts_check_chapter 0x62, 0x62, 0xB, 0xFF
	ts_check_chapter 0x61, 0x61, 0x6, 0xFF
	ts_mugshot_show 0x45
	ts_msg_open
	.string "I just heard this\n"
	.string "from a friend in\n"
	.string "Sky Area2..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Seems a lot of evil\n"
	.string "Navis are wandering\n"
	.string "in the Undernet..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87921F4_unk3

	def_text_script CompText87921F4_unk4

	def_text_script CompText87921F4_unk5
	ts_mugshot_show 0x41
	ts_msg_open
	.string "They're really\n"
	.string "going to hold the\n"
	.string "Expo?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've got a bad\n"
	.string "feeling about this!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87921F4_unk6
	ts_mugshot_show 0x45
	ts_msg_open
	.string "The Expo,huh?\n"
	.string "Sounds fun!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This should bring\n"
	.string "the attention of the\n"
	.string "world to Cyber City!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87921F4_unk7

	def_text_script CompText87921F4_unk8

	def_text_script CompText87921F4_unk9

	def_text_script CompText87921F4_unk10
	ts_mugshot_show 0x41
	ts_msg_open
	.string "The NetPolice have\n"
	.string "improved their\n"
	.string "patrols..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So it's OK to open\n"
	.string "the Expo!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87921F4_unk11
	ts_mugshot_show 0x45
	ts_msg_open
	.string "The Expo Site\n"
	.string "already looks like\n"
	.string "it's a lot of fun!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87921F4_unk12

	def_text_script CompText87921F4_unk13

	def_text_script CompText87921F4_unk14

	def_text_script CompText87921F4_unk15
	ts_mugshot_show 0x43
	ts_msg_open
	.string "I'm gonna pummel you\n"
	.string "back into the dirt!"
	ts_key_wait 0x0
	ts_flag_set 0xB7, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText87921F4_unk16
	ts_mugshot_show 0x43
	ts_msg_open
	.string "I'm going to delete\n"
	.string "you! Get ready!!"
	ts_key_wait 0x0
	ts_flag_set 0xB9, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	