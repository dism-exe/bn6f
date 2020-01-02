	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879E4C4::
	.word 0xC600

	text_archive_start

	def_text_script CompText879E4C4_unk0
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "That virus really\n"
	.string "surprised me!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You've got great\n"
	.string "technique!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879E4C4_unk1
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "...Hmm...\n"
	.string "I guess it's time\n"
	.string "to jack out!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879E4C4_unk2
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "...What!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "Just kidding!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879E4C4_unk3

	def_text_script CompText879E4C4_unk4

	def_text_script CompText879E4C4_unk5

	def_text_script CompText879E4C4_unk6

	def_text_script CompText879E4C4_unk7

	def_text_script CompText879E4C4_unk8

	def_text_script CompText879E4C4_unk9

	def_text_script CompText879E4C4_unk10

	def_text_script CompText879E4C4_unk11

	def_text_script CompText879E4C4_unk12

	def_text_script CompText879E4C4_unk13

	def_text_script CompText879E4C4_unk14

	def_text_script CompText879E4C4_unk15

	def_text_script CompText879E4C4_unk16

	def_text_script CompText879E4C4_unk17

	def_text_script CompText879E4C4_unk18

	def_text_script CompText879E4C4_unk19

	