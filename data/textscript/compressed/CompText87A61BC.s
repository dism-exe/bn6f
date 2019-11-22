	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A61BC::
	.word 0x4B100

	text_archive_start

	def_text_script CompText87A61BC_unk0
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "OK,looks like\n"
	.string "EVERYBODY'S here!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's GET this\n"
	.string "VIRUS BUSTING class\n"
	.string "STARTED!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "In this BOX are\n"
	.string "VIRUSES that are\n"
	.string "AROUND your LEVEL."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So,WHO'S got the\n"
	.string "GUTS to give THESE\n"
	.string "a GO?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87A61BC_unk1
	ts_mugshot_show [
		mugshot: 0x57,
	]
	ts_msg_open
	.string "Hey,Teeeeeach!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87A61BC_unk2
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "Oh,Mick's NAVI! You\n"
	.string "RAISING your HAND!?\n"
	.string "THAT'S a RARE sight!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So,you WANT to\n"
	.string "give IT a TRY?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87A61BC_unk3
	ts_mugshot_show [
		mugshot: 0x57,
	]
	ts_msg_open
	.string "Nah! What I was\n"
	.string "going to say is"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "why don't we let the\n"
	.string "new guy show us what\n"
	.string "he's made of!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A61BC_unk4
	ts_mugshot_show [
		mugshot: 0x57,
	]
	ts_msg_open
	.string "You're good at\n"
	.string "NetBattling,right?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So,show us your\n"
	.string "real power!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87A61BC_unk5
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "T-This is kinda\n"
	.string "sudden..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Well,Lan...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87A61BC_unk6
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Fine! If he wants to\n"
	.string "see so badly,let's\n"
	.string "show him!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Besides,we're in\n"
	.string "class. The virus\n"
	.string "won't be that hard."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87A61BC_unk7
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	ts_mugshot_animation [
		animation: 0x1,
	]
	.string "*grin*"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87A61BC_unk8
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	ts_mugshot_animation [
		animation: 0x2,
	]
	.string "Alright,I'll give it\n"
	.string "a shot,sir!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87A61BC_unk9
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "Now we're going to\n"
	.string "SEE some SKILLS!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "BACK UP,everyone.\n"
	.string "It's gonna get\n"
	.string "DANGEROUS!"
	ts_key_wait [
		any: 0x0,
	]
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x8,
	]
	ts_end

	def_text_script CompText87A61BC_unk10
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "Are you READY!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 11,
	]

	def_text_script CompText87A61BC_unk11
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Yes!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script CompText87A61BC_unk12
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "Here we GO!\n"
	.string "Mettaur!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87A61BC_unk13
	ts_sound_play_bgm [
		track: 0x1C,
	]
	ts_mugshot_show [
		mugshot: 0x42,
	]
	ts_msg_open
	.string "W-WHAT the!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm SURE I called\n"
	.string "a METTAUR!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Not GOOD. I've gotta\n"
	.string "STOP this..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 14,
	]

	def_text_script CompText87A61BC_unk14
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "What's wrong?\n"
	.string "Hurry up and show us\n"
	.string "what you're made of."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Or are you\n"
	.string "chickening out?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87A61BC_unk15
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Who's chickening\n"
	.string "out!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Let's do it,MegaMan!\n"
	.string "Battle routine,set!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 16,
	]

	def_text_script CompText87A61BC_unk16
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Execute!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	