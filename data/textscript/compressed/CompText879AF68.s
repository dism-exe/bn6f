	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879AF68::
	.word 0x74F00

	text_archive_start

	def_text_script CompText879AF68_unk0

	def_text_script CompText879AF68_unk1

	def_text_script CompText879AF68_unk2

	def_text_script CompText879AF68_unk3

	def_text_script CompText879AF68_unk4

	def_text_script CompText879AF68_unk5

	def_text_script CompText879AF68_unk6

	def_text_script CompText879AF68_unk7

	def_text_script CompText879AF68_unk8

	def_text_script CompText879AF68_unk9

	def_text_script CompText879AF68_unk10

	def_text_script CompText879AF68_unk11

	def_text_script CompText879AF68_unk12

	def_text_script CompText879AF68_unk13

	def_text_script CompText879AF68_unk14

	def_text_script CompText879AF68_unk15
	ts_flag_set 0x46, 0x6
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText879AF68_unk16

	def_text_script CompText879AF68_unk17
	ts_check_flag 0x7C, 0x6, 0x12, 0xFF
	ts_flag_set 0x7C, 0x6
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText879AF68_unk18

	def_text_script CompText879AF68_unk19

	def_text_script CompText879AF68_unk20

	def_text_script CompText879AF68_unk21

	def_text_script CompText879AF68_unk22

	def_text_script CompText879AF68_unk23

	def_text_script CompText879AF68_unk24

	def_text_script CompText879AF68_unk25

	def_text_script CompText879AF68_unk26

	def_text_script CompText879AF68_unk27

	def_text_script CompText879AF68_unk28

	def_text_script CompText879AF68_unk29

	def_text_script CompText879AF68_unk30

	def_text_script CompText879AF68_unk31

	def_text_script CompText879AF68_unk32

	def_text_script CompText879AF68_unk33

	def_text_script CompText879AF68_unk34

	def_text_script CompText879AF68_unk35

	def_text_script CompText879AF68_unk36

	def_text_script CompText879AF68_unk37

	def_text_script CompText879AF68_unk38

	def_text_script CompText879AF68_unk39

	def_text_script CompText879AF68_unk40

	def_text_script CompText879AF68_unk41

	def_text_script CompText879AF68_unk42

	def_text_script CompText879AF68_unk43

	def_text_script CompText879AF68_unk44

	def_text_script CompText879AF68_unk45

	def_text_script CompText879AF68_unk46

	def_text_script CompText879AF68_unk47

	def_text_script CompText879AF68_unk48

	def_text_script CompText879AF68_unk49

	def_text_script CompText879AF68_unk50
	ts_check_flag 0x58, 0x8, 0x33, 0xFF
	ts_flag_set 0x58, 0x8
	ts_msg_open
	ts_mugshot_show 0x46
	.string "You're an Operator\n"
	.string "Navi Selection Test\n"
	.string "participant,right?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is the\n"
	.string "\"cyberseal\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Can you see it?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe if you stand\n"
	.string "on your tip toes\n"
	.string "you can..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "At the Aquarium HP,\n"
	.string "the seal is used as\n"
	.string "a visual."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Congratulations\n"
	.string "on passing the\n"
	.string "first test!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But don't be too\n"
	.string "proud of yourself!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The tests will\n"
	.string "keep on coming!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The next test is..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "To find a\n"
	.string "\"fish that cannot\n"
	.string " swim\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here's a hint...\n"
	.string "\"You can't find it\n"
	.string " in the real world!\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "Use your brain and\n"
	.string "solve the riddle!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879AF68_unk51
	ts_msg_open
	ts_mugshot_show 0x46
	.string "The tests will\n"
	.string "keep coming!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The next test is to\n"
	.string "find a \"fish that\n"
	.string "cannot swim\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Huh? You'd like\n"
	.string "a hint?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"A fish that\n"
	.string " cannot swim\" is\n"
	.string "a tasty snack."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Heheh...\n"
	.string "Did you get it?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879AF68_unk52
	ts_check_flag 0x58, 0x8, 0x35, 0xFF
	ts_flag_set 0x58, 0x8
	ts_msg_open
	ts_mugshot_show 0x45
	.string "You're an Operator\n"
	.string "Navi Selection Test\n"
	.string "participant,right?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is the\n"
	.string "\"cyberseal\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Can you see it?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe if you stand\n"
	.string "on your tip toes\n"
	.string "you can..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "At the Aquarium HP,\n"
	.string "the seal is used as\n"
	.string "a visual."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Congratulations\n"
	.string "on passing the\n"
	.string "first test!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But don't be too\n"
	.string "proud of yourself!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The tests will\n"
	.string "keep on coming!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The next test is..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "To find a\n"
	.string "\"fish that cannot\n"
	.string " swim\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here's a hint...\n"
	.string "\"You can't find it\n"
	.string " in the real world!\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "Go out there and\n"
	.string "do your best!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879AF68_unk53
	ts_msg_open
	ts_mugshot_show 0x45
	.string "What is a\n"
	.string "\"fish that cannot\n"
	.string " swim\"? Do you know?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here's a hint for\n"
	.string "those that are\n"
	.string "stuck!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"A fish that\n"
	.string " cannot swim\"\n"
	.string "floats in oil!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Did that help?"
	ts_key_wait 0x0
	ts_end

	