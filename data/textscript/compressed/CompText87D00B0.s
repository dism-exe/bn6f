	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D00B0::
	.word 0x6FF00

	text_archive_start

	def_text_script CompText87D00B0_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "So this is the Expo\n"
	.string "Site...\n"
	.string "Hmm......"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87D00B0_unk1
	ts_mugshot_hide
	ts_msg_open
	.string "Welcome to the Expo!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D00B0_unk2
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Welcome!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You must be Lan\n"
	.string "Hikari and his\n"
	.string "friends!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87D00B0_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Um,why does it seem\n"
	.string "like we're the only\n"
	.string "ones here..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87D00B0_unk4
	ts_mugshot_show 0x41
	ts_msg_open
	.string "That's because today\n"
	.string "is reserved just for\n"
	.string "you!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87D00B0_unk5
	ts_mugshot_show 0x2
	ts_msg_open
	.string "No kidding!?\n"
	.string "Reserved for us!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You mean we have\n"
	.string "the Expo all to\n"
	.string "ourselves!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87D00B0_unk6
	ts_mugshot_show 0x33
	ts_msg_open
	.string "Ho,ho! Are we lucky\n"
	.string "or what?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87D00B0_unk7
	ts_mugshot_show 0x3
	ts_msg_open
	.string "I'm happy for us,but\n"
	.string "I don't know where\n"
	.string "to start..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87D00B0_unk8
	ts_mugshot_show 0x41
	ts_msg_open
	.string "For that,we have a\n"
	.string "special Stamp Rally!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let me show you\n"
	.string "each pavilion!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please look to your\n"
	.string "right!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D00B0_unk9
	ts_mugshot_show 0x41
	ts_msg_open
	.string "This is the Seaside\n"
	.string "Town Pavilion!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Their theme is\n"
	.string "\"The Harmony of Man\n"
	.string " and Water\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Next,is..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D00B0_unk10
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Green Town's\n"
	.string "Pavilion!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Their theme is\n"
	.string "\"The Benefits of\n"
	.string " Nature to Man,and"
	ts_key_wait 0x0
	ts_clear_msg
	.string " the Effects of\n"
	.string " Environmental\n"
	.string " Destruction\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And next we have..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D00B0_unk11
	ts_mugshot_show 0x41
	ts_msg_open
	.string "the Sky Town\n"
	.string "Pavilion!\n"
	.string "Their theme is"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"Improving Man's\n"
	.string " Life Through\n"
	.string " Weather Control\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lastly,we have"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D00B0_unk12
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Central Town's\n"
	.string "Pavilion!\n"
	.string "Their theme is"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"Next-Gen Net\n"
	.string " Society:Man and\n"
	.string " CopyBots,Together\"."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D00B0_unk13
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Please get a stamp\n"
	.string "from the Green,Sky,\n"
	.string "and Seaside"
	ts_key_wait 0x0
	ts_clear_msg
	.string "pavilions,and then\n"
	.string "go to the Central\n"
	.string "Town Pavilion."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I will now give you\n"
	.string "your stamp cards!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D00B0_unk14
	ts_msg_open
	ts_sound_play00 0x73, 0x0
	.string "Everyone got a:\n"
	.string "\""
	ts_print_item 0x2, 0xB0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText87D00B0_unk15
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Please have a good\n"
	.string "time!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D00B0_unk16
	ts_mugshot_show 0x2
	ts_msg_open
	.string "OK! Seaside\n"
	.string "Pavilion,\n"
	.string "here I come!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D00B0_unk17
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Hey,I'm coming,too!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D00B0_unk18
	ts_mugshot_show 0x33
	ts_msg_open
	.string "I'm going to the\n"
	.string "Green Pavilion!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D00B0_unk19
	ts_mugshot_show 0x3
	ts_msg_open
	.string "Let's go to the\n"
	.string "Sky Pavilion,Mayl!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 20

	def_text_script CompText87D00B0_unk20
	ts_mugshot_show 0x1
	ts_msg_open
	.string "OK!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D00B0_unk21
	ts_mugshot_show 0x1
	ts_msg_open
	.string "Why don't you come\n"
	.string "along too,Iris?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "OK?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script CompText87D00B0_unk22
	ts_mugshot_show 0x11
	ts_msg_open
	.string "... OK."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D00B0_unk23
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Well,MegaMan,what\n"
	.string "should we check\n"
	.string "out first?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 24

	def_text_script CompText87D00B0_unk24
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Um,the Expo's nice,\n"
	.string "but doesn't it feel\n"
	.string "kinda creepy to you?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 25

	def_text_script CompText87D00B0_unk25
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Are you still\n"
	.string "worrying about\n"
	.string "that!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We got a\n"
	.string "reservation,so let's\n"
	.string "have some fun!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Come on,let's go!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 26

	def_text_script CompText87D00B0_unk26
	ts_mugshot_show 0x37
	ts_msg_open
	.string "O-OK..."
	ts_key_wait 0x0
	ts_end

	