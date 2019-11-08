	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText874713C::
	.word 0x29200

	text_archive_start

	def_text_script CompText874713C_unk0
	ts_check_chapter 0x50, 0x53, 0x5, 0xFF
	ts_check_chapter 0x43, 0x46, 0xF, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874713C_unk1

	def_text_script CompText874713C_unk2

	def_text_script CompText874713C_unk3

	def_text_script CompText874713C_unk4

	def_text_script CompText874713C_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Things don't look\n"
	.string "too damaged from the\n"
	.string "ElementMan incident."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874713C_unk6

	def_text_script CompText874713C_unk7

	def_text_script CompText874713C_unk8

	def_text_script CompText874713C_unk9

	def_text_script CompText874713C_unk10

	def_text_script CompText874713C_unk11

	def_text_script CompText874713C_unk12

	def_text_script CompText874713C_unk13

	def_text_script CompText874713C_unk14

	def_text_script CompText874713C_unk15
	ts_check_flag 0x2E, 0xA, 0x1B, 0xFF
	ts_end

	def_text_script CompText874713C_unk16

	def_text_script CompText874713C_unk17

	def_text_script CompText874713C_unk18

	def_text_script CompText874713C_unk19

	def_text_script CompText874713C_unk20

	def_text_script CompText874713C_unk21

	def_text_script CompText874713C_unk22

	def_text_script CompText874713C_unk23

	def_text_script CompText874713C_unk24

	def_text_script CompText874713C_unk25

	def_text_script CompText874713C_unk26

	def_text_script CompText874713C_unk27
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We've gotta fix\n"
	.string "Mr.Weather,MegaMan!"
	ts_key_wait 0x0
	ts_end

	