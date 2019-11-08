	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText877C0FC::
	.word 0x74200

	text_archive_start

	def_text_script CompText877C0FC_unk0
	ts_check_flag 0x70, 0x8, 0x1, 0xFF
	ts_flag_set 0x70, 0x8
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Court will not be\n"
	.string "in session today."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Did you have some\n"
	.string "business here?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Where is\n"
	.string "Yuichiro Hikari!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "The criminal,Hikari,\n"
	.string "should already be in\n"
	.string "the PunishmentRoom."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He should receive\n"
	.string "his sentence\n"
	.string "shortly..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Why do you want\n"
	.string "to know?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "His alibi..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yuichiro Hikari\n"
	.string "had an alibi..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "Is that so?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Yes! It's the truth!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x15
	.string "Hmmmmm..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I believe you."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll make an\n"
	.string "exception this time."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You may go to the\n"
	.string "PunishmentRoom."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877C0FC_unk1
	ts_mugshot_show 0x15
	ts_msg_open
	.string "I'll make an\n"
	.string "exception this time."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You may go to the\n"
	.string "PunishmentRoom."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877C0FC_unk2
	ts_mugshot_show 0x19
	ts_msg_open
	.string "That door is\n"
	.string "bring repaired\n"
	.string "now..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please be\n"
	.string "patient..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877C0FC_unk3
	ts_msg_open
	.string "NO UNAUTHORIZED\n"
	.string "PERSONNEL!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877C0FC_unk4

	def_text_script CompText877C0FC_unk5
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Actually,I'm a new\n"
	.string "prosecutor who just\n"
	.string "passed the bar exam."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I still don't\n"
	.string "know my left from\n"
	.string "my right..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Uh-oh..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877C0FC_unk6
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Applications for\n"
	.string "entry permits are"
	ts_key_wait 0x0
	ts_clear_msg
	.string "being taken at the\n"
	.string "Green Area2 NetCafe."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I had been planning\n"
	.string "to apply for a\n"
	.string "while now..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Sorry,but I\n"
	.string "completely forgot!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877C0FC_unk7
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Well,it's about time\n"
	.string "for today's pre-\n"
	.string "trial meeting..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877C0FC_unk8
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "I think you should\n"
	.string "study the law for\n"
	.string "yourself."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I think you'd\n"
	.string "be surprised!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877C0FC_unk9

	def_text_script CompText877C0FC_unk10
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Actually,I'm a new\n"
	.string "prosecutor who just\n"
	.string "passed the bar exam."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I still have lots\n"
	.string "of things to learn!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877C0FC_unk11

	def_text_script CompText877C0FC_unk12

	def_text_script CompText877C0FC_unk13

	def_text_script CompText877C0FC_unk14

	def_text_script CompText877C0FC_unk15
	ts_mugshot_show 0x19
	ts_msg_open
	.string "Hey! What's going\n"
	.string "on here!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877C0FC_unk16
	ts_mugshot_show 0x15
	ts_msg_open
	.string "What happened?\n"
	.string "Did you make it!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText877C0FC_unk17
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Oh no... That\n"
	.string "JudgeTree is acting\n"
	.string "very strange!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is not\n"
	.string "something we\n"
	.string "expected!"
	ts_key_wait 0x0
	ts_end

	