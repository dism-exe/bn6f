	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText874D74C::
	.word 0xB0400

	text_archive_start

	def_text_script CompText874D74C_unk0
	ts_check_chapter 0x15, 0x16, 0x5F, 0xFF
	ts_check_chapter 0x14, 0x14, 0x50, 0xFF
	ts_check_chapter 0x12, 0x13, 0x41, 0xFF
	ts_check_chapter 0x10, 0x11, 0x32, 0xFF
	ts_check_chapter 0x5, 0x5, 0x23, 0xFF
	ts_check_chapter 0x2, 0x2, 0xF, 0xFF
	ts_check_chapter 0x0, 0x1, 0x5, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk1

	def_text_script CompText874D74C_unk2

	def_text_script CompText874D74C_unk3

	def_text_script CompText874D74C_unk4

	def_text_script CompText874D74C_unk5
	ts_check_flag 0x1A, 0x4, 0xC, 0xFF
	ts_check_flag 0x6D, 0x4, 0xFF, 0xB
	ts_check_flag 0xA0, 0x1C, 0x9, 0xFF
	ts_end

	def_text_script CompText874D74C_unk6

	def_text_script CompText874D74C_unk7

	def_text_script CompText874D74C_unk8

	def_text_script CompText874D74C_unk9
	ts_check_flag 0x69, 0x4, 0xFF, 0xA
	ts_check_flag 0x6A, 0x4, 0xFF, 0xA
	ts_check_flag 0x6B, 0x4, 0xFF, 0xA
	ts_check_flag 0x6C, 0x4, 0xFF, 0xA
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I wonder what\n"
	.string "CentralArea2\n"
	.string "is like?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I wonder what sort\n"
	.string "of Navis we'll meet\n"
	.string "in this Net area?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go chat with\n"
	.string "everyone!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk12
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I have to get ready\n"
	.string "for tomorrow,so we\n"
	.string "should jack out..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk13

	def_text_script CompText874D74C_unk14

	def_text_script CompText874D74C_unk15
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We should get off\n"
	.string "the Net and get to\n"
	.string "school!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk16

	def_text_script CompText874D74C_unk17

	def_text_script CompText874D74C_unk18

	def_text_script CompText874D74C_unk19

	def_text_script CompText874D74C_unk20

	def_text_script CompText874D74C_unk21

	def_text_script CompText874D74C_unk22

	def_text_script CompText874D74C_unk23

	def_text_script CompText874D74C_unk24

	def_text_script CompText874D74C_unk25

	def_text_script CompText874D74C_unk26

	def_text_script CompText874D74C_unk27

	def_text_script CompText874D74C_unk28

	def_text_script CompText874D74C_unk29

	def_text_script CompText874D74C_unk30

	def_text_script CompText874D74C_unk31

	def_text_script CompText874D74C_unk32

	def_text_script CompText874D74C_unk33

	def_text_script CompText874D74C_unk34

	def_text_script CompText874D74C_unk35
	ts_check_flag 0x42, 0x4, 0x24, 0xFF
	ts_check_flag 0x99, 0x4, 0x26, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea3!!..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... but first,where\n"
	.string "did Mick"
	ts_key_wait 0x0
	ts_clear_msg
	.string "hide the key to the\n"
	.string "CentralArea2 door!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk36
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Time to jack out,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk37
	ts_mugshot_show 0x0
	ts_msg_open
	.string "This area is pretty\n"
	.string "interesting looking!\n"
	.string "Let's check it out!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk38
	ts_check_sub_area 0x2, 0x2, 0x25, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea3!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk39

	def_text_script CompText874D74C_unk40

	def_text_script CompText874D74C_unk41

	def_text_script CompText874D74C_unk42

	def_text_script CompText874D74C_unk43

	def_text_script CompText874D74C_unk44

	def_text_script CompText874D74C_unk45

	def_text_script CompText874D74C_unk46

	def_text_script CompText874D74C_unk47

	def_text_script CompText874D74C_unk48

	def_text_script CompText874D74C_unk49

	def_text_script CompText874D74C_unk50
	ts_check_flag 0xA, 0x5, 0x3A, 0xFF
	ts_check_flag 0x8, 0x5, 0x39, 0xFF
	ts_check_flag 0x42, 0x5, 0x38, 0xFF
	ts_check_flag 0x41, 0x5, 0x37, 0xFF
	ts_check_flag 0x4, 0x5, 0x36, 0xFF
	ts_check_flag 0x3F, 0x5, 0x35, 0xFF
	ts_check_flag 0x3D, 0x5, 0x34, 0xFF
	ts_check_flag 0x3C, 0x5, 0x33, 0xFF
	ts_end

	def_text_script CompText874D74C_unk51
	ts_end

	def_text_script CompText874D74C_unk52
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's go look for\n"
	.string "some penguin food!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk53
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's get back to\n"
	.string "school and give the\n"
	.string "penguin the fish!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk54
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go find the\n"
	.string "BBS in SeasideArea1!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe there'll be\n"
	.string "something about our\n"
	.string "penguin there!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk55
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The Repair Navi's\n"
	.string "not here... Maybe we\n"
	.string "should look for him?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk56
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's go look for"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the Repair Navi's\n"
	.string "\""
	ts_print_item 0x0, 0x80
	.string "\"!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk57
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We'd better get this\n"
	.string "\""
	ts_print_item 0x0, 0x80
	.string "\" to the\n"
	.string "Repair Navi!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk58
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go find the\n"
	.string "BBS in SeasideArea1,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk59

	def_text_script CompText874D74C_unk60

	def_text_script CompText874D74C_unk61

	def_text_script CompText874D74C_unk62

	def_text_script CompText874D74C_unk63

	def_text_script CompText874D74C_unk64

	def_text_script CompText874D74C_unk65
	ts_check_flag 0x16, 0x5, 0x49, 0xFF
	ts_check_flag 0x54, 0x5, 0x48, 0xFF
	ts_check_flag 0x14, 0x5, 0x47, 0xFF
	ts_check_flag 0x44, 0x5, 0x46, 0xFF
	ts_check_flag 0x12, 0x5, 0x45, 0xFF
	ts_check_flag 0x10, 0x5, 0x44, 0xFF
	ts_check_flag 0xE, 0x5, 0x43, 0xFF
	ts_check_flag 0x43, 0x5, 0x42, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go tell Mick\n"
	.string "what we found out\n"
	.string "about the penguin!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk66
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We'd better head on\n"
	.string "over to the meeting\n"
	.string "point!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk67
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We've gotta get back\n"
	.string "to Seaside Town..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk68
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Time for bed..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk69
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to where\n"
	.string "we said we'd meet\n"
	.string "Mick!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk70
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head back to\n"
	.string "Seaside Town..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk71
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's check out the\n"
	.string "Aquarium!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk72
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The show's about to\n"
	.string "start! Hurry up and\n"
	.string "jack out,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk73
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Well,if that's how\n"
	.string "Mick feels about\n"
	.string "it..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Guess we should just\n"
	.string "go home for today..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk74

	def_text_script CompText874D74C_unk75

	def_text_script CompText874D74C_unk76

	def_text_script CompText874D74C_unk77

	def_text_script CompText874D74C_unk78

	def_text_script CompText874D74C_unk79

	def_text_script CompText874D74C_unk80
	ts_check_flag 0x2A, 0x5, 0x57, 0xFF
	ts_check_flag 0x28, 0x5, 0x51, 0xFF
	ts_check_flag 0x26, 0x5, 0x56, 0xFF
	ts_check_flag 0x24, 0x5, 0x55, 0xFF
	ts_check_flag 0x22, 0x5, 0x54, 0xFF
	ts_check_flag 0x1E, 0x5, 0x53, 0xFF
	ts_check_flag 0x55, 0x5, 0x52, 0xFF
	ts_check_flag 0x1C, 0x5, 0x51, 0xFF
	ts_end

	def_text_script CompText874D74C_unk81
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry! We've gotta\n"
	.string "save everybody!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk82
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If we don't return\n"
	.string "the Aquarium back to\n"
	.string "normal,who knows...!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk83
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan! We\n"
	.string "have to find Fanny's\n"
	.string "play ball fast!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk84
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... What was she\n"
	.string "trying to tell us?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hurry,MegaMan,and\n"
	.string "jack out!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk85
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's use this\n"
	.string "CopyBot and get back\n"
	.string "to the large tank!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk86
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It looks like we can\n"
	.string "get Fanny to move\n"
	.string "with this play ball!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Jack out,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk87
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry! We've gotta\n"
	.string "save everybody!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874D74C_unk88

	def_text_script CompText874D74C_unk89

	def_text_script CompText874D74C_unk90

	def_text_script CompText874D74C_unk91

	def_text_script CompText874D74C_unk92

	def_text_script CompText874D74C_unk93

	def_text_script CompText874D74C_unk94

	def_text_script CompText874D74C_unk95
	ts_check_flag 0x38, 0x5, 0x60, 0xFF
	ts_end

	def_text_script CompText874D74C_unk96
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Time for bed..."
	ts_key_wait 0x0
	ts_end

	