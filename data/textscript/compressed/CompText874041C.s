	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText874041C::
	.word 0x99200

	text_archive_start

	def_text_script CompText874041C_unk0
	ts_check_chapter 0x52, 0x52, 0x87, 0xFF
	ts_check_chapter 0x51, 0x51, 0x73, 0xFF
	ts_check_chapter 0x50, 0x50, 0x64, 0xFF
	ts_check_chapter 0x43, 0x46, 0xF, 0xFF
	ts_check_chapter 0x40, 0x42, 0x5, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk1

	def_text_script CompText874041C_unk2

	def_text_script CompText874041C_unk3

	def_text_script CompText874041C_unk4

	def_text_script CompText874041C_unk5
	ts_check_flag 0xA, 0xA, 0xA, 0xFF
	ts_check_flag 0x8, 0xA, 0x9, 0xFF
	ts_check_flag 0x62, 0xA, 0x8, 0xFF
	ts_check_flag 0x6, 0xA, 0x7, 0xFF
	ts_check_flag 0x60, 0xA, 0x6, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's take the\n"
	.string "LevBus and go to\n"
	.string "Sky Town!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk6
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go to Sky\n"
	.string "Town,Lan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk7
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We have to go back\n"
	.string "to Sky Town,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk8
	ts_jump 7

	def_text_script CompText874041C_unk9
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan! We have to find\n"
	.string "Mick's Navi!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk10
	ts_msg_open
	.string "MegaMan isn't in\n"
	.string "the PET right now..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk11

	def_text_script CompText874041C_unk12

	def_text_script CompText874041C_unk13

	def_text_script CompText874041C_unk14

	def_text_script CompText874041C_unk15
	ts_check_flag 0x2E, 0xA, 0x1B, 0xFF
	ts_check_flag 0x2C, 0xA, 0x1A, 0xFF
	ts_check_flag 0x2A, 0xA, 0x19, 0xFF
	ts_check_flag 0x28, 0xA, 0x17, 0xFF
	ts_check_flag 0x26, 0xA, 0x16, 0xFF
	ts_check_flag 0x24, 0xA, 0x15, 0xFF
	ts_check_flag 0x1A, 0xA, 0x13, 0xFF
	ts_check_flag 0x18, 0xA, 0x12, 0xFF
	ts_check_flag 0x16, 0xA, 0x11, 0xFF
	ts_check_flag 0x10, 0xA, 0x10, 0xFF
	ts_end

	def_text_script CompText874041C_unk16
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Strange weather\n"
	.string "we're having... We'd\n"
	.string "better go home,ASAP!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder why Iris\n"
	.string "was in Sky Town...\n"
	.string "Let's go find out!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk18
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go to Sky\n"
	.string "Town,Lan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk19
	ts_check_flag 0x1C, 0xA, 0xFF, 0x14
	ts_check_flag 0x1E, 0xA, 0xFF, 0x14
	ts_check_flag 0x20, 0xA, 0xFF, 0x14
	ts_check_flag 0x22, 0xA, 0xFF, 0x14
	ts_jump 20

	def_text_script CompText874041C_unk20
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,we should go\n"
	.string "back to Sky Town!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk21
	ts_jump 20

	def_text_script CompText874041C_unk22
	ts_jump 20

	def_text_script CompText874041C_unk23
	ts_check_flag 0x29, 0x17, 0x18, 0xFF
	ts_jump 20

	def_text_script CompText874041C_unk24
	ts_jump 20

	def_text_script CompText874041C_unk25
	ts_jump 20

	def_text_script CompText874041C_unk26
	ts_jump 20

	def_text_script CompText874041C_unk27
	ts_jump 20

	def_text_script CompText874041C_unk28

	def_text_script CompText874041C_unk29

	def_text_script CompText874041C_unk30

	def_text_script CompText874041C_unk31

	def_text_script CompText874041C_unk32

	def_text_script CompText874041C_unk33

	def_text_script CompText874041C_unk34

	def_text_script CompText874041C_unk35

	def_text_script CompText874041C_unk36

	def_text_script CompText874041C_unk37

	def_text_script CompText874041C_unk38

	def_text_script CompText874041C_unk39

	def_text_script CompText874041C_unk40

	def_text_script CompText874041C_unk41

	def_text_script CompText874041C_unk42

	def_text_script CompText874041C_unk43

	def_text_script CompText874041C_unk44

	def_text_script CompText874041C_unk45

	def_text_script CompText874041C_unk46

	def_text_script CompText874041C_unk47

	def_text_script CompText874041C_unk48

	def_text_script CompText874041C_unk49

	def_text_script CompText874041C_unk50

	def_text_script CompText874041C_unk51

	def_text_script CompText874041C_unk52

	def_text_script CompText874041C_unk53

	def_text_script CompText874041C_unk54

	def_text_script CompText874041C_unk55

	def_text_script CompText874041C_unk56

	def_text_script CompText874041C_unk57

	def_text_script CompText874041C_unk58

	def_text_script CompText874041C_unk59

	def_text_script CompText874041C_unk60

	def_text_script CompText874041C_unk61

	def_text_script CompText874041C_unk62

	def_text_script CompText874041C_unk63

	def_text_script CompText874041C_unk64

	def_text_script CompText874041C_unk65

	def_text_script CompText874041C_unk66

	def_text_script CompText874041C_unk67

	def_text_script CompText874041C_unk68

	def_text_script CompText874041C_unk69

	def_text_script CompText874041C_unk70

	def_text_script CompText874041C_unk71

	def_text_script CompText874041C_unk72

	def_text_script CompText874041C_unk73

	def_text_script CompText874041C_unk74

	def_text_script CompText874041C_unk75

	def_text_script CompText874041C_unk76

	def_text_script CompText874041C_unk77

	def_text_script CompText874041C_unk78

	def_text_script CompText874041C_unk79

	def_text_script CompText874041C_unk80

	def_text_script CompText874041C_unk81

	def_text_script CompText874041C_unk82

	def_text_script CompText874041C_unk83

	def_text_script CompText874041C_unk84

	def_text_script CompText874041C_unk85

	def_text_script CompText874041C_unk86

	def_text_script CompText874041C_unk87

	def_text_script CompText874041C_unk88

	def_text_script CompText874041C_unk89

	def_text_script CompText874041C_unk90

	def_text_script CompText874041C_unk91

	def_text_script CompText874041C_unk92

	def_text_script CompText874041C_unk93

	def_text_script CompText874041C_unk94

	def_text_script CompText874041C_unk95

	def_text_script CompText874041C_unk96

	def_text_script CompText874041C_unk97

	def_text_script CompText874041C_unk98

	def_text_script CompText874041C_unk99

	def_text_script CompText874041C_unk100
	ts_check_flag 0xEA, 0xC, 0x6C, 0xFF
	ts_check_flag 0xA, 0xC, 0x6B, 0xFF
	ts_check_flag 0xC8, 0xC, 0x6A, 0xFF
	ts_check_flag 0xD8, 0xC, 0xFF, 0x69
	ts_check_flag 0xC6, 0xC, 0x68, 0xFF
	ts_check_flag 0xC3, 0xC, 0x67, 0xFF
	ts_check_flag 0xC2, 0xC, 0x66, 0xFF
	ts_check_flag 0xE4, 0xC, 0x65, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "The MoonStone is\n"
	.string "in the Undernet!\n"
	.string "Let's find it!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk101
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Sky gazing,huh...?\n"
	.string "Want to try\n"
	.string "Undernet2,Lan?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk102
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Sounds like there's\n"
	.string "someone who can open\n"
	.string "the Undernet door..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But it seems like\n"
	.string "they're busy with\n"
	.string "a punishment..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk103
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's find the\n"
	.string "person who can open\n"
	.string "the Undernet door!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Sounds like they're\n"
	.string "working part-time\n"
	.string "near the ocean..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk104
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's go to\n"
	.string "Undernet1!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk105
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's look for the\n"
	.string "MoonStone in\n"
	.string "Undernet2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk106
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's take the\n"
	.string "MoonStone to the\n"
	.string "Judge in the park!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk107
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go talk\n"
	.string "to the other\n"
	.string "participants!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk108
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Want to call\n"
	.string "it a day?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk109

	def_text_script CompText874041C_unk110

	def_text_script CompText874041C_unk111

	def_text_script CompText874041C_unk112

	def_text_script CompText874041C_unk113

	def_text_script CompText874041C_unk114

	def_text_script CompText874041C_unk115
	ts_check_flag 0x1C, 0xC, 0x7D, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I can't wait,Lan!\n"
	.string "Let's hurry to\n"
	.string "ACDC Town!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk116

	def_text_script CompText874041C_unk117

	def_text_script CompText874041C_unk118

	def_text_script CompText874041C_unk119

	def_text_script CompText874041C_unk120

	def_text_script CompText874041C_unk121

	def_text_script CompText874041C_unk122

	def_text_script CompText874041C_unk123

	def_text_script CompText874041C_unk124

	def_text_script CompText874041C_unk125
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Maybe I should\n"
	.string "go home..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk126

	def_text_script CompText874041C_unk127

	def_text_script CompText874041C_unk128

	def_text_script CompText874041C_unk129

	def_text_script CompText874041C_unk130

	def_text_script CompText874041C_unk131

	def_text_script CompText874041C_unk132

	def_text_script CompText874041C_unk133

	def_text_script CompText874041C_unk134

	def_text_script CompText874041C_unk135
	ts_check_flag 0x26, 0xC, 0x8D, 0xFF
	ts_check_flag 0x24, 0xC, 0x8C, 0xFF
	ts_check_flag 0x22, 0xC, 0x8B, 0xFF
	ts_check_flag 0xCF, 0xC, 0x8A, 0xFF
	ts_check_flag 0xCE, 0xC, 0x89, 0xFF
	ts_check_flag 0x30, 0xC, 0x88, 0xFF
	ts_check_flag 0x20, 0xC, 0x8E, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I've gotta hurry\n"
	.string "to Seaside Town!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk136
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Somehow,I've gotta\n"
	.string "get to CentralArea3!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk137
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I have to ask the\n"
	.string "Mayor to get rid of\n"
	.string "the cyberbarrier..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I think the Mayor\n"
	.string "might be in the\n"
	.string "Principal's Office."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk138
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I've gotta see the\n"
	.string "Mayor no matter\n"
	.string "what!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk139
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I've gotta get to\n"
	.string "the Principal's\n"
	.string "Office right now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk140
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I've gotta get to\n"
	.string "the large hole in\n"
	.string "CentralArea!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk141
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hold on,MegaMan! I'm\n"
	.string "coming to the Under-\n"
	.string "ground right now!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk142
	ts_check_flag 0x28, 0x1D, 0xFF, 0x8F
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I guess I should\n"
	.string "read my mail..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874041C_unk143
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I wonder what\n"
	.string "Mr.Mach wants?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Guess I should go\n"
	.string "to Sky Town and\n"
	.string "find out..."
	ts_key_wait 0x0
	ts_end

	