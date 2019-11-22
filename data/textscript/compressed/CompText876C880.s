	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876C880::
	.word 0x1E800

	text_archive_start

	def_text_script CompText876C880_unk0
	ts_mugshot_show [
		mugshot: 0x9,
	]
	ts_msg_open
	.string "Next is Math!\n"
	.string "Add!! Subtract!!\n"
	.string "Let's go!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876C880_unk1
	ts_mugshot_show [
		mugshot: 0xA,
	]
	ts_msg_open
	.string "Hey bro! This is\n"
	.string "a 1st grade class!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "6th grade is on the\n"
	.string "second floor!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876C880_unk2
	ts_mugshot_show [
		mugshot: 0x17,
	]
	ts_msg_open
	.string "NooooOOOOOoooo!\n"
	.string "I forgot my\n"
	.string "homework!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876C880_unk3

	def_text_script CompText876C880_unk4

	def_text_script CompText876C880_unk5
	ts_mugshot_show [
		mugshot: 0xD,
	]
	ts_msg_open
	.string "All the students in\n"
	.string "this class had to\n"
	.string "take shelter"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "because the Security\n"
	.string "Bots are still all\n"
	.string "over the place!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I wonder\n"
	.string "what's going on!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText876C880_unk6

	def_text_script CompText876C880_unk7

	def_text_script CompText876C880_unk8

	def_text_script CompText876C880_unk9

	def_text_script CompText876C880_unk10
	ts_mugshot_show [
		mugshot: 0xA,
	]
	ts_msg_open
	.string "What should I do\n"
	.string "after school?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "NetBattle on the\n"
	.string "Net?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Or go check out\n"
	.string "some chips at a\n"
	.string "chip shop..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hmmm....decisions,\n"
	.string "decisions..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	