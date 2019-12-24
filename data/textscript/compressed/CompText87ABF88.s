	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87ABF88::
	.word 0x3B800

	text_archive_start

	def_text_script CompText87ABF88_unk0
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... You really OK\n"
	.string "with not saying bye\n"
	.string "to Plata?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ABF88_unk1
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Stop already!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't need to\n"
	.string "say some special\n"
	.string "goodbye..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87ABF88_unk2_id

	def_text_script CompText87ABF88_unk2
	ts_mugshot_show mugshot=0x18
	ts_msg_open
	.string "Eeeeek!"
	ts_sound_stop
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ABF88_unk3
	ts_mugshot_show mugshot=0x18
	ts_msg_open
	.string "O-Oh no!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There are piranhas\n"
	.string "in the fountain!"
	ts_sound_play_bgm track=0xC
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87ABF88_unk4_id

	def_text_script CompText87ABF88_unk4
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Aaaaah!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ABF88_unk5
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Sh-Sharks!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ABF88_unk6
	ts_mugshot_show mugshot=0xD
	ts_msg_open
	.string "This is terrible!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The Aquarium's tanks\n"
	.string "and cages just all\n"
	.string "unlocked themselves,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and all the fish\n"
	.string "and animals have\n"
	.string "escaped!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The Aquarium is\n"
	.string "connected to the\n"
	.string "town's water system!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ah,everyone stay\n"
	.string "away from the water!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ABF88_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "This is bad!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That aquarium had\n"
	.string "alligators,too,\n"
	.string "remember?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If they escape\n"
	.string "into town..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87ABF88_unk8_id

	def_text_script CompText87ABF88_unk8
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... The penguin...\n"
	.string "Is he alright?..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ABF88_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Eh?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87ABF88_unk10_id

	def_text_script CompText87ABF88_unk10
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... I'm going to\n"
	.string "go check it out!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ABF88_unk11
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Hey!\n"
	.string "W-Wait up!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's too dangerous\n"
	.string "to go by yourself!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ABF88_unk12
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ABF88_unk13
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,we should go\n"
	.string "back to the\n"
	.string "Aquarium,too!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This wasn't an\n"
	.string "accident -- I'm sure\n"
	.string "someone caused this!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87ABF88_unk14_id

	def_text_script CompText87ABF88_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah,I know."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Let's go. We've\n"
	.string "gotta catch up with\n"
	.string "Mick!"
	ts_key_wait any=0x0
	ts_end

	