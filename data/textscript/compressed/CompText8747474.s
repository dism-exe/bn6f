	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8747474::
	.word 0x54E00

	text_archive_start

	def_text_script CompText8747474_unk0
	ts_check_navi_all 0xFF, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D
	ts_check_flag 0x63, 0x1, 0x32, 0xFF
	ts_jump 1
	ts_end

	def_text_script CompText8747474_unk1
	ts_check_chapter 0x62, 0x64, 0xF, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747474_unk2

	def_text_script CompText8747474_unk3

	def_text_script CompText8747474_unk4

	def_text_script CompText8747474_unk5

	def_text_script CompText8747474_unk6

	def_text_script CompText8747474_unk7

	def_text_script CompText8747474_unk8

	def_text_script CompText8747474_unk9

	def_text_script CompText8747474_unk10

	def_text_script CompText8747474_unk11

	def_text_script CompText8747474_unk12

	def_text_script CompText8747474_unk13

	def_text_script CompText8747474_unk14

	def_text_script CompText8747474_unk15
	ts_check_flag 0x44, 0xE, 0x1D, 0xFF
	ts_check_flag 0x3E, 0xE, 0x1C, 0xFF
	ts_check_flag 0x3C, 0xE, 0x1B, 0xFF
	ts_check_flag 0x36, 0xE, 0x1A, 0xFF
	ts_check_flag 0x34, 0xE, 0x19, 0xFF
	ts_check_flag 0x2E, 0xE, 0x18, 0xFF
	ts_check_flag 0x2C, 0xE, 0x17, 0xFF
	ts_check_flag 0x2A, 0xE, 0x16, 0xFF
	ts_end

	def_text_script CompText8747474_unk16

	def_text_script CompText8747474_unk17

	def_text_script CompText8747474_unk18

	def_text_script CompText8747474_unk19

	def_text_script CompText8747474_unk20

	def_text_script CompText8747474_unk21

	def_text_script CompText8747474_unk22
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan! You've\n"
	.string "gotta normalize this\n"
	.string "pavilion's system!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747474_unk23
	ts_check_sub_area 0x4, 0x4, 0x1F, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta keep\n"
	.string "going!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747474_unk24
	ts_check_sub_area 0x0, 0x0, 0x17, 0xFF
	ts_check_flag 0xC5, 0xF, 0x16, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Want to take a look\n"
	.string "around,MegaMan!?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x1E, 0xFF, 0xFF
	ts_end

	def_text_script CompText8747474_unk25
	ts_jump 23

	def_text_script CompText8747474_unk26
	ts_check_sub_area 0x0, 0x1, 0x17, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We've gotta go after\n"
	.string "ElementMan,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747474_unk27
	ts_jump 23

	def_text_script CompText8747474_unk28
	ts_check_sub_area 0x0, 0x2, 0x17, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We've gotta go after\n"
	.string "CircusMan,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747474_unk29
	ts_jump 23

	def_text_script CompText8747474_unk30
	ts_flag_set 0xD4, 0x9
	ts_end

	def_text_script CompText8747474_unk31
	ts_mugshot_show 0x0
	ts_msg_open
	.string "This is it!\n"
	.string "The last battle!\n"
	.string "Let's go,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747474_unk32

	def_text_script CompText8747474_unk33

	def_text_script CompText8747474_unk34

	def_text_script CompText8747474_unk35

	def_text_script CompText8747474_unk36

	def_text_script CompText8747474_unk37

	def_text_script CompText8747474_unk38

	def_text_script CompText8747474_unk39

	def_text_script CompText8747474_unk40

	def_text_script CompText8747474_unk41

	def_text_script CompText8747474_unk42

	def_text_script CompText8747474_unk43

	def_text_script CompText8747474_unk44

	def_text_script CompText8747474_unk45

	def_text_script CompText8747474_unk46

	def_text_script CompText8747474_unk47

	def_text_script CompText8747474_unk48

	def_text_script CompText8747474_unk49

	def_text_script CompText8747474_unk50
	ts_jump 1
	ts_end

	def_text_script CompText8747474_unk51
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating HeatMan...\n"
	.string "It lights my soul on\n"
	.string "fire!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747474_unk52
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating ElecMan...\n"
	.string "I feel a surge of\n"
	.string "power coming on!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747474_unk53
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating SlashMan\n"
	.string "is like sharpening\n"
	.string "my mind to a point!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747474_unk54
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating EraseMan\n"
	.string "brings out my dark\n"
	.string "side... Mwahahaha!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747474_unk55
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating ChargeMan\n"
	.string "makes me want to\n"
	.string "plow ahead!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747474_unk56
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating SpoutMan\n"
	.string "makes me feel like\n"
	.string "a little fish..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747474_unk57
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating\n"
	.string "TomahawkMan is an\n"
	.string "awesome feeling!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747474_unk58
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating TenguMan\n"
	.string "brings a sense of\n"
	.string "peace to my heart..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747474_unk59
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating GroundMan\n"
	.string "lets me drill\n"
	.string "through anything!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747474_unk60
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating DustMan...\n"
	.string "There's no virus we\n"
	.string "can't scrap!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8747474_unk61
	ts_mugshot_show 0x0
	ts_msg_open
	.string "ProtoMan helping out\n"
	.string "during battle... He\n"
	.string "sure is trustworthy!"
	ts_key_wait 0x0
	ts_end

	