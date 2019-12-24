	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879F5FC::
	.word 0xB000

	text_archive_start

	def_text_script CompText879F5FC_unk0
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "YOU MIGHT NOT KNOW\n"
	.string "IT,BUT I'M REALLY A\n"
	.string "TOILET PROGRAM!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I CAN DO THINGS\n"
	.string "LIKE RELEASE MINUS\n"
	.string "IONS! CHECK IT OUT!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "LALALALALALALALA!\n"
	.string "ION POWER!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText879F5FC_unk1

	def_text_script CompText879F5FC_unk2

	def_text_script CompText879F5FC_unk3

	def_text_script CompText879F5FC_unk4

	def_text_script CompText879F5FC_unk5

	def_text_script CompText879F5FC_unk6

	def_text_script CompText879F5FC_unk7

	def_text_script CompText879F5FC_unk8

	def_text_script CompText879F5FC_unk9

	