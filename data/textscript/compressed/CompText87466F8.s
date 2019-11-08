	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87466F8::
	.word 0x3E400

	text_archive_start

	def_text_script CompText87466F8_unk0
	ts_check_chapter 0x14, 0x14, 0xFF, 0xE
	ts_check_flag 0xE8, 0x5, 0xB, 0xE
	ts_end

	def_text_script CompText87466F8_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "A stubby tail...?"
	ts_key_wait 0x0
	ts_jump 12

	def_text_script CompText87466F8_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "He doesn't like\n"
	.string "cold water...?"
	ts_key_wait 0x0
	ts_jump 12

	def_text_script CompText87466F8_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "He ate a whole cow!?"
	ts_key_wait 0x0
	ts_jump 12

	def_text_script CompText87466F8_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "He remembers\n"
	.string "something from long\n"
	.string "ago..."
	ts_key_wait 0x0
	ts_jump 12

	def_text_script CompText87466F8_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What is \"a bit\n"
	.string "snobby\" supposed to\n"
	.string "mean?..."
	ts_key_wait 0x0
	ts_jump 12

	def_text_script CompText87466F8_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "\"Steady as a rock\"?\n"
	.string "What in the...?"
	ts_key_wait 0x0
	ts_jump 12

	def_text_script CompText87466F8_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hmm... But lizards\n"
	.string "don't really live in\n"
	.string "the water..."
	ts_key_wait 0x0
	ts_jump 12

	def_text_script CompText87466F8_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "A whale? Does this\n"
	.string "aquarium even have\n"
	.string "something that big?"
	ts_key_wait 0x0
	ts_jump 12

	def_text_script CompText87466F8_unk9
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What kind of clue is\n"
	.string "his nose?? I don't\n"
	.string "get it at all..."
	ts_key_wait 0x0
	ts_jump 12

	def_text_script CompText87466F8_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "If he can fly,then\n"
	.string "maybe he's a kind\n"
	.string "of bird...?"
	ts_key_wait 0x0
	ts_jump 12

	def_text_script CompText87466F8_unk11
	ts_check_flag 0xF2, 0x5, 0xFF, 0xC
	ts_check_water_god_program 0x0
	ts_end

	def_text_script CompText87466F8_unk12
	ts_mugshot_show 0x0
	ts_msg_open
	ts_check_flag 0xF0, 0x5, 0xFF, 0x58
	.string "Want me to go look\n"
	.string "around for a clue?"
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
	ts_select 0x6, 0x80, 0xFF, 0xD, 0xFF
	ts_flag_set 0xE6, 0x5
	ts_end

	def_text_script CompText87466F8_unk13
	ts_end

	def_text_script CompText87466F8_unk14
	ts_check_chapter 0x15, 0x16, 0x5F, 0xFF
	ts_check_chapter 0x14, 0x14, 0x50, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87466F8_unk15
	ts_jump 12

	def_text_script CompText87466F8_unk16

	def_text_script CompText87466F8_unk17

	def_text_script CompText87466F8_unk18

	def_text_script CompText87466F8_unk19

	def_text_script CompText87466F8_unk20

	def_text_script CompText87466F8_unk21

	def_text_script CompText87466F8_unk22

	def_text_script CompText87466F8_unk23

	def_text_script CompText87466F8_unk24

	def_text_script CompText87466F8_unk25

	def_text_script CompText87466F8_unk26

	def_text_script CompText87466F8_unk27

	def_text_script CompText87466F8_unk28

	def_text_script CompText87466F8_unk29

	def_text_script CompText87466F8_unk30

	def_text_script CompText87466F8_unk31

	def_text_script CompText87466F8_unk32

	def_text_script CompText87466F8_unk33

	def_text_script CompText87466F8_unk34

	def_text_script CompText87466F8_unk35

	def_text_script CompText87466F8_unk36

	def_text_script CompText87466F8_unk37

	def_text_script CompText87466F8_unk38

	def_text_script CompText87466F8_unk39

	def_text_script CompText87466F8_unk40

	def_text_script CompText87466F8_unk41

	def_text_script CompText87466F8_unk42

	def_text_script CompText87466F8_unk43

	def_text_script CompText87466F8_unk44

	def_text_script CompText87466F8_unk45

	def_text_script CompText87466F8_unk46

	def_text_script CompText87466F8_unk47

	def_text_script CompText87466F8_unk48

	def_text_script CompText87466F8_unk49

	def_text_script CompText87466F8_unk50

	def_text_script CompText87466F8_unk51

	def_text_script CompText87466F8_unk52

	def_text_script CompText87466F8_unk53

	def_text_script CompText87466F8_unk54

	def_text_script CompText87466F8_unk55

	def_text_script CompText87466F8_unk56

	def_text_script CompText87466F8_unk57

	def_text_script CompText87466F8_unk58

	def_text_script CompText87466F8_unk59

	def_text_script CompText87466F8_unk60

	def_text_script CompText87466F8_unk61

	def_text_script CompText87466F8_unk62

	def_text_script CompText87466F8_unk63

	def_text_script CompText87466F8_unk64

	def_text_script CompText87466F8_unk65

	def_text_script CompText87466F8_unk66

	def_text_script CompText87466F8_unk67

	def_text_script CompText87466F8_unk68

	def_text_script CompText87466F8_unk69

	def_text_script CompText87466F8_unk70

	def_text_script CompText87466F8_unk71

	def_text_script CompText87466F8_unk72

	def_text_script CompText87466F8_unk73

	def_text_script CompText87466F8_unk74

	def_text_script CompText87466F8_unk75

	def_text_script CompText87466F8_unk76

	def_text_script CompText87466F8_unk77

	def_text_script CompText87466F8_unk78

	def_text_script CompText87466F8_unk79

	def_text_script CompText87466F8_unk80

	def_text_script CompText87466F8_unk81

	def_text_script CompText87466F8_unk82

	def_text_script CompText87466F8_unk83

	def_text_script CompText87466F8_unk84

	def_text_script CompText87466F8_unk85

	def_text_script CompText87466F8_unk86

	def_text_script CompText87466F8_unk87

	def_text_script CompText87466F8_unk88
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Normalize this\n"
	.string "computer,MegaMan!\n"
	.string "Hurry!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87466F8_unk89

	def_text_script CompText87466F8_unk90

	def_text_script CompText87466F8_unk91

	def_text_script CompText87466F8_unk92

	def_text_script CompText87466F8_unk93

	def_text_script CompText87466F8_unk94

	def_text_script CompText87466F8_unk95
	ts_check_flag 0x38, 0x5, 0x60, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I'm worried about\n"
	.string "Mick..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Jack out,MegaMan,and\n"
	.string "let's go find him!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87466F8_unk96
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Time for bed..."
	ts_key_wait 0x0
	ts_end

	