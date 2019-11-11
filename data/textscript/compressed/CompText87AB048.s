	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87AB048::
	.word 0x56600

	text_archive_start

	def_text_script CompText87AB048_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Hm?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB048_unk1
	ts_mugshot_show 0x2A
	ts_msg_open
	.string "Director!!\n"
	.string "Get out 'ere!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Explain yerself!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Why'd ye fire me!?\n"
	.string "Ye don't got\n"
	.string "the right!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB048_unk2
	ts_mugshot_show 0x2A
	ts_msg_open
	.string "Tsk,I was givin' the\n"
	.string "viewers an excitin'\n"
	.string "show! A littl' fire,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "littl' change in me\n"
	.string "face makeup,dramatic\n"
	.string "flare,matey!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ye don't know the\n"
	.string "first thin' about\n"
	.string "entertainment!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ye shouldn't 'ave\n"
	.string "fired me!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB048_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What's with him?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB048_unk4
	ts_mugshot_show 0x14
	ts_msg_open
	.string "... Huh?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB048_unk5
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Hey,what's wrong?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB048_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "What's wrong with\n"
	.string "the penguin?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87AB048_unk7
	ts_mugshot_show 0x14
	ts_msg_open
	.string "It's shaking."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87AB048_unk8
	ts_mugshot_hide
	ts_msg_open
	.string "*Squeak,Squeak*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87AB048_unk9
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Hey,we should hurry\n"
	.string "up and get this guy\n"
	.string "inside the Aquarium!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87AB048_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Yeah!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB048_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Hmm..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB048_unk12
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... What a strange\n"
	.string "building..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87AB048_unk13
	ts_mugshot_show 0x14
	ts_msg_open
	.string "I bet the Aquarium's\n"
	.string "inside the whale."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB048_unk14
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Huh?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB048_unk15
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The door's locked?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB048_unk16
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Looks like\n"
	.string "they're closed\n"
	.string "today."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB048_unk17
	ts_mugshot_show 0x14
	ts_msg_open
	.string "CLOSED!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So we came all the\n"
	.string "way out here for\n"
	.string "nothing!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87AB048_unk18
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Guess we've gotta\n"
	.string "come back tomorrow."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 19

	def_text_script CompText87AB048_unk19
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Hold on,hold on!\n"
	.string "By \"tomorrow\"...\n"
	.string "You mean..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hey,who's gonna get\n"
	.string "stuck with this\n"
	.string "penguin until then!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 20

	def_text_script CompText87AB048_unk20
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I thought that\n"
	.string "was obvious..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 21

	def_text_script CompText87AB048_unk21
	ts_mugshot_show 0x14
	ts_msg_open
	.string "No way,freak!\n"
	.string "You take him!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script CompText87AB048_unk22
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We should ask the\n"
	.string "penguin who he wants\n"
	.string "to stay with."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Right?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87AB048_unk23
	ts_mugshot_hide
	ts_msg_open
	.string "*Squawk!*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 24

	def_text_script CompText87AB048_unk24
	ts_mugshot_show 0x14
	ts_msg_open
	.string "... This is\n"
	.string "a joke..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 25

	def_text_script CompText87AB048_unk25
	ts_mugshot_show 0x0
	ts_msg_open
	.string "OK,let's meet back\n"
	.string "here tomorrow\n"
	.string "morning!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's Saturday\n"
	.string "tomorrow,so we can\n"
	.string "hang out all day!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 26

	def_text_script CompText87AB048_unk26
	ts_mugshot_show 0x14
	ts_msg_open
	.string "He's... He's gotta\n"
	.string "be kidding..."
	ts_key_wait 0x0
	ts_end

	