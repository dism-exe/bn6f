	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C1150::
	.word 0x30D00

	text_archive_start

	def_text_script CompText87C1150_unk0
	ts_mugshot_show [
		mugshot: 0x4A,
	]
	ts_msg_open
	.string "Hey! How've you\n"
	.string "been!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Glad to see you\n"
	.string "again!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's give it all\n"
	.string "we've got!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87C1150_unk1
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Yeah,nice to see you\n"
	.string "too!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hey,um,so what is\n"
	.string "this ritual thing?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I don't like things\n"
	.string "that hurt..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87C1150_unk2
	ts_mugshot_show [
		mugshot: 0x4A,
	]
	ts_msg_open
	.string "Nah,it's nothing\n"
	.string "that's going to hurt\n"
	.string "you,Lan. After all,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "rule number one: if\n"
	.string "the customer gets\n"
	.string "hurt,that's bad."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Anyway,I'm not going\n"
	.string "to tell you what the\n"
	.string "ritual's about here!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87C1150_unk3
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Aww,come on!\n"
	.string "You gotta tell me!\n"
	.string "Please!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87C1150_unk4
	ts_mugshot_show [
		mugshot: 0x4A,
	]
	ts_msg_open
	.string "Alright,alright.\n"
	.string "We're gonna be using\n"
	.string "all of Sky Area."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "In Sky Area,there\n"
	.string "are 4 Totem Poles..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You're going to\n"
	.string "operate me,and find\n"
	.string "these Totem Poles,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and then we're going\n"
	.string "to go through some\n"
	.string "trials..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87C1150_unk5
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "T-Trials..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm gonna make it\n"
	.string "through every one!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87C1150_unk6
	ts_mugshot_show [
		mugshot: 0x4A,
	]
	ts_msg_open
	.string "That's the spirit!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Chop,chop,let's go!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	