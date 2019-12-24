	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877C94C::
	.word 0x62600

	text_archive_start

	def_text_script CompText877C94C_unk0
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,\n"
	.string "If we keep going,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "we might get trapped\n"
	.string "again by Punishment\n"
	.string "Robots!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C94C_unk1
	ts_msg_open
	.string "NO UNAUTHORIZED\n"
	.string "PERSONNEL!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C94C_unk2
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "That door is\n"
	.string "currently being\n"
	.string "repaired."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Please wait a bit\n"
	.string "longer!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C94C_unk3
	ts_check_flag [
		flag: 0x824,
		jumpIfTrue: 0x7,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "They won't have a\n"
	.string "court session\n"
	.string "today."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C94C_unk4
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	ts_check_flag [
		flag: 0x814,
		jumpIfTrue: 0x6,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x812,
		jumpIfTrue: 0x5,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x80A,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x867,
		jumpIfTrue: 0x9,
		jumpIfFalse: 0xFF,
	]
	.string "Lan,jack into the\n"
	.string "tablet and let's go\n"
	.string "to Green Area!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C94C_unk5
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,let's find Dad!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C94C_unk6
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,let's go around\n"
	.string "and ask questions\n"
	.string "about Dad!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C94C_unk7
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There are tons of\n"
	.string "Punishment Robots\n"
	.string "in the courtroom!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C94C_unk8
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,let's check out\n"
	.string "the inside of the\n"
	.string "courtroom!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C94C_unk9
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,let's check out\n"
	.string "the area across from\n"
	.string "the gate!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C94C_unk10

	def_text_script CompText877C94C_unk11

	def_text_script CompText877C94C_unk12

	def_text_script CompText877C94C_unk13

	def_text_script CompText877C94C_unk14

	def_text_script CompText877C94C_unk15

	def_text_script CompText877C94C_unk16

	def_text_script CompText877C94C_unk17

	def_text_script CompText877C94C_unk18

	def_text_script CompText877C94C_unk19

	def_text_script CompText877C94C_unk20

	def_text_script CompText877C94C_unk21

	def_text_script CompText877C94C_unk22

	def_text_script CompText877C94C_unk23

	def_text_script CompText877C94C_unk24

	def_text_script CompText877C94C_unk25

	def_text_script CompText877C94C_unk26

	def_text_script CompText877C94C_unk27

	def_text_script CompText877C94C_unk28

	def_text_script CompText877C94C_unk29

	def_text_script CompText877C94C_unk30

	def_text_script CompText877C94C_unk31

	def_text_script CompText877C94C_unk32

	def_text_script CompText877C94C_unk33

	def_text_script CompText877C94C_unk34

	def_text_script CompText877C94C_unk35

	def_text_script CompText877C94C_unk36

	def_text_script CompText877C94C_unk37

	def_text_script CompText877C94C_unk38

	def_text_script CompText877C94C_unk39

	def_text_script CompText877C94C_unk40

	def_text_script CompText877C94C_unk41

	def_text_script CompText877C94C_unk42

	def_text_script CompText877C94C_unk43

	def_text_script CompText877C94C_unk44

	def_text_script CompText877C94C_unk45

	def_text_script CompText877C94C_unk46

	def_text_script CompText877C94C_unk47

	def_text_script CompText877C94C_unk48

	def_text_script CompText877C94C_unk49

	def_text_script CompText877C94C_unk50
	ts_check_flag [
		flag: 0x111C,
		jumpIfTrue: 0x36,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x111B,
		jumpIfTrue: 0x33,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x111B
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "Ummm... Sorry to\n"
	.string "spring this on you,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but do you have a\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xA8,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x12,
		buffer: 0x0,
	]
	.string "\" chip?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you've got one,\n"
	.string "care to trade for a\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xC9,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0xD,
		buffer: 0x0,
	]
	.string "\"?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What do you think?"
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
	ts_mugshot_show mugshot=0x10
	.string "I see..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C94C_unk51
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "The reason you came\n"
	.string "to talk to me is\n"
	.string "because the chance"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "of you trading your\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xA8,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x12,
		buffer: 0x0,
	]
	.string "\" for\n"
	.string "my \""
	ts_print_chip1 [
		chip: 0xC9,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0xD,
		buffer: 0x0,
	]
	.string "\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "is about... Hmmm...\n"
	.string "50%! Am I right?\n"
	.string "Want to trade?"
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
	ts_mugshot_show mugshot=0x10
	.string "Hmmph... I see..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C94C_unk52
	ts_check_pack_chip_code [
		chip: 0xA8,
		code: 0x12,
		amount: 0x1,
		jumpIfEqual: 0xFF,
		jumpIfGreater: 0xFF,
		jumpIfLess: 0x35,
	]
	ts_item_take_chip [
		chip: 0xA8,
		code: 0x12,
		amount: 0x1,
	]
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "I'm happy you\n"
	.string "decided to trade\n"
	.string "with me!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Here is my part\n"
	.string "of the deal..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip [
		chip: 0xC9,
		code: 0xD,
		amount: 0x1,
	]
	ts_player_animate_scene animation=0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xC9,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0xD,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show mugshot=0x10
	.string "Having this chip\n"
	.string "will surely speed up\n"
	.string "my research..."
	ts_key_wait any=0x0
	ts_flag_set flag=0x111C
	ts_end

	def_text_script CompText877C94C_unk53
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "Really...?\n"
	.string "You don't have\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xA8,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x12,
		buffer: 0x0,
	]
	.string "\"!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You sure you don't\n"
	.string "have one in your\n"
	.string "folder?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you don't,we\n"
	.string "can't trade!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Come back when\n"
	.string "you have a\n"
	.string "\""
	ts_print_chip1 [
		chip: 0xA8,
		buffer: 0x0,
	]
	.string " "
	ts_print_code [
		code: 0x12,
		buffer: 0x0,
	]
	.string "\"."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C94C_unk54
	ts_mugshot_show mugshot=0x10
	ts_msg_open
	.string "Thanks to you,my\n"
	.string "research is going\n"
	.string "great!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877C94C_unk55

	def_text_script CompText877C94C_unk56

	def_text_script CompText877C94C_unk57

	def_text_script CompText877C94C_unk58

	def_text_script CompText877C94C_unk59

	