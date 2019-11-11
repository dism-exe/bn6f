	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BA470::
	.word 0x40C00

	text_archive_start

	def_text_script CompText87BA470_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "*huff,huff...*"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Are they\n"
	.string "following us?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BA470_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What's going on?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "They're probably\n"
	.string "barricading them-\n"
	.string "selves in there."
	ts_key_wait 0x0
	ts_clear_msg
	.string "As long as they have\n"
	.string "the JudgeTree,the\n"
	.string "Prosecutor can do"
	ts_key_wait 0x0
	ts_clear_msg
	.string "whatever he wants! I\n"
	.string "don't think he wants\n"
	.string "anyone else near that"
	ts_key_wait 0x0
	ts_clear_msg
	.string "tree!\n"
	.string "He really planned\n"
	.string "this well!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "What should we do...\n"
	.string "and what's going to\n"
	.string "happen to Dad!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "And...\n"
	.string "everyone else!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87BA470_unk2
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Well,it looks like\n"
	.string "the Prosecutor is\n"
	.string "manipulating the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "JudgeTree,and that\n"
	.string "tree commands the\n"
	.string "Punishment Robots..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd say there's\n"
	.string "only one thing\n"
	.string "we can do."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We've gotta pull the\n"
	.string "plug on the\n"
	.string "JudgeTree! If we do"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that,we can save Dad\n"
	.string "and stop the\n"
	.string "Punishment Robots!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87BA470_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Yeah. We've gotta\n"
	.string "find a way to get\n"
	.string "close to the tree!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87BA470_unk4
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Hmm,we can't just\n"
	.string "go in through\n"
	.string "the front door..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And trying to slip\n"
	.string "by the Punishment\n"
	.string "Robots is too risky."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87BA470_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "But if we don't get\n"
	.string "in there now,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "they might start\n"
	.string "Dad's punishment!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87BA470_unk6
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's look for\n"
	.string "another way in!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We've gotta find\n"
	.string "a way to get near\n"
	.string "the JudgeTree!"
	ts_key_wait 0x0
	ts_end

	