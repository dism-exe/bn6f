	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AB570::
	.word 0x54300

	text_archive_start

	def_text_script CompText87AB570_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "So this is the\n"
	.string "Aquarium..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB570_unk1
	ts_mugshot_hide
	ts_msg_open
	.string "*Squawk!!*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB570_unk2
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Oh!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "P-Plata?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87AB570_unk3
	ts_mugshot_hide
	ts_msg_open
	.string "*Squawk!!*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB570_unk4
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Oh! It IS you!\n"
	.string "Plata!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've been so worried\n"
	.string "about you! Where\n"
	.string "have you been!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87AB570_unk5
	ts_mugshot_hide
	ts_msg_open
	.string "*Squawk! Squawk!*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87AB570_unk6
	ts_mugshot_show 0xF
	ts_msg_open
	.string "It's OK! You don't\n"
	.string "have to be scared\n"
	.string "anymore!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've already fired\n"
	.string "that scary trainer!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB570_unk7
	ts_mugshot_show 0xF
	ts_msg_open
	.string "... And you two are?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87AB570_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We,uh...\n"
	.string "Well,we found this\n"
	.string "penguin,sir."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB570_unk9
	ts_mugshot_show 0x0
	ts_msg_open
	.string "And he kinda\n"
	.string "latched onto Mick."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87AB570_unk10
	ts_mugshot_show 0x14
	ts_msg_open
	.string "......"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB570_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "And then we saw\n"
	.string "that post on the\n"
	.string "SeasideArea BBS."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87AB570_unk12
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Is that right?\n"
	.string "Well,thank you\n"
	.string "very much,boys!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Hmm,how odd.\n"
	.string "Plata here,well,he's\n"
	.string "not fond of people."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He usually doesn't\n"
	.string "take a liking to\n"
	.string "strangers..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I guess he\n"
	.string "really likes you\n"
	.string "two!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Allow me to show you\n"
	.string "my appreciation!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You two can enjoy\n"
	.string "this aquarium free\n"
	.string "of charge today!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87AB570_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Really!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87AB570_unk14
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Yes,of course!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hope you two will\n"
	.string "enjoy yourselves!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Well,then,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I think it's time\n"
	.string "you went back to\n"
	.string "your pen,Plata."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When you boys are\n"
	.string "ready to go home,\n"
	.string "let me know,OK?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm sure Plata would\n"
	.string "like to see you off\n"
	.string "as well!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll see you\n"
	.string "later,boys.\n"
	.string "OK,Plata,let's go..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB570_unk15
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Awesome! We're gonna\n"
	.string "have loads of fun!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 16

	def_text_script CompText87AB570_unk16
	ts_mugshot_show 0x14
	ts_msg_open
	ts_text_speed 0x3
	.string "... He..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... His name was\n"
	.string "Plata,huh..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script CompText87AB570_unk17
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Mick..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_text_speed 0x2
	.string "Hey,while we're\n"
	.string "here,we should check\n"
	.string "everything out!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87AB570_unk18
	ts_mugshot_show 0x14
	ts_msg_open
	.string "... Yeah..."
	ts_key_wait 0x0
	ts_end

	