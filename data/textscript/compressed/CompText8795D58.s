	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8795D58::
	.word 0xF000

	text_archive_start

	def_text_script CompText8795D58_unk0
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "Who are you! I've\n"
	.string "never seen you\n"
	.string "before!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "What are you doing\n"
	.string "here!?\n"
	.string "Get lost!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0xE55,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_end

	def_text_script CompText8795D58_unk1
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "I'm bored...\n"
	.string "Hey ugly!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Deleting you should\n"
	.string "help pass the time!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0xE56,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_end

	def_text_script CompText8795D58_unk2

	def_text_script CompText8795D58_unk3

	def_text_script CompText8795D58_unk4

	def_text_script CompText8795D58_unk5

	def_text_script CompText8795D58_unk6

	def_text_script CompText8795D58_unk7

	def_text_script CompText8795D58_unk8

	def_text_script CompText8795D58_unk9

	def_text_script CompText8795D58_unk10

	def_text_script CompText8795D58_unk11

	def_text_script CompText8795D58_unk12

	def_text_script CompText8795D58_unk13

	def_text_script CompText8795D58_unk14

	def_text_script CompText8795D58_unk15

	def_text_script CompText8795D58_unk16

	def_text_script CompText8795D58_unk17

	def_text_script CompText8795D58_unk18

	def_text_script CompText8795D58_unk19

	def_text_script CompText8795D58_unk20

	def_text_script CompText8795D58_unk21

	def_text_script CompText8795D58_unk22

	def_text_script CompText8795D58_unk23

	def_text_script CompText8795D58_unk24

	def_text_script CompText8795D58_unk25

	def_text_script CompText8795D58_unk26

	def_text_script CompText8795D58_unk27

	def_text_script CompText8795D58_unk28

	def_text_script CompText8795D58_unk29

	