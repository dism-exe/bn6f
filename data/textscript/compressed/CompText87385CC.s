	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87385CC::
	.word 0x54E00

	text_archive_start

	def_text_script CompText87385CC_unk0
	ts_check_flag 0x7D, 0x6, 0x3, 0xFF
	ts_check_flag 0x68, 0xE, 0x5, 0xFF
	ts_check_flag 0x29, 0x17, 0x2, 0xFF
	ts_check_flag 0x1D, 0x17, 0xFF, 0x1
	ts_check_navi_all 0xFF, 0x1F, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0xFF
	ts_jump 9

	def_text_script CompText87385CC_unk1
	ts_flag_set 0x1E, 0x17
	ts_msg_open
	.string "MegaMan isn't in\n"
	.string "the PET..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87385CC_unk2
	ts_flag_set 0x1E, 0x17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "It seems you can't\n"
	.string "jack in to the\n"
	.string "CopyBot right now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87385CC_unk3
	ts_flag_set 0x1E, 0x17
	ts_check_flag 0x16, 0x6, 0x4, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,now isn't the\n"
	.string "time to jack in!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87385CC_unk4
	ts_mugshot_show 0x37
	ts_msg_open
	.string "If you don't know\n"
	.string "how to defeat a\n"
	.string "Cybeast,it'd"
	ts_key_wait 0x0
	ts_clear_msg
	.string "be better to not\n"
	.string "jack in right now."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87385CC_unk5
	ts_check_multi_flag 0x5B, 0xE, 0x3, 0x6, 0xFF
	ts_flag_set 0x1E, 0x17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,jack in later!\n"
	.string "Let's go get every\n"
	.string "one else!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87385CC_unk6
	ts_flag_clear 0x68, 0xE
	ts_jump 9

	def_text_script CompText87385CC_unk7

	def_text_script CompText87385CC_unk8

	def_text_script CompText87385CC_unk9
	ts_control_lock
	ts_text_speed 0x1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "MegaMan,"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "Execute!!"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk10
	ts_check_chapter 0x13, 0x13, 0xC, 0xFF
	ts_check_chapter 0x0, 0x1, 0xFF, 0x0
	ts_check_flag 0xA0, 0x1C, 0xFF, 0xB
	ts_check_flag 0x20, 0x1D, 0xB, 0xFF
	ts_jump 0

	def_text_script CompText87385CC_unk11
	ts_flag_set 0x1E, 0x17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's check out\n"
	.string "the town first!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87385CC_unk12
	ts_check_flag 0xA2, 0x1C, 0xFF, 0xD
	ts_check_flag 0x22, 0x1D, 0xD, 0xFF
	ts_jump 0

	def_text_script CompText87385CC_unk13
	ts_flag_set 0x1E, 0x17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's check the\n"
	.string "mail,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87385CC_unk14

	def_text_script CompText87385CC_unk15
	ts_check_chapter 0x22, 0x23, 0xFF, 0x0
	ts_check_flag 0x1C, 0x6, 0x0, 0xFF
	ts_flag_set 0x1E, 0x17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,you can't jack\n"
	.string "in right now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87385CC_unk16

	def_text_script CompText87385CC_unk17

	def_text_script CompText87385CC_unk18

	def_text_script CompText87385CC_unk19

	def_text_script CompText87385CC_unk20
	ts_check_chapter 0x40, 0x46, 0xFF, 0x0
	ts_check_flag 0x2E, 0xA, 0xFF, 0x15
	ts_jump 0

	def_text_script CompText87385CC_unk21
	ts_flag_set 0x1E, 0x17
	ts_jump 22

	def_text_script CompText87385CC_unk22
	ts_check_flag 0x1D, 0x17, 0xFF, 0x17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,if you just jack\n"
	.string "in whenever you want\n"
	.string "I'll get mad!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87385CC_unk23
	ts_msg_open
	.string "MegaMan isn't in\n"
	.string "the PET..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87385CC_unk24

	def_text_script CompText87385CC_unk25
	ts_check_chapter 0x62, 0x63, 0xFF, 0x0
	ts_check_flag 0x34, 0xE, 0xFF, 0x1A
	ts_jump 0

	def_text_script CompText87385CC_unk26
	ts_flag_set 0x1E, 0x17
	ts_jump 22

	def_text_script CompText87385CC_unk27

	def_text_script CompText87385CC_unk28

	def_text_script CompText87385CC_unk29

	def_text_script CompText87385CC_unk30
	ts_end

	def_text_script CompText87385CC_unk31
	ts_control_lock
	ts_text_speed 0x1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "HeatMan,"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "Execute!!"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk32
	ts_control_lock
	ts_text_speed 0x1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "ElecMan,"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "Execute!!"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk33
	ts_control_lock
	ts_text_speed 0x1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "SlashMan,"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "Execute!!"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk34
	ts_control_lock
	ts_text_speed 0x1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "EraseMan,"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "Execute!!"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk35
	ts_control_lock
	ts_text_speed 0x1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "ChargeMan,"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "Execute!!"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk36
	ts_control_lock
	ts_text_speed 0x1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "SpoutMan,"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "Execute!!"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk37
	ts_control_lock
	ts_text_speed 0x1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "TomahawkMan,"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "Execute!!"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk38
	ts_control_lock
	ts_text_speed 0x1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "TenguMan,"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "Execute!!"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk39
	ts_control_lock
	ts_text_speed 0x1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "GroundMan,"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "Execute!!"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk40
	ts_control_lock
	ts_text_speed 0x1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack in!"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "DustMan,"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "Execute!!"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_end

	def_text_script CompText87385CC_unk41

	