	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8794604::
	.word 0x3A400

	text_archive_start

	def_text_script CompText8794604_unk0
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THIS IS SKY AREA2."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IT IS CONNECTED TO\n"
	.string "THE UNDERNET,SO\n"
	.string "PLEASE USE CAUTION."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8794604_unk1
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: CompText8794604_unk10_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: CompText8794604_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "I think something\n"
	.string "strange might come\n"
	.string "from the Undernet!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...I'm worried..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8794604_unk2
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: CompText8794604_unk11_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: CompText8794604_unk6_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Everything is OK\n"
	.string "now,but you can't\n"
	.string "be unprepared since"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you never know when\n"
	.string "something might\n"
	.string "happen!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8794604_unk3

	def_text_script CompText8794604_unk4

	def_text_script CompText8794604_unk5
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "I wonder if the\n"
	.string "dwellers of the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Undernet will go to\n"
	.string "the Expo...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8794604_unk6
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "The guards at the\n"
	.string "entrance to the\n"
	.string "Undernet are the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "most worried,so that\n"
	.string "is why I'm under the\n"
	.string "most stress..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8794604_unk7

	def_text_script CompText8794604_unk8

	def_text_script CompText8794604_unk9

	def_text_script CompText8794604_unk10
	ts_mugshot_show mugshot=0x3F
	ts_msg_open
	.string "Yaaaawwnn...\n"
	.string "I'm tired since I\n"
	.string "stayed up all night!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Time to jack out..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8794604_unk11
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Well,it's time\n"
	.string "to change shifts..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I hope my\n"
	.string "replacement comes\n"
	.string "soon..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8794604_unk12

	def_text_script CompText8794604_unk13

	def_text_script CompText8794604_unk14

	def_text_script CompText8794604_unk15
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Waahhhhh..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8794604_unk16
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "Ha! A bunch of\n"
	.string "little wusses!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8794604_unk17
	ts_mugshot_show mugshot=0x44
	ts_msg_open
	.string "We don't let things\n"
	.string "that would ruin the\n"
	.string "Undernet in! EVER!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8794604_unk18

	def_text_script CompText8794604_unk19
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "........"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8794604_unk20

	def_text_script CompText8794604_unk21

	def_text_script CompText8794604_unk22

	def_text_script CompText8794604_unk23

	def_text_script CompText8794604_unk24

	def_text_script CompText8794604_unk25

	def_text_script CompText8794604_unk26

	def_text_script CompText8794604_unk27

	def_text_script CompText8794604_unk28

	def_text_script CompText8794604_unk29

	def_text_script CompText8794604_unk30

	def_text_script CompText8794604_unk31

	def_text_script CompText8794604_unk32

	def_text_script CompText8794604_unk33

	def_text_script CompText8794604_unk34

	def_text_script CompText8794604_unk35

	def_text_script CompText8794604_unk36

	def_text_script CompText8794604_unk37

	def_text_script CompText8794604_unk38

	def_text_script CompText8794604_unk39

	def_text_script CompText8794604_unk40

	def_text_script CompText8794604_unk41

	def_text_script CompText8794604_unk42

	def_text_script CompText8794604_unk43

	def_text_script CompText8794604_unk44

	def_text_script CompText8794604_unk45

	def_text_script CompText8794604_unk46

	def_text_script CompText8794604_unk47

	def_text_script CompText8794604_unk48

	def_text_script CompText8794604_unk49

	def_text_script CompText8794604_unk50

	def_text_script CompText8794604_unk51

	def_text_script CompText8794604_unk52

	def_text_script CompText8794604_unk53

	def_text_script CompText8794604_unk54

	def_text_script CompText8794604_unk55

	def_text_script CompText8794604_unk56

	def_text_script CompText8794604_unk57

	def_text_script CompText8794604_unk58

	def_text_script CompText8794604_unk59

	def_text_script CompText8794604_unk60

	def_text_script CompText8794604_unk61

	def_text_script CompText8794604_unk62

	def_text_script CompText8794604_unk63

	def_text_script CompText8794604_unk64

	def_text_script CompText8794604_unk65

	def_text_script CompText8794604_unk66

	def_text_script CompText8794604_unk67

	def_text_script CompText8794604_unk68

	def_text_script CompText8794604_unk69

	