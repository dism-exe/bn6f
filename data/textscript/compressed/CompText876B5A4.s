	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876B5A4::
	.word 0x29E00

	text_archive_start

	def_text_script CompText876B5A4_unk0
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "If we go,we'll just\n"
	.string "get in the way..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Take care of\n"
	.string "yourself..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876B5A4_unk1
	ts_mugshot_show [
		mugshot: 0x33,
	]
	ts_msg_open
	.string "Lan,\n"
	.string "you're injured,so\n"
	.string "don't overdo it..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876B5A4_unk2

	def_text_script CompText876B5A4_unk3

	def_text_script CompText876B5A4_unk4

	def_text_script CompText876B5A4_unk5

	def_text_script CompText876B5A4_unk6

	def_text_script CompText876B5A4_unk7

	def_text_script CompText876B5A4_unk8

	def_text_script CompText876B5A4_unk9

	def_text_script CompText876B5A4_unk10
	ts_check_flag [
		flag: 0xE5B,
		jumpIfTrue: 0xB,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Huh? The Expo\n"
	.string "pre-opening?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm going... For\n"
	.string "sure I'm going!\n"
	.string "100% do or die sure!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0xE5B,
	]
	ts_end

	def_text_script CompText876B5A4_unk11
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Check out the Expo\n"
	.string "ahead of time...\n"
	.string "I can't wait!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876B5A4_unk12
	ts_mugshot_show [
		mugshot: 0xC,
	]
	ts_msg_open
	.string "There have been\n"
	.string "incidents all over\n"
	.string "the place..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Will they really\n"
	.string "open the Expo?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876B5A4_unk13
	ts_mugshot_show [
		mugshot: 0x17,
	]
	ts_msg_open
	.string "I can't believe\n"
	.string "Mayor Cain was\n"
	.string "arrested!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Cyber City used to\n"
	.string "be so quiet..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876B5A4_unk14
	ts_mugshot_show [
		mugshot: 0xB,
	]
	ts_msg_open
	.string "Did you hear about\n"
	.string "Mayor Cain?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's shocking...\n"
	.string "I never thought he\n"
	.string "could do bad things."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876B5A4_unk15

	def_text_script CompText876B5A4_unk16

	def_text_script CompText876B5A4_unk17

	def_text_script CompText876B5A4_unk18

	def_text_script CompText876B5A4_unk19

	def_text_script CompText876B5A4_unk20
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "........"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_hide
	.string "No reaction..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876B5A4_unk21

	def_text_script CompText876B5A4_unk22

	def_text_script CompText876B5A4_unk23

	def_text_script CompText876B5A4_unk24

	def_text_script CompText876B5A4_unk25

	def_text_script CompText876B5A4_unk26

	def_text_script CompText876B5A4_unk27

	def_text_script CompText876B5A4_unk28

	def_text_script CompText876B5A4_unk29

	def_text_script CompText876B5A4_unk30

	def_text_script CompText876B5A4_unk31

	def_text_script CompText876B5A4_unk32

	def_text_script CompText876B5A4_unk33

	def_text_script CompText876B5A4_unk34

	def_text_script CompText876B5A4_unk35

	def_text_script CompText876B5A4_unk36

	def_text_script CompText876B5A4_unk37

	def_text_script CompText876B5A4_unk38

	def_text_script CompText876B5A4_unk39

	def_text_script CompText876B5A4_unk40

	