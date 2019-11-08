	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8749514::
	.word 0xE7600

	text_archive_start

	def_text_script CompText8749514_unk0
	ts_check_chapter 0x15, 0x16, 0x5F, 0xFF
	ts_check_chapter 0x14, 0x14, 0x50, 0xFF
	ts_check_chapter 0x12, 0x13, 0x41, 0xFF
	ts_check_chapter 0x10, 0x11, 0x32, 0xFF
	ts_check_chapter 0x5, 0x5, 0x23, 0xFF
	ts_check_chapter 0x3, 0x4, 0x19, 0xFF
	ts_check_chapter 0x2, 0x2, 0xF, 0xFF
	ts_check_chapter 0x0, 0x1, 0x5, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk1

	def_text_script CompText8749514_unk2

	def_text_script CompText8749514_unk3

	def_text_script CompText8749514_unk4

	def_text_script CompText8749514_unk5
	ts_check_flag 0x1A, 0x4, 0xC, 0xFF
	ts_check_flag 0x6D, 0x4, 0xFF, 0xB
	ts_check_flag 0xA0, 0x1C, 0x9, 0xFF
	ts_check_flag 0x18, 0x4, 0x7, 0xFF
	ts_end

	def_text_script CompText8749514_unk6

	def_text_script CompText8749514_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Looks like every-\n"
	.string "thing's OK again!\n"
	.string "Jack out,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's read the mail,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk9
	ts_check_flag 0x20, 0x1D, 0x8, 0xFF
	ts_check_flag 0x69, 0x4, 0xFF, 0xA
	ts_check_flag 0x6A, 0x4, 0xFF, 0xA
	ts_check_flag 0x6B, 0x4, 0xFF, 0xA
	ts_check_flag 0x6C, 0x4, 0xFF, 0xA

	def_text_script CompText8749514_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go on the Net,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk11
	ts_jump 10

	def_text_script CompText8749514_unk12

	def_text_script CompText8749514_unk13

	def_text_script CompText8749514_unk14

	def_text_script CompText8749514_unk15
	ts_check_flag 0x2A, 0x4, 0x16, 0xFF
	ts_check_flag 0x26, 0x4, 0x15, 0xFF
	ts_check_flag 0x20, 0x4, 0x13, 0xFF
	ts_check_flag 0x71, 0x4, 0x12, 0xFF
	ts_check_flag 0x1E, 0x4, 0x10, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We should get off\n"
	.string "the Net and get to\n"
	.string "school!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk16
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's go to the\n"
	.string "Teachers' Room!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk17
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go look for an\n"
	.string "energetic teacher in\n"
	.string "a red warm-up suit!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk18
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to our new\n"
	.string "classroom,6-1,on the\n"
	.string "second floor!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk19
	ts_check_sub_area 0x2, 0x2, 0x14, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Gotta say hi to\n"
	.string "everybody in the\n"
	.string "class,I guess..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk20
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Let's go say hi to\n"
	.string "everyone!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk21
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan,so\n"
	.string "we can get ready for\n"
	.string "our next class!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk22

	def_text_script CompText8749514_unk23

	def_text_script CompText8749514_unk24

	def_text_script CompText8749514_unk25
	ts_check_flag 0x3A, 0x4, 0x20, 0xFF
	ts_check_flag 0x36, 0x4, 0x1F, 0xFF
	ts_check_flag 0x34, 0x4, 0x1D, 0xFF
	ts_check_flag 0x32, 0x4, 0x1D, 0xFF
	ts_check_flag 0x7C, 0x4, 0x1C, 0xFF
	ts_check_flag 0x2E, 0x4, 0x1B, 0xFF
	ts_check_flag 0x7B, 0x4, 0x1A, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What's going on with\n"
	.string "the Security Bots!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We've gotta do\n"
	.string "something about\n"
	.string "the fire!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk26
	ts_end

	def_text_script CompText8749514_unk27
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Where's Mick?..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And where's he\n"
	.string "controlling the\n"
	.string "Security Bots from?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk28
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan!\n"
	.string "The Teachers' Room!\n"
	.string "Hurry!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk29
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta fix the\n"
	.string "control system!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk30
	ts_end

	def_text_script CompText8749514_unk31
	ts_end

	def_text_script CompText8749514_unk32
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta go beat\n"
	.string "BlastMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk33

	def_text_script CompText8749514_unk34

	def_text_script CompText8749514_unk35
	ts_check_flag 0x42, 0x4, 0x24, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Let's go on the Net!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk36
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Time to jack out,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk37

	def_text_script CompText8749514_unk38

	def_text_script CompText8749514_unk39

	def_text_script CompText8749514_unk40

	def_text_script CompText8749514_unk41

	def_text_script CompText8749514_unk42

	def_text_script CompText8749514_unk43

	def_text_script CompText8749514_unk44

	def_text_script CompText8749514_unk45

	def_text_script CompText8749514_unk46

	def_text_script CompText8749514_unk47

	def_text_script CompText8749514_unk48

	def_text_script CompText8749514_unk49

	def_text_script CompText8749514_unk50
	ts_check_flag 0xA, 0x5, 0x3A, 0xFF
	ts_check_flag 0x8, 0x5, 0x39, 0xFF
	ts_check_flag 0x42, 0x5, 0x38, 0xFF
	ts_check_flag 0x41, 0x5, 0x37, 0xFF
	ts_check_flag 0x4, 0x5, 0x36, 0xFF
	ts_check_flag 0x3F, 0x5, 0x35, 0xFF
	ts_check_flag 0x3D, 0x5, 0x34, 0xFF
	ts_check_flag 0x3C, 0x5, 0x33, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan,do you\n"
	.string "know what penguins\n"
	.string "eat...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh,I know! Jack out,\n"
	.string "MegaMan! Let's ask\n"
	.string "the Biology teacher!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk51
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan,\n"
	.string "and let's go find"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the Biology\n"
	.string "teacher's aide!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk52
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's go look for\n"
	.string "some penguin food!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk53
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's get back to\n"
	.string "school and give the\n"
	.string "penguin the fish!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk54
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

	def_text_script CompText8749514_unk55
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The Repair Navi's\n"
	.string "not here... Maybe we\n"
	.string "should look for him?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk56
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

	def_text_script CompText8749514_unk57
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head to\n"
	.string "CentralArea3 and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "give the Repair Navi\n"
	.string "his \""
	ts_print_item 0x0, 0x80
	.string "\"!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk58
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go find the\n"
	.string "BBS in SeasideArea1,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk59

	def_text_script CompText8749514_unk60

	def_text_script CompText8749514_unk61

	def_text_script CompText8749514_unk62

	def_text_script CompText8749514_unk63

	def_text_script CompText8749514_unk64

	def_text_script CompText8749514_unk65
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
	ts_msg_open
	.string "Let's go tell Mick\n"
	.string "what we found out\n"
	.string "about the penguin!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk66
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We'd better head on\n"
	.string "over to the meeting\n"
	.string "point!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk67
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We've gotta go to\n"
	.string "the Aquarium,huh?\n"
	.string "OK,jack out,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk68
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Time for bed..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk69
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to where\n"
	.string "we said we'd meet\n"
	.string "Mick!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk70
	ts_check_sub_area 0x8, 0x8, 0x4A, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head back to\n"
	.string "Seaside Town..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk71
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's check out the\n"
	.string "Aquarium!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk72
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The show's about to\n"
	.string "start! Hurry up and\n"
	.string "jack out,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk73
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

	def_text_script CompText8749514_unk74
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan,\n"
	.string "and let's go to the\n"
	.string "Aquarium!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk75

	def_text_script CompText8749514_unk76

	def_text_script CompText8749514_unk77

	def_text_script CompText8749514_unk78

	def_text_script CompText8749514_unk79

	def_text_script CompText8749514_unk80
	ts_check_flag 0x2A, 0x5, 0x57, 0xFF
	ts_check_flag 0x28, 0x5, 0x51, 0xFF
	ts_check_flag 0x26, 0x5, 0x56, 0xFF
	ts_check_flag 0x24, 0x5, 0x55, 0xFF
	ts_check_flag 0x22, 0x5, 0x54, 0xFF
	ts_check_flag 0x1E, 0x5, 0x53, 0xFF
	ts_check_flag 0x55, 0x5, 0x52, 0xFF
	ts_check_flag 0x1C, 0x5, 0x51, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We've gotta hurry\n"
	.string "after Mick!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk81
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry! We've gotta\n"
	.string "save everybody!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk82
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

	def_text_script CompText8749514_unk83
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan! We\n"
	.string "have to find Fanny's\n"
	.string "play ball fast!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk84
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

	def_text_script CompText8749514_unk85
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

	def_text_script CompText8749514_unk86
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

	def_text_script CompText8749514_unk87
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry! We've gotta\n"
	.string "save everybody!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8749514_unk88

	def_text_script CompText8749514_unk89

	def_text_script CompText8749514_unk90

	def_text_script CompText8749514_unk91

	def_text_script CompText8749514_unk92

	def_text_script CompText8749514_unk93

	def_text_script CompText8749514_unk94

	def_text_script CompText8749514_unk95
	ts_check_flag 0x38, 0x5, 0x60, 0xFF
	ts_end

	def_text_script CompText8749514_unk96
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Time for bed..."
	ts_key_wait 0x0
	ts_end

	