	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87786EC::
	.word 0x19300

	text_archive_start

	def_text_script CompText87786EC_unk0
	ts_check_chapter 0x23, 0x23, 0x3, 0xFF
	ts_mugshot_show 0x8
	ts_msg_open
	.string "BooooOOOooo!\n"
	.string "They aren't having\n"
	.string "the show today!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Boooooorrrriiinnng!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87786EC_unk1

	def_text_script CompText87786EC_unk2

	def_text_script CompText87786EC_unk3
	ts_mugshot_show 0x8
	ts_msg_open
	.string "Awww...\n"
	.string "They really aren't\n"
	.string "having a show."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go home!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87786EC_unk4

	def_text_script CompText87786EC_unk5
	ts_check_chapter 0x25, 0x25, 0x8, 0xFF
	ts_mugshot_show 0x16
	ts_msg_open
	.string "There are no guests!\n"
	.string "This isn't where the\n"
	.string "show is held..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87786EC_unk6

	def_text_script CompText87786EC_unk7

	def_text_script CompText87786EC_unk8
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Yahhhhhh...\n"
	.string "Boooorrriiinnnggg!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87786EC_unk9

	def_text_script CompText87786EC_unk10
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Huh?\n"
	.string "Today's show is\n"
	.string "already over!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm sorry..."
	ts_key_wait 0x0
	ts_end

	