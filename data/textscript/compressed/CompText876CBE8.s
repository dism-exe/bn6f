	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876CBE8::
	.word 0x18500

	text_archive_start

	def_text_script CompText876CBE8_unk0

	def_text_script CompText876CBE8_unk1

	def_text_script CompText876CBE8_unk2

	def_text_script CompText876CBE8_unk3

	def_text_script CompText876CBE8_unk4

	def_text_script CompText876CBE8_unk5

	def_text_script CompText876CBE8_unk6

	def_text_script CompText876CBE8_unk7

	def_text_script CompText876CBE8_unk8

	def_text_script CompText876CBE8_unk9

	def_text_script CompText876CBE8_unk10
	ts_check_flag [
		flag: 0xA10,
		jumpIfTrue: CompText876CBE8_unk15_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x17
	ts_msg_open
	.string "I'm today's\n"
	.string "teacher's aide,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "so that's why I'm\n"
	.string "wiping off the\n"
	.string "blackboard!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Being a teacher's\n"
	.string "aide sure is hard!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876CBE8_unk11

	def_text_script CompText876CBE8_unk12

	def_text_script CompText876CBE8_unk13

	def_text_script CompText876CBE8_unk14

	def_text_script CompText876CBE8_unk15
	ts_mugshot_show mugshot=0x17
	ts_msg_open
	.string "Oh yeah!\n"
	.string "I have to water the\n"
	.string "plants!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A teacher's aide's\n"
	.string "work is never done!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876CBE8_unk16

	def_text_script CompText876CBE8_unk17

	def_text_script CompText876CBE8_unk18

	def_text_script CompText876CBE8_unk19

	def_text_script CompText876CBE8_unk20

	def_text_script CompText876CBE8_unk21

	def_text_script CompText876CBE8_unk22

	def_text_script CompText876CBE8_unk23

	def_text_script CompText876CBE8_unk24

	def_text_script CompText876CBE8_unk25

	def_text_script CompText876CBE8_unk26

	def_text_script CompText876CBE8_unk27

	def_text_script CompText876CBE8_unk28

	def_text_script CompText876CBE8_unk29

	def_text_script CompText876CBE8_unk30
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "The school lunch has\n"
	.string "really,really good\n"
	.string "bread!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm gonna eat it!\n"
	.string "... Mwraaaawr!!\n"
	.string "*chomp,chomp,chomp*"
	ts_key_wait any=0x0
	ts_end

	