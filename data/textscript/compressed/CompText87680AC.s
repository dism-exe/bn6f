	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87680AC::
	.word 0x7EA00

	text_archive_start

	def_text_script CompText87680AC_unk0
	ts_check_flag 0x63, 0x4, 0x1, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Mom! I'm gonna\n"
	.string "go explore outside!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x6
	.string "OK! Take care and\n"
	.string "don't come home too\n"
	.string "late!"
	ts_key_wait 0x0
	ts_flag_set 0x63, 0x4
	ts_end

	def_text_script CompText87680AC_unk1
	ts_mugshot_show 0x6
	ts_msg_open
	.string "Don't wander too far\n"
	.string "from home!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87680AC_unk2
	ts_check_chapter 0x1, 0x1, 0x6, 0xFF
	ts_check_flag 0x62, 0x4, 0x3, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Dad,I'm gonna\n"
	.string "go outside and\n"
	.string "look around!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x5
	.string "I'm going to connect\n"
	.string "your computer to the\n"
	.string "Net later."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Once it is ready,\n"
	.string "I'll let you know."
	ts_key_wait 0x0
	ts_flag_set 0x62, 0x4
	ts_end

	def_text_script CompText87680AC_unk3
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Take care,Lan."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87680AC_unk4

	def_text_script CompText87680AC_unk5
	ts_check_flag 0x1A, 0x4, 0x9, 0xFF
	ts_mugshot_show 0x6
	ts_msg_open
	.string "I wonder if there\n"
	.string "is a good grocery\n"
	.string "store nearby..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We just moved,so\n"
	.string "not knowing the area\n"
	.string "is quite a hassle."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87680AC_unk6
	ts_check_flag 0x1A, 0x4, 0xA, 0xFF
	ts_check_flag 0xA0, 0x1C, 0x7, 0xFF
	ts_jump 8

	def_text_script CompText87680AC_unk7
	ts_check_flag 0x20, 0x1D, 0x8, 0xFF
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Welcome home. Your\n"
	.string "Net connection is\n"
	.string "ready. Try it out!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87680AC_unk8
	ts_mugshot_show 0x5
	ts_msg_open
	.string "I haven't set up\n"
	.string "your connection yet.\n"
	.string "Wait for a bit,OK?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87680AC_unk9
	ts_mugshot_show 0x6
	ts_msg_open
	.string "You have school\n"
	.string "tomorrow,so don't\n"
	.string "stay out too late."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87680AC_unk10
	ts_mugshot_show 0x5
	ts_msg_open
	.string "How is the Net\n"
	.string "in this town?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It seems to be\n"
	.string "pretty nice..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I want to check\n"
	.string "it out myself."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87680AC_unk11

	def_text_script CompText87680AC_unk12

	def_text_script CompText87680AC_unk13

	def_text_script CompText87680AC_unk14

	def_text_script CompText87680AC_unk15
	ts_mugshot_show 0x6
	ts_msg_open
	.string "It's your first day\n"
	.string "at a new school..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Make lots of\n"
	.string "friends,OK?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87680AC_unk16
	ts_mugshot_show 0x5
	ts_msg_open
	.string "New school time,huh?\n"
	.string "Do your best!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've got to get\n"
	.string "ready for work\n"
	.string "myself!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87680AC_unk17

	def_text_script CompText87680AC_unk18

	def_text_script CompText87680AC_unk19

	def_text_script CompText87680AC_unk20

	def_text_script CompText87680AC_unk21

	def_text_script CompText87680AC_unk22

	def_text_script CompText87680AC_unk23

	def_text_script CompText87680AC_unk24

	def_text_script CompText87680AC_unk25
	ts_check_flag 0x42, 0x4, 0x1A, 0xFF
	ts_mugshot_show 0x6
	ts_msg_open
	.string "Lan...\n"
	.string "You kinda smell\n"
	.string "like smoke..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe I'm just\n"
	.string "imagining things..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87680AC_unk26
	ts_mugshot_show 0x6
	ts_msg_open
	.string "Don't stay out\n"
	.string "too late,OK?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87680AC_unk27

	def_text_script CompText87680AC_unk28

	def_text_script CompText87680AC_unk29

	def_text_script CompText87680AC_unk30

	def_text_script CompText87680AC_unk31

	def_text_script CompText87680AC_unk32

	def_text_script CompText87680AC_unk33

	def_text_script CompText87680AC_unk34

	def_text_script CompText87680AC_unk35

	def_text_script CompText87680AC_unk36

	def_text_script CompText87680AC_unk37

	def_text_script CompText87680AC_unk38

	def_text_script CompText87680AC_unk39

	def_text_script CompText87680AC_unk40
	ts_mugshot_show 0x6
	ts_msg_open
	.string "Welcome home,Lan."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Don't forget to\n"
	.string "wash your hands."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87680AC_unk41
	ts_mugshot_show 0x6
	ts_msg_open
	.string "What should I make\n"
	.string "for dinner... Lan,\n"
	.string "what do you want?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87680AC_unk42

	def_text_script CompText87680AC_unk43

	def_text_script CompText87680AC_unk44

	def_text_script CompText87680AC_unk45
	ts_mugshot_show 0x6
	ts_msg_open
	.string "I think I'll try\n"
	.string "making something\n"
	.string "new for dinner."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe I'll do the\n"
	.string "experimenting this\n"
	.string "time!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87680AC_unk46
	ts_mugshot_show 0x5
	ts_msg_open
	.string "I'm looking forward\n"
	.string "to your Mom's new\n"
	.string "tasty treats!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87680AC_unk47

	def_text_script CompText87680AC_unk48

	def_text_script CompText87680AC_unk49

	def_text_script CompText87680AC_unk50
	ts_mugshot_show 0x6
	ts_msg_open
	.string "Ahhh! Welcome back!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Tonight's dinner is\n"
	.string "Cashew Chicken!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's really good!\n"
	.string "I think you will\n"
	.string "love it!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87680AC_unk51
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Huh? You went to\n"
	.string "the Aquarium?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Tell me all about\n"
	.string "it during dinner!"
	ts_key_wait 0x0
	ts_end

	