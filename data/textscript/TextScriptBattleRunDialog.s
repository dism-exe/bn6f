TextScriptBattleRunDialog::
	text_archive_start

	def_text_script TextScriptBattleRunDialog_unk0
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScriptBattleRunDialog_unk17_id,
		jumpIfElecMan: TextScriptBattleRunDialog_unk20_id,
		jumpIfSlashMan: TextScriptBattleRunDialog_unk35_id,
		jumpIfEraseMan: TextScriptBattleRunDialog_unk38_id,
		jumpIfChargeMan: TextScriptBattleRunDialog_unk41_id,
		jumpIfSpoutMan: TextScriptBattleRunDialog_unk44_id,
		jumpIfTomahawkMan: TextScriptBattleRunDialog_unk47_id,
		jumpIfTenguMan: TextScriptBattleRunDialog_unk50_id,
		jumpIfGroundMan: TextScriptBattleRunDialog_unk53_id,
		jumpIfDustMan: TextScriptBattleRunDialog_unk56_id,
		jumpIfProtoMan: TextScriptBattleRunDialog_unk59_id,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,should we run?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string "Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string "No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptBattleRunDialog_unk1
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScriptBattleRunDialog_unk18_id,
		jumpIfElecMan: TextScriptBattleRunDialog_unk21_id,
		jumpIfSlashMan: TextScriptBattleRunDialog_unk36_id,
		jumpIfEraseMan: TextScriptBattleRunDialog_unk39_id,
		jumpIfChargeMan: TextScriptBattleRunDialog_unk42_id,
		jumpIfSpoutMan: TextScriptBattleRunDialog_unk45_id,
		jumpIfTomahawkMan: TextScriptBattleRunDialog_unk48_id,
		jumpIfTenguMan: TextScriptBattleRunDialog_unk51_id,
		jumpIfGroundMan: TextScriptBattleRunDialog_unk54_id,
		jumpIfDustMan: TextScriptBattleRunDialog_unk57_id,
		jumpIfProtoMan: TextScriptBattleRunDialog_unk60_id,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "OK!\n"
	.string "We got away!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk2
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScriptBattleRunDialog_unk19_id,
		jumpIfElecMan: TextScriptBattleRunDialog_unk22_id,
		jumpIfSlashMan: TextScriptBattleRunDialog_unk37_id,
		jumpIfEraseMan: TextScriptBattleRunDialog_unk40_id,
		jumpIfChargeMan: TextScriptBattleRunDialog_unk43_id,
		jumpIfSpoutMan: TextScriptBattleRunDialog_unk46_id,
		jumpIfTomahawkMan: TextScriptBattleRunDialog_unk49_id,
		jumpIfTenguMan: TextScriptBattleRunDialog_unk52_id,
		jumpIfGroundMan: TextScriptBattleRunDialog_unk55_id,
		jumpIfDustMan: TextScriptBattleRunDialog_unk58_id,
		jumpIfProtoMan: TextScriptBattleRunDialog_unk61_id,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "It's no good!\n"
	.string "We can't run away!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk3
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TextScriptBattleRunDialog_unk23_id,
		jumpIfElecMan: TextScriptBattleRunDialog_unk24_id,
		jumpIfSlashMan: TextScriptBattleRunDialog_unk25_id,
		jumpIfEraseMan: TextScriptBattleRunDialog_unk26_id,
		jumpIfChargeMan: TextScriptBattleRunDialog_unk27_id,
		jumpIfSpoutMan: TextScriptBattleRunDialog_unk28_id,
		jumpIfTomahawkMan: TextScriptBattleRunDialog_unk29_id,
		jumpIfTenguMan: TextScriptBattleRunDialog_unk30_id,
		jumpIfGroundMan: TextScriptBattleRunDialog_unk31_id,
		jumpIfDustMan: TextScriptBattleRunDialog_unk32_id,
		jumpIfProtoMan: TextScriptBattleRunDialog_unk33_id,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,this is no time\n"
	.string "to run away!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk4
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,should we run?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string "Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string "No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptBattleRunDialog_unk5
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "OK!\n"
	.string "We got away!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk6
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "It's no good!\n"
	.string "We can't run away!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk7
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,this is no time\n"
	.string "to run away!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk8

	def_text_script TextScriptBattleRunDialog_unk9

	def_text_script TextScriptBattleRunDialog_unk10

	def_text_script TextScriptBattleRunDialog_unk11

	def_text_script TextScriptBattleRunDialog_unk12

	def_text_script TextScriptBattleRunDialog_unk13

	def_text_script TextScriptBattleRunDialog_unk14

	def_text_script TextScriptBattleRunDialog_unk15

	def_text_script TextScriptBattleRunDialog_unk16

	def_text_script TextScriptBattleRunDialog_unk17
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Lan,should we burn\n"
	.string "out of here?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptBattleRunDialog_unk18
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "Yes!\n"
	.string "We got away!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk19
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "Yikes!\n"
	.string "We can't run away!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk20
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Lan,\n"
	.string "should we run away?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptBattleRunDialog_unk21
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "\n"
	.string "Yes! We got away!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk22
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "Buzzz!!\n"
	.string "We couldn't run!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk23
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "This is no time to\n"
	.string "run out of here!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk24
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Don't run away now!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk25
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Now's not the time\n"
	.string "to cut and run!\n"
	.string "Keep slashing!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk26
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Why are you running\n"
	.string "away!? I've got\n"
	.string "more erasing to do!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk27
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Chug-a-chug-a!!\n"
	.string "No time to steam on\n"
	.string "outta here!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk28
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Don't run away now,\n"
	.string "drip!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk29
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Strange to be\n"
	.string "running away now!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk30
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Don't turn your\n"
	.string "back..."
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk31
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Don't be a fool!!\n"
	.string "You can't be runnin'\n"
	.string "away!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk32
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Hahahah! You can't\n"
	.string "leave 'em in the\n"
	.string "dust now!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk33
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "Don't run away now!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk34
	ts_end

	def_text_script TextScriptBattleRunDialog_unk35
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Lan,should we cut\n"
	.string "and run?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptBattleRunDialog_unk36
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "Yes!\n"
	.string "We got outta there!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk37
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "Ahhhh!\n"
	.string "We couldn't run!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk38
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Eh...should we run\n"
	.string "away and disappear?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptBattleRunDialog_unk39
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "Haha!\n"
	.string "We got outta there!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk40
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "No! It can't be!\n"
	.string "We couldn't run!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk41
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Uga chaka... Shall\n"
	.string "we steam outta here?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptBattleRunDialog_unk42
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "Choo-Choo!\n"
	.string "We chugachuga'd out!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk43
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "Screech!\n"
	.string "We couldn't run!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk44
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Lan,shall we drip\n"
	.string "drip away?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptBattleRunDialog_unk45
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "Drip!\n"
	.string "We ran away,drip!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk46
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "Drip!\n"
	.string "We couldn't run...!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk47
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Lan! Let's get out\n"
	.string "of here! OK?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptBattleRunDialog_unk48
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "OK!!\n"
	.string "We got outta there!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk49
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "Ugghh!\n"
	.string "We couldn't run!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk50
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Lan,let's leave and\n"
	.string "fight another day?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptBattleRunDialog_unk51
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "\n"
	.string "We got away!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk52
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "Nooo!\n"
	.string "We couldn't flee!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk53
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whiiiir!! Let's\n"
	.string "get outta here!\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptBattleRunDialog_unk54
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "Whew!\n"
	.string "That was close!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk55
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "Ugghh!\n"
	.string "We couldn't run!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk56
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Lan! What should we\n"
	.string "do? Run?\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptBattleRunDialog_unk57
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "Yeah!\n"
	.string "We got away!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk58
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "What!?\n"
	.string "We couldn't run!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk59
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "Lan,let's retreat!\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScriptBattleRunDialog_unk60
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "\n"
	.string "Retreat completed!"
	ts_key_wait any=0x0
	ts_end

	def_text_script TextScriptBattleRunDialog_unk61
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "."
	ts_wait frames=0x12
	.string "No!\n"
	.string "We couldn't retreat!"
	ts_key_wait any=0x0
	.string "@  "

	.balign 4, 0
