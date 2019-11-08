	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87709CC::
	.word 0x44B00

	text_archive_start

	def_text_script CompText87709CC_unk0
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Hmm...\n"
	.string "Grading tests on a\n"
	.string "day off..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's not a good\n"
	.string "sign,is it?\n"
	.string "Busy,busy..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hey,wait! You can't\n"
	.string "just come into the\n"
	.string "Teachers' Room when"
	ts_key_wait 0x0
	ts_clear_msg
	.string "there's no school!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87709CC_unk1

	def_text_script CompText87709CC_unk2

	def_text_script CompText87709CC_unk3

	def_text_script CompText87709CC_unk4

	def_text_script CompText87709CC_unk5

	def_text_script CompText87709CC_unk6

	def_text_script CompText87709CC_unk7

	def_text_script CompText87709CC_unk8

	def_text_script CompText87709CC_unk9

	def_text_script CompText87709CC_unk10
	ts_check_flag 0x10, 0xA, 0xF, 0xFF
	ts_mugshot_show 0xD
	ts_msg_open
	.string "*yawn*\n"
	.string "It's time\n"
	.string "to go home!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Today's been another\n"
	.string "tiring day!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87709CC_unk11
	ts_check_flag 0x10, 0xA, 0x10, 0xFF
	ts_mugshot_show 0xE
	ts_msg_open
	.string "My boyfriend and I\n"
	.string "are gonna see a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "professional\n"
	.string "baseball game\n"
	.string "tonight!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Oops! Forget I\n"
	.string "said anything!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87709CC_unk12

	def_text_script CompText87709CC_unk13

	def_text_script CompText87709CC_unk14

	def_text_script CompText87709CC_unk15
	ts_mugshot_show 0xD
	ts_msg_open
	.string "I have to call all\n"
	.string "the parents and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "check that every\n"
	.string "student made it home\n"
	.string "safely or else...!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You better hurry up\n"
	.string "and get on home,too!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87709CC_unk16
	ts_mugshot_show 0xE
	ts_msg_open
	.string "Aww,because of the\n"
	.string "crazy weather,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "my date tonight has\n"
	.string "been canceled!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is terrible!\n"
	.string "I'll have to work\n"
	.string "all evening now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87709CC_unk17

	def_text_script CompText87709CC_unk18

	def_text_script CompText87709CC_unk19

	def_text_script CompText87709CC_unk20

	def_text_script CompText87709CC_unk21

	def_text_script CompText87709CC_unk22

	def_text_script CompText87709CC_unk23

	def_text_script CompText87709CC_unk24

	def_text_script CompText87709CC_unk25

	def_text_script CompText87709CC_unk26

	def_text_script CompText87709CC_unk27

	def_text_script CompText87709CC_unk28

	def_text_script CompText87709CC_unk29

	def_text_script CompText87709CC_unk30

	def_text_script CompText87709CC_unk31

	def_text_script CompText87709CC_unk32

	def_text_script CompText87709CC_unk33

	def_text_script CompText87709CC_unk34

	def_text_script CompText87709CC_unk35

	def_text_script CompText87709CC_unk36

	def_text_script CompText87709CC_unk37

	def_text_script CompText87709CC_unk38

	def_text_script CompText87709CC_unk39

	def_text_script CompText87709CC_unk40
	ts_mugshot_show 0xD
	ts_msg_open
	.string "The Principal of\n"
	.string "this school is Mayor\n"
	.string "Cain."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He's so busy that\n"
	.string "he's always here\n"
	.string "until late."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87709CC_unk41

	def_text_script CompText87709CC_unk42

	def_text_script CompText87709CC_unk43

	def_text_script CompText87709CC_unk44

	def_text_script CompText87709CC_unk45
	ts_check_flag 0x24, 0xC, 0x2F, 0xFF
	ts_check_flag 0x22, 0xC, 0x2E, 0xFF
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Mayor Cain... He's\n"
	.string "hard at work,even\n"
	.string "on his day off..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder if he's\n"
	.string "staying healthy?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87709CC_unk46
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Wh-What was that\n"
	.string "ruckus just now?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87709CC_unk47
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Th-That looked like\n"
	.string "Mayor Cain being\n"
	.string "led away...?"
	ts_key_wait 0x0
	ts_end

	