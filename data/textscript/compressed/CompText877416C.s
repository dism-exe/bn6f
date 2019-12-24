	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877416C::
	.word 0x4CC00

	text_archive_start

	def_text_script CompText877416C_unk0
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: CompText877416C_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x1B
	ts_msg_open
	.string "How about it...\n"
	.string "Want a stuffed\n"
	.string "animal?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...What? No?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I see..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877416C_unk1
	ts_check_flag [
		flag: 0xE08,
		jumpIfTrue: CompText877416C_unk8_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "You look extremely\n"
	.string "nervous..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You should gaze at\n"
	.string "some fish and relax."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877416C_unk2
	ts_check_flag [
		flag: 0xE08,
		jumpIfTrue: CompText877416C_unk9_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "Everyday...\n"
	.string "Fish,fish,fish\n"
	.string "fish,fish! Enough!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When the Expo opens\n"
	.string "you have to take me!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877416C_unk3
	ts_mugshot_show mugshot=0x17
	ts_msg_open
	.string "Fish-ity,fish,fish!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "My grandma and\n"
	.string "grandpa have plans\n"
	.string "today,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "so I came alone."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877416C_unk4

	def_text_script CompText877416C_unk5
	ts_mugshot_show mugshot=0x1B
	ts_msg_open
	.string "Not many\n"
	.string "customers..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's like this on\n"
	.string "weekdays."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Customers from the\n"
	.string "Aquarium usually\n"
	.string "come in on weekends!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877416C_unk6
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "The Expo looks like\n"
	.string "it's going to open\n"
	.string "on schedule!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now I really can't\n"
	.string "wait!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877416C_unk7
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "Seaside Town will\n"
	.string "have a pavilion at\n"
	.string "the Expo."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If you get the\n"
	.string "chance you should\n"
	.string "check it out."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877416C_unk8
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "Ahhh,fish are great!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877416C_unk9
	ts_mugshot_show mugshot=0xE
	ts_msg_open
	.string "My boyfriend loves\n"
	.string "fish!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But if he loves\n"
	.string "them that much,he\n"
	.string "should marry one!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877416C_unk10
	ts_mugshot_show mugshot=0x17
	ts_msg_open
	.string "FISHITY FISH!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877416C_unk11
	ts_mugshot_show mugshot=0x19
	ts_msg_open
	.string "Hohoho..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "For my granddaughter\n"
	.string "I'd even line up\n"
	.string "before the opening!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877416C_unk12
	ts_mugshot_show mugshot=0x1A
	ts_msg_open
	.string "We will go to the\n"
	.string "Aquarium early,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and stay there\n"
	.string "until we get bored."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "My granddaughter\n"
	.string "loves fish,you know?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877416C_unk13

	def_text_script CompText877416C_unk14

	def_text_script CompText877416C_unk15
	ts_msg_open
	.string "A CopyBot..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It got damaged by an\n"
	.string "attack in battle...\n"
	.string "It can't move..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText877416C_unk16
	ts_check_flag [
		flag: 0xE80,
		jumpIfTrue: CompText877416C_unk15_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "Kyyyyyyyaaaaah!!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xE7F
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText877416C_unk17
	ts_check_flag [
		flag: 0xE82,
		jumpIfTrue: CompText877416C_unk15_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x43
	ts_msg_open
	.string "We are going to rule\n"
	.string "this world! Don't\n"
	.string "get in our way!"
	ts_key_wait any=0x0
	ts_flag_set flag=0xE81
	ts_flag_set flag=0x1715
	ts_end

	def_text_script CompText877416C_unk18

	def_text_script CompText877416C_unk19

	