	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B998C::
	.word 0x46B00

	text_archive_start

	def_text_script CompText87B998C_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Dad!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B998C_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Dad!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87B998C_unk2
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... Looks like we\n"
	.string "made it."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87B998C_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Dad,can you\n"
	.string "hear me!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We're gonna get you\n"
	.string "out of there right\n"
	.string "now!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87B998C_unk4
	ts_mugshot_show 0x5
	ts_msg_open
	.string "... Is that you,Lan?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm OK,so don't\n"
	.string "do anything rash,\n"
	.string "OK...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87B998C_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What are you\n"
	.string "talking about!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What about\n"
	.string "the zapping...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Ack!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B998C_unk6
	ts_mugshot_hide
	ts_msg_open
	.string "THE PUNISHMENT WILL\n"
	.string "BEGIN IN 20 MINUTES."
	ts_key_wait 0x0
	ts_clear_msg
	.string "BEGIN PREPARATIONS."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87B998C_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "20 minutes!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We've gotta hurry!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87B998C_unk8
	ts_mugshot_show 0xD
	ts_msg_open
	.string "Hey!\n"
	.string "Quiet!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Silence is golden\n"
	.string "in the Punishment\n"
	.string "Room!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B998C_unk9
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hey,mister!\n"
	.string "Please listen!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Dad's punishment...\n"
	.string "Real culprit...!\n"
	.string "So...!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87B998C_unk10
	ts_mugshot_show 0xD
	ts_msg_open
	.string "Hey,hey!\n"
	.string "Calm down,kid!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now what's wrong?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87B998C_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "My Dad...!\n"
	.string "I've found evidence"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that supports\n"
	.string "Yuichiro Hikari's\n"
	.string "alibi!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can prove he's\n"
	.string "innocent!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87B998C_unk12
	ts_mugshot_show 0xD
	ts_msg_open
	.string "I wonder..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... But,no!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you really did,\n"
	.string "then that means we\n"
	.string "found an innocent"
	ts_key_wait 0x0
	ts_clear_msg
	.string "person guilty! He\n"
	.string "would be the first\n"
	.string "in Green Town!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87B998C_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "You've gotta stop\n"
	.string "the punishment\n"
	.string "NOW!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87B998C_unk14
	ts_mugshot_show 0xD
	ts_msg_open
	.string "Well,you can't do\n"
	.string "that from here!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You have to get\n"
	.string "permission from the\n"
	.string "JudgeTree..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText87B998C_unk15
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Alright.\n"
	.string "I'll show the\n"
	.string "JudgeTree the proof,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and stop the\n"
	.string "punishment!"
	ts_key_wait 0x0
	ts_end

	