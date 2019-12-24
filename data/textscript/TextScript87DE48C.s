TextScript87DE48C::
	text_archive_start

	def_text_script TextScript87DE48C_unk0
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScript87DE48C_unk20_id,
		jumpIfElecMan: TextScript87DE48C_unk100_id,
		jumpIfSlashMan: TextScript87DE48C_unk60_id,
		jumpIfEraseMan: TextScript87DE48C_unk140_id,
		jumpIfChargeMan: TextScript87DE48C_unk180_id,
		jumpIfSpoutMan: TextScript87DE48C_unk40_id,
		jumpIfTomahawkMan: TextScript87DE48C_unk120_id,
		jumpIfTenguMan: TextScript87DE48C_unk80_id,
		jumpIfGroundMan: TextScript87DE48C_unk160_id,
		jumpIfDustMan: TextScript87DE48C_unk200_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Be careful,\n"
	.string "MegaMan..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk1

	def_text_script TextScript87DE48C_unk2
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScript87DE48C_unk22_id,
		jumpIfElecMan: TextScript87DE48C_unk102_id,
		jumpIfSlashMan: TextScript87DE48C_unk62_id,
		jumpIfEraseMan: TextScript87DE48C_unk142_id,
		jumpIfChargeMan: TextScript87DE48C_unk182_id,
		jumpIfSpoutMan: TextScript87DE48C_unk42_id,
		jumpIfTomahawkMan: TextScript87DE48C_unk122_id,
		jumpIfTenguMan: TextScript87DE48C_unk82_id,
		jumpIfGroundMan: TextScript87DE48C_unk162_id,
		jumpIfDustMan: TextScript87DE48C_unk202_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Attack with\n"
	.string "the SoulKnife?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x6, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk3
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScript87DE48C_unk23_id,
		jumpIfElecMan: TextScript87DE48C_unk103_id,
		jumpIfSlashMan: TextScript87DE48C_unk63_id,
		jumpIfEraseMan: TextScript87DE48C_unk143_id,
		jumpIfChargeMan: TextScript87DE48C_unk183_id,
		jumpIfSpoutMan: TextScript87DE48C_unk43_id,
		jumpIfTomahawkMan: TextScript87DE48C_unk123_id,
		jumpIfTenguMan: TextScript87DE48C_unk83_id,
		jumpIfGroundMan: TextScript87DE48C_unk163_id,
		jumpIfDustMan: TextScript87DE48C_unk203_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Attack with\n"
	.string "the SoulSword?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x6, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk4
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScript87DE48C_unk24_id,
		jumpIfElecMan: TextScript87DE48C_unk104_id,
		jumpIfSlashMan: TextScript87DE48C_unk64_id,
		jumpIfEraseMan: TextScript87DE48C_unk144_id,
		jumpIfChargeMan: TextScript87DE48C_unk184_id,
		jumpIfSpoutMan: TextScript87DE48C_unk44_id,
		jumpIfTomahawkMan: TextScript87DE48C_unk124_id,
		jumpIfTenguMan: TextScript87DE48C_unk84_id,
		jumpIfGroundMan: TextScript87DE48C_unk164_id,
		jumpIfDustMan: TextScript87DE48C_unk204_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Attack with\n"
	.string "the SoulAx?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x6, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk5
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScript87DE48C_unk25_id,
		jumpIfElecMan: TextScript87DE48C_unk105_id,
		jumpIfSlashMan: TextScript87DE48C_unk65_id,
		jumpIfEraseMan: TextScript87DE48C_unk145_id,
		jumpIfChargeMan: TextScript87DE48C_unk185_id,
		jumpIfSpoutMan: TextScript87DE48C_unk45_id,
		jumpIfTomahawkMan: TextScript87DE48C_unk125_id,
		jumpIfTenguMan: TextScript87DE48C_unk85_id,
		jumpIfGroundMan: TextScript87DE48C_unk165_id,
		jumpIfDustMan: TextScript87DE48C_unk205_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Attack with\n"
	.string "the SoulGun?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x6, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk6
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Hah!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk7
	ts_check_flag [
		flag: 0x225,
		jumpIfTrue: TextScript87DE48C_unk9_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x225
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScript87DE48C_unk27_id,
		jumpIfElecMan: TextScript87DE48C_unk107_id,
		jumpIfSlashMan: TextScript87DE48C_unk67_id,
		jumpIfEraseMan: TextScript87DE48C_unk147_id,
		jumpIfChargeMan: TextScript87DE48C_unk187_id,
		jumpIfSpoutMan: TextScript87DE48C_unk47_id,
		jumpIfTomahawkMan: TextScript87DE48C_unk127_id,
		jumpIfTenguMan: TextScript87DE48C_unk87_id,
		jumpIfGroundMan: TextScript87DE48C_unk167_id,
		jumpIfDustMan: TextScript87DE48C_unk207_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Alright!!\n"
	.string "I beat the\n"
	.string "EvilSpirit!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk8
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScript87DE48C_unk28_id,
		jumpIfElecMan: TextScript87DE48C_unk108_id,
		jumpIfSlashMan: TextScript87DE48C_unk68_id,
		jumpIfEraseMan: TextScript87DE48C_unk148_id,
		jumpIfChargeMan: TextScript87DE48C_unk188_id,
		jumpIfSpoutMan: TextScript87DE48C_unk48_id,
		jumpIfTomahawkMan: TextScript87DE48C_unk128_id,
		jumpIfTenguMan: TextScript87DE48C_unk88_id,
		jumpIfGroundMan: TextScript87DE48C_unk168_id,
		jumpIfDustMan: TextScript87DE48C_unk208_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Watch out for the\n"
	.string "counterattack,\n"
	.string "MegaMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk9
	ts_end

	def_text_script TextScript87DE48C_unk10
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScript87DE48C_unk30_id,
		jumpIfElecMan: TextScript87DE48C_unk110_id,
		jumpIfSlashMan: TextScript87DE48C_unk70_id,
		jumpIfEraseMan: TextScript87DE48C_unk150_id,
		jumpIfChargeMan: TextScript87DE48C_unk190_id,
		jumpIfSpoutMan: TextScript87DE48C_unk50_id,
		jumpIfTomahawkMan: TextScript87DE48C_unk130_id,
		jumpIfTenguMan: TextScript87DE48C_unk90_id,
		jumpIfGroundMan: TextScript87DE48C_unk170_id,
		jumpIfDustMan: TextScript87DE48C_unk210_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x745,
		jumpIfTrue: TextScript87DE48C_unk15_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you OK,MegaMan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk11_id

	def_text_script TextScript87DE48C_unk11
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Yeah!\n"
	.string "Come on,let's keep\n"
	.string "going!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk12
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScript87DE48C_unk32_id,
		jumpIfElecMan: TextScript87DE48C_unk112_id,
		jumpIfSlashMan: TextScript87DE48C_unk72_id,
		jumpIfEraseMan: TextScript87DE48C_unk152_id,
		jumpIfChargeMan: TextScript87DE48C_unk192_id,
		jumpIfSpoutMan: TextScript87DE48C_unk52_id,
		jumpIfTomahawkMan: TextScript87DE48C_unk132_id,
		jumpIfTenguMan: TextScript87DE48C_unk92_id,
		jumpIfGroundMan: TextScript87DE48C_unk172_id,
		jumpIfDustMan: TextScript87DE48C_unk212_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Look,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The darkness that\n"
	.string "was blocking the way\n"
	.string "has disappeared!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk13
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScript87DE48C_unk33_id,
		jumpIfElecMan: TextScript87DE48C_unk113_id,
		jumpIfSlashMan: TextScript87DE48C_unk73_id,
		jumpIfEraseMan: TextScript87DE48C_unk153_id,
		jumpIfChargeMan: TextScript87DE48C_unk193_id,
		jumpIfSpoutMan: TextScript87DE48C_unk53_id,
		jumpIfTomahawkMan: TextScript87DE48C_unk133_id,
		jumpIfTenguMan: TextScript87DE48C_unk93_id,
		jumpIfGroundMan: TextScript87DE48C_unk173_id,
		jumpIfDustMan: TextScript87DE48C_unk213_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "The SoulWeapons ran\n"
	.string "out... Let's go\n"
	.string "reload right away!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk14
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScript87DE48C_unk34_id,
		jumpIfElecMan: TextScript87DE48C_unk114_id,
		jumpIfSlashMan: TextScript87DE48C_unk74_id,
		jumpIfEraseMan: TextScript87DE48C_unk154_id,
		jumpIfChargeMan: TextScript87DE48C_unk194_id,
		jumpIfSpoutMan: TextScript87DE48C_unk54_id,
		jumpIfTomahawkMan: TextScript87DE48C_unk134_id,
		jumpIfTenguMan: TextScript87DE48C_unk94_id,
		jumpIfGroundMan: TextScript87DE48C_unk174_id,
		jumpIfDustMan: TextScript87DE48C_unk214_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Aaaaaah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk15
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScript87DE48C_unk35_id,
		jumpIfElecMan: TextScript87DE48C_unk115_id,
		jumpIfSlashMan: TextScript87DE48C_unk75_id,
		jumpIfEraseMan: TextScript87DE48C_unk55_id,
		jumpIfChargeMan: TextScript87DE48C_unk195_id,
		jumpIfSpoutMan: TextScript87DE48C_unk55_id,
		jumpIfTomahawkMan: TextScript87DE48C_unk135_id,
		jumpIfTenguMan: TextScript87DE48C_unk95_id,
		jumpIfGroundMan: TextScript87DE48C_unk175_id,
		jumpIfDustMan: TextScript87DE48C_unk215_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you ready,\n"
	.string "MegaMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk16_id

	def_text_script TextScript87DE48C_unk16
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Yeah!\n"
	.string "Let's go!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk17
	ts_msg_open
	.string "The remaining\n"
	.string "SoulWeapons turned\n"
	.string "into BugFrags!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_check_give_bug_frags [
		amount: 0xFFFFFFFF,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: TS_CONTINUE,
		jumpIfSome: TS_CONTINUE,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi_ow
	.string " got:\n"
	ts_print_buffer03 [
		minLength: 0x0,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x3,
	]
	.string " BugFrags!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_end

	def_text_script TextScript87DE48C_unk18

	def_text_script TextScript87DE48C_unk19

	def_text_script TextScript87DE48C_unk20
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Be careful,\n"
	.string "HeatMan..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk21

	def_text_script TextScript87DE48C_unk22
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Wanna attack with\n"
	.string "the SoulKnife?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x1A, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk23
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Wanna attack with\n"
	.string "the SoulSword?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x1A, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk24
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Wanna attack with\n"
	.string "the SoulAx?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x1A, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk25
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Wanna attack with\n"
	.string "the SoulGun?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x1A, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk26
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Burn!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk27
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Too easy! I burned\n"
	.string "the EvilSpirit\n"
	.string "to a crisp!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk28
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Watch out for the\n"
	.string "counterattack,\n"
	.string "HeatMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk29

	def_text_script TextScript87DE48C_unk30
	ts_check_flag [
		flag: 0x745,
		jumpIfTrue: TextScript87DE48C_unk35_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you OK,HeatMan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk31_id

	def_text_script TextScript87DE48C_unk31
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Yeah!\n"
	.string "Let's get burning!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk32
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Hey,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Looks like it's\n"
	.string "finally cleared up!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk33
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "The SoulWeapons ran\n"
	.string "out on me...\n"
	.string "Gotta get more fast!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk34
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Gwaaaa!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk35
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you ready,\n"
	.string "HeatMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk36_id

	def_text_script TextScript87DE48C_unk36
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Of course!\n"
	.string "Let's blaze!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk37

	def_text_script TextScript87DE48C_unk38

	def_text_script TextScript87DE48C_unk39

	def_text_script TextScript87DE48C_unk40
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Be careful,\n"
	.string "SpoutMan..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk41

	def_text_script TextScript87DE48C_unk42
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Attack with the\n"
	.string "SoulKnife,drip?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x2E, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk43
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Attack with the\n"
	.string "SoulSword,drip?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x2E, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk44
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Attack with the\n"
	.string "SoulAx,drip?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x2E, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk45
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Attack with the\n"
	.string "SoulGun,drip?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x2E, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk46
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Driiiip!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk47
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "I did it,drip!\n"
	.string "I beat the\n"
	.string "EvilSpirit,drip!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk48
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Watch out for the\n"
	.string "counterattack,\n"
	.string "SpoutMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk49

	def_text_script TextScript87DE48C_unk50
	ts_check_flag [
		flag: 0x745,
		jumpIfTrue: TextScript87DE48C_unk55_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you OK,\n"
	.string "SpoutMan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk51_id

	def_text_script TextScript87DE48C_unk51
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Uh,huh!\n"
	.string "Let's keep\n"
	.string "going,drip!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk52
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Lan! Look,drip!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The darkness has\n"
	.string "gone away,drip!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk53
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Aww,the SoulWeapons\n"
	.string "ran out... drip.\n"
	.string "Let's get more,drip!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk54
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Driiiiip!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk55
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you ready,\n"
	.string "SpoutMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk56_id

	def_text_script TextScript87DE48C_unk56
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Uh,huh!\n"
	.string "Let's go,drip!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk57

	def_text_script TextScript87DE48C_unk58

	def_text_script TextScript87DE48C_unk59

	def_text_script TextScript87DE48C_unk60
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Be careful,\n"
	.string "SlashMan..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk61

	def_text_script TextScript87DE48C_unk62
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Ooh,slash with\n"
	.string "the SoulKnife?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x42, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk63
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Ooh,cut with\n"
	.string "the SoulSword?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x42, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk64
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Ooh,chop with\n"
	.string "the SoulAx?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x42, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk65
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Ooh,attack with\n"
	.string "the SoulGun?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x42, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk66
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Slash!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk67
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Take that!\n"
	.string "I sliced and diced\n"
	.string "that EvilSpirit!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk68
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Watch out for the\n"
	.string "counterattack,\n"
	.string "SlashMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk69

	def_text_script TextScript87DE48C_unk70
	ts_check_flag [
		flag: 0x745,
		jumpIfTrue: TextScript87DE48C_unk75_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you OK,\n"
	.string "SlashMan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk71_id

	def_text_script TextScript87DE48C_unk71
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "I'm alright...\n"
	.string "C'mon,gotta cut\n"
	.string "more things up!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk72
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Look!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That last slash must\n"
	.string "have finally cut\n"
	.string "through it!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk73
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "The SoulWeapons ran\n"
	.string "out...\n"
	.string "Time to get more!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk74
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Gwaaaaah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk75
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you ready,\n"
	.string "SlashMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk76_id

	def_text_script TextScript87DE48C_unk76
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "I've been ready!\n"
	.string "Let's get going\n"
	.string "already!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk77

	def_text_script TextScript87DE48C_unk78

	def_text_script TextScript87DE48C_unk79

	def_text_script TextScript87DE48C_unk80
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Be careful,\n"
	.string "TenguMan..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk81

	def_text_script TextScript87DE48C_unk82
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Shall I attack with\n"
	.string "the SoulKnife?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x56, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk83
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Shall I attack with\n"
	.string "the SoulSword?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x56, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk84
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Shall I attack with\n"
	.string "the SoulAx?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x56, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk85
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Shall I attack with\n"
	.string "the SoulGun?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x56, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk86
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Yiiiah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk87
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "I have defeated the\n"
	.string "EvilSpirit..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk88
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Watch out for the\n"
	.string "counterattack,\n"
	.string "TenguMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk89

	def_text_script TextScript87DE48C_unk90
	ts_check_flag [
		flag: 0x745,
		jumpIfTrue: TextScript87DE48C_unk95_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you OK,\n"
	.string "TenguMan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk91_id

	def_text_script TextScript87DE48C_unk91
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "I'm alright...\n"
	.string "Let's go..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk92
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Look!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The darkness...\n"
	.string "It has faded.\n"
	.string "It is no more."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk93
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "The SoulWeapons have\n"
	.string "run dry... I must\n"
	.string "reload soon..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk94
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Nooooo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk95
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you ready,\n"
	.string "TenguMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk96_id

	def_text_script TextScript87DE48C_unk96
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Of course!\n"
	.string "Now let's hurry!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk97

	def_text_script TextScript87DE48C_unk98

	def_text_script TextScript87DE48C_unk99

	def_text_script TextScript87DE48C_unk100
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Be careful,\n"
	.string "ElecMan..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk101

	def_text_script TextScript87DE48C_unk102
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Should I attack\n"
	.string "with the SoulKnife?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x6A, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk103
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Should I attack\n"
	.string "with the SoulSword?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x6A, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk104
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Should I attack\n"
	.string "with the SoulAx?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x6A, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk105
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Should I attack\n"
	.string "with the SoulGun?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x6A, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk106
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Zzzap!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk107
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Sizzle,sizzle,baby!\n"
	.string "That's one less\n"
	.string "EvilSpirit!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk108
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Watch out for the\n"
	.string "counterattack,\n"
	.string "ElecMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk109

	def_text_script TextScript87DE48C_unk110
	ts_check_flag [
		flag: 0x745,
		jumpIfTrue: TextScript87DE48C_unk115_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you OK,ElecMan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk111_id

	def_text_script TextScript87DE48C_unk111
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Yeah...\n"
	.string "Come on,let's go..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk112
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Look,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I think the darkness\n"
	.string "finally had enough!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk113
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "The SoulWeapons are\n"
	.string "fried... I'd better\n"
	.string "get more fast!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk114
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Oogh!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk115
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you ready,\n"
	.string "ElecMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk116_id

	def_text_script TextScript87DE48C_unk116
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Zapping to go!\n"
	.string "Come on!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk117

	def_text_script TextScript87DE48C_unk118

	def_text_script TextScript87DE48C_unk119

	def_text_script TextScript87DE48C_unk120
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Be careful,\n"
	.string "TomahawkMan..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk121

	def_text_script TextScript87DE48C_unk122
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Attack it with my\n"
	.string "SoulKnife!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x7E, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk123
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Attack it with my\n"
	.string "SoulSword!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x7E, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk124
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Attack it with my\n"
	.string "SoulAx!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x7E, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk125
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Attack it with my\n"
	.string "SoulGun!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x7E, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk126
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Waaargh!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk127
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Alright!\n"
	.string "I got that\n"
	.string "EvilSpirit!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk128
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Watch out for the\n"
	.string "counterattack,\n"
	.string "TomahawkMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk129

	def_text_script TextScript87DE48C_unk130
	ts_check_flag [
		flag: 0x745,
		jumpIfTrue: TextScript87DE48C_unk135_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you OK,\n"
	.string "TomahawkMan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk131_id

	def_text_script TextScript87DE48C_unk131
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "I'm fine.\n"
	.string "Now,let's go sharpen\n"
	.string "my tomahawk!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk132
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Look,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I think the darkness\n"
	.string "finally gave up!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk133
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "My SoulWeapons ran\n"
	.string "out. I'll have to\n"
	.string "get more right away!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk134
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Uwaaah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk135
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you ready,\n"
	.string "TomahawkMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk136_id

	def_text_script TextScript87DE48C_unk136
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "No problem!\n"
	.string "I'm always ready\n"
	.string "to go!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk137

	def_text_script TextScript87DE48C_unk138

	def_text_script TextScript87DE48C_unk139

	def_text_script TextScript87DE48C_unk140
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Be careful,\n"
	.string "EraseMan..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk141

	def_text_script TextScript87DE48C_unk142
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Erase this pest\n"
	.string "with the SoulKnife!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x92, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk143
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Erase this pest\n"
	.string "with the SoulSword!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x92, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk144
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Erase this pest\n"
	.string "with the SoulAx!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x92, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk145
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Erase this pest\n"
	.string "with the SoulGun!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0x92, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk146
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Hiyahahaha!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk147
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Hiyahahaha!!\n"
	.string "EvilSpirit deleted!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk148
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Watch out for the\n"
	.string "counterattack,\n"
	.string "EraseMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk149

	def_text_script TextScript87DE48C_unk150
	ts_check_flag [
		flag: 0x745,
		jumpIfTrue: TextScript87DE48C_unk155_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you OK,\n"
	.string "EraseMan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk151_id

	def_text_script TextScript87DE48C_unk151
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Don't belittle me...\n"
	.string "Well? Don't make me\n"
	.string "wait!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk152
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Hehehe,look!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Awww,poor things.\n"
	.string "Maybe I was a bit\n"
	.string "too rough with them."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk153
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Dang it! Lousy\n"
	.string "SoulWeapons are\n"
	.string "gone!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmph!\n"
	.string "I'll go reload."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk154
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Aaaargh!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk155
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you ready,\n"
	.string "EraseMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk156_id

	def_text_script TextScript87DE48C_unk156
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Let's hurry up\n"
	.string "and bring this\n"
	.string "to an end!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk157

	def_text_script TextScript87DE48C_unk158

	def_text_script TextScript87DE48C_unk159

	def_text_script TextScript87DE48C_unk160
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Be careful,\n"
	.string "GroundMan..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk161

	def_text_script TextScript87DE48C_unk162
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Use the SoulKnife\n"
	.string "on this fool!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xA6, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk163
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Use the SoulSword\n"
	.string "on this fool!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xA6, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk164
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Use the SoulAx\n"
	.string "on this fool?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xA6, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk165
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Use the SoulGun\n"
	.string "on this fool!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xA6, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk166
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whirrrrrr!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk167
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Wrirrrrrr!!\n"
	.string "I buried that\n"
	.string "EvilSpirit!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk168
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Watch out for the\n"
	.string "counterattack,\n"
	.string "GroundMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk169

	def_text_script TextScript87DE48C_unk170
	ts_check_flag [
		flag: 0x745,
		jumpIfTrue: TextScript87DE48C_unk175_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you OK,\n"
	.string "GroundMan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk171_id

	def_text_script TextScript87DE48C_unk171
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "I'm fine!\n"
	.string "Drilling on ahead!\n"
	.string "Whirrrrrr!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk172
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whirrrr!!\n"
	.string "Lookie here!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The darkness had to\n"
	.string "cut and run!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk173
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whirrrr..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The SoulWeapons\n"
	.string "are out.\n"
	.string "Ah,I'll get more."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk174
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whoa!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk175
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you ready,\n"
	.string "GroundMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk176_id

	def_text_script TextScript87DE48C_unk176
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whirrr!!\n"
	.string "Ready to drill,\n"
	.string "drill,drill!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk177

	def_text_script TextScript87DE48C_unk178

	def_text_script TextScript87DE48C_unk179

	def_text_script TextScript87DE48C_unk180
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Be careful,\n"
	.string "ChargeMan..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk181

	def_text_script TextScript87DE48C_unk182
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Charge it with the\n"
	.string "SoulKnife!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xBA, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk183
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Charge it with the\n"
	.string "SoulSword!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xBA, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk184
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Charge it with the\n"
	.string "SoulAx!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xBA, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk185
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Charge it with the\n"
	.string "SoulGun!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xBA, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk186
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo,choooo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk187
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choooo!!\n"
	.string "I flattened that\n"
	.string "EvilSpirit!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk188
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Watch out for the\n"
	.string "counterattack,\n"
	.string "ChargeMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk189

	def_text_script TextScript87DE48C_unk190
	ts_check_flag [
		flag: 0x745,
		jumpIfTrue: TextScript87DE48C_unk195_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you OK,\n"
	.string "ChargeMan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk191_id

	def_text_script TextScript87DE48C_unk191
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo,choo...!!\n"
	.string "Nothing I can't\n"
	.string "handle! Let's go!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk192
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo,choo...\n"
	.string "Look here!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That darkness\n"
	.string "floated off for\n"
	.string "destination unknown!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk193
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Whoooo..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The SoulWeapons have\n"
	.string "jumped track!\n"
	.string "Better fix that!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk194
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Whoo,whooooo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk195
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you ready,\n"
	.string "ChargeMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk196_id

	def_text_script TextScript87DE48C_unk196
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo,chooooo!!\n"
	.string "Let's make\n"
	.string "some tracks!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk197

	def_text_script TextScript87DE48C_unk198

	def_text_script TextScript87DE48C_unk199

	def_text_script TextScript87DE48C_unk200
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Be careful,\n"
	.string "DustMan..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk201

	def_text_script TextScript87DE48C_unk202
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Get this sucker\n"
	.string "with the SoulKnife!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xCE, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk203
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Get this sucker\n"
	.string "with the SoulSword!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xCE, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk204
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Get this sucker\n"
	.string "with the SoulAx!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xCE, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk205
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Get this sucker\n"
	.string "with the SoulGun!?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xCE, 0xFF, 0xFF
	ts_end

	def_text_script TextScript87DE48C_unk206
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Gahahaha!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk207
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Gahahaha!!\n"
	.string "I got you,you\n"
	.string "EvilSpirit scum!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk208
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Watch out for the\n"
	.string "counterattack,\n"
	.string "DustMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk209

	def_text_script TextScript87DE48C_unk210
	ts_check_flag [
		flag: 0x745,
		jumpIfTrue: TextScript87DE48C_unk215_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you OK,DustMan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk211_id

	def_text_script TextScript87DE48C_unk211
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Gahahaha,I'm fine!\n"
	.string "Can't take the air\n"
	.string "out of me!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk212
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Oh,hey!\n"
	.string "Look at that!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The darkness\n"
	.string "cleared out!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk213
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "The SoulWeapons are\n"
	.string "out. Ah,better just\n"
	.string "go get more..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk214
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Ohh!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk215
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Are you ready,\n"
	.string "DustMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=TextScript87DE48C_unk216_id

	def_text_script TextScript87DE48C_unk216
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Gahahaha! Spotlessly\n"
	.string "ready! Let's take\n"
	.string "out the trash!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScript87DE48C_unk217

	def_text_script TextScript87DE48C_unk218

	def_text_script TextScript87DE48C_unk219
	.string " "

	.balign 4, 0
