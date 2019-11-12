	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8774F48::
	.word 0x37B00

	text_archive_start

	def_text_script CompText8774F48_unk0
	ts_msg_open
	.string "*Squawk!*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774F48_unk1
	ts_msg_open
	.string "When a turtle comes\n"
	.string "out of the water,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it looks like\n"
	.string "a rock..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774F48_unk2
	ts_msg_open
	.string "The nautilus ran\n"
	.string "from the water!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774F48_unk3

	def_text_script CompText8774F48_unk4

	def_text_script CompText8774F48_unk5

	def_text_script CompText8774F48_unk6

	def_text_script CompText8774F48_unk7

	def_text_script CompText8774F48_unk8

	def_text_script CompText8774F48_unk9
	ts_check_flag 0x54, 0x5, 0xFF, 0xB
	ts_mugshot_show 0x14
	ts_msg_open
	.string "......"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774F48_unk10
	ts_mugshot_show 0xE
	ts_msg_open
	.string "Welcome to the\n"
	.string "Aquarium."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Enjoy the world\n"
	.string "under the sea!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774F48_unk11
	ts_mugshot_show 0x14
	ts_msg_open
	.string "......"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "...Let's check\n"
	.string "out the Aquarium!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x14
	.string "...OK."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774F48_unk12
	ts_mugshot_show 0x15
	ts_msg_open
	.string "There is a voice\n"
	.string "guide at each of the\n"
	.string "Aquarium's tanks."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can learn lots\n"
	.string "from these voice\n"
	.string "guides!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Go ahead and tell\n"
	.string "your friend!!\n"
	.string "It's great!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774F48_unk13
	ts_mugshot_show 0xC
	ts_msg_open
	.string "Hey,did ya hear?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "No matter where\n"
	.string "you get stung by a\n"
	.string "jellyfish..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IT HURTS!!\n"
	.string "Trust me... I know!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774F48_unk14
	ts_mugshot_show 0x8
	ts_msg_open
	.string "...Hehehehe...\n"
	.string "He sure is makin'\n"
	.string "a funny face!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can never beat a\n"
	.string "Sunfish in a staring\n"
	.string "contest!! Never!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774F48_unk15
	ts_check_flag 0x1C, 0x5, 0x10, 0xFF
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Everyone remaining\n"
	.string "in the Aquarium,take\n"
	.string "cover quickly!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774F48_unk16
	ts_mugshot_show 0x15
	ts_msg_open
	.string "You! What are you\n"
	.string "doing!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Everyone has\n"
	.string "already taken cover!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So hurry up and\n"
	.string "get to a safe place!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8774F48_unk17

	def_text_script CompText8774F48_unk18

	def_text_script CompText8774F48_unk19

	def_text_script CompText8774F48_unk20

	def_text_script CompText8774F48_unk21

	def_text_script CompText8774F48_unk22

	def_text_script CompText8774F48_unk23

	def_text_script CompText8774F48_unk24

	def_text_script CompText8774F48_unk25

	def_text_script CompText8774F48_unk26

	def_text_script CompText8774F48_unk27

	def_text_script CompText8774F48_unk28

	def_text_script CompText8774F48_unk29

	def_text_script CompText8774F48_unk30

	