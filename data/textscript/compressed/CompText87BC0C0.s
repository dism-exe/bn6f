	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BC0C0::
	.word 0x48D00

	text_archive_start

	def_text_script CompText87BC0C0_unk0
	ts_mugshot_show 0x23
	ts_msg_open
	.string "... You have reached\n"
	.string "Green Area,yes?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ah,we can start\n"
	.string "the lesson,then."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Your task is very\n"
	.string "easy,grasshopper...\n"
	.string "I dropped a few"
	ts_key_wait 0x0
	ts_clear_msg
	.string "cyberscrolls around\n"
	.string "Green Area. You have\n"
	.string "only to gather them."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87BC0C0_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Gather a few\n"
	.string "cyberscrolls...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's all I have\n"
	.string "to do?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87BC0C0_unk2
	ts_mugshot_show 0x23
	ts_msg_open
	.string "Ho,ho,ho,ho!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That is all."
	ts_key_wait 0x0
	ts_clear_msg
	.string "However!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Beware of the\n"
	.string "cybercrows I have\n"
	.string "also left for you."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The cybercrows will\n"
	.string "swarm around you\n"
	.string "as bees to a hive."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Collect cyberscrolls\n"
	.string "and touch not the\n"
	.string "cybercrows --"
	ts_key_wait 0x0
	ts_clear_msg
	.string "that is your task."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87BC0C0_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Don't touch the\n"
	.string "cybercrows..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "OK,got it!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87BC0C0_unk4
	ts_mugshot_show 0x23
	ts_msg_open
	.string "Ho,ho,ho,ho!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There will be no\n"
	.string "straight path to\n"
	.string "the end."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If the cybercrows\n"
	.string "start to gather in\n"
	.string "number..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "use of TenguMan's\n"
	.string "leaf fan is a\n"
	.string "wise move,indeed."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Push the A Button\n"
	.string "and the cybercrows\n"
	.string "will scatter."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But the fan's power\n"
	.string "lasts not long. Do\n"
	.string "not use it too much."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You may find\n"
	.string "cyberleaves during\n"
	.string "your task."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Gathering leaves is\n"
	.string "the way to make the\n"
	.string "leaf fan live again."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... If you pass this\n"
	.string "class,young one,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you will gain great\n"
	.string "skill to move very\n"
	.string "fast around enemies."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Work hard,\n"
	.string "grasshopper!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let us begin."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This area holds 4\n"
	.string "cyberscrolls."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please begin\n"
	.string "your task!"
	ts_key_wait 0x0
	ts_end

	