	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8781784::
	.word 0x63000

	text_archive_start

	def_text_script CompText8781784_unk0
	ts_check_flag 0x62, 0xA, 0x1, 0xFF
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Mr.Weather is over\n"
	.string "there. Make sure you\n"
	.string "check in with him."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk1
	ts_mugshot_show 0x41
	ts_msg_open
	.string "The test will\n"
	.string "now start!\n"
	.string "Good luck to you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Follow this walkway\n"
	.string "down to the end,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "where it will lead\n"
	.string "you outside."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Once you're outside,\n"
	.string "just follow the road\n"
	.string "to a spacious area."
	ts_key_wait 0x0
	ts_clear_msg
	.string "In that area,there\n"
	.string "is a dish antenna."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you jack in\n"
	.string "there,you can\n"
	.string "go on the Net."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk2
	ts_mugshot_show 0x16
	ts_msg_open
	.string "The umbrella you got\n"
	.string "earlier is very\n"
	.string "strong."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You could probably\n"
	.string "even use it as a\n"
	.string "parachute"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to float down if you\n"
	.string "wanted!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk3

	def_text_script CompText8781784_unk4

	def_text_script CompText8781784_unk5
	ts_mugshot_show 0x41
	ts_msg_open
	.string "I heard the story...\n"
	.string "But,to take on those\n"
	.string "Undernet guys..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wouldn't have been\n"
	.string "able to do a\n"
	.string "thing..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk6

	def_text_script CompText8781784_unk7

	def_text_script CompText8781784_unk8

	def_text_script CompText8781784_unk9

	def_text_script CompText8781784_unk10

	def_text_script CompText8781784_unk11

	def_text_script CompText8781784_unk12

	def_text_script CompText8781784_unk13

	def_text_script CompText8781784_unk14

	def_text_script CompText8781784_unk15

	def_text_script CompText8781784_unk16

	def_text_script CompText8781784_unk17

	def_text_script CompText8781784_unk18

	def_text_script CompText8781784_unk19

	def_text_script CompText8781784_unk20
	ts_mugshot_show 0x27
	ts_msg_open
	.string "You are taking the\n"
	.string "test as well...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Heh,good luck..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk21
	ts_mugshot_show 0x24
	ts_msg_open
	.string "You're taking the\n"
	.string "test too?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Good! We came for\n"
	.string "a good battle!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk22
	ts_mugshot_show 0x26
	ts_msg_open
	.string "The test,huh...\n"
	.string "... Good luck."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk23
	ts_mugshot_show 0x25
	ts_msg_open
	.string "The Operator Navi\n"
	.string "test is"
	ts_key_wait 0x0
	ts_clear_msg
	.string "a whole lot tougher\n"
	.string "than I thought!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk24

	def_text_script CompText8781784_unk25

	def_text_script CompText8781784_unk26

	def_text_script CompText8781784_unk27

	def_text_script CompText8781784_unk28

	def_text_script CompText8781784_unk29

	def_text_script CompText8781784_unk30

	def_text_script CompText8781784_unk31

	def_text_script CompText8781784_unk32

	def_text_script CompText8781784_unk33

	def_text_script CompText8781784_unk34

	def_text_script CompText8781784_unk35

	def_text_script CompText8781784_unk36

	def_text_script CompText8781784_unk37

	def_text_script CompText8781784_unk38

	def_text_script CompText8781784_unk39

	def_text_script CompText8781784_unk40

	def_text_script CompText8781784_unk41
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Mr.Weather was\n"
	.string "broken by something\n"
	.string "or another..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "but we worked really\n"
	.string "hard to rebuild and\n"
	.string "normalize him."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781784_unk42

	def_text_script CompText8781784_unk43

	def_text_script CompText8781784_unk44

	def_text_script CompText8781784_unk45

	def_text_script CompText8781784_unk46
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Mr.Weather has been\n"
	.string "rebuilt better than\n"
	.string "ever!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We can control the\n"
	.string "weather in Cyber\n"
	.string "City again,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "so no need to worry!"
	ts_key_wait 0x0
	ts_end

	