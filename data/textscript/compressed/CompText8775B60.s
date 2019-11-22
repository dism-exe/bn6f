	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8775B60::
	.word 0x30D00

	text_archive_start

	def_text_script CompText8775B60_unk0
	ts_mugshot_show [
		mugshot: 0x15,
	]
	ts_msg_open
	.string "I used to be a\n"
	.string "guide until\n"
	.string "recently,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "but since I am now\n"
	.string "doing work in my\n"
	.string "field,breeding,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I quit working as a\n"
	.string "guide."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It would be terrible\n"
	.string "if fish were hurt to\n"
	.string "make a profit..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8775B60_unk1
	ts_mugshot_show [
		mugshot: 0xC,
	]
	ts_msg_open
	.string "That man quit his\n"
	.string "job as a guide..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I liked him a lot..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8775B60_unk2
	ts_mugshot_show [
		mugshot: 0xA,
	]
	ts_msg_open
	.string "The fish are as\n"
	.string "happy as ever!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They're beautiful!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8775B60_unk3

	def_text_script CompText8775B60_unk4

	def_text_script CompText8775B60_unk5
	ts_mugshot_show [
		mugshot: 0x15,
	]
	ts_msg_open
	.string "Well,next up is\n"
	.string "giving the gators\n"
	.string "their food..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I also have to\n"
	.string "clean the tanks..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8775B60_unk6
	ts_mugshot_show [
		mugshot: 0x18,
	]
	ts_msg_open
	.string "This sea angel\n"
	.string "would taste really\n"
	.string "good fried..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8775B60_unk7

	def_text_script CompText8775B60_unk8

	def_text_script CompText8775B60_unk9

	def_text_script CompText8775B60_unk10
	ts_mugshot_show [
		mugshot: 0x15,
	]
	ts_msg_open
	.string "Sorry,but we are\n"
	.string "still getting ready.\n"
	.string "Please wait outside."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8775B60_unk11
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "Woohoo!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Seaside Town has\n"
	.string "decided to have an\n"
	.string "Expo pavilion!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I can't wait!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8775B60_unk12

	def_text_script CompText8775B60_unk13

	def_text_script CompText8775B60_unk14

	def_text_script CompText8775B60_unk15
	ts_msg_open
	.string "A CopyBot..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It got damaged by an\n"
	.string "attack in battle...\n"
	.string "It can't move..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8775B60_unk16
	ts_check_flag [
		flag: 0xE84,
		jumpIfTrue: 0xF,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "Hikari...\n"
	.string "Don't run now..."
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0xE83,
	]
	ts_flag_set [
		flag: 0x1715,
	]
	ts_end

	def_text_script CompText8775B60_unk17

	def_text_script CompText8775B60_unk18

	def_text_script CompText8775B60_unk19

	