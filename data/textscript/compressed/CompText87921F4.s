	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87921F4::
	.word 0x36500

	text_archive_start

	def_text_script CompText87921F4_unk0
	ts_mugshot_show mugshot=0x3C
	ts_msg_open
	.string "WELCOME TO\n"
	.string "SKY AREA1.\n"
	.string "ENJOY YOUR STAY..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87921F4_unk1
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: CompText87921F4_unk10_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: CompText87921F4_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "Lately there\n"
	.string "has been a lot\n"
	.string "of crime..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The Undernet is next\n"
	.string "to this area,so it's\n"
	.string "kind of scary..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87921F4_unk2
	ts_check_chapter [
		lower: 0x62,
		upper: 0x62,
		jumpIfInRange: CompText87921F4_unk11_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: CompText87921F4_unk6_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "I just heard this\n"
	.string "from a friend in\n"
	.string "Sky Area2..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Seems a lot of evil\n"
	.string "Navis are wandering\n"
	.string "in the Undernet..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87921F4_unk3

	def_text_script CompText87921F4_unk4

	def_text_script CompText87921F4_unk5
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "They're really\n"
	.string "going to hold the\n"
	.string "Expo?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've got a bad\n"
	.string "feeling about this!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87921F4_unk6
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "The Expo,huh?\n"
	.string "Sounds fun!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This should bring\n"
	.string "the attention of the\n"
	.string "world to Cyber City!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87921F4_unk7

	def_text_script CompText87921F4_unk8

	def_text_script CompText87921F4_unk9

	def_text_script CompText87921F4_unk10
	ts_mugshot_show mugshot=0x41
	ts_msg_open
	.string "The NetPolice have\n"
	.string "improved their\n"
	.string "patrols..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So it's OK to open\n"
	.string "the Expo!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87921F4_unk11
	ts_mugshot_show mugshot=0x45
	ts_msg_open
	.string "The Expo Site\n"
	.string "already looks like\n"
	.string "it's a lot of fun!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87921F4_unk12

	def_text_script CompText87921F4_unk13

	def_text_script CompText87921F4_unk14

	def_text_script CompText87921F4_unk15
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "I'm gonna pummel you\n"
	.string "back into the dirt!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xEB7
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText87921F4_unk16
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "I'm going to delete\n"
	.string "you! Get ready!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xEB9
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText87921F4_unk17

	def_text_script CompText87921F4_unk18

	def_text_script CompText87921F4_unk19

	def_text_script CompText87921F4_unk20

	def_text_script CompText87921F4_unk21

	def_text_script CompText87921F4_unk22

	def_text_script CompText87921F4_unk23

	def_text_script CompText87921F4_unk24

	def_text_script CompText87921F4_unk25

	def_text_script CompText87921F4_unk26

	def_text_script CompText87921F4_unk27

	def_text_script CompText87921F4_unk28

	def_text_script CompText87921F4_unk29

	def_text_script CompText87921F4_unk30

	def_text_script CompText87921F4_unk31

	def_text_script CompText87921F4_unk32

	def_text_script CompText87921F4_unk33

	def_text_script CompText87921F4_unk34

	def_text_script CompText87921F4_unk35

	def_text_script CompText87921F4_unk36

	def_text_script CompText87921F4_unk37

	def_text_script CompText87921F4_unk38

	def_text_script CompText87921F4_unk39

	def_text_script CompText87921F4_unk40

	def_text_script CompText87921F4_unk41

	def_text_script CompText87921F4_unk42

	def_text_script CompText87921F4_unk43

	def_text_script CompText87921F4_unk44

	def_text_script CompText87921F4_unk45

	def_text_script CompText87921F4_unk46

	def_text_script CompText87921F4_unk47

	def_text_script CompText87921F4_unk48

	def_text_script CompText87921F4_unk49

	def_text_script CompText87921F4_unk50

	def_text_script CompText87921F4_unk51

	def_text_script CompText87921F4_unk52

	def_text_script CompText87921F4_unk53

	def_text_script CompText87921F4_unk54

	def_text_script CompText87921F4_unk55

	def_text_script CompText87921F4_unk56

	def_text_script CompText87921F4_unk57

	def_text_script CompText87921F4_unk58

	def_text_script CompText87921F4_unk59

	def_text_script CompText87921F4_unk60

	def_text_script CompText87921F4_unk61

	def_text_script CompText87921F4_unk62

	def_text_script CompText87921F4_unk63

	def_text_script CompText87921F4_unk64

	def_text_script CompText87921F4_unk65

	def_text_script CompText87921F4_unk66

	def_text_script CompText87921F4_unk67

	def_text_script CompText87921F4_unk68

	def_text_script CompText87921F4_unk69

	