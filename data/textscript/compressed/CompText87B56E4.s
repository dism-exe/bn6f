	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B56E4::
	.word 0x29600

	text_archive_start

	def_text_script CompText87B56E4_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Wow,what a\n"
	.string "big building."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This has to be\n"
	.string "the courthouse."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87B56E4_unk1
	ts_sound_play_bgm 0x63, 0x0
	ts_mugshot_hide
	ts_msg_open
	.string "... Freeze."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B56E4_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Huh?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B56E4_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Uh,did you\n"
	.string "say something?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87B56E4_unk4
	ts_mugshot_show 0x2C
	ts_msg_open
	.string "... Lan Hikari,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you will stop where\n"
	.string "you are."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87B56E4_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How do you know\n"
	.string "my name...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87B56E4_unk6
	ts_mugshot_show 0x2C
	ts_msg_open
	.string "... You will be\n"
	.string "quiet and follow\n"
	.string "my orders."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is a command..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87B56E4_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Nngh!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Why should I listen\n"
	.string "to some weirdo I\n"
	.string "don't know!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87B56E4_unk8
	ts_mugshot_show 0x2C
	ts_msg_open
	.string "I'm only doing my\n"
	.string "duty..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87B56E4_unk9
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... You're not\n"
	.string "making any sense."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Anyway,I've got an\n"
	.string "important trial to\n"
	.string "go to!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B56E4_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "And I won't be\n"
	.string "\"commanded\" by some\n"
	.string "suspicious guy."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87B56E4_unk11
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... Y-Yeah."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B56E4_unk12
	ts_mugshot_show 0x2C
	ts_msg_open
	.string "......"
	ts_key_wait 0x0
	ts_end

	