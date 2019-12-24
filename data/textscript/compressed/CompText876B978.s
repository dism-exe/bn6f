	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876B978::
	.word 0x5C800

	text_archive_start

	def_text_script CompText876B978_unk0
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Ahh!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Just when I sprained\n"
	.string "my ankle and thought\n"
	.string "I could relax,BOOM!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Writing assignment!\n"
	.string "Teachers are mean!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've never seen you\n"
	.string "before. You're the\n"
	.string "new kid in 6-1,huh?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876B978_unk1

	def_text_script CompText876B978_unk2

	def_text_script CompText876B978_unk3

	def_text_script CompText876B978_unk4

	def_text_script CompText876B978_unk5
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Huh?\n"
	.string "Something happen!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Creepy..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876B978_unk6

	def_text_script CompText876B978_unk7

	def_text_script CompText876B978_unk8

	def_text_script CompText876B978_unk9

	def_text_script CompText876B978_unk10

	def_text_script CompText876B978_unk11

	def_text_script CompText876B978_unk12

	def_text_script CompText876B978_unk13

	def_text_script CompText876B978_unk14

	def_text_script CompText876B978_unk15

	def_text_script CompText876B978_unk16

	def_text_script CompText876B978_unk17

	def_text_script CompText876B978_unk18

	def_text_script CompText876B978_unk19

	def_text_script CompText876B978_unk20

	def_text_script CompText876B978_unk21

	def_text_script CompText876B978_unk22

	def_text_script CompText876B978_unk23

	def_text_script CompText876B978_unk24

	def_text_script CompText876B978_unk25

	def_text_script CompText876B978_unk26

	def_text_script CompText876B978_unk27

	def_text_script CompText876B978_unk28

	def_text_script CompText876B978_unk29

	def_text_script CompText876B978_unk30

	def_text_script CompText876B978_unk31

	def_text_script CompText876B978_unk32

	def_text_script CompText876B978_unk33

	def_text_script CompText876B978_unk34

	def_text_script CompText876B978_unk35

	def_text_script CompText876B978_unk36

	def_text_script CompText876B978_unk37

	def_text_script CompText876B978_unk38

	def_text_script CompText876B978_unk39

	def_text_script CompText876B978_unk40

	def_text_script CompText876B978_unk41

	def_text_script CompText876B978_unk42

	def_text_script CompText876B978_unk43

	def_text_script CompText876B978_unk44

	def_text_script CompText876B978_unk45

	def_text_script CompText876B978_unk46

	def_text_script CompText876B978_unk47

	def_text_script CompText876B978_unk48

	def_text_script CompText876B978_unk49

	def_text_script CompText876B978_unk50
	ts_check_flag [
		flag: 0x53F,
		jumpIfTrue: CompText876B978_unk53_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x53D,
		jumpIfTrue: CompText876B978_unk52_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x53C,
		jumpIfTrue: CompText876B978_unk51_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_msg_open
	ts_mugshot_show mugshot=0xB
	.string "Huh?\n"
	.string "What am I doing?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm recording the\n"
	.string "growth of living\n"
	.string "things!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This is part of\n"
	.string "my daily routine."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876B978_unk51
	ts_flag_set flag=0x53D
	ts_msg_open
	ts_mugshot_show mugshot=0xB
	.string "...Huh?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's right!\n"
	.string "I'm the Biology\n"
	.string "teacher's aide!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Something the\n"
	.string "matter?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Umm..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xB
	.string "WHAT!?\n"
	.string "You want some fish\n"
	.string "to feed a penguin!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,I am in charge\n"
	.string "of feeding the\n"
	.string "animals here..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I don't have\n"
	.string "any food to give to\n"
	.string "a penguin!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "I guess I'm outta\n"
	.string "luck..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Thanks anyways..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xB
	.string "...Oh,wait a\n"
	.string "second..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "My grandpa loves\n"
	.string "to fish!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sure he is\n"
	.string "even fishing today!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He should be coming\n"
	.string "home around now I\n"
	.string "think..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you ask him,I\n"
	.string "bet he'd give you a\n"
	.string "fish!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Really!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0xB
	.string "Yeah,I don't think\n"
	.string "it'll be a problem!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll try and get\n"
	.string "ahold of my grandpa!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll ask him to\n"
	.string "bring some fish to\n"
	.string "the LevBus station."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Thanks!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll head to the\n"
	.string "station right now!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876B978_unk52
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "I'll try and get\n"
	.string "ahold of my grandpa!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll ask him to\n"
	.string "bring some fish to\n"
	.string "the LevBus station."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876B978_unk53
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Were the fish\n"
	.string "useful?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876B978_unk54
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "Everyone's spreading\n"
	.string "rumors..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They say a penguin\n"
	.string "showed up to the\n"
	.string "class next door!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876B978_unk55

	def_text_script CompText876B978_unk56

	def_text_script CompText876B978_unk57

	def_text_script CompText876B978_unk58

	def_text_script CompText876B978_unk59

	def_text_script CompText876B978_unk60

	def_text_script CompText876B978_unk61

	def_text_script CompText876B978_unk62

	def_text_script CompText876B978_unk63

	def_text_script CompText876B978_unk64

	def_text_script CompText876B978_unk65

	def_text_script CompText876B978_unk66

	def_text_script CompText876B978_unk67

	def_text_script CompText876B978_unk68

	def_text_script CompText876B978_unk69

	def_text_script CompText876B978_unk70

	def_text_script CompText876B978_unk71

	def_text_script CompText876B978_unk72

	def_text_script CompText876B978_unk73

	def_text_script CompText876B978_unk74

	def_text_script CompText876B978_unk75

	def_text_script CompText876B978_unk76

	def_text_script CompText876B978_unk77

	def_text_script CompText876B978_unk78

	def_text_script CompText876B978_unk79

	def_text_script CompText876B978_unk80

	def_text_script CompText876B978_unk81

	def_text_script CompText876B978_unk82

	def_text_script CompText876B978_unk83

	def_text_script CompText876B978_unk84

	def_text_script CompText876B978_unk85

	def_text_script CompText876B978_unk86

	def_text_script CompText876B978_unk87

	def_text_script CompText876B978_unk88

	def_text_script CompText876B978_unk89

	def_text_script CompText876B978_unk90

	def_text_script CompText876B978_unk91

	def_text_script CompText876B978_unk92

	def_text_script CompText876B978_unk93

	def_text_script CompText876B978_unk94

	def_text_script CompText876B978_unk95

	def_text_script CompText876B978_unk96

	def_text_script CompText876B978_unk97

	def_text_script CompText876B978_unk98

	def_text_script CompText876B978_unk99
	ts_end

	