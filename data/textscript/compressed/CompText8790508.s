	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8790508::
	.word 0x2EF00

	text_archive_start

	def_text_script CompText8790508_unk0
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "WELCOME!\n"
	.string "THIS IS GREEN AREA2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8790508_unk1
	ts_check_chapter 0x62, 0x62, 0xA, 0xFF
	ts_check_chapter 0x61, 0x61, 0x5, 0xFF
	ts_mugshot_show 0x42
	ts_msg_open
	.string "The coffee here\n"
	.string "tastes very unique."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8790508_unk2
	ts_check_chapter 0x62, 0x62, 0xB, 0xFF
	ts_check_chapter 0x61, 0x61, 0x6, 0xFF
	ts_mugshot_show 0x40
	ts_msg_open
	.string "I bet Mayor Cain\n"
	.string "is answering some\n"
	.string "tough questions now."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8790508_unk3

	def_text_script CompText8790508_unk4

	def_text_script CompText8790508_unk5
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Lots of people\n"
	.string "gather at an Expo\n"
	.string "right?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder if it's\n"
	.string "OK to have one at a\n"
	.string "time like this..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8790508_unk6
	ts_mugshot_show 0x40
	ts_msg_open
	.string "It looks like the\n"
	.string "Expo is opening on\n"
	.string "schedule..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I bet there will be\n"
	.string "enormous lines!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8790508_unk7

	def_text_script CompText8790508_unk8

	def_text_script CompText8790508_unk9

	def_text_script CompText8790508_unk10
	ts_mugshot_show 0x42
	ts_msg_open
	.string "Mmmmm..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This coffee is\n"
	.string "truly unique."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8790508_unk11
	ts_mugshot_show 0x40
	ts_msg_open
	.string "If you are planning\n"
	.string "on being first to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the Expo,I think you\n"
	.string "might have to get in\n"
	.string "line right now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8790508_unk12

	def_text_script CompText8790508_unk13

	def_text_script CompText8790508_unk14

	def_text_script CompText8790508_unk15
	ts_mugshot_show 0x43
	ts_msg_open
	.string "What a terrible\n"
	.string "lie... I'll\n"
	.string "finish this here!"
	ts_key_wait 0x0
	ts_flag_set 0xB3, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText8790508_unk16
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Arrrrrghhhh!!"
	ts_key_wait 0x0
	ts_flag_set 0xB5, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText8790508_unk17

	def_text_script CompText8790508_unk18

	def_text_script CompText8790508_unk19

	def_text_script CompText8790508_unk20

	def_text_script CompText8790508_unk21

	def_text_script CompText8790508_unk22

	def_text_script CompText8790508_unk23

	def_text_script CompText8790508_unk24

	def_text_script CompText8790508_unk25

	def_text_script CompText8790508_unk26

	def_text_script CompText8790508_unk27

	def_text_script CompText8790508_unk28

	def_text_script CompText8790508_unk29

	def_text_script CompText8790508_unk30

	def_text_script CompText8790508_unk31

	def_text_script CompText8790508_unk32

	def_text_script CompText8790508_unk33

	def_text_script CompText8790508_unk34

	def_text_script CompText8790508_unk35

	def_text_script CompText8790508_unk36

	def_text_script CompText8790508_unk37

	def_text_script CompText8790508_unk38

	def_text_script CompText8790508_unk39

	def_text_script CompText8790508_unk40

	def_text_script CompText8790508_unk41

	def_text_script CompText8790508_unk42

	def_text_script CompText8790508_unk43

	def_text_script CompText8790508_unk44

	def_text_script CompText8790508_unk45

	def_text_script CompText8790508_unk46

	def_text_script CompText8790508_unk47

	def_text_script CompText8790508_unk48

	def_text_script CompText8790508_unk49

	def_text_script CompText8790508_unk50

	def_text_script CompText8790508_unk51

	def_text_script CompText8790508_unk52

	def_text_script CompText8790508_unk53

	def_text_script CompText8790508_unk54

	def_text_script CompText8790508_unk55

	def_text_script CompText8790508_unk56

	def_text_script CompText8790508_unk57

	def_text_script CompText8790508_unk58

	def_text_script CompText8790508_unk59

	def_text_script CompText8790508_unk60

	def_text_script CompText8790508_unk61

	def_text_script CompText8790508_unk62

	def_text_script CompText8790508_unk63

	def_text_script CompText8790508_unk64

	def_text_script CompText8790508_unk65

	def_text_script CompText8790508_unk66

	def_text_script CompText8790508_unk67

	def_text_script CompText8790508_unk68

	def_text_script CompText8790508_unk69

	