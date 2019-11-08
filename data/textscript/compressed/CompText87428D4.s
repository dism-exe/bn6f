	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87428D4::
	.word 0x82B00

	text_archive_start

	def_text_script CompText87428D4_unk0
	ts_check_chapter 0x15, 0x16, 0x5F, 0xFF
	ts_check_chapter 0x14, 0x14, 0x50, 0xFF
	ts_check_chapter 0x12, 0x13, 0x41, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Go back to operating\n"
	.string "me,Lan?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x2, 0xFF
	ts_flag_set 0xE6, 0x5
	ts_end

	def_text_script CompText87428D4_unk2
	ts_end

	def_text_script CompText87428D4_unk3

	def_text_script CompText87428D4_unk4

	def_text_script CompText87428D4_unk5

	def_text_script CompText87428D4_unk6

	def_text_script CompText87428D4_unk7

	def_text_script CompText87428D4_unk8

	def_text_script CompText87428D4_unk9

	def_text_script CompText87428D4_unk10

	def_text_script CompText87428D4_unk11

	def_text_script CompText87428D4_unk12

	def_text_script CompText87428D4_unk13

	def_text_script CompText87428D4_unk14

	def_text_script CompText87428D4_unk15

	def_text_script CompText87428D4_unk16

	def_text_script CompText87428D4_unk17

	def_text_script CompText87428D4_unk18

	def_text_script CompText87428D4_unk19

	def_text_script CompText87428D4_unk20

	def_text_script CompText87428D4_unk21

	def_text_script CompText87428D4_unk22

	def_text_script CompText87428D4_unk23

	def_text_script CompText87428D4_unk24

	def_text_script CompText87428D4_unk25

	def_text_script CompText87428D4_unk26

	def_text_script CompText87428D4_unk27

	def_text_script CompText87428D4_unk28

	def_text_script CompText87428D4_unk29

	def_text_script CompText87428D4_unk30

	def_text_script CompText87428D4_unk31

	def_text_script CompText87428D4_unk32

	def_text_script CompText87428D4_unk33

	def_text_script CompText87428D4_unk34

	def_text_script CompText87428D4_unk35

	def_text_script CompText87428D4_unk36

	def_text_script CompText87428D4_unk37

	def_text_script CompText87428D4_unk38

	def_text_script CompText87428D4_unk39

	def_text_script CompText87428D4_unk40

	def_text_script CompText87428D4_unk41

	def_text_script CompText87428D4_unk42

	def_text_script CompText87428D4_unk43

	def_text_script CompText87428D4_unk44

	def_text_script CompText87428D4_unk45

	def_text_script CompText87428D4_unk46

	def_text_script CompText87428D4_unk47

	def_text_script CompText87428D4_unk48

	def_text_script CompText87428D4_unk49

	def_text_script CompText87428D4_unk50

	def_text_script CompText87428D4_unk51

	def_text_script CompText87428D4_unk52

	def_text_script CompText87428D4_unk53

	def_text_script CompText87428D4_unk54

	def_text_script CompText87428D4_unk55

	def_text_script CompText87428D4_unk56

	def_text_script CompText87428D4_unk57

	def_text_script CompText87428D4_unk58

	def_text_script CompText87428D4_unk59

	def_text_script CompText87428D4_unk60

	def_text_script CompText87428D4_unk61

	def_text_script CompText87428D4_unk62

	def_text_script CompText87428D4_unk63

	def_text_script CompText87428D4_unk64

	def_text_script CompText87428D4_unk65
	ts_check_flag 0x16, 0x5, 0x49, 0xFF
	ts_check_flag 0x54, 0x5, 0x48, 0xFF
	ts_check_flag 0x14, 0x5, 0x47, 0xFF
	ts_check_flag 0x44, 0x5, 0x46, 0xFF
	ts_check_flag 0x12, 0x5, 0x45, 0xFF
	ts_check_flag 0x10, 0x5, 0x44, 0xFF
	ts_check_flag 0xE, 0x5, 0x43, 0xFF
	ts_check_flag 0x43, 0x5, 0x42, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go tell Mick\n"
	.string "about the penguin!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk66
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's wait for Mick\n"
	.string "in front of the\n"
	.string "LevBus station!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk67
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go to the\n"
	.string "Aquarium,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk68
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go home and\n"
	.string "hit the sack,OK,Lan?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk69
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We said we'd meet\n"
	.string "in front of the\n"
	.string "Aquarium,so"
	ts_key_wait 0x0
	ts_clear_msg
	.string "let's head on out\n"
	.string "there!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk70
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go inside,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk71
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's take a look\n"
	.string "around,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk72
	ts_mugshot_show 0x37
	ts_msg_open
	.string "The show's about to\n"
	.string "start! Let's go or\n"
	.string "we'll miss it!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk73
	ts_mugshot_show 0x37
	ts_msg_open
	.string "If Mick feels that\n"
	.string "way,we should just\n"
	.string "go home for today..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk74

	def_text_script CompText87428D4_unk75

	def_text_script CompText87428D4_unk76

	def_text_script CompText87428D4_unk77

	def_text_script CompText87428D4_unk78

	def_text_script CompText87428D4_unk79

	def_text_script CompText87428D4_unk80
	ts_check_flag 0x2A, 0x5, 0x57, 0xFF
	ts_check_flag 0x28, 0x5, 0x51, 0xFF
	ts_check_flag 0x26, 0x5, 0x56, 0xFF
	ts_check_flag 0x29, 0x17, 0x58, 0xFF
	ts_check_flag 0x24, 0x5, 0x55, 0xFF
	ts_check_flag 0x22, 0x5, 0x54, 0xFF
	ts_check_flag 0x1E, 0x5, 0x53, 0xFF
	ts_check_flag 0x55, 0x5, 0x52, 0xFF
	ts_check_flag 0x1C, 0x5, 0x51, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan! We've gotta go\n"
	.string "after Mick,quick!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk81
	ts_check_sub_area 0x4, 0x4, 0x5A, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We've gotta get to\n"
	.string "the control room\n"
	.string "fast!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Normalizing the main\n"
	.string "computer is the only\n"
	.string "way to save Mick!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk82
	ts_check_sub_area 0x3, 0x3, 0xFF, 0x59
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,we've gotta find\n"
	.string "Fanny's play ball!\n"
	.string "They just used it"
	ts_key_wait 0x0
	ts_clear_msg
	.string "for the show,so it's\n"
	.string "gotta be around here\n"
	.string "somewhere!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk83
	ts_mugshot_show 0x37
	ts_msg_open
	.string "There must be some-\n"
	.string "thing we can use so\n"
	.string "we don't get stung!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk84
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder what that\n"
	.string "mysterious girl was\n"
	.string "trying to tell us?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk85
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan! Transfer me\n"
	.string "into that CopyBot!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk86
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Use that ball to get\n"
	.string "Fanny to move out of\n"
	.string "our way,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk87
	ts_mugshot_show 0x37
	ts_msg_open
	ts_check_flag 0xDF, 0x5, 0xFF, 0x1
	.string "Jack me in,Lan!\n"
	.string "Hurry! We've gotta\n"
	.string "save the Aquarium!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk88
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We've gotta hurry up\n"
	.string "and get the ball\n"
	.string "that's in the tank!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk89
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan! We've gotta\n"
	.string "find Fanny's play\n"
	.string "ball fast!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "They used it in the\n"
	.string "show,so maybe it's\n"
	.string "near the stage...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk90
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Hurry,Lan! Find the\n"
	.string "main computer!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk91

	def_text_script CompText87428D4_unk92

	def_text_script CompText87428D4_unk93

	def_text_script CompText87428D4_unk94

	def_text_script CompText87428D4_unk95
	ts_check_flag 0x38, 0x5, 0x60, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's hurry to where\n"
	.string "Mick and the others\n"
	.string "are,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87428D4_unk96
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's call it a\n"
	.string "day,Lan."
	ts_key_wait 0x0
	ts_end

	