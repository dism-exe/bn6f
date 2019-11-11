	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D2234::
	.word 0x53200

	text_archive_start

	def_text_script CompText87D2234_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "*huff,huff...*\n"
	.string "What's with these\n"
	.string "never-ending stairs?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm getting so\n"
	.string "tired...\n"
	.string "*huff,huff...*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87D2234_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Look up there!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87D2234_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Huh!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D2234_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Vic!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D2234_unk4
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "It's the brat again!\n"
	.string "Don't you ever get\n"
	.string "tired!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D2234_unk5
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "If he's here,then\n"
	.string "that means JudgeMan\n"
	.string "is... *sniffle*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x2B
	.string "Don't be so down,\n"
	.string "Ito..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is how life\n"
	.string "is..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You've known since\n"
	.string "the day you were\n"
	.string "born,right?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x2D
	.string "I know..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x2B
	.string "Hey,useless!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Vic!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Stop those two from\n"
	.string "getting any further!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D2234_unk6
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "What am I supposed\n"
	.string "to do!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87D2234_unk7
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "You want to be of\n"
	.string "some use?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Then,YOU think of\n"
	.string "something!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87D2234_unk8
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "Tsk! It's not that\n"
	.string "easy to come up with\n"
	.string "something by myself!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Curses,guess I've\n"
	.string "just gotta try it!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87D2234_unk9
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "ElementMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87D2234_unk10
	ts_mugshot_show 0x56
	ts_msg_open
	.string "PIKIRARAPIKIRA...\n"
	.string "(Roger...)"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D2234_unk11
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "See,Yuika!\n"
	.string "I CAN do something!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87D2234_unk12
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "Heh,very nice,Vic.\n"
	.string "Tee,hee..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But it looks like\n"
	.string "little boy Lan's\n"
	.string "going to get you!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87D2234_unk13
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "Huh?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87D2234_unk14
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Stop!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D2234_unk15
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "Urk!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D2234_unk16
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I've got you now!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script CompText87D2234_unk17
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "Hmph,playtime's\n"
	.string "over! You think you\n"
	.string "can catch me? Ha!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D2234_unk18
	ts_mugshot_show 0x0
	ts_msg_open
	.string "How did he!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 19

	def_text_script CompText87D2234_unk19
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "Later,brat!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "After we get\n"
	.string "Dr.Wily's Cybeast,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you can bet we'll be\n"
	.string "after yours!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Stop them,\n"
	.string "ElementMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x56
	.string "PIKIRARAPIKIRA\n"
	.string "(Roger.)"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D2234_unk20
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,jack me in!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 21

	def_text_script CompText87D2234_unk21
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Right!\n"
	.string "Let's do it,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_control_lock
	ts_text_speed 0x1
	.string "Jack in!"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "MegaMan,"
	ts_wait 0xA, 0x0
	.string "\n"
	.string "Execute!!"
	ts_wait 0x1E, 0x0
	ts_control_unlock
	ts_end

	