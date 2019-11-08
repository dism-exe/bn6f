	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A1CE4::
	.word 0x25500

	text_archive_start

	def_text_script CompText87A1CE4_unk0
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Gwwwaaahahaha..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A1CE4_unk1
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Heeheeheehee!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A1CE4_unk2
	ts_mugshot_show 0x43
	ts_msg_open
	.string "You'll regret that!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A1CE4_unk3
	ts_mugshot_show 0x43
	ts_msg_open
	.string "I've been waiting\n"
	.string "for this!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A1CE4_unk4
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Hahahahaheeee!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A1CE4_unk5
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Let's get violent!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A1CE4_unk6
	ts_mugshot_show 0x44
	ts_msg_open
	.string "What's with you!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We're the Net\n"
	.string "Mafia!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hmm...\n"
	.string "Was our plan against\n"
	.string "Green Area exposed?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh well! I guess\n"
	.string "we'll start earlier\n"
	.string "than planned!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "YYYYYYYAHHHHHHHHH!!"
	ts_key_wait 0x0
	ts_flag_set 0x15, 0x17
	ts_flag_set 0xD, 0x12
	ts_end

	def_text_script CompText87A1CE4_unk7
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We did it,Lan!\n"
	.string "We rounded up the\n"
	.string "whole NetMafia!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go tell that\n"
	.string "SoulBattler's Navi!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A1CE4_unk8

	def_text_script CompText87A1CE4_unk9

	def_text_script CompText87A1CE4_unk10
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THIS IS THE\n"
	.string "SYMBOL COMP."
	ts_key_wait 0x0
	ts_clear_msg
	.string "THIS MONUMENT IS\n"
	.string "WRAPPED IN THE IDEAS\n"
	.string "OF GREEN TOWN!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "PLEASE KEEP ITS\n"
	.string "MEANING STORED IN\n"
	.string "YOUR MEMORY."
	ts_key_wait 0x0
	ts_end

	