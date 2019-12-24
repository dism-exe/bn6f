	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87385CC::
	.word 0x54E00

	text_archive_start

	def_text_script CompText87385CC_unk0
	ts_check_flag [
		flag: 0x67D,
		jumpIfTrue: CompText87385CC_unk3_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xE68,
		jumpIfTrue: CompText87385CC_unk5_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x1729,
		jumpIfTrue: CompText87385CC_unk2_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87385CC_unk1_id,
	]
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText87385CC_unk31_id,
		jumpIfElecMan: CompText87385CC_unk32_id,
		jumpIfSlashMan: CompText87385CC_unk33_id,
		jumpIfEraseMan: CompText87385CC_unk34_id,
		jumpIfChargeMan: CompText87385CC_unk35_id,
		jumpIfSpoutMan: CompText87385CC_unk36_id,
		jumpIfTomahawkMan: CompText87385CC_unk37_id,
		jumpIfTenguMan: CompText87385CC_unk38_id,
		jumpIfGroundMan: CompText87385CC_unk39_id,
		jumpIfDustMan: CompText87385CC_unk40_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_jump target=CompText87385CC_unk9_id

	def_text_script CompText87385CC_unk1
	ts_flag_set flag=0x171E
	ts_msg_open
	.string "MegaMan isn't in\n"
	.string "the PET..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87385CC_unk2
	ts_flag_set flag=0x171E
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "It seems you can't\n"
	.string "jack in to the\n"
	.string "CopyBot right now!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87385CC_unk3
	ts_flag_set flag=0x171E
	ts_check_flag [
		flag: 0x616,
		jumpIfTrue: CompText87385CC_unk4_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,now isn't the\n"
	.string "time to jack in!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87385CC_unk4
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "If you don't know\n"
	.string "how to defeat a\n"
	.string "Cybeast,it'd"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "be better to not\n"
	.string "jack in right now."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87385CC_unk5
	ts_check_multi_flag [
		flag: 0xE5B,
		count: 0x3,
		jumpIfAllSet: CompText87385CC_unk6_id,
		jumpIfNotAllSet: TS_CONTINUE,
	]
	ts_flag_set flag=0x171E
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,jack in later!\n"
	.string "Let's go get every\n"
	.string "one else!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87385CC_unk6
	ts_flag_clear flag=0xE68
	ts_jump target=CompText87385CC_unk9_id

	def_text_script CompText87385CC_unk7

	def_text_script CompText87385CC_unk8

	def_text_script CompText87385CC_unk9
	ts_control_lock
	ts_text_speed delay=0x1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait frames=0xA
	.string "\n"
	.string "MegaMan,"
	ts_wait frames=0xA
	.string "\n"
	.string "Execute!!"
	ts_wait frames=0x1E
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk10
	ts_check_chapter [
		lower: 0x13,
		upper: 0x13,
		jumpIfInRange: CompText87385CC_unk12_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x0,
		upper: 0x1,
		jumpIfInRange: TS_CONTINUE,
		jumpIfOutOfRange: CompText87385CC_unk0_id,
	]
	ts_check_flag [
		flag: 0x1CA0,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87385CC_unk11_id,
	]
	ts_check_flag [
		flag: 0x1D20,
		jumpIfTrue: CompText87385CC_unk11_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText87385CC_unk0_id

	def_text_script CompText87385CC_unk11
	ts_flag_set flag=0x171E
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,let's check out\n"
	.string "the town first!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87385CC_unk12
	ts_check_flag [
		flag: 0x1CA2,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87385CC_unk13_id,
	]
	ts_check_flag [
		flag: 0x1D22,
		jumpIfTrue: CompText87385CC_unk13_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText87385CC_unk0_id

	def_text_script CompText87385CC_unk13
	ts_flag_set flag=0x171E
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Let's check the\n"
	.string "mail,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87385CC_unk14

	def_text_script CompText87385CC_unk15
	ts_check_chapter [
		lower: 0x22,
		upper: 0x23,
		jumpIfInRange: TS_CONTINUE,
		jumpIfOutOfRange: CompText87385CC_unk0_id,
	]
	ts_check_flag [
		flag: 0x61C,
		jumpIfTrue: CompText87385CC_unk0_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x171E
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,you can't jack\n"
	.string "in right now!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87385CC_unk16

	def_text_script CompText87385CC_unk17

	def_text_script CompText87385CC_unk18

	def_text_script CompText87385CC_unk19

	def_text_script CompText87385CC_unk20
	ts_check_chapter [
		lower: 0x40,
		upper: 0x46,
		jumpIfInRange: TS_CONTINUE,
		jumpIfOutOfRange: CompText87385CC_unk0_id,
	]
	ts_check_flag [
		flag: 0xA2E,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87385CC_unk21_id,
	]
	ts_jump target=CompText87385CC_unk0_id

	def_text_script CompText87385CC_unk21
	ts_flag_set flag=0x171E
	ts_jump target=CompText87385CC_unk22_id

	def_text_script CompText87385CC_unk22
	ts_check_flag [
		flag: 0x171D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87385CC_unk23_id,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,if you just jack\n"
	.string "in whenever you want\n"
	.string "I'll get mad!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87385CC_unk23
	ts_msg_open
	.string "MegaMan isn't in\n"
	.string "the PET..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87385CC_unk24

	def_text_script CompText87385CC_unk25
	ts_check_chapter [
		lower: 0x62,
		upper: 0x63,
		jumpIfInRange: TS_CONTINUE,
		jumpIfOutOfRange: CompText87385CC_unk0_id,
	]
	ts_check_flag [
		flag: 0xE34,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText87385CC_unk26_id,
	]
	ts_jump target=CompText87385CC_unk0_id

	def_text_script CompText87385CC_unk26
	ts_flag_set flag=0x171E
	ts_jump target=CompText87385CC_unk22_id

	def_text_script CompText87385CC_unk27

	def_text_script CompText87385CC_unk28

	def_text_script CompText87385CC_unk29

	def_text_script CompText87385CC_unk30
	ts_end

	def_text_script CompText87385CC_unk31
	ts_control_lock
	ts_text_speed delay=0x1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait frames=0xA
	.string "\n"
	.string "HeatMan,"
	ts_wait frames=0xA
	.string "\n"
	.string "Execute!!"
	ts_wait frames=0x1E
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk32
	ts_control_lock
	ts_text_speed delay=0x1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait frames=0xA
	.string "\n"
	.string "ElecMan,"
	ts_wait frames=0xA
	.string "\n"
	.string "Execute!!"
	ts_wait frames=0x1E
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk33
	ts_control_lock
	ts_text_speed delay=0x1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait frames=0xA
	.string "\n"
	.string "SlashMan,"
	ts_wait frames=0xA
	.string "\n"
	.string "Execute!!"
	ts_wait frames=0x1E
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk34
	ts_control_lock
	ts_text_speed delay=0x1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait frames=0xA
	.string "\n"
	.string "EraseMan,"
	ts_wait frames=0xA
	.string "\n"
	.string "Execute!!"
	ts_wait frames=0x1E
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk35
	ts_control_lock
	ts_text_speed delay=0x1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait frames=0xA
	.string "\n"
	.string "ChargeMan,"
	ts_wait frames=0xA
	.string "\n"
	.string "Execute!!"
	ts_wait frames=0x1E
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk36
	ts_control_lock
	ts_text_speed delay=0x1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait frames=0xA
	.string "\n"
	.string "SpoutMan,"
	ts_wait frames=0xA
	.string "\n"
	.string "Execute!!"
	ts_wait frames=0x1E
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk37
	ts_control_lock
	ts_text_speed delay=0x1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait frames=0xA
	.string "\n"
	.string "TomahawkMan,"
	ts_wait frames=0xA
	.string "\n"
	.string "Execute!!"
	ts_wait frames=0x1E
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk38
	ts_control_lock
	ts_text_speed delay=0x1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait frames=0xA
	.string "\n"
	.string "TenguMan,"
	ts_wait frames=0xA
	.string "\n"
	.string "Execute!!"
	ts_wait frames=0x1E
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk39
	ts_control_lock
	ts_text_speed delay=0x1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait frames=0xA
	.string "\n"
	.string "GroundMan,"
	ts_wait frames=0xA
	.string "\n"
	.string "Execute!!"
	ts_wait frames=0x1E
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk40
	ts_control_lock
	ts_text_speed delay=0x1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait frames=0xA
	.string "\n"
	.string "DustMan,"
	ts_wait frames=0xA
	.string "\n"
	.string "Execute!!"
	ts_wait frames=0x1E
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk41

	