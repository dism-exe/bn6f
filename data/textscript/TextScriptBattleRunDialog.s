TextScriptBattleRunDialog:: 
	text_archive_start

	def_text_script TextScript6EF78C_unk0
	ts_check_navi_all 0xFF, 0x11, 0x14, 0x23, 0x26, 0x29, 0x2C, 0x2F, 0x32, 0x35, 0x38, 0x3B
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,should we run?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x1, 0x0
	ts_space 0x1
	.string "Yes  "
	ts_option 0x0, 0x1, 0x11
	ts_space 0x1
	.string "No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScript6EF78C_unk1
	ts_check_navi_all 0xFF, 0x12, 0x15, 0x24, 0x27, 0x2A, 0x2D, 0x30, 0x33, 0x36, 0x39, 0x3C
	ts_mugshot_show 0x37
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "OK!\n"
	.string "We got away!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk2
	ts_check_navi_all 0xFF, 0x13, 0x16, 0x25, 0x28, 0x2B, 0x2E, 0x31, 0x34, 0x37, 0x3A, 0x3D
	ts_mugshot_show 0x37
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "It's no good!\n"
	.string "We can't run away!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk3
	ts_check_navi_all 0xFF, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,this is no time\n"
	.string "to run away!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk4
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,should we run?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x1, 0x0
	ts_space 0x1
	.string "Yes  "
	ts_option 0x0, 0x1, 0x11
	ts_space 0x1
	.string "No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScript6EF78C_unk5
	ts_mugshot_show 0x37
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "OK!\n"
	.string "We got away!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk6
	ts_mugshot_show 0x37
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "It's no good!\n"
	.string "We can't run away!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk7
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,this is no time\n"
	.string "to run away!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk8

	def_text_script TextScript6EF78C_unk9

	def_text_script TextScript6EF78C_unk10

	def_text_script TextScript6EF78C_unk11

	def_text_script TextScript6EF78C_unk12

	def_text_script TextScript6EF78C_unk13

	def_text_script TextScript6EF78C_unk14

	def_text_script TextScript6EF78C_unk15

	def_text_script TextScript6EF78C_unk16

	def_text_script TextScript6EF78C_unk17
	ts_mugshot_show 0x47
	ts_msg_open
	.string "Lan,should we burn\n"
	.string "out of here?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x1, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x1, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScript6EF78C_unk18
	ts_mugshot_show 0x47
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "Yes!\n"
	.string "We got away!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk19
	ts_mugshot_show 0x47
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "Yikes!\n"
	.string "We can't run away!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk20
	ts_mugshot_show 0x49
	ts_msg_open
	.string "Lan,\n"
	.string "should we run away?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x1, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x1, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScript6EF78C_unk21
	ts_mugshot_show 0x49
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "\n"
	.string "Yes! We got away!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk22
	ts_mugshot_show 0x49
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "Buzzz!!\n"
	.string "We couldn't run!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk23
	ts_mugshot_show 0x47
	ts_msg_open
	.string "This is no time to\n"
	.string "run out of here!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk24
	ts_mugshot_show 0x49
	ts_msg_open
	.string "Don't run away now!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk25
	ts_mugshot_show 0x4B
	ts_msg_open
	.string "Now's not the time\n"
	.string "to cut and run!\n"
	.string "Keep slashing!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk26
	ts_mugshot_show 0x50
	ts_msg_open
	.string "Why are you running\n"
	.string "away!? I've got\n"
	.string "more erasing to do!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk27
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "Chug-a-chug-a!!\n"
	.string "No time to steam on\n"
	.string "outta here!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk28
	ts_mugshot_show 0x48
	ts_msg_open
	.string "Don't run away now,\n"
	.string "drip!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk29
	ts_mugshot_show 0x4A
	ts_msg_open
	.string "Strange to be\n"
	.string "running away now!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk30
	ts_mugshot_show 0x4C
	ts_msg_open
	.string "Don't turn your\n"
	.string "back..."
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk31
	ts_mugshot_show 0x4D
	ts_msg_open
	.string "Don't be a fool!!\n"
	.string "You can't be runnin'\n"
	.string "away!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk32
	ts_mugshot_show 0x4E
	ts_msg_open
	.string "Hahahah! You can't\n"
	.string "leave 'em in the\n"
	.string "dust now!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk33
	ts_mugshot_show 0x3B
	ts_msg_open
	.string "Don't run away now!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk34
	ts_end

	def_text_script TextScript6EF78C_unk35
	ts_mugshot_show 0x4B
	ts_msg_open
	.string "Lan,should we cut\n"
	.string "and run?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x1, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x1, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScript6EF78C_unk36
	ts_mugshot_show 0x4B
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "Yes!\n"
	.string "We got outta there!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk37
	ts_mugshot_show 0x4B
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "Ahhhh!\n"
	.string "We couldn't run!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk38
	ts_mugshot_show 0x50
	ts_msg_open
	.string "Eh...should we run\n"
	.string "away and disappear?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x1, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x1, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScript6EF78C_unk39
	ts_mugshot_show 0x50
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "Haha!\n"
	.string "We got outta there!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk40
	ts_mugshot_show 0x50
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "No! It can't be!\n"
	.string "We couldn't run!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk41
	ts_mugshot_show 0x4F
	ts_msg_open
	.string "Uga chaka... Shall\n"
	.string "we steam outta here?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x1, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x1, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScript6EF78C_unk42
	ts_mugshot_show 0x4F
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "Choo-Choo!\n"
	.string "We chugachuga'd out!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk43
	ts_mugshot_show 0x4F
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "Screech!\n"
	.string "We couldn't run!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk44
	ts_mugshot_show 0x48
	ts_msg_open
	.string "Lan,shall we drip\n"
	.string "drip away?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x1, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x1, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScript6EF78C_unk45
	ts_mugshot_show 0x48
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "Drip!\n"
	.string "We ran away,drip!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk46
	ts_mugshot_show 0x48
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "Drip!\n"
	.string "We couldn't run...!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk47
	ts_mugshot_show 0x4A
	ts_msg_open
	.string "Lan! Let's get out\n"
	.string "of here! OK?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x1, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x1, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScript6EF78C_unk48
	ts_mugshot_show 0x4A
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "OK!!\n"
	.string "We got outta there!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk49
	ts_mugshot_show 0x4A
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "Ugghh!\n"
	.string "We couldn't run!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk50
	ts_mugshot_show 0x4C
	ts_msg_open
	.string "Lan,let's leave and\n"
	.string "fight another day?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x1, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x1, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScript6EF78C_unk51
	ts_mugshot_show 0x4C
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "\n"
	.string "We got away!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk52
	ts_mugshot_show 0x4C
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "Nooo!\n"
	.string "We couldn't flee!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk53
	ts_mugshot_show 0x4D
	ts_msg_open
	.string "Whiiiir!! Let's\n"
	.string "get outta here!\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x1, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x1, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScript6EF78C_unk54
	ts_mugshot_show 0x4D
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "Whew!\n"
	.string "That was close!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk55
	ts_mugshot_show 0x4D
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "Ugghh!\n"
	.string "We couldn't run!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk56
	ts_mugshot_show 0x4E
	ts_msg_open
	.string "Lan! What should we\n"
	.string "do? Run?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x1, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x1, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScript6EF78C_unk57
	ts_mugshot_show 0x4E
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "Yeah!\n"
	.string "We got away!!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk58
	ts_mugshot_show 0x4E
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "What!?\n"
	.string "We couldn't run!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk59
	ts_mugshot_show 0x3B
	ts_msg_open
	.string "Lan,let's retreat!\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x1, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x1, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script TextScript6EF78C_unk60
	ts_mugshot_show 0x3B
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "\n"
	.string "Retreat completed!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScript6EF78C_unk61
	ts_mugshot_show 0x3B
	ts_msg_open
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "."
	ts_wait 0x12, 0x0
	.string "No!\n"
	.string "We couldn't retreat!"
	ts_key_wait 0x0
	ts_end

	.balign 4, 0

