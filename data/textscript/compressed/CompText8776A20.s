	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8776A20::
	.word 0x34000

	text_archive_start

	def_text_script CompText8776A20_unk0
	ts_msg_open
	.string "*Squawk!*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776A20_unk1
	ts_msg_open
	.string "When a turtle comes\n"
	.string "out of the water,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "it looks like\n"
	.string "a rock..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776A20_unk2

	def_text_script CompText8776A20_unk3

	def_text_script CompText8776A20_unk4

	def_text_script CompText8776A20_unk5
	ts_mugshot_show mugshot=0xA
	ts_msg_open
	.string "Hey Grandpa!\n"
	.string "I wanna pet\n"
	.string "dolphin!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x19
	.string "Hahaha! Don't be\n"
	.string "silly..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776A20_unk6
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "This is the area\n"
	.string "we use to breed"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "large animals that\n"
	.string "live in the water."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's filled with\n"
	.string "rarely seen animals!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776A20_unk7
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "That seal looks like\n"
	.string "it weighs two tons!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's big... Too big!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776A20_unk8
	ts_check_flag [
		flag: 0x516,
		jumpIfTrue: CompText8776A20_unk9_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x554,
		jumpIfTrue: CompText8776A20_unk10_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "This is the\n"
	.string "auditorium for the\n"
	.string "show..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Actually,we are\n"
	.string "still getting ready\n"
	.string "for the show."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you don't mind\n"
	.string "waiting,it will\n"
	.string "be starting soon..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776A20_unk9
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "This is the\n"
	.string "auditorium for the\n"
	.string "show..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Today's show\n"
	.string "just finished."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776A20_unk10
	ts_mugshot_show mugshot=0x15
	ts_msg_open
	.string "The show is about\n"
	.string "to begin! Enjoy!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8776A20_unk11

	def_text_script CompText8776A20_unk12

	def_text_script CompText8776A20_unk13

	def_text_script CompText8776A20_unk14

	def_text_script CompText8776A20_unk15

	def_text_script CompText8776A20_unk16

	def_text_script CompText8776A20_unk17

	def_text_script CompText8776A20_unk18

	def_text_script CompText8776A20_unk19

	def_text_script CompText8776A20_unk20

	def_text_script CompText8776A20_unk21

	def_text_script CompText8776A20_unk22

	def_text_script CompText8776A20_unk23

	def_text_script CompText8776A20_unk24

	def_text_script CompText8776A20_unk25

	def_text_script CompText8776A20_unk26

	def_text_script CompText8776A20_unk27

	def_text_script CompText8776A20_unk28

	def_text_script CompText8776A20_unk29

	def_text_script CompText8776A20_unk30

	def_text_script CompText8776A20_unk31

	def_text_script CompText8776A20_unk32

	def_text_script CompText8776A20_unk33

	def_text_script CompText8776A20_unk34

	def_text_script CompText8776A20_unk35

	def_text_script CompText8776A20_unk36

	def_text_script CompText8776A20_unk37

	def_text_script CompText8776A20_unk38

	def_text_script CompText8776A20_unk39

	def_text_script CompText8776A20_unk40

	def_text_script CompText8776A20_unk41

	def_text_script CompText8776A20_unk42

	def_text_script CompText8776A20_unk43

	def_text_script CompText8776A20_unk44

	def_text_script CompText8776A20_unk45

	def_text_script CompText8776A20_unk46

	def_text_script CompText8776A20_unk47

	def_text_script CompText8776A20_unk48

	def_text_script CompText8776A20_unk49

	def_text_script CompText8776A20_unk50

	def_text_script CompText8776A20_unk51

	def_text_script CompText8776A20_unk52

	def_text_script CompText8776A20_unk53

	def_text_script CompText8776A20_unk54

	def_text_script CompText8776A20_unk55

	def_text_script CompText8776A20_unk56

	def_text_script CompText8776A20_unk57

	def_text_script CompText8776A20_unk58

	def_text_script CompText8776A20_unk59

	def_text_script CompText8776A20_unk60

	def_text_script CompText8776A20_unk61

	def_text_script CompText8776A20_unk62

	def_text_script CompText8776A20_unk63

	def_text_script CompText8776A20_unk64

	def_text_script CompText8776A20_unk65

	def_text_script CompText8776A20_unk66

	def_text_script CompText8776A20_unk67

	def_text_script CompText8776A20_unk68

	def_text_script CompText8776A20_unk69

	def_text_script CompText8776A20_unk70

	def_text_script CompText8776A20_unk71

	def_text_script CompText8776A20_unk72

	def_text_script CompText8776A20_unk73

	def_text_script CompText8776A20_unk74

	def_text_script CompText8776A20_unk75

	def_text_script CompText8776A20_unk76

	def_text_script CompText8776A20_unk77

	def_text_script CompText8776A20_unk78

	def_text_script CompText8776A20_unk79

	def_text_script CompText8776A20_unk80

	def_text_script CompText8776A20_unk81

	def_text_script CompText8776A20_unk82

	def_text_script CompText8776A20_unk83

	def_text_script CompText8776A20_unk84

	def_text_script CompText8776A20_unk85

	def_text_script CompText8776A20_unk86

	def_text_script CompText8776A20_unk87

	def_text_script CompText8776A20_unk88

	def_text_script CompText8776A20_unk89

	def_text_script CompText8776A20_unk90

	def_text_script CompText8776A20_unk91

	def_text_script CompText8776A20_unk92

	def_text_script CompText8776A20_unk93

	def_text_script CompText8776A20_unk94

	def_text_script CompText8776A20_unk95

	def_text_script CompText8776A20_unk96

	def_text_script CompText8776A20_unk97

	def_text_script CompText8776A20_unk98

	