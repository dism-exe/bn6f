	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CA6E4::
	.word 0x69900

	text_archive_start

	def_text_script CompText87CA6E4_unk0
	ts_msg_open
	.string "That night,news of\n"
	.string "the Mayor's arrest\n"
	.string "spread throughout"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Cyber City. People\n"
	.string "couldn't believe it\n"
	.string "and were confused."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Even worse than the\n"
	.string "fact that the Expo's\n"
	.string "sponsor was in a"
	ts_key_wait 0x0
	ts_clear_msg
	.string "scandal were the\n"
	.string "rumors that the Expo\n"
	.string "wouldn't be held..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87CA6E4_unk1
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "Blackbeard was\n"
	.string "arrested along with\n"
	.string "the Mayor,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and our Cybeast\n"
	.string "trump card is\n"
	.string "gone..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now what?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87CA6E4_unk2
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "What do you think?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We carry on with\n"
	.string "just the three\n"
	.string "of us!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87CA6E4_unk3
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "But what's our\n"
	.string "next move?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87CA6E4_unk4
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "Hmmm...uh..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87CA6E4_unk5
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "... Yeah..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The problem is even\n"
	.string "getting a Cybeast..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87CA6E4_unk6
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "So are you saying\n"
	.string "we should capture\n"
	.string "MegaMan again?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87CA6E4_unk7
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "... Nah,I've got a\n"
	.string "better idea."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This time,we're\n"
	.string "going to steal the\n"
	.string "one WWW has!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87CA6E4_unk8
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "Hm? WWW?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But Baryl and\n"
	.string "Colonel are at WWW."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And I don't want\n"
	.string "to fight them..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87CA6E4_unk9
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "... Hahaha!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I know their\n"
	.string "weakness!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87CA6E4_unk10
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "They have a\n"
	.string "weakness?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87CA6E4_unk11
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "... Yeah,they do."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When I was stealing\n"
	.string "the Force Program,I\n"
	.string "remember this one"
	ts_key_wait 0x0
	ts_clear_msg
	.string "thing. When Colonel\n"
	.string "had a chance to\n"
	.string "attack Lan Hikari,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "he couldn't do it.\n"
	.string "He looked like he\n"
	.string "couldn't hurt the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "girl that came to\n"
	.string "help that kid. That\n"
	.string "girl is our key..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If we can find that\n"
	.string "girl and use her as\n"
	.string "a hostage..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87CA6E4_unk12
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "Hold it."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do you know where\n"
	.string "that girl is?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87CA6E4_unk13
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "I sorta know...\n"
	.string "I've got some people\n"
	.string "looking for her..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And also,today when\n"
	.string "MegaMan was going\n"
	.string "nuts here,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that same girl\n"
	.string "showed up to save\n"
	.string "that kid again."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So it's safe to say\n"
	.string "they probably know\n"
	.string "each other."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87CA6E4_unk14
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "I see. So,if we tail\n"
	.string "Lan,then we should\n"
	.string "bump into her,too."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText87CA6E4_unk15
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "That sounds like a\n"
	.string "plan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 16

	def_text_script CompText87CA6E4_unk16
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "Good,then it's\n"
	.string "decided!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We'll get that girl\n"
	.string "and then use her to\n"
	.string "get WWW's Cybeast!"
	ts_key_wait 0x0
	ts_end

	