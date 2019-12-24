	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D9B10::
	.word 0x5FB00

	text_archive_start

	def_text_script CompText87D9B10_unk0
	ts_mugshot_show mugshot=0x5B
	ts_msg_open
	.string "Nnngh...!!\n"
	.string "Ngwaaaaaah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I give...\n"
	.string "I give!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I won't be\n"
	.string "deleted that\n"
	.string "easily!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ngwaaaaaaaah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D9B10_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We won somehow,\n"
	.string "but..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "well,Bass is Bass...\n"
	.string "I'm sure he's still\n"
	.string "alive somewhere..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D9B10_unk2
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText87D9B10_unk3_id,
		jumpIfElecMan: CompText87D9B10_unk4_id,
		jumpIfSlashMan: CompText87D9B10_unk5_id,
		jumpIfEraseMan: CompText87D9B10_unk6_id,
		jumpIfChargeMan: CompText87D9B10_unk7_id,
		jumpIfSpoutMan: CompText87D9B10_unk8_id,
		jumpIfTomahawkMan: CompText87D9B10_unk9_id,
		jumpIfTenguMan: CompText87D9B10_unk10_id,
		jumpIfGroundMan: CompText87D9B10_unk11_id,
		jumpIfDustMan: CompText87D9B10_unk12_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "If Bass shows up\n"
	.string "again,I'm sure we'll\n"
	.string "beat him again!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Right,Lan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D9B10_unk13_id

	def_text_script CompText87D9B10_unk3
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Whatever!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm ready to toast\n"
	.string "him if he shows up\n"
	.string "again!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D9B10_unk13_id

	def_text_script CompText87D9B10_unk4
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "No matter how many\n"
	.string "times he comes back,\n"
	.string "we'll put him down."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We can do it,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D9B10_unk13_id

	def_text_script CompText87D9B10_unk5
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "I can just see\n"
	.string "it now..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But no matter how\n"
	.string "many times he comes\n"
	.string "back--"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the result will\n"
	.string "always be the same."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And that's why I\n"
	.string "need you to operate,\n"
	.string "Lan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D9B10_unk13_id

	def_text_script CompText87D9B10_unk6
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Hyahaha!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We can't be beaten\n"
	.string "by someone we've\n"
	.string "beaten,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D9B10_unk13_id

	def_text_script CompText87D9B10_unk7
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo,choo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He can keep trying,\n"
	.string "but he's the little\n"
	.string "engine that can't!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Right,Lan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D9B10_unk13_id

	def_text_script CompText87D9B10_unk8
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Drip,drip!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I really don't want\n"
	.string "to see him again,but\n"
	.string "if I do,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll fight with\n"
	.string "all I've got,if\n"
	.string "you're with me,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D9B10_unk13_id

	def_text_script CompText87D9B10_unk9
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Heh!\n"
	.string "You nervous!?\n"
	.string "COME ON!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We're the unbeatable\n"
	.string "combo! We'll trounce\n"
	.string "anyone,even Bass!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Right,Lan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D9B10_unk13_id

	def_text_script CompText87D9B10_unk10
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Ha,ha,ha. If one\n"
	.string "fights with a true\n"
	.string "friend,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "even someone like\n"
	.string "Bass becomes a small\n"
	.string "mouse."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Is that not true?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D9B10_unk13_id

	def_text_script CompText87D9B10_unk11
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whiiiir...\n"
	.string "He's welcome to come\n"
	.string "get some any time!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Guys like Bass are\n"
	.string "no match for our\n"
	.string "combined power!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D9B10_unk13_id

	def_text_script CompText87D9B10_unk12
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Gahahaha!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Bass was nothing!\n"
	.string "We beat him with our\n"
	.string "combined power!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If we stick together\n"
	.string "we don't have to be\n"
	.string "afraid of anyone!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Right!?\n"
	.string "Gahahahahahahaha!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D9B10_unk13_id

	def_text_script CompText87D9B10_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It doesn't matter\n"
	.string "who our enemy is,\n"
	.string "we'll always win!!"
	ts_key_wait any=0x0
	ts_end

	