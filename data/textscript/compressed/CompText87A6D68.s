	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A6D68::
	.word 0x9F000

	text_archive_start

	def_text_script CompText87A6D68_unk0
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Is everyone back?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Good. Next,we'll be\n"
	.string "studying about\n"
	.string "CopyBots."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You don't know what\n"
	.string "a CopyBot is yet,\n"
	.string "do you,Lan?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87A6D68_unk1
	ts_mugshot_show 0x0
	ts_msg_open
	.string "There's one in the\n"
	.string "foyer,but I don't\n"
	.string "know what it does."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87A6D68_unk2
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Well then,will some-\n"
	.string "one explain to Lan\n"
	.string "what a CopyBot is?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87A6D68_unk3
	ts_mugshot_show 0x33
	ts_msg_open
	.string "I will,sir!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "A CopyBot,as it\n"
	.string "is,can't move.\n"
	.string "However,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "if you send a Navi\n"
	.string "into one,it changes\n"
	.string "into that Navi,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and then the Navi\n"
	.string "is free to move\n"
	.string "around in our world."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87A6D68_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Heh!? A Navi in the\n"
	.string "real world!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've never heard\n"
	.string "of technology\n"
	.string "like that!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87A6D68_unk5
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Ha,ha,ha! I'm not\n"
	.string "surprised!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This technology only\n"
	.string "exists here in Cyber\n"
	.string "City."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Each area of Cyber\n"
	.string "City is developing\n"
	.string "something different."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This area,\n"
	.string "Central Town,is\n"
	.string "doing research in..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "next-gen Net\n"
	.string "society!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87A6D68_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "N-Next-gen Net\n"
	.string "society!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87A6D68_unk7
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Yup. Right now,Navis\n"
	.string "can only help us in\n"
	.string "the Cyberworld."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But,with CopyBots,\n"
	.string "they will be able to\n"
	.string "exist in our world,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and directly help\n"
	.string "people."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Of course they can\n"
	.string "still go between the\n"
	.string "Cyberworld and ours."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And that's what a\n"
	.string "next-gen Net\n"
	.string "society is about!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87A6D68_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "W-Wow!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So,you mean MegaMan\n"
	.string "can be in the real\n"
	.string "world too,Mr.Mach?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87A6D68_unk9
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Of course!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But there are a\n"
	.string "few restrictions."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87A6D68_unk10
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Restrictions?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87A6D68_unk11
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Yes. Just like\n"
	.string "people,there are\n"
	.string "good and bad Navis."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If bad Navis were\n"
	.string "allowed to run amok,\n"
	.string "there'd be trouble."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So Navis transfered\n"
	.string "into a CopyBot"
	ts_key_wait 0x0
	ts_clear_msg
	.string "can't use weapons or\n"
	.string "BattleChips like\n"
	.string "in the Cyberworld."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Also,Navis will have\n"
	.string "the same strength as\n"
	.string "a human adult."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So? How about it?\n"
	.string "Wanna bring MegaMan\n"
	.string "into the real world?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87A6D68_unk12
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Of course!!"
	ts_key_wait 0x0
	ts_sound_fade_out 0x1F, 0x8
	ts_end

	def_text_script CompText87A6D68_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "L-Let's do this,\n"
	.string "MegaMan..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87A6D68_unk14
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I'm so nervous.\n"
	.string "I never thought this\n"
	.string "could happen."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText87A6D68_unk15
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Me either..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "MegaMan,\n"
	.string "begin transfer..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A6D68_unk16
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... *gulp*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A6D68_unk17
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Wah!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A6D68_unk18
	ts_mugshot_show 0x0
	ts_msg_open
	.string "H-H-He's aliiiive!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 19

	def_text_script CompText87A6D68_unk19
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I'm not some sort\n"
	.string "of monster,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 20

	def_text_script CompText87A6D68_unk20
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Wahahaha!\n"
	.string "It's MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Feels like some sort\n"
	.string "of dream,doesn't it?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 21

	def_text_script CompText87A6D68_unk21
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Well,I can tell you\n"
	.string "it's not a dream!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script CompText87A6D68_unk22
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Pinch me on\n"
	.string "the cheek,then."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 23

	def_text_script CompText87A6D68_unk23
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Uh...\n"
	.string "If you say so..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A6D68_unk24
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... *pinch*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A6D68_unk25
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ow,ow,ow!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A6D68_unk26
	ts_mugshot_show 0x37
	ts_msg_open
	.string "A-Are you OK,Lan!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Did I pinch you\n"
	.string "too hard?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 27

	def_text_script CompText87A6D68_unk27
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ow! Yeah! I know I\n"
	.string "said,\"pinch me,\"but\n"
	.string "not that hard!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm tearing up\n"
	.string "from the pain..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So much for our\n"
	.string "first meeting in\n"
	.string "the real world..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ow,ow,ow..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 28

	def_text_script CompText87A6D68_unk28
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... Eh,heh,heh...\n"
	.string "I'm sorry!\n"
	.string "...... *gulp*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 29

	def_text_script CompText87A6D68_unk29
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Alright,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Since you're here,\n"
	.string "why not say hi\n"
	.string "to everyone?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But classes are\n"
	.string "going on,so no\n"
	.string "leaving this room."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A6D68_unk30
	ts_mugshot_show 0x37
	ts_msg_open
	.string "... OK!"
	ts_key_wait 0x0
	ts_end

	