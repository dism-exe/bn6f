	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A9598::
	.word 0x5EF00

	text_archive_start

	def_text_script CompText87A9598_unk0
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "Excuse me."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A9598_unk1
	ts_mugshot_show [
		mugshot: 0x32,
	]
	ts_msg_open
	.string "Welcome,Dr.Hikari.\n"
	.string "I've been waiting\n"
	.string "for you."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87A9598_unk2
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "It is an honor,\n"
	.string "Mayor Cain.\n"
	.string "I've heard that you"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "are quite involved\n"
	.string "in town affairs.\n"
	.string "But school,too?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Should I call you\n"
	.string "\"Principal\" while we\n"
	.string "are here in school?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87A9598_unk3
	ts_mugshot_show [
		mugshot: 0x32,
	]
	ts_msg_open
	.string "No,no,no. I've got\n"
	.string "my hands full taking\n"
	.string "care of the Expo."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm leaving school\n"
	.string "affairs to the\n"
	.string "Vice Principal."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ha,ha,ha,ha...\n"
	.string "So,with greetings\n"
	.string "out of the way,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "let's get down to\n"
	.string "business..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Do you have the\n"
	.string "program with you?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87A9598_unk4
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "... Yes."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But,this program is\n"
	.string "not known to the\n"
	.string "general public..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "How do you know of\n"
	.string "its existence?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87A9598_unk5
	ts_mugshot_show [
		mugshot: 0x32,
	]
	ts_msg_open
	.string "I know a person\n"
	.string "who used to work\n"
	.string "in the SciLab."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "He knows about this\n"
	.string "program which you\n"
	.string "made 11 years ago."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87A9598_unk6
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "Is that so...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Well,I only brought\n"
	.string "one part of the\n"
	.string "whole program today."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It is not that I\n"
	.string "don't trust you,\n"
	.string "and while this"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "program,in its\n"
	.string "entirety,is quite\n"
	.string "useful,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "there are great\n"
	.string "risks,should it fall\n"
	.string "into evil hands."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87A9598_unk7
	ts_mugshot_show [
		mugshot: 0x32,
	]
	ts_msg_open
	.string "I see. You\n"
	.string "scientists take\n"
	.string "risks seriously."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I suppose it's\n"
	.string "because the\n"
	.string "technology you make"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "changes society,so\n"
	.string "you feel the need\n"
	.string "to guard it closely."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87A9598_unk8
	ts_mugshot_show [
		mugshot: 0x5,
	]
	ts_msg_open
	.string "Well,yes,in a way..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "What I meant was\n"
	.string "even though this is\n"
	.string "only one part,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I believe it is more\n"
	.string "than enough to\n"
	.string "complete the task."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "For example,even if\n"
	.string "Net access increased\n"
	.string "by 30 fold,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "this program,once\n"
	.string "installed,can fully\n"
	.string "support the network."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87A9598_unk9
	ts_mugshot_show [
		mugshot: 0x32,
	]
	ts_msg_open
	.string "I see. It can\n"
	.string "greatly boost\n"
	.string "memory capacity..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Dr.Hikari,let us\n"
	.string "try for the most\n"
	.string "successful Expo!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ha,ha,ha,ha,ha!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	