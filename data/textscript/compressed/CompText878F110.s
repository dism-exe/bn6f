	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878F110::
	.word 0x31100

	text_archive_start

	def_text_script CompText878F110_unk0
	ts_mugshot_show [
		mugshot: 0x3C,
	]
	ts_msg_open
	.string "WELCOME TO\n"
	.string "GREEN AREA1!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878F110_unk1
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
	ts_mugshot_show [
		mugshot: 0x46,
	]
	ts_msg_open
	.string "Green Area has\n"
	.string "many Cyber Minus"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ions,so your skin\n"
	.string "will become very\n"
	.string "beautiful."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878F110_unk2
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
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "The Cyber Minus\n"
	.string "Ions are going into\n"
	.string "my skin!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878F110_unk3

	def_text_script CompText878F110_unk4

	def_text_script CompText878F110_unk5
	ts_mugshot_show [
		mugshot: 0x46,
	]
	ts_msg_open
	.string "*Huff* *Huff*...\n"
	.string "Walking like this\n"
	.string "allows the Minus"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ions to penetrate my\n"
	.string "skin!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878F110_unk6
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "Ewww! What kind of\n"
	.string "girl do you think\n"
	.string "I am!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878F110_unk7
	ts_mugshot_show [
		mugshot: 0x3E,
	]
	ts_msg_open
	.string "Hey girl,wanna go\n"
	.string "to the NetCafe with\n"
	.string "me?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878F110_unk8

	def_text_script CompText878F110_unk9

	def_text_script CompText878F110_unk10
	ts_mugshot_show [
		mugshot: 0x46,
	]
	ts_msg_open
	.string "The Expo,huh?\n"
	.string "I want to go with\n"
	.string "a cool guy!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878F110_unk11
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "I wonder if lots of\n"
	.string "Navi hotties will\n"
	.string "be at the Expo."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878F110_unk12

	def_text_script CompText878F110_unk13

	def_text_script CompText878F110_unk14

	def_text_script CompText878F110_unk15
	ts_mugshot_show [
		mugshot: 0x46,
	]
	ts_msg_open
	.string "You can't think of\n"
	.string "us as your normal\n"
	.string "kind of girls..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878F110_unk16
	ts_mugshot_show [
		mugshot: 0x45,
	]
	ts_msg_open
	.string "As special Riot\n"
	.string "NetPolice members"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "we sure make a\n"
	.string "pretty pair!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878F110_unk17
	ts_mugshot_show [
		mugshot: 0x43,
	]
	ts_msg_open
	.string "........"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText878F110_unk18

	def_text_script CompText878F110_unk19

	def_text_script CompText878F110_unk20

	def_text_script CompText878F110_unk21

	def_text_script CompText878F110_unk22

	def_text_script CompText878F110_unk23

	def_text_script CompText878F110_unk24

	def_text_script CompText878F110_unk25

	def_text_script CompText878F110_unk26

	def_text_script CompText878F110_unk27

	def_text_script CompText878F110_unk28

	def_text_script CompText878F110_unk29

	def_text_script CompText878F110_unk30

	def_text_script CompText878F110_unk31

	def_text_script CompText878F110_unk32

	def_text_script CompText878F110_unk33

	def_text_script CompText878F110_unk34

	def_text_script CompText878F110_unk35

	def_text_script CompText878F110_unk36

	def_text_script CompText878F110_unk37

	def_text_script CompText878F110_unk38

	def_text_script CompText878F110_unk39

	def_text_script CompText878F110_unk40

	def_text_script CompText878F110_unk41

	def_text_script CompText878F110_unk42

	def_text_script CompText878F110_unk43

	def_text_script CompText878F110_unk44

	def_text_script CompText878F110_unk45

	def_text_script CompText878F110_unk46

	def_text_script CompText878F110_unk47

	def_text_script CompText878F110_unk48

	def_text_script CompText878F110_unk49

	def_text_script CompText878F110_unk50

	def_text_script CompText878F110_unk51

	def_text_script CompText878F110_unk52

	def_text_script CompText878F110_unk53

	def_text_script CompText878F110_unk54

	def_text_script CompText878F110_unk55

	def_text_script CompText878F110_unk56

	def_text_script CompText878F110_unk57

	def_text_script CompText878F110_unk58

	def_text_script CompText878F110_unk59

	def_text_script CompText878F110_unk60

	def_text_script CompText878F110_unk61

	def_text_script CompText878F110_unk62

	def_text_script CompText878F110_unk63

	def_text_script CompText878F110_unk64

	def_text_script CompText878F110_unk65

	def_text_script CompText878F110_unk66

	def_text_script CompText878F110_unk67

	def_text_script CompText878F110_unk68

	def_text_script CompText878F110_unk69

	