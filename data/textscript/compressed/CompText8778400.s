	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8778400::
	.word 0x48A00

	text_archive_start

	def_text_script CompText8778400_unk0
	ts_check_flag [
		flag: 0x528,
		jumpIfTrue: 0x4,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x556,
		jumpIfTrue: 0x3,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x1729,
		jumpIfTrue: 0x7,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x51E,
		jumpIfTrue: 0x8,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x555,
		jumpIfTrue: 0x1,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set [
		flag: 0x555,
	]
	ts_msg_open
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Ah!\n"
	.string "I can see a door\n"
	.string "over there!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I bet that's the\n"
	.string "entrance to the\n"
	.string "Control Room!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "...But that seal,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It doesn't look\n"
	.string "like it's going\n"
	.string "to move."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So we can't keep\n"
	.string "going!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We don't have\n"
	.string "time for this!\n"
	.string "What should we do?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan!\n"
	.string "Remember the show!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "That Trainer...\n"
	.string "What did she say?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"Fanny the Elephant\n"
	.string " seal loves...\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "\"...playing with a\n"
	.string " ball more than\n"
	.string " food!\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So we should try\n"
	.string "to find a ball for\n"
	.string "her to play with!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's hurry up and\n"
	.string "find one!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They used one in\n"
	.string "the show. It must\n"
	.string "be around here..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8778400_unk1
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "We should try to\n"
	.string "find a ball to\n"
	.string "play with!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's hurry up and\n"
	.string "find one!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They use one for\n"
	.string "the show. It must\n"
	.string "be around here..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8778400_unk2
	ts_msg_open
	ts_item_give [
		item: 0x9,
		amount: 0x1,
	]
	ts_player_animate_object [
		animation: 0x18,
	]
	.string "MegaMan got:\n"
	.string "\""
	ts_print_item [
		item: 0x9,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_flag_set [
		flag: 0x556,
	]
	ts_end

	def_text_script CompText8778400_unk3
	ts_flag_set [
		flag: 0x55A,
	]
	ts_end

	def_text_script CompText8778400_unk4
	ts_msg_open
	.string "*waooo!* *waooo!*"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8778400_unk5
	ts_msg_open
	.string "The CopyBot's\n"
	.string "batteries are dead."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8778400_unk6
	ts_msg_open
	.string "Fanny's favorite\n"
	.string "toy..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8778400_unk7
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Let's hurry and\n"
	.string "get the toy!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8778400_unk8
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "C'mon! Let's get\n"
	.string "that toy quick!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8778400_unk9

	def_text_script CompText8778400_unk10

	def_text_script CompText8778400_unk11
	ts_msg_open
	ts_mugshot_show [
		mugshot: 0x14,
	]
	.string "If I say I'm goin'\n"
	.string "home,I'm goin' home!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8778400_unk12

	def_text_script CompText8778400_unk13

	def_text_script CompText8778400_unk14

	def_text_script CompText8778400_unk15

	def_text_script CompText8778400_unk16

	def_text_script CompText8778400_unk17

	def_text_script CompText8778400_unk18

	def_text_script CompText8778400_unk19

	def_text_script CompText8778400_unk20

	def_text_script CompText8778400_unk21

	def_text_script CompText8778400_unk22

	def_text_script CompText8778400_unk23

	def_text_script CompText8778400_unk24

	def_text_script CompText8778400_unk25

	def_text_script CompText8778400_unk26

	def_text_script CompText8778400_unk27

	def_text_script CompText8778400_unk28

	def_text_script CompText8778400_unk29

	def_text_script CompText8778400_unk30

	def_text_script CompText8778400_unk31

	def_text_script CompText8778400_unk32

	def_text_script CompText8778400_unk33

	def_text_script CompText8778400_unk34

	def_text_script CompText8778400_unk35

	def_text_script CompText8778400_unk36

	def_text_script CompText8778400_unk37

	def_text_script CompText8778400_unk38

	def_text_script CompText8778400_unk39

	def_text_script CompText8778400_unk40

	def_text_script CompText8778400_unk41

	def_text_script CompText8778400_unk42

	def_text_script CompText8778400_unk43

	def_text_script CompText8778400_unk44

	def_text_script CompText8778400_unk45

	def_text_script CompText8778400_unk46

	def_text_script CompText8778400_unk47

	def_text_script CompText8778400_unk48

	def_text_script CompText8778400_unk49

	def_text_script CompText8778400_unk50

	def_text_script CompText8778400_unk51

	def_text_script CompText8778400_unk52

	def_text_script CompText8778400_unk53

	def_text_script CompText8778400_unk54

	def_text_script CompText8778400_unk55

	def_text_script CompText8778400_unk56

	def_text_script CompText8778400_unk57

	def_text_script CompText8778400_unk58

	def_text_script CompText8778400_unk59

	def_text_script CompText8778400_unk60

	def_text_script CompText8778400_unk61

	def_text_script CompText8778400_unk62

	def_text_script CompText8778400_unk63

	def_text_script CompText8778400_unk64

	def_text_script CompText8778400_unk65

	def_text_script CompText8778400_unk66

	def_text_script CompText8778400_unk67

	def_text_script CompText8778400_unk68

	def_text_script CompText8778400_unk69

	def_text_script CompText8778400_unk70

	def_text_script CompText8778400_unk71

	def_text_script CompText8778400_unk72

	def_text_script CompText8778400_unk73

	def_text_script CompText8778400_unk74

	def_text_script CompText8778400_unk75

	def_text_script CompText8778400_unk76

	def_text_script CompText8778400_unk77

	def_text_script CompText8778400_unk78

	def_text_script CompText8778400_unk79

	def_text_script CompText8778400_unk80

	def_text_script CompText8778400_unk81

	def_text_script CompText8778400_unk82

	def_text_script CompText8778400_unk83

	def_text_script CompText8778400_unk84

	def_text_script CompText8778400_unk85

	def_text_script CompText8778400_unk86

	def_text_script CompText8778400_unk87

	def_text_script CompText8778400_unk88

	def_text_script CompText8778400_unk89

	def_text_script CompText8778400_unk90

	def_text_script CompText8778400_unk91

	def_text_script CompText8778400_unk92

	def_text_script CompText8778400_unk93

	def_text_script CompText8778400_unk94

	def_text_script CompText8778400_unk95

	def_text_script CompText8778400_unk96

	def_text_script CompText8778400_unk97

	def_text_script CompText8778400_unk98

	def_text_script CompText8778400_unk99

	