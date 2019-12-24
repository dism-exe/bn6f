	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D7BA8::
	.word 0xD7F00

	text_archive_start

	def_text_script CompText87D7BA8_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... A gravestone...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's got something\n"
	.string "written on it..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk1_id

	def_text_script CompText87D7BA8_unk1
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText87D7BA8_unk2_id,
		jumpIfElecMan: CompText87D7BA8_unk3_id,
		jumpIfSlashMan: CompText87D7BA8_unk4_id,
		jumpIfEraseMan: CompText87D7BA8_unk5_id,
		jumpIfChargeMan: CompText87D7BA8_unk6_id,
		jumpIfSpoutMan: CompText87D7BA8_unk7_id,
		jumpIfTomahawkMan: CompText87D7BA8_unk8_id,
		jumpIfTenguMan: CompText87D7BA8_unk9_id,
		jumpIfGroundMan: CompText87D7BA8_unk10_id,
		jumpIfDustMan: CompText87D7BA8_unk11_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "It says:"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "   Here rests the\n"
	.string "    Cyberworld's\n"
	.string " God of Destruction"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"God of Destruction\"\n"
	.string "......\n"
	.string "You don't think...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D7BA8_unk2
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "It says:"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "   Here rests the\n"
	.string "    Cyberworld's\n"
	.string " God of Destruction"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "God of Destruction?\n"
	.string "Isn't that me?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D7BA8_unk3
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "It reads:"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "   Here rests the\n"
	.string "    Cyberworld's\n"
	.string " God of Destruction"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"God of Destruction\"\n"
	.string "...... Where have I\n"
	.string "heard that before..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D7BA8_unk4
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "It says:"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "   Here rests the\n"
	.string "    Cyberworld's\n"
	.string " God of Destruction"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmm... God of\n"
	.string "Destruction... I\n"
	.string "sense evil afoot..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D7BA8_unk5
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "It says:"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "   Here rests the\n"
	.string "    Cyberworld's\n"
	.string " God of Destruction"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Heh! Doesn't matter\n"
	.string "to me! Bring it on!\n"
	.string "Hyahaha!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D7BA8_unk6
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo,choo..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It says:"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "   Here rests the\n"
	.string "    Cyberworld's\n"
	.string " God of Destruction"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "God of Destruction?\n"
	.string "What's that supposed\n"
	.string "to mean...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D7BA8_unk7
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "  \"Here rests the\n"
	.string "    Cyberworld's\n"
	.string " God of Destruction\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "is what it\n"
	.string "says,drip!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Who is the\n"
	.string "Cyberworld's God of\n"
	.string "Destruction,drip?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D7BA8_unk8
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "It says:"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "   Here rests the\n"
	.string "    Cyberworld's\n"
	.string " God of Destruction"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A God,huh?...\n"
	.string "I want to take a\n"
	.string "swing at him!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D7BA8_unk9
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Hmm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It reads:"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "   Here rests the\n"
	.string "    Cyberworld's\n"
	.string " God of Destruction"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder what\n"
	.string "he is like..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D7BA8_unk10
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whiiiiiir..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It says:"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "   Here rests the\n"
	.string "    Cyberworld's\n"
	.string " God of Destruction"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Wonder what kind of\n"
	.string "fool we're gonna\n"
	.string "dig up here?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D7BA8_unk11
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "It says:"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "   Here rests the\n"
	.string "    Cyberworld's\n"
	.string " God of Destruction"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Heh,he's gonna be\n"
	.string "the God of Junk\n"
	.string "when I'm done!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D7BA8_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "W-What!?\n"
	.string "The God of..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk13_id

	def_text_script CompText87D7BA8_unk13
	ts_mugshot_hide
	ts_msg_open
	.string "Who dares to disturb\n"
	.string "my sleep...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D7BA8_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "W-Watch out!\n"
	.string "Something's coming!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D7BA8_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Aaah!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D7BA8_unk16
	ts_mugshot_show mugshot=0x5B
	ts_msg_open
	.string "You dare to set foot\n"
	.string "into this place..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "For disturbing my\n"
	.string "sleep..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll take your life\n"
	.string "as payment!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk17_id

	def_text_script CompText87D7BA8_unk17
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText87D7BA8_unk18_id,
		jumpIfElecMan: CompText87D7BA8_unk19_id,
		jumpIfSlashMan: CompText87D7BA8_unk20_id,
		jumpIfEraseMan: CompText87D7BA8_unk21_id,
		jumpIfChargeMan: CompText87D7BA8_unk22_id,
		jumpIfSpoutMan: CompText87D7BA8_unk23_id,
		jumpIfTomahawkMan: CompText87D7BA8_unk24_id,
		jumpIfTenguMan: CompText87D7BA8_unk25_id,
		jumpIfGroundMan: CompText87D7BA8_unk26_id,
		jumpIfDustMan: CompText87D7BA8_unk27_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... Bass!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan,I'm counting\n"
	.string "on you!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Here he comes!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk28_id

	def_text_script CompText87D7BA8_unk18
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "I-Is this the \"God\n"
	.string "of Destruction\"\n"
	.string "guy...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Aw,this is bad...\n"
	.string "Here he comes!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk28_id

	def_text_script CompText87D7BA8_unk19
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "I feel such a surge\n"
	.string "of power!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He's attacking,Lan!\n"
	.string "I'm counting on\n"
	.string "you!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk28_id

	def_text_script CompText87D7BA8_unk20
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "... He's too close!\n"
	.string "He's overpowering\n"
	.string "me!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Tsk,doesn't look\n"
	.string "like I can escape..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan,I'm counting on\n"
	.string "you to operate!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "No turning back now!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk28_id

	def_text_script CompText87D7BA8_unk21
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "I know this Navi...\n"
	.string "This is Bass..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So HE'S the\n"
	.string "\"God of Destruction\"\n"
	.string "......"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Looks like he wants\n"
	.string "to come out and\n"
	.string "play..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk28_id

	def_text_script CompText87D7BA8_unk22
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choooooo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "D-Didn't it just say\n"
	.string "he's a G-God...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "M-Maybe we can still\n"
	.string "set our gears in\n"
	.string "reverse and run!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Choo,choo!!\n"
	.string "Too late!\n"
	.string "He's charging!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk28_id

	def_text_script CompText87D7BA8_unk23
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Drip,d-drip!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan!! We're in\n"
	.string "t-trouble,drip!\n"
	.string "Waaaaaaaaah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk28_id

	def_text_script CompText87D7BA8_unk24
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "L-Lan... I hope\n"
	.string "you're ready to\n"
	.string "operate..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "'Cause I take that\n"
	.string "back. I don't really\n"
	.string "want to fight him..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk28_id

	def_text_script CompText87D7BA8_unk25
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Hmm... I sense\n"
	.string "quite an ominous\n"
	.string "air from him."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan! Operate,please!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk28_id

	def_text_script CompText87D7BA8_unk26
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whiiiiiiir!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Who knew I'd really\n"
	.string "find a ghost under\n"
	.string "a gravestone!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But man,this zombie\n"
	.string "feels like he's got\n"
	.string "plenty of power--"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "enough to make my\n"
	.string "drills spin the\n"
	.string "wrong way! Ouch!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Whir!\n"
	.string "L-Lan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Get ready! Hurry!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk28_id

	def_text_script CompText87D7BA8_unk27
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "A-A ghost!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Heh,well,junk is\n"
	.string "junk,and I'm good at\n"
	.string "taking care of junk!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Come on,show me what\n"
	.string "you've got!\n"
	.string "Gahahahaha!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk28_id

	def_text_script CompText87D7BA8_unk28
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Let's go!!\n"
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk29_id

	def_text_script CompText87D7BA8_unk29
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText87D7BA8_unk30_id,
		jumpIfElecMan: CompText87D7BA8_unk31_id,
		jumpIfSlashMan: CompText87D7BA8_unk32_id,
		jumpIfEraseMan: CompText87D7BA8_unk33_id,
		jumpIfChargeMan: CompText87D7BA8_unk34_id,
		jumpIfSpoutMan: CompText87D7BA8_unk35_id,
		jumpIfTomahawkMan: CompText87D7BA8_unk36_id,
		jumpIfTenguMan: CompText87D7BA8_unk37_id,
		jumpIfGroundMan: CompText87D7BA8_unk38_id,
		jumpIfDustMan: CompText87D7BA8_unk39_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk40_id

	def_text_script CompText87D7BA8_unk30
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk40_id

	def_text_script CompText87D7BA8_unk31
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk40_id

	def_text_script CompText87D7BA8_unk32
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk40_id

	def_text_script CompText87D7BA8_unk33
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk40_id

	def_text_script CompText87D7BA8_unk34
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk40_id

	def_text_script CompText87D7BA8_unk35
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk40_id

	def_text_script CompText87D7BA8_unk36
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk40_id

	def_text_script CompText87D7BA8_unk37
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk40_id

	def_text_script CompText87D7BA8_unk38
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk40_id

	def_text_script CompText87D7BA8_unk39
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87D7BA8_unk40_id

	def_text_script CompText87D7BA8_unk40
	ts_mugshot_show mugshot=0x5B
	ts_msg_open
	.string "Pathetic weakling...\n"
	.string "Be gone!!"
	ts_key_wait any=0x0
	ts_end

	