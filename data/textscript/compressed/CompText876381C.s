	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876381C::
	.word 0x3DD00

	text_archive_start

	def_text_script CompText876381C_unk0
	ts_mugshot_show mugshot=0x9
	ts_msg_open
	.string "Hey... Lan!\n"
	.string "You came here the\n"
	.string "other day?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Did something\n"
	.string "happen?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876381C_unk1
	ts_check_chapter [
		lower: 0x63,
		upper: 0x64,
		jumpIfInRange: 0xF,
		jumpIfOutOfRange: 0xFF,
	]
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
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Lan went back to\n"
	.string "ACDC Town,didn't he?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876381C_unk2
	ts_check_chapter [
		lower: 0x63,
		upper: 0x64,
		jumpIfInRange: 0x10,
		jumpIfOutOfRange: 0xFF,
	]
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
	ts_check_flag [
		flag: 0xE08,
		jumpIfTrue: 0x4,
		jumpIfFalse: 0xFF,
	]
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "The 3 people who\n"
	.string "took a girl..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Haven't seen them.\n"
	.string "If I see them,I'll"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "be sure to remember\n"
	.string "it."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876381C_unk3
	ts_check_chapter [
		lower: 0x63,
		upper: 0x64,
		jumpIfInRange: 0x11,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x61,
		upper: 0x61,
		jumpIfInRange: 0x7,
		jumpIfOutOfRange: 0xFF,
	]
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "Seems like lots of\n"
	.string "things are happening\n"
	.string "in Cyber City..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876381C_unk4
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "Ahhh... Almost time\n"
	.string "to go to Violin\n"
	.string "Class."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876381C_unk5
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Dex and company?\n"
	.string "I haven't seen them."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Around this time,\n"
	.string "shouldn't they be at\n"
	.string "home using the Net?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876381C_unk6
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "I hear an Expo is\n"
	.string "opening in Cyber\n"
	.string "City."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "When it starts,I\n"
	.string "plan on going!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876381C_unk7
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "I've got my part-\n"
	.string "time job tonight...\n"
	.string "I'll work hard!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876381C_unk8

	def_text_script CompText876381C_unk9

	def_text_script CompText876381C_unk10
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Really,you're going\n"
	.string "to the Expo!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Cool!!!!\n"
	.string "I wanna go too!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876381C_unk11
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "Go to the Expo...?\n"
	.string "No way!! Really!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876381C_unk12

	def_text_script CompText876381C_unk13

	def_text_script CompText876381C_unk14

	def_text_script CompText876381C_unk15
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "THAT happened in\n"
	.string "Cyber City!?\n"
	.string "That's awful!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876381C_unk16
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "The Expo is lots\n"
	.string "of fun,right?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "...No way!\n"
	.string "That happened!?\n"
	.string "Really!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876381C_unk17
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "What happened in\n"
	.string "Cyber City!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Are you pulling my\n"
	.string "leg,kid?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText876381C_unk18

	def_text_script CompText876381C_unk19

	