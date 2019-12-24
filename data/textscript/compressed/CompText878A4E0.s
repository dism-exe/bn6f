	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878A4E0::
	.word 0x4E000

	text_archive_start

	def_text_script CompText878A4E0_unk0
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "A GLANCE...\n"
	.string "...CYBEASTS...\n"
	.string "...RIGHT...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "HEARING TALK OF\n"
	.string "THE UNDERGOUND IS\n"
	.string "SCARY..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A4E0_unk1
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: 0xB,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: 0x6,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Since it's connected\n"
	.string "directly to Central\n"
	.string "Area3,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "this area must have\n"
	.string "tight security."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A4E0_unk2
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: 0x7,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "If something comes\n"
	.string "up from the\n"
	.string "Underground..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What can we do\n"
	.string "about it...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A4E0_unk3

	def_text_script CompText878A4E0_unk4

	def_text_script CompText878A4E0_unk5
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "EVEN THOUGH THE REAL\n"
	.string "WORLD IS EXCITED FOR\n"
	.string "THE EXPO,THOSE IN"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THE CYBERWORLD\n"
	.string "ISN'T EXCITED AT\n"
	.string "ALL..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ESPECIALLY SINCE A\n"
	.string "GAPING WIDE HOLE\n"
	.string "HAS OPENED TO THE"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "UNDERGROUND IN THE\n"
	.string "NEXT AREA OVER!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A4E0_unk6
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I hope we hurry\n"
	.string "and finish the\n"
	.string "Underground"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "investigation so\n"
	.string "we can talk about\n"
	.string "the Expo again!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A4E0_unk7
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "When the Expo opens,\n"
	.string "pavilion security\n"
	.string "will be very tight."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There will also be\n"
	.string "limitations on\n"
	.string "moving around."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A4E0_unk8

	def_text_script CompText878A4E0_unk9

	def_text_script CompText878A4E0_unk10
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "LATELY THERE HAVE\n"
	.string "BEEN LOTS OF GLOOMY\n"
	.string "TALK AROUND HERE,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "BUT WHEN THE EXPO\n"
	.string "OPENS EVERYTHING\n"
	.string "WILL BE BRIGHT..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A4E0_unk11
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "The Expo was the\n"
	.string "mayor's biggest wish\n"
	.string "in the world,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but now he won't\n"
	.string "even be able to\n"
	.string "attend..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A4E0_unk12

	def_text_script CompText878A4E0_unk13

	def_text_script CompText878A4E0_unk14

	def_text_script CompText878A4E0_unk15
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Uggghhh..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878A4E0_unk16
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "The NetPolice can't\n"
	.string "even say a thing..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What're you lookin\n"
	.string "at? I'll make you\n"
	.string "a mute too!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xEAF
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText878A4E0_unk17
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Time to be\n"
	.string "deleted!!!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xEB1
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText878A4E0_unk18

	def_text_script CompText878A4E0_unk19

	def_text_script CompText878A4E0_unk20

	def_text_script CompText878A4E0_unk21

	def_text_script CompText878A4E0_unk22

	def_text_script CompText878A4E0_unk23

	def_text_script CompText878A4E0_unk24

	def_text_script CompText878A4E0_unk25

	def_text_script CompText878A4E0_unk26

	def_text_script CompText878A4E0_unk27

	def_text_script CompText878A4E0_unk28

	def_text_script CompText878A4E0_unk29

	def_text_script CompText878A4E0_unk30

	def_text_script CompText878A4E0_unk31

	def_text_script CompText878A4E0_unk32

	def_text_script CompText878A4E0_unk33

	def_text_script CompText878A4E0_unk34

	def_text_script CompText878A4E0_unk35

	def_text_script CompText878A4E0_unk36

	def_text_script CompText878A4E0_unk37

	def_text_script CompText878A4E0_unk38

	def_text_script CompText878A4E0_unk39

	def_text_script CompText878A4E0_unk40

	def_text_script CompText878A4E0_unk41

	def_text_script CompText878A4E0_unk42

	def_text_script CompText878A4E0_unk43

	def_text_script CompText878A4E0_unk44

	def_text_script CompText878A4E0_unk45

	def_text_script CompText878A4E0_unk46

	def_text_script CompText878A4E0_unk47

	def_text_script CompText878A4E0_unk48

	def_text_script CompText878A4E0_unk49

	def_text_script CompText878A4E0_unk50

	def_text_script CompText878A4E0_unk51

	def_text_script CompText878A4E0_unk52

	def_text_script CompText878A4E0_unk53

	def_text_script CompText878A4E0_unk54

	def_text_script CompText878A4E0_unk55

	def_text_script CompText878A4E0_unk56

	def_text_script CompText878A4E0_unk57

	def_text_script CompText878A4E0_unk58

	def_text_script CompText878A4E0_unk59

	def_text_script CompText878A4E0_unk60

	def_text_script CompText878A4E0_unk61

	def_text_script CompText878A4E0_unk62

	def_text_script CompText878A4E0_unk63

	def_text_script CompText878A4E0_unk64

	def_text_script CompText878A4E0_unk65

	def_text_script CompText878A4E0_unk66

	def_text_script CompText878A4E0_unk67

	def_text_script CompText878A4E0_unk68

	def_text_script CompText878A4E0_unk69

	