	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B956C::
	.word 0x5C500

	text_archive_start

	def_text_script CompText87B956C_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... I hope it\n"
	.string "recorded something!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B956C_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ah! It did!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87B956C_unk2
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Just as we thought,\n"
	.string "the Bot could see\n"
	.string "into the classroom."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87B956C_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Now,where's the\n"
	.string "footage of Dad...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... *gulp!*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B956C_unk4
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... There he is!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There's Dad!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87B956C_unk5
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Alright,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "With this,we can\n"
	.string "prove Dad's\n"
	.string "innocent!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87B956C_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK,let's hurry to\n"
	.string "the courthouse with\n"
	.string "this data!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87B956C_unk7
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Wait,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87B956C_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What,MegaMan? We've\n"
	.string "gotta hurry!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87B956C_unk9
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Maybe this Security\n"
	.string "Bot..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "saw one more very\n"
	.string "important thing."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87B956C_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Important thing...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87B956C_unk11
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... Yeah."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe he saw the\n"
	.string "person that jacked\n"
	.string "their Navi into the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "security camera,and\n"
	.string "erased all the data\n"
	.string "from after 4 P.M.!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "In other words,maybe\n"
	.string "he saw the real\n"
	.string "culprit!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B956C_unk12
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Here's the video\n"
	.string "from last night."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B956C_unk13
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "There's no one\n"
	.string "there..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87B956C_unk14
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Wait!\n"
	.string "I can hear\n"
	.string "footsteps!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Someone's coming in!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87B956C_unk15
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B956C_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Huh?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B956C_unk17
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Eh?\n"
	.string "What's...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why is the\n"
	.string "Prosecutor here...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Wh-What's going on!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87B956C_unk18
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... I don't want to\n"
	.string "believe it,but there\n"
	.string "is only one answer!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87B956C_unk19
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "N-No way..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=20

	def_text_script CompText87B956C_unk20
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "It looks like it..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The real culprit of\n"
	.string "this incident is the\n"
	.string "Prosecutor!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The person that\n"
	.string "framed Dad is him!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=21

	def_text_script CompText87B956C_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "But why?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why would the\n"
	.string "Prosecutor do\n"
	.string "something like this?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=22

	def_text_script CompText87B956C_unk22
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I'd like to know,\n"
	.string "too..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But right now,we're\n"
	.string "out of time."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's hurry up and\n"
	.string "get this data over\n"
	.string "to the courthouse!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=23

	def_text_script CompText87B956C_unk23
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Yeah!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B956C_unk24
	ts_mugshot_hide
	ts_msg_open
	ts_sound_play00 track=0x73
	.string "MegaMan got:\n"
	.string "\""
	ts_print_item [
		item: 0xD,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_end

	