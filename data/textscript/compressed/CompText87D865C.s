	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D865C::
	.word 0x48F00

	text_archive_start

	def_text_script CompText87D865C_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "I-I wonder if \"God\n"
	.string "of Destruction\" is\n"
	.string "written on that..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87D865C_unk1
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x2,
		jumpIfElecMan: 0x3,
		jumpIfSlashMan: 0x4,
		jumpIfEraseMan: 0x5,
		jumpIfChargeMan: 0x6,
		jumpIfSpoutMan: 0x7,
		jumpIfTomahawkMan: 0x8,
		jumpIfTenguMan: 0x9,
		jumpIfGroundMan: 0xA,
		jumpIfDustMan: 0xB,
		jumpIfProtoMan: 0xFF,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... There's nothing\n"
	.string "written here,Lan..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87D865C_unk2
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Hmm? Nothing here!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87D865C_unk3
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "... There is nothing\n"
	.string "written here."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87D865C_unk4
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "... I don't see\n"
	.string "anything!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87D865C_unk5
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Huh? There isn't\n"
	.string "anything here!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87D865C_unk6
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo...\n"
	.string "I don't see\n"
	.string "anything... Do ya?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87D865C_unk7
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Nngh... There's\n"
	.string "nothing here,drip."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87D865C_unk8
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "... I looked all\n"
	.string "over,but there's\n"
	.string "nothing,nada!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87D865C_unk9
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Hmm... It appears\n"
	.string "that there is no\n"
	.string "writing here."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87D865C_unk10
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whiiir...\n"
	.string "I don't see nothin'!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87D865C_unk11
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "... If there was\n"
	.string "anything,I'd have\n"
	.string "seen it..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87D865C_unk12
	ts_mugshot_hide
	ts_msg_open
	.string "That gravestone is\n"
	.string "blank.\n"
	.string "Want to know why?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D865C_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Th-That voice...\n"
	.string "This feeling...!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D865C_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Bass...!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87D865C_unk15
	ts_mugshot_show mugshot=0x5B
	ts_msg_open
	.string "Because the name\n"
	.string "that's going on\n"
	.string "it..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "is YOURS!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=16

	def_text_script CompText87D865C_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Here he comes!!\n"
	.string "Battle routine,set!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87D865C_unk17
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x12,
		jumpIfElecMan: 0x13,
		jumpIfSlashMan: 0x14,
		jumpIfEraseMan: 0x15,
		jumpIfChargeMan: 0x16,
		jumpIfSpoutMan: 0x17,
		jumpIfTomahawkMan: 0x18,
		jumpIfTenguMan: 0x19,
		jumpIfGroundMan: 0x1A,
		jumpIfDustMan: 0x1B,
		jumpIfProtoMan: 0xFF,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87D865C_unk18
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87D865C_unk19
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87D865C_unk20
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87D865C_unk21
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87D865C_unk22
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87D865C_unk23
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87D865C_unk24
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87D865C_unk25
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87D865C_unk26
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87D865C_unk27
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87D865C_unk28
	ts_mugshot_show mugshot=0x5B
	ts_msg_open
	.string "I'll send you to the\n"
	.string "depths of the\n"
	.string "deepest cyberpit!"
	ts_key_wait any=0x0
	ts_end

	