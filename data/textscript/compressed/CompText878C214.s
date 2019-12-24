	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878C214::
	.word 0x4A700

	text_archive_start

	def_text_script CompText878C214_unk0
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: CompText878C214_unk10_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: CompText878C214_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WAS THE PROGRAM\n"
	.string "IN SEASIDEAREA1\n"
	.string "WORRIED?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I BET HEARING ABOUT\n"
	.string "THE UNDERGROUND JUST\n"
	.string "MADE IT WORSE!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THAT IS SOOOO\n"
	.string "FUNNY!! HAHAHA!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878C214_unk1
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Alright,what wave\n"
	.string "are you gonna ride\n"
	.string "today...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878C214_unk2
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: CompText878C214_unk7_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "After all,the\n"
	.string "Underground is just\n"
	.string "like an old cave."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's quaint compared\n"
	.string "to the Undernet..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878C214_unk3

	def_text_script CompText878C214_unk4

	def_text_script CompText878C214_unk5
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "*HUFF* *HUFF*..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'M TRAINING IN\n"
	.string "CASE SOMETHING\n"
	.string "HAPPENS."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'M GOING TO DEFEND\n"
	.string "THIS AREA!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878C214_unk6
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Lately the NetPolice\n"
	.string "have been patrolling\n"
	.string "and it's been safe,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but having them\n"
	.string "watch us constantly\n"
	.string "is uncomfortable..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878C214_unk7
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Huh? Is there\n"
	.string "something on my\n"
	.string "face?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878C214_unk8

	def_text_script CompText878C214_unk9

	def_text_script CompText878C214_unk10
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "I'LL FINISH MY\n"
	.string "TRAINING SOON..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THEN I WILL REALLY\n"
	.string "BE ABLE TO TRY OUT\n"
	.string "MY MOVES..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878C214_unk11
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "That Mr.Prog has\n"
	.string "been training hard\n"
	.string "every single day."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder if that\n"
	.string "Mr.Prog can actually\n"
	.string "defeat anything..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878C214_unk12
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "A while ago,I saw"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that Mr.Prog delete\n"
	.string "a virus with his\n"
	.string "incredible power!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "His training paid\n"
	.string "off..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878C214_unk13

	def_text_script CompText878C214_unk14

	def_text_script CompText878C214_unk15
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THE ONLY THING YOU\n"
	.string "CAN TRUST TO THE END\n"
	.string "IS YOUR OWN POWER."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I THINK I'VE GONE A\n"
	.string "LITTLE BIT TOO FAR..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878C214_unk16
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "........"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878C214_unk17
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Aghhhhhh..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878C214_unk18

	def_text_script CompText878C214_unk19

	def_text_script CompText878C214_unk20

	def_text_script CompText878C214_unk21

	def_text_script CompText878C214_unk22

	def_text_script CompText878C214_unk23

	def_text_script CompText878C214_unk24

	def_text_script CompText878C214_unk25

	def_text_script CompText878C214_unk26

	def_text_script CompText878C214_unk27

	def_text_script CompText878C214_unk28

	def_text_script CompText878C214_unk29

	def_text_script CompText878C214_unk30

	def_text_script CompText878C214_unk31

	def_text_script CompText878C214_unk32

	def_text_script CompText878C214_unk33

	def_text_script CompText878C214_unk34

	def_text_script CompText878C214_unk35

	def_text_script CompText878C214_unk36

	def_text_script CompText878C214_unk37

	def_text_script CompText878C214_unk38

	def_text_script CompText878C214_unk39

	def_text_script CompText878C214_unk40

	def_text_script CompText878C214_unk41

	def_text_script CompText878C214_unk42

	def_text_script CompText878C214_unk43

	def_text_script CompText878C214_unk44

	def_text_script CompText878C214_unk45

	def_text_script CompText878C214_unk46

	def_text_script CompText878C214_unk47

	def_text_script CompText878C214_unk48

	def_text_script CompText878C214_unk49

	def_text_script CompText878C214_unk50

	def_text_script CompText878C214_unk51

	def_text_script CompText878C214_unk52

	def_text_script CompText878C214_unk53

	def_text_script CompText878C214_unk54

	def_text_script CompText878C214_unk55

	def_text_script CompText878C214_unk56

	def_text_script CompText878C214_unk57

	def_text_script CompText878C214_unk58

	def_text_script CompText878C214_unk59

	def_text_script CompText878C214_unk60

	def_text_script CompText878C214_unk61

	def_text_script CompText878C214_unk62

	def_text_script CompText878C214_unk63

	def_text_script CompText878C214_unk64

	def_text_script CompText878C214_unk65

	def_text_script CompText878C214_unk66

	def_text_script CompText878C214_unk67

	def_text_script CompText878C214_unk68

	def_text_script CompText878C214_unk69

	