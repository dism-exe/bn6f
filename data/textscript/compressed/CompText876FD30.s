	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876FD30::
	.word 0x15100

	text_archive_start

	def_text_script CompText876FD30_unk0
	ts_check_flag [
		flag: 0xE5C,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Ahh,Iris!\n"
	.string "Nice to see you!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x11,
	]
	.string "...You're inviting\n"
	.string "me to the Expo too?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Yeah! It's gonna\n"
	.string "be great! Let's\n"
	.string "go together!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We are meeting at\n"
	.string "blah blah blah..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Got it?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x11,
	]
	.string "Umm...yeah..."
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0xE5C,
	]
	ts_end

	def_text_script CompText876FD30_unk1
	ts_mugshot_show [
		mugshot: 0x11,
	]
	ts_msg_open
	.string "...The...Expo...\n"
	.string "It'll...be...fun..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876FD30_unk2

	def_text_script CompText876FD30_unk3

	def_text_script CompText876FD30_unk4

	def_text_script CompText876FD30_unk5

	def_text_script CompText876FD30_unk6

	def_text_script CompText876FD30_unk7

	def_text_script CompText876FD30_unk8

	def_text_script CompText876FD30_unk9

	def_text_script CompText876FD30_unk10

	def_text_script CompText876FD30_unk11

	def_text_script CompText876FD30_unk12

	def_text_script CompText876FD30_unk13

	def_text_script CompText876FD30_unk14

	def_text_script CompText876FD30_unk15

	def_text_script CompText876FD30_unk16

	def_text_script CompText876FD30_unk17

	def_text_script CompText876FD30_unk18

	def_text_script CompText876FD30_unk19

	def_text_script CompText876FD30_unk20

	def_text_script CompText876FD30_unk21

	def_text_script CompText876FD30_unk22

	def_text_script CompText876FD30_unk23

	def_text_script CompText876FD30_unk24

	def_text_script CompText876FD30_unk25

	def_text_script CompText876FD30_unk26

	def_text_script CompText876FD30_unk27

	def_text_script CompText876FD30_unk28

	def_text_script CompText876FD30_unk29

	def_text_script CompText876FD30_unk30

	def_text_script CompText876FD30_unk31

	def_text_script CompText876FD30_unk32

	def_text_script CompText876FD30_unk33

	def_text_script CompText876FD30_unk34

	def_text_script CompText876FD30_unk35

	def_text_script CompText876FD30_unk36

	def_text_script CompText876FD30_unk37

	def_text_script CompText876FD30_unk38

	def_text_script CompText876FD30_unk39

	def_text_script CompText876FD30_unk40

	