	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8781048::
	.word 0x5FA00

	text_archive_start

	def_text_script CompText8781048_unk0
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Welcome to Sky Town!\n"
	.string "Looks like everyone\n"
	.string "is just about here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Shall we get started\n"
	.string "then...?"
	ts_key_wait 0x0
	ts_flag_set 0x61, 0xA
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText8781048_unk1
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Yo,you're late!\n"
	.string "Good luck to you!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781048_unk2
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Ah... I'm so\n"
	.string "nervous!\n"
	.string "Good luck,kid!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781048_unk3

	def_text_script CompText8781048_unk4

	def_text_script CompText8781048_unk5
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Alright!!\n"
	.string "Let's go!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781048_unk6
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Wa,wa,wa... I have\n"
	.string "to review my\n"
	.string "research notes..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If something happens\n"
	.string "in this area,then I\n"
	.string "should use a sword-"
	ts_key_wait 0x0
	ts_clear_msg
	.string "type chip and do\n"
	.string "this,and..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781048_unk7

	def_text_script CompText8781048_unk8

	def_text_script CompText8781048_unk9

	def_text_script CompText8781048_unk10
	ts_check_flag 0x29, 0x17, 0xB, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Send MegaMan into\n"
	.string "the CopyBot?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_end

	def_text_script CompText8781048_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Return to the PET?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xC, 0xFF, 0xFF
	ts_end

	def_text_script CompText8781048_unk12
	ts_flag_set 0x1A, 0x17
	ts_flag_set 0x15, 0x17
	ts_end

	def_text_script CompText8781048_unk13
	ts_msg_open
	.string "A CopyBot..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But there is no need\n"
	.string "to use it right\n"
	.string "now..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781048_unk14

	def_text_script CompText8781048_unk15
	ts_mugshot_show 0x10
	ts_msg_open
	.string "W-What? You're\n"
	.string "going to the\n"
	.string "Undernet?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Sorry,but that's the\n"
	.string "one place I can't\n"
	.string "help you in!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's too horrible!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Brrrr... *shiver...*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781048_unk16

	def_text_script CompText8781048_unk17

	def_text_script CompText8781048_unk18

	def_text_script CompText8781048_unk19

	def_text_script CompText8781048_unk20
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Ummmm..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781048_unk21

	def_text_script CompText8781048_unk22

	def_text_script CompText8781048_unk23

	def_text_script CompText8781048_unk24

	def_text_script CompText8781048_unk25

	def_text_script CompText8781048_unk26

	def_text_script CompText8781048_unk27

	def_text_script CompText8781048_unk28

	def_text_script CompText8781048_unk29

	def_text_script CompText8781048_unk30

	def_text_script CompText8781048_unk31

	def_text_script CompText8781048_unk32

	def_text_script CompText8781048_unk33

	def_text_script CompText8781048_unk34

	def_text_script CompText8781048_unk35

	def_text_script CompText8781048_unk36

	def_text_script CompText8781048_unk37

	def_text_script CompText8781048_unk38

	def_text_script CompText8781048_unk39

	def_text_script CompText8781048_unk40
	ts_mugshot_show 0x41
	ts_msg_open
	.string "*huff! huff! huff!*"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We have been so busy\n"
	.string "with reporting the\n"
	.string "weather recently"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that we can not have\n"
	.string "you just hanging\n"
	.string "around!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "*huff! huff! huff!*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8781048_unk41

	def_text_script CompText8781048_unk42

	def_text_script CompText8781048_unk43

	def_text_script CompText8781048_unk44

	def_text_script CompText8781048_unk45
	ts_mugshot_show 0x41
	ts_msg_open
	.string "*huff! huff! huff!*"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We're really too\n"
	.string "busy here!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now's not the time\n"
	.string "to talk about the\n"
	.string "Expo!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "*huff! huff! huff!*"
	ts_key_wait 0x0
	ts_end

	