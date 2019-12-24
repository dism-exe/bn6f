	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878460C::
	.word 0x3DD00

	text_archive_start

	def_text_script CompText878460C_unk0
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: CompText878460C_unk10_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: CompText878460C_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "YOU PROBABLY SHOULD\n"
	.string "STAY AWAY FROM\n"
	.string "CENTRALAREA3..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OR YOU WILL MAKE\n"
	.string "THE NETPOLICE MAD!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878460C_unk1
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: CompText878460C_unk11_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: CompText878460C_unk6_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "I went to check out\n"
	.string "CentralArea3,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and the NetPolice\n"
	.string "there were putting\n"
	.string "on a show of force."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878460C_unk2
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: CompText878460C_unk7_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "The Underground...\n"
	.string "Legendary resting\n"
	.string "place of Cybeasts..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I want to check it\n"
	.string "out,but it's too\n"
	.string "scary!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878460C_unk3

	def_text_script CompText878460C_unk4

	def_text_script CompText878460C_unk5
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "THE EXPO APPEARS\n"
	.string "TO BE OPENING ON\n"
	.string "TIME!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THAT'S GREAT!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878460C_unk6
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "The Expo... Lots of\n"
	.string "things from around\n"
	.string "the world will be"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "there!\n"
	.string "I can't wait!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878460C_unk7
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "The Expo?\n"
	.string "I don't care..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't like\n"
	.string "crowds..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878460C_unk8

	def_text_script CompText878460C_unk9

	def_text_script CompText878460C_unk10
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "I HEAR TODAY IS\n"
	.string "THE PRE-OPENING OF\n"
	.string "THE EXPO."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "THE PEOPLE WHO GOT\n"
	.string "PICKED SURE ARE\n"
	.string "LUCKY!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878460C_unk11
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "If you go to the\n"
	.string "Expo,there are many\n"
	.string "places to jack in!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878460C_unk12

	def_text_script CompText878460C_unk13

	def_text_script CompText878460C_unk14

	def_text_script CompText878460C_unk15
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "We will destroy\n"
	.string "everything in this\n"
	.string "world!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xEA9
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText878460C_unk16
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Hey! Go crawl back\n"
	.string "into your cave!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xEAB
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText878460C_unk17

	def_text_script CompText878460C_unk18

	def_text_script CompText878460C_unk19

	def_text_script CompText878460C_unk20
	ts_mugshot_show mugshot=0x3E
	ts_msg_open
	.string "Wahhhh..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878460C_unk21
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "........"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText878460C_unk22

	def_text_script CompText878460C_unk23

	def_text_script CompText878460C_unk24

	def_text_script CompText878460C_unk25

	def_text_script CompText878460C_unk26

	def_text_script CompText878460C_unk27

	def_text_script CompText878460C_unk28

	def_text_script CompText878460C_unk29

	def_text_script CompText878460C_unk30

	def_text_script CompText878460C_unk31

	def_text_script CompText878460C_unk32

	def_text_script CompText878460C_unk33

	def_text_script CompText878460C_unk34

	def_text_script CompText878460C_unk35

	def_text_script CompText878460C_unk36

	def_text_script CompText878460C_unk37

	def_text_script CompText878460C_unk38

	def_text_script CompText878460C_unk39

	def_text_script CompText878460C_unk40

	def_text_script CompText878460C_unk41

	def_text_script CompText878460C_unk42

	def_text_script CompText878460C_unk43

	def_text_script CompText878460C_unk44

	def_text_script CompText878460C_unk45

	def_text_script CompText878460C_unk46

	def_text_script CompText878460C_unk47

	def_text_script CompText878460C_unk48

	def_text_script CompText878460C_unk49

	def_text_script CompText878460C_unk50

	def_text_script CompText878460C_unk51

	def_text_script CompText878460C_unk52

	def_text_script CompText878460C_unk53

	def_text_script CompText878460C_unk54

	def_text_script CompText878460C_unk55

	def_text_script CompText878460C_unk56

	def_text_script CompText878460C_unk57

	def_text_script CompText878460C_unk58

	def_text_script CompText878460C_unk59

	def_text_script CompText878460C_unk60

	def_text_script CompText878460C_unk61

	def_text_script CompText878460C_unk62

	def_text_script CompText878460C_unk63

	def_text_script CompText878460C_unk64

	def_text_script CompText878460C_unk65

	def_text_script CompText878460C_unk66

	def_text_script CompText878460C_unk67

	def_text_script CompText878460C_unk68

	def_text_script CompText878460C_unk69

	