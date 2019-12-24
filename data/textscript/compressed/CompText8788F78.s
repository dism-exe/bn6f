	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8788F78::
	.word 0x45100

	text_archive_start

	def_text_script CompText8788F78_unk0
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: 0xF,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: 0xA,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "EVERYDAY,THE\n"
	.string "UNDERGROUND IS BEING\n"
	.string "EXAMINED."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "HOWEVER,IT WOULD BE\n"
	.string "TERRIBLE IF A\n"
	.string "CYBEAST EMERGED..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8788F78_unk1
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: 0xB,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Don't get too\n"
	.string "close to that huge\n"
	.string "hole!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8788F78_unk2
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "The Underground..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If we abandon it,\n"
	.string "it may become the\n"
	.string "2nd Undernet..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8788F78_unk3
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "I came to check out\n"
	.string "the Underground,but"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "it's really kind of\n"
	.string "scary..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8788F78_unk4
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Even if you came\n"
	.string "to examine the\n"
	.string "Underground,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "everyone hesitates\n"
	.string "to go inside."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8788F78_unk5

	def_text_script CompText8788F78_unk6

	def_text_script CompText8788F78_unk7

	def_text_script CompText8788F78_unk8

	def_text_script CompText8788F78_unk9

	def_text_script CompText8788F78_unk10
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "IT SEEMS THE EXPO\n"
	.string "WILL BE HELD ON\n"
	.string "SCHEDULE..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I HOPE THEY CAN\n"
	.string "SEAL THE UNDERGROUND"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "REAL SOON,SO I CAN\n"
	.string "ENJOY TALKING ABOUT\n"
	.string "THE EXPO!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8788F78_unk11
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "My friends went into\n"
	.string "the Underground and\n"
	.string "said they'd be right"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "back,but they still\n"
	.string "haven't returned...\n"
	.string "I'm worried..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8788F78_unk12

	def_text_script CompText8788F78_unk13

	def_text_script CompText8788F78_unk14

	def_text_script CompText8788F78_unk15
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WE HAVEN'T STARTED\n"
	.string "OUR SURVEY OF THE\n"
	.string "UNDERGROUND TODAY."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "IT'S STILL A BIT\n"
	.string "TOO EARLY..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8788F78_unk16

	def_text_script CompText8788F78_unk17

	def_text_script CompText8788F78_unk18

	def_text_script CompText8788F78_unk19

	def_text_script CompText8788F78_unk20
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "What are these\n"
	.string "Navis? They're\n"
	.string "rushing down on us!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I hope there aren't\n"
	.string "victims in other\n"
	.string "areas..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8788F78_unk21
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "If you mistake\n"
	.string "who to attack,\n"
	.string "something might..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8788F78_unk22
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Uggghhhhh..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8788F78_unk23

	def_text_script CompText8788F78_unk24

	def_text_script CompText8788F78_unk25

	def_text_script CompText8788F78_unk26

	def_text_script CompText8788F78_unk27

	def_text_script CompText8788F78_unk28

	def_text_script CompText8788F78_unk29

	def_text_script CompText8788F78_unk30

	def_text_script CompText8788F78_unk31

	def_text_script CompText8788F78_unk32

	def_text_script CompText8788F78_unk33

	def_text_script CompText8788F78_unk34

	def_text_script CompText8788F78_unk35

	def_text_script CompText8788F78_unk36

	def_text_script CompText8788F78_unk37

	def_text_script CompText8788F78_unk38

	def_text_script CompText8788F78_unk39

	def_text_script CompText8788F78_unk40

	def_text_script CompText8788F78_unk41

	def_text_script CompText8788F78_unk42

	def_text_script CompText8788F78_unk43

	def_text_script CompText8788F78_unk44

	def_text_script CompText8788F78_unk45

	def_text_script CompText8788F78_unk46

	def_text_script CompText8788F78_unk47

	def_text_script CompText8788F78_unk48

	def_text_script CompText8788F78_unk49

	def_text_script CompText8788F78_unk50

	def_text_script CompText8788F78_unk51

	def_text_script CompText8788F78_unk52

	def_text_script CompText8788F78_unk53

	def_text_script CompText8788F78_unk54

	def_text_script CompText8788F78_unk55

	def_text_script CompText8788F78_unk56

	def_text_script CompText8788F78_unk57

	def_text_script CompText8788F78_unk58

	def_text_script CompText8788F78_unk59

	def_text_script CompText8788F78_unk60

	def_text_script CompText8788F78_unk61

	def_text_script CompText8788F78_unk62

	def_text_script CompText8788F78_unk63

	def_text_script CompText8788F78_unk64

	def_text_script CompText8788F78_unk65

	def_text_script CompText8788F78_unk66

	def_text_script CompText8788F78_unk67

	def_text_script CompText8788F78_unk68

	def_text_script CompText8788F78_unk69

	