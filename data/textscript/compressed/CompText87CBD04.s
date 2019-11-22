	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87CBD04::
	.word 0x37600

	text_archive_start

	def_text_script CompText87CBD04_unk0
	ts_mugshot_show [
		mugshot: 0x24,
	]
	ts_msg_open
	.string "Looks like you got\n"
	.string "to CentralArea2 with\n"
	.string "no problems."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Alright,GroundMan,\n"
	.string "time to do like we\n"
	.string "always do!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87CBD04_unk1
	ts_mugshot_show [
		mugshot: 0x4D,
	]
	ts_msg_open
	.string "Whiiiiiiiir!!\n"
	.string "Sounds good to me!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87CBD04_unk2
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "W-What are we...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87CBD04_unk3
	ts_mugshot_show [
		mugshot: 0x24,
	]
	ts_msg_open
	.string "... Looks like we're\n"
	.string "all set here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So this is how\n"
	.string "I do my special rock\n"
	.string "drilling training."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "We've gotta get rid\n"
	.string "of all the fallen\n"
	.string "rocks in this area."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If you wanna do it\n"
	.string "right,you gotta\n"
	.string "store energy up,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and then break a lot\n"
	.string "of stones in one go!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But if you don't\n"
	.string "watch where you're\n"
	.string "drilling,you might"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "not finish before\n"
	.string "the dynamite\n"
	.string "explodes!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87CBD04_unk4
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Dynamite?\n"
	.string "What is dynamite\n"
	.string "doing...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87CBD04_unk5
	ts_mugshot_show [
		mugshot: 0x24,
	]
	ts_msg_open
	.string "The dynamite softens\n"
	.string "up the rocks a bit,\n"
	.string "so that's why."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It helps me train so\n"
	.string "I can do my job!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "One more thing,you\n"
	.string "can't drill things\n"
	.string "that aren't stones!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So you take care not\n"
	.string "to do that,alright?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Phew,finally getting\n"
	.string "started! There's 35\n"
	.string "stones in this area."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Drill away!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	