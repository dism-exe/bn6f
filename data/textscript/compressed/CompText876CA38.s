	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876CA38::
	.word 0x28D00

	text_archive_start

	def_text_script CompText876CA38_unk0
	ts_check_chapter [
		lower: 0x21,
		upper: 0x21,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "I like to look at\n"
	.string "flowers inside of\n"
	.string "empty classrooms."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I get this feeling\n"
	.string "that the flowers\n"
	.string "will talk to me!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876CA38_unk1

	def_text_script CompText876CA38_unk2

	def_text_script CompText876CA38_unk3

	def_text_script CompText876CA38_unk4

	def_text_script CompText876CA38_unk5
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "It's about time to\n"
	.string "go home,huh...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876CA38_unk6

	def_text_script CompText876CA38_unk7

	def_text_script CompText876CA38_unk8

	def_text_script CompText876CA38_unk9

	def_text_script CompText876CA38_unk10

	def_text_script CompText876CA38_unk11

	def_text_script CompText876CA38_unk12

	def_text_script CompText876CA38_unk13

	def_text_script CompText876CA38_unk14

	def_text_script CompText876CA38_unk15

	def_text_script CompText876CA38_unk16

	def_text_script CompText876CA38_unk17

	def_text_script CompText876CA38_unk18

	def_text_script CompText876CA38_unk19

	def_text_script CompText876CA38_unk20

	def_text_script CompText876CA38_unk21

	def_text_script CompText876CA38_unk22

	def_text_script CompText876CA38_unk23

	def_text_script CompText876CA38_unk24

	def_text_script CompText876CA38_unk25

	def_text_script CompText876CA38_unk26

	def_text_script CompText876CA38_unk27

	def_text_script CompText876CA38_unk28

	def_text_script CompText876CA38_unk29

	def_text_script CompText876CA38_unk30

	def_text_script CompText876CA38_unk31

	def_text_script CompText876CA38_unk32

	def_text_script CompText876CA38_unk33

	def_text_script CompText876CA38_unk34

	def_text_script CompText876CA38_unk35

	def_text_script CompText876CA38_unk36

	def_text_script CompText876CA38_unk37

	def_text_script CompText876CA38_unk38

	def_text_script CompText876CA38_unk39

	def_text_script CompText876CA38_unk40
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "I heard there was\n"
	.string "a huge riot on the\n"
	.string "Net recently."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm definitely not\n"
	.string "going to use the\n"
	.string "Net now!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's too scary!!\n"
	.string "Way too scary!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876CA38_unk41

	def_text_script CompText876CA38_unk42

	def_text_script CompText876CA38_unk43

	def_text_script CompText876CA38_unk44

	def_text_script CompText876CA38_unk45
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "You went to\n"
	.string "Green Town?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When I grow up,\n"
	.string "I really would like\n"
	.string "to become a lawyer!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's why you\n"
	.string "should take me to\n"
	.string "Green Town sometime!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876CA38_unk46

	def_text_script CompText876CA38_unk47

	def_text_script CompText876CA38_unk48

	def_text_script CompText876CA38_unk49

	def_text_script CompText876CA38_unk50

	def_text_script CompText876CA38_unk51

	def_text_script CompText876CA38_unk52

	def_text_script CompText876CA38_unk53

	def_text_script CompText876CA38_unk54

	def_text_script CompText876CA38_unk55

	def_text_script CompText876CA38_unk56

	def_text_script CompText876CA38_unk57

	def_text_script CompText876CA38_unk58

	def_text_script CompText876CA38_unk59

	def_text_script CompText876CA38_unk60

	def_text_script CompText876CA38_unk61

	def_text_script CompText876CA38_unk62

	def_text_script CompText876CA38_unk63

	def_text_script CompText876CA38_unk64

	def_text_script CompText876CA38_unk65

	def_text_script CompText876CA38_unk66

	def_text_script CompText876CA38_unk67

	def_text_script CompText876CA38_unk68

	def_text_script CompText876CA38_unk69

	def_text_script CompText876CA38_unk70

	def_text_script CompText876CA38_unk71

	def_text_script CompText876CA38_unk72

	def_text_script CompText876CA38_unk73

	def_text_script CompText876CA38_unk74

	def_text_script CompText876CA38_unk75

	def_text_script CompText876CA38_unk76

	def_text_script CompText876CA38_unk77

	def_text_script CompText876CA38_unk78

	def_text_script CompText876CA38_unk79

	def_text_script CompText876CA38_unk80

	def_text_script CompText876CA38_unk81

	def_text_script CompText876CA38_unk82

	def_text_script CompText876CA38_unk83

	def_text_script CompText876CA38_unk84

	def_text_script CompText876CA38_unk85

	def_text_script CompText876CA38_unk86

	def_text_script CompText876CA38_unk87

	def_text_script CompText876CA38_unk88

	def_text_script CompText876CA38_unk89

	def_text_script CompText876CA38_unk90

	def_text_script CompText876CA38_unk91

	def_text_script CompText876CA38_unk92

	def_text_script CompText876CA38_unk93

	def_text_script CompText876CA38_unk94

	def_text_script CompText876CA38_unk95

	def_text_script CompText876CA38_unk96

	def_text_script CompText876CA38_unk97

	def_text_script CompText876CA38_unk98

	def_text_script CompText876CA38_unk99

	