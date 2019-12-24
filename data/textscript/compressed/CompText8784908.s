	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8784908::
	.word 0x1D8200

	text_archive_start

	def_text_script CompText8784908_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,there's some\n"
	.string "Navi strangely\n"
	.string "fidgeting..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Something must be\n"
	.string "wrong. Let's check\n"
	.string "it out..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk1

	def_text_script CompText8784908_unk2

	def_text_script CompText8784908_unk3

	def_text_script CompText8784908_unk4

	def_text_script CompText8784908_unk5

	def_text_script CompText8784908_unk6

	def_text_script CompText8784908_unk7

	def_text_script CompText8784908_unk8

	def_text_script CompText8784908_unk9

	def_text_script CompText8784908_unk10
	ts_check_shop_stock [
		shop: 0x2,
		jumpIfStocked: TS_CONTINUE,
		jumpIfSoldOut: CompText8784908_unk12_id,
	]
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "I'm a SubChip\n"
	.string "merchant!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I got lots of\n"
	.string "great things!\n"
	ts_position_option_horizontal width=0xB
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Look "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Don't look "
	ts_select 0x6, 0x0, 0xFF, 0xB, 0xFF
	ts_start_shop shop=0x2

	def_text_script CompText8784908_unk11
	ts_clear_msg
	.string "Come back again\n"
	.string "sometime!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk12
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "I'm a SubChip\n"
	.string "merchant!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But right now I'm\n"
	.string "sold out!! Sorry!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk13

	def_text_script CompText8784908_unk14

	def_text_script CompText8784908_unk15

	def_text_script CompText8784908_unk16

	def_text_script CompText8784908_unk17

	def_text_script CompText8784908_unk18

	def_text_script CompText8784908_unk19

	def_text_script CompText8784908_unk20
	ts_mugshot_show mugshot=0x24
	ts_msg_open
	.string "Class isn't over\n"
	.string "yet!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk21

	def_text_script CompText8784908_unk22

	def_text_script CompText8784908_unk23

	def_text_script CompText8784908_unk24

	def_text_script CompText8784908_unk25

	def_text_script CompText8784908_unk26

	def_text_script CompText8784908_unk27

	def_text_script CompText8784908_unk28

	def_text_script CompText8784908_unk29

	def_text_script CompText8784908_unk30
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "You can't be\n"
	.string "too impatient\n"
	.string "in this world..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You've got to treat\n"
	.string "relaxation time\n"
	.string "seriously too!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk31
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "CLEANING TIME!!\n"
	.string "VROOOOOOOOOMM!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "INTERNET CLEANING!!\n"
	.string "VROOOOOOOOOOOMMMM!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk32

	def_text_script CompText8784908_unk33

	def_text_script CompText8784908_unk34

	def_text_script CompText8784908_unk35
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THIS IS\n"
	.string "CENTRALAREA1!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ARE YOU ENJOYING\n"
	.string "THE INTERNET?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk36
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	ts_check_navi_all [
		jumpIfMegaMan: CompText8784908_unk46_id,
		jumpIfHeatMan: TS_CONTINUE,
		jumpIfElecMan: CompText8784908_unk37_id,
		jumpIfSlashMan: CompText8784908_unk38_id,
		jumpIfEraseMan: CompText8784908_unk39_id,
		jumpIfChargeMan: CompText8784908_unk40_id,
		jumpIfSpoutMan: CompText8784908_unk41_id,
		jumpIfTomahawkMan: CompText8784908_unk42_id,
		jumpIfTenguMan: CompText8784908_unk43_id,
		jumpIfGroundMan: CompText8784908_unk44_id,
		jumpIfDustMan: CompText8784908_unk45_id,
		jumpIfProtoMan: CompText8784908_unk46_id,
	]
	.string "Umm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You're burning up...\n"
	.string "But maybe that's\n"
	.string "normal...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk37
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Isn't that thing\n"
	.string "on your back...\n"
	.string "you know...heavy?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk38
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "You've got some\n"
	.string "seriously big\n"
	.string "nails!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Doesn't that make\n"
	.string "handshakes kinda\n"
	.string "difficult?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk39
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "You've got some\n"
	.string "evil eyes..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Do me a favor and\n"
	.string "don't look over\n"
	.string "here,OK?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk40
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "You are one\n"
	.string "snazzy looking\n"
	.string "Navi!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm really jealous!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk41
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Umm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Aren't you\n"
	.string "dripping?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk42
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Those wing-like\n"
	.string "things on your\n"
	.string "head... Awesome..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe I should try\n"
	.string "that style as well!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk43
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Umm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Are you embarrassed?\n"
	.string "Your face is really\n"
	.string "red!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk44
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Umm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Doesn't that drill\n"
	.string "hurt your\n"
	.string "shoulders?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk45
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Huh? Gathering\n"
	.string "trash is your\n"
	.string "job,huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...I'll set it my"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "trash,but don't\n"
	.string "scrap me by mistake!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk46
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Isn't the taste\n"
	.string "of coffee and\n"
	.string "life so similar?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Extremely sweet...\n"
	.string "Extremely bitter..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk47

	def_text_script CompText8784908_unk48

	def_text_script CompText8784908_unk49

	def_text_script CompText8784908_unk50
	ts_mugshot_show mugshot=0x3D
	ts_msg_open
	.string "...I'M THE VIRUS\n"
	.string "BATTLE MACHINE V5..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU ARE A VIRUS\n"
	.string "BATTLER CORRECT...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "WOULD YOU LIKE TO\n"
	.string "ENTER 10 CONSECUTIVE\n"
	.string "VIRUS BATTLES?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_mugshot_hide
	ts_text_speed delay=0x0
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x2,
	]
	ts_space count=0x1
	.string " Yes\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x2,
		up: 0x0,
	]
	ts_space count=0x1
	.string " No\n"
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x2,
		left: 0x2,
		down: 0x0,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Hear Explanation"
	ts_select 0x7, 0xA0, 0x33, 0xFF, 0x39, 0xFF
	ts_clear_msg
	ts_text_speed delay=0x2
	ts_mugshot_show mugshot=0x3D
	.string "COME BACK SOON!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk51
	ts_text_speed delay=0x2
	ts_mugshot_show mugshot=0x3D
	ts_msg_open
	.string "LAUNCHING VIRUS\n"
	.string "BATTLE..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "BATTLE... START!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x1E1
	ts_end

	def_text_script CompText8784908_unk52
	ts_check_flag [
		flag: 0x1F0,
		jumpIfTrue: CompText8784908_unk55_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3D
	ts_msg_open
	.string "AMAZING!!\n"
	.string "WELL DONE!!\n"
	.string "I LOSE!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU'VE COMPLETED\n"
	.string "ALL OF THE MATCHES!\n"
	.string "HERE IS YOUR GIFT!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip [
		chip: 0x8,
		code: 0x15,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0x8,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x15,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x3D
	.string "CONGRATULATIONS!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1F0
	ts_end

	def_text_script CompText8784908_unk53
	ts_mugshot_show mugshot=0x3D
	ts_msg_open
	.string "THAT WAS CLOSE...\n"
	.string "COME BACK AGAIN\n"
	.string "SOON!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk54

	def_text_script CompText8784908_unk55
	ts_jump_random CompText8784908_unk65_id, 0x20, 0x20, 0xFF, 0x38
	ts_mugshot_show mugshot=0x3D
	ts_msg_open
	.string "AMAZING!!\n"
	.string "WELL DONE!!\n"
	.string "I LOSE!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU'VE COMPLETED\n"
	.string "ALL OF THE MATCHES!\n"
	.string "HERE IS YOUR GIFT!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_zenny [
		amount: 0xBB8,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: TS_CONTINUE,
		jumpIfSome: TS_CONTINUE,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\"3000 Zennys\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x3D
	.string "CONGRATULATIONS!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk56
	ts_mugshot_show mugshot=0x3D
	ts_msg_open
	.string "AMAZING!!\n"
	.string "WELL DONE!!\n"
	.string "I LOSE!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU'VE COMPLETED\n"
	.string "ALL OF THE MATCHES!\n"
	.string "HERE IS YOUR GIFT!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_check_give_bug_frags [
		amount: 0xA,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: TS_CONTINUE,
		jumpIfSome: TS_CONTINUE,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\"10 BugFrags\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x3D
	.string "CONGRATULATIONS!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk57
	ts_text_speed delay=0x2
	ts_mugshot_show mugshot=0x3D
	ts_msg_open
	.string "LET ME EXPLAIN THE\n"
	.string "RULES."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU CAN FIGHT\n"
	.string "AGAINST 2 VIRUSES"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THAT YOU HAVE THE\n"
	.string "DATA FOR..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU MUST REDUCE AN\n"
	.string "ENEMY VIRUSES"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ENERGY TO ZERO\n"
	.string "WITHIN THE TIME\n"
	.string "LIMIT."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THERE IS ONE THING\n"
	.string "TO REMEMBER WHEN\n"
	.string "SETTING UP A BATTLE."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THE TOTAL SIZE OF\n"
	.string "THE TWO VIRUSES YOU"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "CHOOSE MUST NOT BE\n"
	.string "MORE THAN 50 MB."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IF IT IS OVER,YOU\n"
	.string "WILL NOT BE ABLE TO\n"
	.string "SET THE BATTLE."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IF YOU CAN DELETE\n"
	.string "ALL THE VIRUSES\n"
	.string "WITH STYLE,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "YOU WILL GET AN\n"
	.string "AMAZING REWARD!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk58

	def_text_script CompText8784908_unk59

	def_text_script CompText8784908_unk60

	def_text_script CompText8784908_unk61

	def_text_script CompText8784908_unk62

	def_text_script CompText8784908_unk63

	def_text_script CompText8784908_unk64

	def_text_script CompText8784908_unk65

	def_text_script CompText8784908_unk66

	def_text_script CompText8784908_unk67

	def_text_script CompText8784908_unk68

	def_text_script CompText8784908_unk69

	def_text_script CompText8784908_unk70

	def_text_script CompText8784908_unk71

	def_text_script CompText8784908_unk72

	def_text_script CompText8784908_unk73

	def_text_script CompText8784908_unk74

	def_text_script CompText8784908_unk75

	def_text_script CompText8784908_unk76

	def_text_script CompText8784908_unk77

	def_text_script CompText8784908_unk78

	def_text_script CompText8784908_unk79

	def_text_script CompText8784908_unk80

	def_text_script CompText8784908_unk81

	def_text_script CompText8784908_unk82

	def_text_script CompText8784908_unk83

	def_text_script CompText8784908_unk84

	def_text_script CompText8784908_unk85

	def_text_script CompText8784908_unk86

	def_text_script CompText8784908_unk87

	def_text_script CompText8784908_unk88

	def_text_script CompText8784908_unk89

	def_text_script CompText8784908_unk90

	def_text_script CompText8784908_unk91

	def_text_script CompText8784908_unk92

	def_text_script CompText8784908_unk93

	def_text_script CompText8784908_unk94

	def_text_script CompText8784908_unk95

	def_text_script CompText8784908_unk96

	def_text_script CompText8784908_unk97

	def_text_script CompText8784908_unk98

	def_text_script CompText8784908_unk99

	def_text_script CompText8784908_unk100
	ts_check_flag [
		flag: 0x110E,
		jumpIfTrue: CompText8784908_unk104_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x110D,
		jumpIfTrue: CompText8784908_unk101_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_flag_set flag=0x110D
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Umm... Did you come\n"
	.string "here after seeing\n"
	.string "the RequestBBS?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That means that you\n"
	.string "are going to give me\n"
	.string "a \""
	ts_print_chip1 [
		chip: 0xF,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x2,
		buffer: 0x0,
	]
	.string "\"!?"
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
	ts_select 0x6, 0x80, 0x66, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "I see...\n"
	.string "Liar..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk101
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Ah! You're going to\n"
	.string "give me a\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xF,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x2,
		buffer: 0x0,
	]
	.string "\" right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If that's so,then\n"
	.string "go ahead and hand\n"
	.string "it over..."
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
	ts_select 0x6, 0x80, 0x66, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "No wayyyy!!\n"
	.string "Don't say that!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk102
	ts_check_pack_chip_code [
		chip: 0xF,
		code: 0x2,
		amount: 0x1,
		jumpIfEqual: CompText8784908_unk103_id,
		jumpIfGreater: CompText8784908_unk103_id,
		jumpIfLess: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Huh?\n"
	.string "You can't find a\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xF,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x2,
		buffer: 0x0,
	]
	.string "\"?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you don't have\n"
	.string "it,you can't hand\n"
	.string "it over!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk103
	ts_flag_set flag=0x110E
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Ahhh... So this is a\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xF,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x2,
		buffer: 0x0,
	]
	.string "\" huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This is the first\n"
	.string "time I've actually\n"
	.string "seen one..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Finally..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Please,take this\n"
	.string "instead of money\n"
	.string "for the chip!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_take_chip [
		chip: 0xF,
		code: 0x2,
		amount: 0x1,
	]
	ts_item_give [
		item: 0x70,
		amount: 0x1,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item [
		item: 0x70,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x3E
	.string "Now I can finally\n"
	.string "beat that stupid\n"
	.string "idiot... FINALLY!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "HAHAHAHA...\n"
	.string "HAHAHAHAHAHAHA!!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Request Point\n"
	ts_call_request_points_buffer
	ts_print_buffer03 [
		minLength: 0x1,
		padZeros: 0x0,
		padLeft: 0x0,
		buffer: 0x1,
	]
	.string " Points!"
	ts_key_wait any=0x0
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText8784908_unk104
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Thanks to you,that\n"
	.string "moron is really\n"
	.string "gonna get it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "HAHAHAHA...\n"
	.string "HAHAHAHAHAHAHA!!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk105

	def_text_script CompText8784908_unk106

	def_text_script CompText8784908_unk107

	def_text_script CompText8784908_unk108

	def_text_script CompText8784908_unk109

	def_text_script CompText8784908_unk110
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "What? Is there\n"
	.string "something on my\n"
	.string "face...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Gross?...\n"
	.string "Don't look at\n"
	.string "someone like that!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x11BD
	ts_end

	def_text_script CompText8784908_unk111
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Uggghhh...\n"
	.string "You did well..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x11C7
	ts_check_flag [
		flag: 0x11CB,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk113_id,
	]
	ts_check_flag [
		flag: 0x11CA,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk113_id,
	]
	ts_check_flag [
		flag: 0x11C9,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk113_id,
	]
	ts_check_flag [
		flag: 0x11C8,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk113_id,
	]
	ts_check_flag [
		flag: 0x11C7,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk113_id,
	]
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "We did it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We got rid of\n"
	.string "all the\n"
	.string "evildoers!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's get back to\n"
	.string "the requestor!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk112
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Uggghhh..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk113
	ts_end

	def_text_script CompText8784908_unk114

	def_text_script CompText8784908_unk115
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Look at you,all\n"
	.string "full of your sense\n"
	.string "of justice..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Looking just\n"
	.string "like you'd hate\n"
	.string "someone like me!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x1715
	ts_flag_set flag=0x11BE
	ts_end

	def_text_script CompText8784908_unk116
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "You're...stronger...\n"
	.string "than you...look!\n"
	.string "Graawwwwhhhhgghhh!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x11C8
	ts_check_flag [
		flag: 0x11CB,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk113_id,
	]
	ts_check_flag [
		flag: 0x11CA,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk113_id,
	]
	ts_check_flag [
		flag: 0x11C9,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk113_id,
	]
	ts_check_flag [
		flag: 0x11C8,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk113_id,
	]
	ts_check_flag [
		flag: 0x11C7,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk113_id,
	]
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "We did it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We got rid of\n"
	.string "all the\n"
	.string "evildoers!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's get back to\n"
	.string "the requestor!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk117
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Graawwwwhhhhgghhh!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk118

	def_text_script CompText8784908_unk119

	def_text_script CompText8784908_unk120
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "...Welcome to the\n"
	.string "NetCafe..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...How'd you like\n"
	.string "to have a cup of\n"
	.string "coffee?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "One cup is only\n"
	.string "10Z..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0xC
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Drink  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Don't drink"
	ts_select 0x6, 0x80, 0xFF, 0x79, 0xFF
	ts_check_take_zenny [
		amount: 0xA,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText8784908_unk138_id,
		jumpIfSome: CompText8784908_unk138_id,
	]
	ts_mugshot_show mugshot=0x42
	.string "...Thanks!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_print_current_navi
	.string " drank some\n"
	.string "sweet smelling\n"
	.string "cybercoffee."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A mild brew with\n"
	.string "a refreshing bitter\n"
	.string "taste..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText8784908_unk122_id

	def_text_script CompText8784908_unk121
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "...I see..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk122
	ts_check_navi_all [
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: CompText8784908_unk139_id,
		jumpIfElecMan: CompText8784908_unk139_id,
		jumpIfSlashMan: CompText8784908_unk139_id,
		jumpIfEraseMan: CompText8784908_unk139_id,
		jumpIfChargeMan: CompText8784908_unk139_id,
		jumpIfSpoutMan: CompText8784908_unk139_id,
		jumpIfTomahawkMan: CompText8784908_unk139_id,
		jumpIfTenguMan: CompText8784908_unk139_id,
		jumpIfGroundMan: CompText8784908_unk139_id,
		jumpIfDustMan: CompText8784908_unk139_id,
		jumpIfProtoMan: CompText8784908_unk139_id,
	]
	ts_mugshot_show mugshot=0x37
	.string "Coffee is best\n"
	.string "when it's hot..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It warms you right\n"
	.string "down to the soul!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "A small amount\n"
	.string "of HP was\n"
	.string "recovered."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_start_heal amount=0xA
	ts_check_chapter [
		lower: 0x0,
		upper: 0x5,
		jumpIfInRange: CompText8784908_unk131_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x10,
		upper: 0x16,
		jumpIfInRange: CompText8784908_unk132_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x20,
		upper: 0x25,
		jumpIfInRange: CompText8784908_unk133_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x30,
		upper: 0x33,
		jumpIfInRange: CompText8784908_unk134_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x40,
		upper: 0x46,
		jumpIfInRange: CompText8784908_unk135_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x50,
		upper: 0x53,
		jumpIfInRange: CompText8784908_unk136_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x60,
		upper: 0x64,
		jumpIfInRange: CompText8784908_unk137_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x42
	.string "...A customer\n"
	.string "I've never seen\n"
	.string "before..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk123
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Hey,have you\n"
	.string "heard?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Sometimes mystery\n"
	.string "data will appear\n"
	.string "during battle..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You'd better not\n"
	.string "destroy that data..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Or so says this\n"
	.string "guy I'm friends\n"
	.string "with..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x10D
	ts_end

	def_text_script CompText8784908_unk124
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Hey,have you\n"
	.string "heard?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This rumor has\n"
	.string "been spreading..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"There is gold\n"
	.string " mystery data\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's quite the\n"
	.string "persistent rumor..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x10E
	ts_end

	def_text_script CompText8784908_unk125
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Oh man,you've\n"
	.string "got to hear this!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This weird guy\n"
	.string "kept repeating\n"
	.string "these numbers..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"82564319\"..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Those numbers must\n"
	.string "mean something to\n"
	.string "him..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x10F
	ts_end

	def_text_script CompText8784908_unk126
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Hey,have you\n"
	.string "heard?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you walk along\n"
	.string "the Net,there"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "are water spouts\n"
	.string "that can block the\n"
	.string "road."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Did you know that\n"
	.string "some Navis with"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "special skills can\n"
	.string "delete those water\n"
	.string "spouts?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'd like to be\n"
	.string "friends with one\n"
	.string "of those Navis..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x110
	ts_end

	def_text_script CompText8784908_unk127
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Hey,have you\n"
	.string "heard?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There is this\n"
	.string "virus battler\n"
	.string "game machine..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you've got one,\n"
	.string "you can play fight\n"
	.string "against viruses!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...But I have no\n"
	.string "idea where to get\n"
	.string "one..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x111
	ts_end

	def_text_script CompText8784908_unk128
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Hey,have you\n"
	.string "heard?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you walk along\n"
	.string "the Net,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Navis deleted\n"
	.string "along ago will"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "suddenly appear\n"
	.string "right in front of\n"
	.string "you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They've come to\n"
	.string "get their\n"
	.string "revenge..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It seems you've seen\n"
	.string "a few fights,but\n"
	.string "be careful..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x112
	ts_end

	def_text_script CompText8784908_unk129
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Have you heard\n"
	.string "about this yet...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Apparently somewhere\n"
	.string "on the Net there is\n"
	.string "a strange trader."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Supposedly,this\n"
	.string "trader uses\n"
	.string "BugFrags."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...Well,no one has\n"
	.string "actually seen it\n"
	.string "for themselves yet."
	ts_key_wait any=0x0
	ts_flag_set flag=0x113
	ts_end

	def_text_script CompText8784908_unk130
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "...You've become\n"
	.string "quite the regular\n"
	.string "customer..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I remember you now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We have to take\n"
	.string "care of our best\n"
	.string "customers..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...So I'd like\n"
	.string "you to have this..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_navi_cust_program [
		program: 0x7C,
		amount: 0x1,
		color: 0x2,
	]
	ts_player_animate_object animation=0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_navi_cust_program5 [
		program: 0x1F,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show mugshot=0x42
	.string "Please come again!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x114
	ts_end

	def_text_script CompText8784908_unk131
	ts_check_flag [
		flag: 0x10D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk123_id,
	]
	ts_jump target=CompText8784908_unk123_id
	ts_end

	def_text_script CompText8784908_unk132
	ts_check_flag [
		flag: 0x10D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk123_id,
	]
	ts_check_flag [
		flag: 0x10E,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk124_id,
	]
	ts_jump_random CompText8784908_unk71_id, 0x20, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7B, 0x7C, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.string "Temp message@"

	def_text_script CompText8784908_unk133
	ts_check_flag [
		flag: 0x10D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk123_id,
	]
	ts_check_flag [
		flag: 0x10E,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk124_id,
	]
	ts_check_flag [
		flag: 0x10F,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk125_id,
	]
	ts_jump_random CompText8784908_unk71_id, 0x20, 0x20, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7B, 0x7C, 0x7D, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.string "Temp message@"

	def_text_script CompText8784908_unk134
	ts_check_flag [
		flag: 0x10D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk123_id,
	]
	ts_check_flag [
		flag: 0x10E,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk124_id,
	]
	ts_check_flag [
		flag: 0x10F,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk125_id,
	]
	ts_check_flag [
		flag: 0x110,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk126_id,
	]
	ts_jump_random CompText8784908_unk71_id, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0x0, 0x0, 0x7B, 0x7C, 0x7D, 0x7E, 0xFF, 0xFF, 0xFF, 0xFF
	.string "Temp message@"

	def_text_script CompText8784908_unk135
	ts_check_flag [
		flag: 0x10D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk123_id,
	]
	ts_check_flag [
		flag: 0x10E,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk124_id,
	]
	ts_check_flag [
		flag: 0x10F,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk125_id,
	]
	ts_check_flag [
		flag: 0x110,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk126_id,
	]
	ts_check_flag [
		flag: 0x111,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk127_id,
	]
	ts_jump_random CompText8784908_unk71_id, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0x0, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F, 0xFF, 0xFF, 0xFF
	.string "Temp message@"

	def_text_script CompText8784908_unk136
	ts_check_flag [
		flag: 0x10D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk123_id,
	]
	ts_check_flag [
		flag: 0x10E,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk124_id,
	]
	ts_check_flag [
		flag: 0x10F,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk125_id,
	]
	ts_check_flag [
		flag: 0x110,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk126_id,
	]
	ts_check_flag [
		flag: 0x111,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk127_id,
	]
	ts_check_flag [
		flag: 0x112,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk128_id,
	]
	ts_jump_random CompText8784908_unk71_id, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F, 0x80, 0xFF, 0xFF
	.string "Temp message@"

	def_text_script CompText8784908_unk137
	ts_check_flag [
		flag: 0x10D,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk123_id,
	]
	ts_check_flag [
		flag: 0x10E,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk124_id,
	]
	ts_check_flag [
		flag: 0x10F,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk125_id,
	]
	ts_check_flag [
		flag: 0x110,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk126_id,
	]
	ts_check_flag [
		flag: 0x111,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk127_id,
	]
	ts_check_flag [
		flag: 0x112,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk128_id,
	]
	ts_check_flag [
		flag: 0x113,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk129_id,
	]
	ts_check_flag [
		flag: 0x114,
		jumpIfTrue: TS_CONTINUE,
		jumpIfFalse: CompText8784908_unk130_id,
	]
	ts_jump_random CompText8784908_unk71_id, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F, 0x80, 0x81, 0xFF
	.string "Temp message@"

	def_text_script CompText8784908_unk138
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "You don't have\n"
	.string "enough money..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk139
	ts_mugshot_hide
	ts_msg_open
	.string "A small amount\n"
	.string "of HP was\n"
	.string "recovered."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_start_heal amount=0xA
	ts_mugshot_show mugshot=0x42
	.string "I've never seen\n"
	.string "you before..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8784908_unk140
	ts_check_flag [
		flag: 0x46A,
		jumpIfTrue: CompText8784908_unk120_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "You...\n"
	.string "I've never seen\n"
	.string "you before..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "At this NetCafe\n"
	.string "you can get lots\n"
	.string "of information..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should\n"
	.string "definitely talk with\n"
	.string "other customers!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "I see... So here\n"
	.string "I can learn lots"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "of things about\n"
	.string "the Net!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0x46A
	ts_clear_msg
	.string "How would you like\n"
	.string "to have a nice\n"
	.string "cup of coffee?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Cybercoffee is\n"
	.string "10Z for one cup..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Drink  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " Don't drink"
	ts_select 0x6, 0x80, 0xFF, 0x79, 0xFF
	ts_check_take_zenny [
		amount: 0xA,
		jumpIfAll: TS_CONTINUE,
		jumpIfNone: CompText8784908_unk138_id,
		jumpIfSome: CompText8784908_unk138_id,
	]
	ts_mugshot_show mugshot=0x42
	.string "...Thank you!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_print_current_navi
	.string " drank some\n"
	.string "sweet smelling\n"
	.string "cybercoffee."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A mild brew with\n"
	.string "a refreshing bitter\n"
	.string "taste..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A small amount\n"
	.string "of HP was\n"
	.string "recovered."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_start_heal amount=0xA
	ts_jump target=CompText8784908_unk122_id

	def_text_script CompText8784908_unk141

	def_text_script CompText8784908_unk142

	def_text_script CompText8784908_unk143

	def_text_script CompText8784908_unk144

	def_text_script CompText8784908_unk145

	def_text_script CompText8784908_unk146

	def_text_script CompText8784908_unk147

	def_text_script CompText8784908_unk148

	def_text_script CompText8784908_unk149

	