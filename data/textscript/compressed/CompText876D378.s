	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876D378::
	.word 0x19100

	text_archive_start

	def_text_script CompText876D378_unk0
	ts_check_chapter [
		lower: 0x21,
		upper: 0x21,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "Got it!?\n"
	.string "No more graffiti\n"
	.string "on the walls!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xA
	.string "I'm..ss....sss...\n"
	.string "ssoooorrryyy....\n"
	.string "*sniffle sniffle*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876D378_unk1
	ts_check_chapter [
		lower: 0x21,
		upper: 0x21,
		jumpIfInRange: 0x6,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "*sniffle sniffle*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x16
	.string "Alright... Quit\n"
	.string "crying... You can\n"
	.string "go home now..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xA
	.string "*sniffle sniffle*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876D378_unk2

	def_text_script CompText876D378_unk3

	def_text_script CompText876D378_unk4

	def_text_script CompText876D378_unk5
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "Enough crying...\n"
	.string "Run on home now..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xA
	.string "*sniffle sniffle*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876D378_unk6
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "*sniffle sniffle*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x16
	.string "Now you are making\n"
	.string "me want to cry...!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876D378_unk7

	def_text_script CompText876D378_unk8

	def_text_script CompText876D378_unk9

	def_text_script CompText876D378_unk10

	def_text_script CompText876D378_unk11

	def_text_script CompText876D378_unk12

	def_text_script CompText876D378_unk13

	def_text_script CompText876D378_unk14

	def_text_script CompText876D378_unk15

	def_text_script CompText876D378_unk16

	def_text_script CompText876D378_unk17

	def_text_script CompText876D378_unk18

	def_text_script CompText876D378_unk19

	def_text_script CompText876D378_unk20

	