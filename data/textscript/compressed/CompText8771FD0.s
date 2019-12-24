	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8771FD0::
	.word 0x128900

	text_archive_start

	def_text_script CompText8771FD0_unk0
	ts_check_flag [
		flag: 0x163,
		jumpIfTrue: CompText8771FD0_unk11_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x120,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8771FD0_unk11_id,
	]
	ts_check_flag [
		flag: 0xC4B,
		jumpIfTrue: CompText8771FD0_unk9_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC49,
		jumpIfTrue: CompText8771FD0_unk5_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC43,
		jumpIfTrue: CompText8771FD0_unk3_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC40,
		jumpIfTrue: CompText8771FD0_unk2_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "Ahh... Come to take\n"
	.string "my class I see?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm Dark Scyth..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "My class will be\n"
	.string "about deleting\n"
	.string "many Navis..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...That OK with you?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0xA
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Continue  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Leave"
	ts_select 0x6, 0x80, 0xFF, 0xA, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x27
	.string "You cannot suddenly\n"
	.string "leave after class\n"
	.string "begins,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "thus you must stay\n"
	.string "here until class\n"
	.string "is over."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Is that OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0xA
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Continue  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Leave"
	ts_select 0x6, 0x80, 0xFF, 0xA, 0xFF
	ts_flag_set flag=0x1715
	ts_flag_set flag=0xC40
	ts_end

	def_text_script CompText8771FD0_unk1
	ts_check_flag [
		flag: 0x163,
		jumpIfTrue: CompText8771FD0_unk11_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x120,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8771FD0_unk11_id,
	]
	ts_check_flag [
		flag: 0xC4C,
		jumpIfTrue: CompText8771FD0_unk0_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0xC4C
	ts_jump target=CompText8771FD0_unk0_id

	def_text_script CompText8771FD0_unk2
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "Use this computer\n"
	.string "to operate my\n"
	.string "Navi,EraseMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk3
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "Delete all of the\n"
	.string "targets."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Show them no mercy!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk4

	def_text_script CompText8771FD0_unk5
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "The final test is\n"
	.string "to delete EraseMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ready for the test?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
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
	ts_clear_msg
	ts_mugshot_show mugshot=0x27
	.string "Come back when\n"
	.string "you're really\n"
	.string "ready..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk6
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "Let's go..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "C'mon MegaMan,\n"
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0xC4E
	ts_end

	def_text_script CompText8771FD0_unk7
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "Being the final\n"
	.string "test?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
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
	ts_clear_msg
	ts_mugshot_show mugshot=0x27
	.string "Come back when\n"
	.string "you're really\n"
	.string "ready..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk8
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "You can never show\n"
	.string "your enemy mercy\n"
	.string "in battle!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Try again?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
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
	ts_clear_msg
	ts_mugshot_show mugshot=0x27
	.string "Come back when\n"
	.string "you're really\n"
	.string "ready..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk9
	ts_jump target=CompText8771FD0_unk50_id
	ts_end

	def_text_script CompText8771FD0_unk10
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "If you want to\n"
	.string "know how to delete\n"
	.string "a Navi,come anytime."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk11
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "Sorry,but I'm\n"
	.string "taking a break now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Come back later..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk12

	def_text_script CompText8771FD0_unk13

	def_text_script CompText8771FD0_unk14

	def_text_script CompText8771FD0_unk15
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan!\n"
	.string "Class isn't over yet!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk16

	def_text_script CompText8771FD0_unk17

	def_text_script CompText8771FD0_unk18

	def_text_script CompText8771FD0_unk19

	def_text_script CompText8771FD0_unk20
	ts_check_flag [
		flag: 0x163,
		jumpIfTrue: CompText8771FD0_unk31_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x120,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8771FD0_unk31_id,
	]
	ts_check_flag [
		flag: 0xC6D,
		jumpIfTrue: CompText8771FD0_unk29_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC6B,
		jumpIfTrue: CompText8771FD0_unk25_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC62,
		jumpIfTrue: CompText8771FD0_unk23_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0xC60,
		jumpIfTrue: CompText8771FD0_unk22_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "Oh,hey!\n"
	.string "You... You want to\n"
	.string "take my class?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0xA
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Take Class  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Leave"
	ts_select 0x6, 0x80, 0xFF, 0x1E, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x24
	.string "Once class begins,\n"
	.string "you can't leave."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That means you have\n"
	.string "to stay in this room\n"
	.string "until class is over."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Is that OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0xA
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Continue  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Leave"
	ts_select 0x6, 0x80, 0xFF, 0x1E, 0xFF
	ts_flag_set flag=0x1715
	ts_flag_set flag=0xC60
	ts_end

	def_text_script CompText8771FD0_unk21
	ts_check_flag [
		flag: 0x163,
		jumpIfTrue: CompText8771FD0_unk31_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x120,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8771FD0_unk31_id,
	]
	ts_check_flag [
		flag: 0xC6E,
		jumpIfTrue: CompText8771FD0_unk0_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0xC6E
	ts_jump target=CompText8771FD0_unk0_id

	def_text_script CompText8771FD0_unk22
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "Use this computer\n"
	.string "to operate my\n"
	.string "Navi,GroundMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk23
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "Use GroundMan to\n"
	.string "smash all of\n"
	.string "the falling rocks!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Get going!\n"
	.string "Maximum Drill Power!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk24

	def_text_script CompText8771FD0_unk25
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "The final test is\n"
	.string "to defeat GroundMan\n"
	.string "while I operate him!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ready for the test?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
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
	ts_clear_msg
	ts_mugshot_show mugshot=0x24
	.string "Hey!\n"
	.string "Don't give up..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Just come back again\n"
	.string "when you're ready..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk26
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "Nobody blink!\n"
	.string "Let's go for it,man!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Let's go MegaMan!\n"
	.string "Battle routine,set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Execute!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0xC70
	ts_end

	def_text_script CompText8771FD0_unk27
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "Ready to take the\n"
	.string "final test?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
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
	ts_clear_msg
	ts_mugshot_show mugshot=0x24
	.string "Come back whenever\n"
	.string "you're ready!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk28
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "Huh? Can't dig\n"
	.string "fair and square!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Want to try again?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
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
	ts_clear_msg
	ts_mugshot_show mugshot=0x24
	.string "Come back when\n"
	.string "you want to!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk29
	ts_jump target=CompText8771FD0_unk60_id
	ts_end

	def_text_script CompText8771FD0_unk30
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "If you want to let\n"
	.string "off some steam by\n"
	.string "digging,come back!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk31
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "Sorry,but I don't\n"
	.string "have class now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Come back another\n"
	.string "time OK!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk32

	def_text_script CompText8771FD0_unk33

	def_text_script CompText8771FD0_unk34

	def_text_script CompText8771FD0_unk35

	def_text_script CompText8771FD0_unk36

	def_text_script CompText8771FD0_unk37

	def_text_script CompText8771FD0_unk38

	def_text_script CompText8771FD0_unk39

	def_text_script CompText8771FD0_unk40

	def_text_script CompText8771FD0_unk41

	def_text_script CompText8771FD0_unk42

	def_text_script CompText8771FD0_unk43

	def_text_script CompText8771FD0_unk44

	def_text_script CompText8771FD0_unk45

	def_text_script CompText8771FD0_unk46

	def_text_script CompText8771FD0_unk47

	def_text_script CompText8771FD0_unk48

	def_text_script CompText8771FD0_unk49

	def_text_script CompText8771FD0_unk50
	ts_check_flag [
		flag: 0x120,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8771FD0_unk70_id,
	]
	ts_check_flag [
		flag: 0x1306,
		jumpIfTrue: CompText8771FD0_unk51_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x1306
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "What!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You want to\n"
	.string "NetBattle...\n"
	.string "Against me...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
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
	ts_select 0x6, 0x80, 0x34, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x27
	.string "That was a smart\n"
	.string "choice..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk51
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "You want to\n"
	.string "NetBattle...\n"
	.string "Against me...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
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
	ts_select 0x6, 0x80, 0x34, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x27
	.string "That was a smart\n"
	.string "choice..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk52
	ts_check_flag [
		flag: 0xE00,
		jumpIfTrue: CompText8771FD0_unk55_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x60,
		upper: 0x6F,
		jumpIfInRange: CompText8771FD0_unk54_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x50,
		upper: 0x5F,
		jumpIfInRange: CompText8771FD0_unk53_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText8771FD0_unk53
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "Too bad for you...\n"
	.string "You'll get no\n"
	.string "mercy from me!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "I don't want your\n"
	.string "mercy!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x50
	.string "Then you'll get\n"
	.string "none!!\n"
	.string "Hiiiiyyyaaahhh!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x1328
	ts_end

	def_text_script CompText8771FD0_unk54
	ts_check_flag [
		flag: 0x132C,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8771FD0_unk53_id,
	]
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "Listen...\n"
	.string "It's your dark side\n"
	.string "calling to you..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "I can't hear\n"
	.string "anything!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x50
	.string "Hyahahaha!\n"
	.string "You'll hear it in\n"
	.string "time!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Soon after you taste\n"
	.string "this sickle...!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x1329
	ts_end

	def_text_script CompText8771FD0_unk55
	ts_check_flag [
		flag: 0x314,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8771FD0_unk54_id,
	]
	ts_check_flag [
		flag: 0x132C,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8771FD0_unk53_id,
	]
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "I'll delete you\n"
	.string "before you even\n"
	.string "know it..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "I won't lose that\n"
	.string "easily!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x50
	.string "Your will to live\n"
	.string "will make it all\n"
	.string "the more fun!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hiiiiyaaaahhh!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x132A
	ts_end

	def_text_script CompText8771FD0_unk56

	def_text_script CompText8771FD0_unk57
	ts_check_flag [
		flag: 0x132C,
		jumpIfTrue: CompText8771FD0_unk58_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x132C
	ts_jump target=CompText8771FD0_unk58_id

	def_text_script CompText8771FD0_unk58
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "Strong,huh..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk59
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "No one can escape\n"
	.string "the grip of\n"
	.string "darkness!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk60
	ts_check_flag [
		flag: 0x120,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8771FD0_unk71_id,
	]
	ts_check_flag [
		flag: 0x1307,
		jumpIfTrue: CompText8771FD0_unk61_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x1307
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "Yo! Hikari!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You feel like\n"
	.string "taking on\n"
	.string "GroundMan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He's built up a lot\n"
	.string "of stress lately\n"
	.string "from not digging!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "How about it!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " OK!  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No way"
	ts_select 0x6, 0x80, 0x3E, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x24
	.string "Awww,c'mon...\n"
	.string "Just for a\n"
	.string "little while..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk61
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "You feel like\n"
	.string "taking on\n"
	.string "GroundMan!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He's built up a lot\n"
	.string "of stress lately\n"
	.string "from not digging!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "How about it!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x7
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " OK!  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No way"
	ts_select 0x6, 0x80, 0x3E, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x24
	.string "Awww,c'mon...\n"
	.string "Just for a\n"
	.string "little while..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk62
	ts_check_flag [
		flag: 0xE00,
		jumpIfTrue: CompText8771FD0_unk65_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x60,
		upper: 0x6F,
		jumpIfInRange: CompText8771FD0_unk64_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x50,
		upper: 0x5F,
		jumpIfInRange: CompText8771FD0_unk63_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText8771FD0_unk63
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "Nobody blink! You're\n"
	.string "going to get drilled\n"
	.string "in an instant!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "I'm coming straight\n"
	.string "at you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This one's mine!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x4D
	.string "Whiiiiiir!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x132D
	ts_end

	def_text_script CompText8771FD0_unk64
	ts_check_flag [
		flag: 0x1331,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8771FD0_unk63_id,
	]
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "Whhhooooaaaaa!!\n"
	.string "I'm going to beat\n"
	.string "you senseless!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Bring it on!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x4D
	.string "Whiiiiiiir!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x132E
	ts_end

	def_text_script CompText8771FD0_unk65
	ts_check_flag [
		flag: 0x332,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8771FD0_unk64_id,
	]
	ts_check_flag [
		flag: 0x1331,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8771FD0_unk63_id,
	]
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "Alright!! Here we\n"
	.string "go!!\n"
	.string "Whiiiiiiir!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Say drill as much\n"
	.string "as you want! There's\n"
	.string "no way I'm losing!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x4D
	.string "Whiiiiiiiiir!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x132F
	ts_end

	def_text_script CompText8771FD0_unk66

	def_text_script CompText8771FD0_unk67
	ts_check_flag [
		flag: 0x1331,
		jumpIfTrue: CompText8771FD0_unk68_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x1331
	ts_jump target=CompText8771FD0_unk68_id

	def_text_script CompText8771FD0_unk68
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "AAAAAHHHHHHHH!!\n"
	.string "I.......LOST!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I feel great!\n"
	.string "Thank you!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk69
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "Ahhhhhh!!\n"
	.string "What a stress\n"
	.string "reliever!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk70
	ts_check_chapter [
		lower: 0x52,
		upper: 0x52,
		jumpIfInRange: CompText8771FD0_unk72_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_jump target=CompText8771FD0_unk76_id

	def_text_script CompText8771FD0_unk71
	ts_check_chapter [
		lower: 0x52,
		upper: 0x52,
		jumpIfInRange: CompText8771FD0_unk73_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_jump target=CompText8771FD0_unk77_id

	def_text_script CompText8771FD0_unk72
	ts_check_flag [
		flag: 0xC1F,
		jumpIfTrue: CompText8771FD0_unk74_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText8771FD0_unk76_id

	def_text_script CompText8771FD0_unk73
	ts_check_flag [
		flag: 0xC1F,
		jumpIfTrue: CompText8771FD0_unk75_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_jump target=CompText8771FD0_unk77_id

	def_text_script CompText8771FD0_unk74
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "...MegaMan is...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should use\n"
	.string "EraseMan..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He is your LinkNavi\n"
	.string "after all..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk75
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "MegaMan is what!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Gotcha!\n"
	.string "Use GroundMan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "GroundMan is your\n"
	.string "LinkNavi you know!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk76
	ts_mugshot_show mugshot=0x27
	ts_msg_open
	.string "Without MegaMan here\n"
	.string "there'll be no\n"
	.string "battle..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "EraseMan's always\n"
	.string "up for being\n"
	.string "operated..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk77
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "Without MegaMan,\n"
	.string "you can't NetBattle!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "GroundMan is always\n"
	.string "ready to be\n"
	.string "operated!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8771FD0_unk78

	def_text_script CompText8771FD0_unk79

	def_text_script CompText8771FD0_unk80

	def_text_script CompText8771FD0_unk81

	def_text_script CompText8771FD0_unk82

	def_text_script CompText8771FD0_unk83

	def_text_script CompText8771FD0_unk84

	def_text_script CompText8771FD0_unk85

	def_text_script CompText8771FD0_unk86

	def_text_script CompText8771FD0_unk87

	def_text_script CompText8771FD0_unk88

	def_text_script CompText8771FD0_unk89

	def_text_script CompText8771FD0_unk90

	def_text_script CompText8771FD0_unk91

	def_text_script CompText8771FD0_unk92

	def_text_script CompText8771FD0_unk93

	def_text_script CompText8771FD0_unk94

	def_text_script CompText8771FD0_unk95

	def_text_script CompText8771FD0_unk96

	def_text_script CompText8771FD0_unk97

	def_text_script CompText8771FD0_unk98

	def_text_script CompText8771FD0_unk99

	def_text_script CompText8771FD0_unk100

	def_text_script CompText8771FD0_unk101

	def_text_script CompText8771FD0_unk102

	def_text_script CompText8771FD0_unk103

	def_text_script CompText8771FD0_unk104

	def_text_script CompText8771FD0_unk105

	def_text_script CompText8771FD0_unk106

	def_text_script CompText8771FD0_unk107

	def_text_script CompText8771FD0_unk108

	def_text_script CompText8771FD0_unk109

	