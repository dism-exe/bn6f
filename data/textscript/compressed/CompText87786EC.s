	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87786EC::
	.word 0x19300

	text_archive_start

	def_text_script CompText87786EC_unk0
	ts_check_chapter [
		lower: 0x23,
		upper: 0x23,
		jumpIfInRange: CompText87786EC_unk3_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x8
	ts_msg_open
	.string "BooooOOOooo!\n"
	.string "They aren't having\n"
	.string "the show today!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Boooooorrrriiinnng!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87786EC_unk1

	def_text_script CompText87786EC_unk2

	def_text_script CompText87786EC_unk3
	ts_mugshot_show mugshot=0x8
	ts_msg_open
	.string "Awww...\n"
	.string "They really aren't\n"
	.string "having a show."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's go home!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87786EC_unk4

	def_text_script CompText87786EC_unk5
	ts_check_chapter [
		lower: 0x25,
		upper: 0x25,
		jumpIfInRange: CompText87786EC_unk8_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "There are no guests!\n"
	.string "This isn't where the\n"
	.string "show is held..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87786EC_unk6

	def_text_script CompText87786EC_unk7

	def_text_script CompText87786EC_unk8
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "Yahhhhhh...\n"
	.string "Boooorrriiinnnggg!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87786EC_unk9

	def_text_script CompText87786EC_unk10
	ts_mugshot_show mugshot=0x16
	ts_msg_open
	.string "Huh?\n"
	.string "Today's show is\n"
	.string "already over!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sorry..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87786EC_unk11

	def_text_script CompText87786EC_unk12

	def_text_script CompText87786EC_unk13

	def_text_script CompText87786EC_unk14

	def_text_script CompText87786EC_unk15

	def_text_script CompText87786EC_unk16

	def_text_script CompText87786EC_unk17

	def_text_script CompText87786EC_unk18

	def_text_script CompText87786EC_unk19

	def_text_script CompText87786EC_unk20

	def_text_script CompText87786EC_unk21

	def_text_script CompText87786EC_unk22

	def_text_script CompText87786EC_unk23

	def_text_script CompText87786EC_unk24

	def_text_script CompText87786EC_unk25

	def_text_script CompText87786EC_unk26

	def_text_script CompText87786EC_unk27

	def_text_script CompText87786EC_unk28

	def_text_script CompText87786EC_unk29

	def_text_script CompText87786EC_unk30

	def_text_script CompText87786EC_unk31

	def_text_script CompText87786EC_unk32

	def_text_script CompText87786EC_unk33

	def_text_script CompText87786EC_unk34

	def_text_script CompText87786EC_unk35

	def_text_script CompText87786EC_unk36

	def_text_script CompText87786EC_unk37

	def_text_script CompText87786EC_unk38

	def_text_script CompText87786EC_unk39

	def_text_script CompText87786EC_unk40

	