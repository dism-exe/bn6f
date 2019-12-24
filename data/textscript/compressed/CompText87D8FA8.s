	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D8FA8::
	.word 0x76100

	text_archive_start

	def_text_script CompText87D8FA8_unk0
	ts_mugshot_show mugshot=0x5B
	ts_msg_open
	.string "Aaaah...!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=1

	def_text_script CompText87D8FA8_unk1
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x2,
		jumpIfElecMan: 0x2,
		jumpIfSlashMan: 0x2,
		jumpIfEraseMan: 0x2,
		jumpIfChargeMan: 0x2,
		jumpIfSpoutMan: 0x2,
		jumpIfTomahawkMan: 0x2,
		jumpIfTenguMan: 0x2,
		jumpIfGroundMan: 0x2,
		jumpIfDustMan: 0x2,
		jumpIfProtoMan: 0xFF,
	]
	ts_mugshot_show mugshot=0x5B
	ts_msg_open
	.string "I can see...\n"
	.string "the source of...\n"
	.string "your power..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That beast power\n"
	.string "hidden inside you...\n"
	.string "It will be mine!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D8FA8_unk2
	ts_mugshot_show mugshot=0x5B
	ts_msg_open
	.string "It was as if...\n"
	.string "you knew you were\n"
	.string "going to beat me!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "For that arrogance,\n"
	.string "I WILL have your\n"
	.string "power!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D8FA8_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Bass..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sure if we get\n"
	.string "even stronger,he'll\n"
	.string "show up again."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But he won't ever\n"
	.string "beat our awesome\n"
	.string "teamwork!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87D8FA8_unk4
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0x5,
		jumpIfElecMan: 0x6,
		jumpIfSlashMan: 0x7,
		jumpIfEraseMan: 0x8,
		jumpIfChargeMan: 0x9,
		jumpIfSpoutMan: 0xA,
		jumpIfTomahawkMan: 0xB,
		jumpIfTenguMan: 0xC,
		jumpIfGroundMan: 0xD,
		jumpIfDustMan: 0xE,
		jumpIfProtoMan: 0xFF,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Yeah!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We can defeat anyone\n"
	.string "if we work together!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Right!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87D8FA8_unk5
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "Heh,we're no\n"
	.string "rookies at this!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "With your operating\n"
	.string "skills and my fire,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "we shouldn't be\n"
	.string "scared of anything!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87D8FA8_unk6
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "... Hmph.\n"
	.string "I suppose you're\n"
	.string "correct."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Your operating may\n"
	.string "bring out my hidden\n"
	.string "potential yet."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87D8FA8_unk7
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Yeah! My slashing's\n"
	.string "gotten better thanks\n"
	.string "to your operating."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The two of us,\n"
	.string "together--we're\n"
	.string "unstoppable!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87D8FA8_unk8
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Hyahaha!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "No offense to Dark\n"
	.string "Scyth,but you're a\n"
	.string "natural!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If I worked with\n"
	.string "you,work would go\n"
	.string "so much better!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'd be able to\n"
	.string "delete any Navi!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87D8FA8_unk9
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo,choo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If that Bass shows\n"
	.string "up again,he's going\n"
	.string "to get smoked!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87D8FA8_unk10
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Drip,drip!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan,I can tell your\n"
	.string "operating has made\n"
	.string "me stronger,drip!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87D8FA8_unk11
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "If Dingo were here,\n"
	.string "he'd be grinding\n"
	.string "his teeth,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I know with you,\n"
	.string "I can get even\n"
	.string "stronger!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87D8FA8_unk12
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Ha,ha,ha..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Lan,if this is a\n"
	.string "sign of your true\n"
	.string "power,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you may one day\n"
	.string "become as good as\n"
	.string "Master Feng-Tian."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87D8FA8_unk13
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whiiiiir...\n"
	.string "Save the pep talk\n"
	.string "for the kids!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But you're right...\n"
	.string "I bet we could make\n"
	.string "a pretty good team!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87D8FA8_unk14
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Gahahahaha!\n"
	.string "That's good to hear!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And I thought that\n"
	.string "Press'd be the only\n"
	.string "operator for me!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87D8FA8_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Heh,heh!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,looks like\n"
	.string "we're done in this\n"
	.string "area!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Time to head back!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87D8FA8_unk16

	def_text_script CompText87D8FA8_unk17
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
	.string "Alright!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D8FA8_unk18
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "OK!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D8FA8_unk19
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Yes."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D8FA8_unk20
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	ts_mugshot_animation animation=0x1
	.string "Slaaaaash!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D8FA8_unk21
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Yeah!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D8FA8_unk22
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo,choo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D8FA8_unk23
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Drip,drip!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D8FA8_unk24
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "OK!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D8FA8_unk25
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Hmm!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D8FA8_unk26
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "You got it!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87D8FA8_unk27
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Let's blow this\n"
	.string "joint!"
	ts_key_wait any=0x0
	ts_end

	