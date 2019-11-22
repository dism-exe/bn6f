	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BD064::
	.word 0x53F00

	text_archive_start

	def_text_script CompText87BD064_unk0
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	.string "Ladies and\n"
	.string "gentlemen!\n"
	.string "We will now begin"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "round 2 of the Expo\n"
	.string "Operator Navi\n"
	.string "Selection Test!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This time,we will\n"
	.string "test your strength\n"
	.string "in battle!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87BD064_unk1
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Alright!!\n"
	.string "That's our\n"
	.string "specialty!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87BD064_unk2
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Heh! Get too cocky\n"
	.string "and you'll fall\n"
	.string "flat on your face!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87BD064_unk3
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I'll pass! Just you\n"
	.string "wait and see! I lose\n"
	.string "to no one!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87BD064_unk4
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "And no way I'm\n"
	.string "losing to you!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87BD064_unk5
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	.string "THE PLAYING FIELD\n"
	.string "WILL BE THE NET AREA\n"
	.string "SKY AREA."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "SKY AREA HAS TWO\n"
	.string "PARTS,AND TWO\n"
	.string "JUDGES IN EACH PART."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "FIND AND TALK WITH A\n"
	.string "JUDGE TO BEGIN THE\n"
	.string "TEST."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87BD064_unk6
	ts_mugshot_show [
		mugshot: 0xD,
	]
	ts_msg_open
	.string "Uh,so by test,you\n"
	.string "mean battle,right?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87BD064_unk7
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	.string "THAT IS CORRECT!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "BEFORE I EXPLAIN\n"
	.string "HOW TO JACK IN TO\n"
	.string "THE NET,I'D LIKE"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "TO ASK THAT EVERYONE\n"
	.string "GO TO MR.WEATHER AND\n"
	.string "REGISTER."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87BD064_unk8
	ts_mugshot_show [
		mugshot: 0xE,
	]
	ts_msg_open
	.string "What!?\n"
	.string "We get to meet\n"
	.string "Mr.Weather!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I watch his weather\n"
	.string "forecast every day!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Ah,I'm so happy!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87BD064_unk9
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Mr.Weather...\n"
	.string "that's that robot\n"
	.string "on TV,right?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 10,
	]

	def_text_script CompText87BD064_unk10
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	.string "THAT IS CORRECT!\n"
	.string "MR.WEATHER IS THE\n"
	.string "FAMOUS WEATHER IDOL"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "OF CYBER CITY,BUT\n"
	.string "HE'S ALSO SKY TOWN'S\n"
	.string "MAINFRAME SYSTEM!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "CYBER CITY'S WEATHER\n"
	.string "IS ALL DECIDED AND\n"
	.string "CONTROLLED BY HIM!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 11,
	]

	def_text_script CompText87BD064_unk11
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Wow,Mr.Weather is\n"
	.string "really something...\n"
	.string "That's really neat!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script CompText87BD064_unk12
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	.string "NOW,PLEASE HEAD TO\n"
	.string "WHERE MR.WEATHER IS!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87BD064_unk13
	ts_mugshot_show [
		mugshot: 0x41,
	]
	ts_msg_open
	.string "PLEASE TAKE THIS\n"
	.string "ELEVATOR DOWN."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "WHEN YOU STOP,PLEASE\n"
	.string "GO DOWN THE SMALL\n"
	.string "SET OF STAIRS THERE."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87BD064_unk14
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Alright,let's go!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87BD064_unk15
	ts_mugshot_show [
		mugshot: 0x14,
	]
	ts_msg_open
	.string "Yeah!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	