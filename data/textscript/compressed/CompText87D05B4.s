	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87D05B4::
	.word 0x46700

	text_archive_start

	def_text_script CompText87D05B4_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Did you guys get all\n"
	.string "the stamps!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87D05B4_unk1
	ts_mugshot_show 0x2
	ts_msg_open
	.string "We got them all,\n"
	.string "right Mick!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D05B4_unk2
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Yeah!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "People and CopyBots\n"
	.string "living together!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Next-Gen Net\n"
	.string "society! I've been\n"
	.string "waiting to see this!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87D05B4_unk3
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Wow,he's really\n"
	.string "excited about it..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87D05B4_unk4
	ts_mugshot_show 0x33
	ts_msg_open
	.string "You two should\n"
	.string "tag-team Lan in a\n"
	.string "NetBattle,too!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87D05B4_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Glad they're getting\n"
	.string "along,but teaming up\n"
	.string "sounds... Ahahaha..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D05B4_unk6
	ts_mugshot_show 0x1
	ts_msg_open
	.string "The Central Pavilion\n"
	.string "sounds like fun,huh,\n"
	.string "Iris?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87D05B4_unk7
	ts_mugshot_show 0x11
	ts_msg_open
	.string "Yes."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87D05B4_unk8
	ts_mugshot_show 0x3
	ts_msg_open
	.string "You should come over\n"
	.string "to my house some\n"
	.string "time,Iris."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We can have some\n"
	.string "extraordinary\n"
	.string "strawberry milk!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87D05B4_unk9
	ts_mugshot_show 0x11
	ts_msg_open
	.string "Really?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87D05B4_unk10
	ts_mugshot_show 0x3
	ts_msg_open
	.string "Yeah! You can come\n"
	.string "visit any time!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87D05B4_unk11
	ts_mugshot_show 0x11
	ts_msg_open
	.string "......"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87D05B4_unk12
	ts_mugshot_show 0x1
	ts_msg_open
	.string "What's wrong,Iris?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87D05B4_unk13
	ts_mugshot_show 0x11
	ts_msg_open
	.string "No,it's nothing.\n"
	.string "I'm looking forward\n"
	.string "to strawberry milk!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87D05B4_unk14
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Looks like everyone\n"
	.string "really is getting\n"
	.string "along..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,everyone,let's\n"
	.string "go into the Central\n"
	.string "Pavilion!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D05B4_unk15
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Everyone ready?\n"
	.string "Here we GO!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D05B4_unk16
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "They've entered..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D05B4_unk17
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "If we don't hurry\n"
	.string "up,we'll miss our\n"
	.string "chance..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87D05B4_unk18
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "But we can't get to\n"
	.string "our target if we go\n"
	.string "through the front..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 19

	def_text_script CompText87D05B4_unk19
	ts_mugshot_show 0x41
	ts_msg_open
	.string "INTRUDERS!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87D05B4_unk20
	ts_mugshot_show 0x2B
	ts_msg_open
	.string "Hmph,we've been\n"
	.string "spotted..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Retreat!"
	ts_key_wait 0x0
	ts_end

	