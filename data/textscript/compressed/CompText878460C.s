	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878460C::
	.word 0x3DD00

	text_archive_start

	def_text_script CompText878460C_unk0
	ts_check_chapter 0x62, 0x62, 0xA, 0xFF
	ts_check_chapter 0x61, 0x61, 0x5, 0xFF
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "YOU PROBABLY SHOULD\n"
	.string "STAY AWAY FROM\n"
	.string "CENTRALAREA3..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "OR YOU WILL MAKE\n"
	.string "THE NETPOLICE MAD!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878460C_unk1
	ts_check_chapter 0x62, 0x62, 0xB, 0xFF
	ts_check_chapter 0x61, 0x61, 0x6, 0xFF
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "I went to check out\n"
	.string "CentralArea3,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and the NetPolice\n"
	.string "there were putting\n"
	.string "on a show of force."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878460C_unk2
	ts_check_chapter 0x61, 0x61, 0x7, 0xFF
	ts_mugshot_show 0x45
	ts_msg_open
	.string "The Underground...\n"
	.string "Legendary resting\n"
	.string "place of Cybeasts..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I want to check it\n"
	.string "out,but it's too\n"
	.string "scary!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878460C_unk3

	def_text_script CompText878460C_unk4

	def_text_script CompText878460C_unk5
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THE EXPO APPEARS\n"
	.string "TO BE OPENING ON\n"
	.string "TIME!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THAT'S GREAT!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878460C_unk6
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "The Expo... Lots of\n"
	.string "things from around\n"
	.string "the world will be"
	ts_key_wait 0x0
	ts_clear_msg
	.string "there!\n"
	.string "I can't wait!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878460C_unk7
	ts_mugshot_show 0x45
	ts_msg_open
	.string "The Expo?\n"
	.string "I don't care..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't like\n"
	.string "crowds..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878460C_unk8

	def_text_script CompText878460C_unk9

	def_text_script CompText878460C_unk10
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "I HEAR TODAY IS\n"
	.string "THE PRE-OPENING OF\n"
	.string "THE EXPO."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THE PEOPLE WHO GOT\n"
	.string "PICKED SURE ARE\n"
	.string "LUCKY!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878460C_unk11
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "If you go to the\n"
	.string "Expo,there are many\n"
	.string "places to jack in!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878460C_unk12

	def_text_script CompText878460C_unk13

	def_text_script CompText878460C_unk14

	def_text_script CompText878460C_unk15
	ts_mugshot_show 0x43
	ts_msg_open
	.string "We will destroy\n"
	.string "everything in this\n"
	.string "world!"
	ts_key_wait 0x0
	ts_flag_set 0xA9, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText878460C_unk16
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Hey! Go crawl back\n"
	.string "into your cave!"
	ts_key_wait 0x0
	ts_flag_set 0xAB, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText878460C_unk17

	def_text_script CompText878460C_unk18

	def_text_script CompText878460C_unk19

	def_text_script CompText878460C_unk20
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Wahhhh..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878460C_unk21
	ts_mugshot_show 0x45
	ts_msg_open
	.string "........"
	ts_key_wait 0x0
	ts_end

	