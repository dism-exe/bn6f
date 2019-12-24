	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CABC8::
	.word 0x31800

	text_archive_start

	def_text_script CompText87CABC8_unk0
	ts_mugshot_show mugshot=0x25
	ts_msg_open
	.string "OK,here we go!\n"
	.string "Class is about to\n"
	.string "start!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We're going to use\n"
	.string "my Navi,DustMan,to\n"
	.string "go to the Net"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "junkyard and collect\n"
	.string "some real gems of\n"
	.string "spare parts!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CABC8_unk1_id

	def_text_script CompText87CABC8_unk1
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Collect garbage,you\n"
	.string "mean..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why do we have to\n"
	.string "go digging through\n"
	.string "garbage...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CABC8_unk2_id

	def_text_script CompText87CABC8_unk2
	ts_mugshot_show mugshot=0x25
	ts_msg_open
	.string "No,no!!\n"
	.string "You totally don't\n"
	.string "get it!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why don't they teach\n"
	.string "you this stuff in\n"
	.string "school!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "People throw away so\n"
	.string "many things that are\n"
	.string "still good everyday!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "My class is about\n"
	.string "finding things that\n"
	.string "are still usable,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and learning the\n"
	.string "importance of\n"
	.string "recycling!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The era of randomly\n"
	.string "throwing things away\n"
	.string "after 1 use is over!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CABC8_unk3_id

	def_text_script CompText87CABC8_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "He's convincing in\n"
	.string "his own...spastic\n"
	.string "sort of way,I guess."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK,let's collect\n"
	.string "trash. So,what\n"
	.string "should I do?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CABC8_unk4_id

	def_text_script CompText87CABC8_unk4
	ts_mugshot_show mugshot=0x25
	ts_msg_open
	.string "OK,OK! First,take a\n"
	.string "look at the vending\n"
	.string "machine behind me!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87CABC8_unk5_id

	def_text_script CompText87CABC8_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Uh... OK..."
	ts_key_wait any=0x0
	ts_end

	