	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876F2EC::
	.word 0x79700

	text_archive_start

	def_text_script CompText876F2EC_unk0
	ts_mugshot_show 0x9
	ts_msg_open
	.string "I'm gonna practice\n"
	.string "the technique I"
	ts_key_wait 0x0
	ts_clear_msg
	.string "learned today on a\n"
	.string "virus!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F2EC_unk1
	ts_check_chapter 0x21, 0x21, 0x5, 0xFF
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Everyone be careful\n"
	.string "on your way home!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F2EC_unk2
	ts_mugshot_show 0x8
	ts_msg_open
	.string "I'm huunnnngrrry!\n"
	.string "I want to go home\n"
	.string "nooooooooow!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x9
	.string "Hold on...\n"
	.string "Just a second!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F2EC_unk3

	def_text_script CompText876F2EC_unk4

	def_text_script CompText876F2EC_unk5
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Don't hang around\n"
	.string "here too long!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F2EC_unk6

	def_text_script CompText876F2EC_unk7

	def_text_script CompText876F2EC_unk8

	def_text_script CompText876F2EC_unk9

	def_text_script CompText876F2EC_unk10

	def_text_script CompText876F2EC_unk11

	def_text_script CompText876F2EC_unk12

	def_text_script CompText876F2EC_unk13

	def_text_script CompText876F2EC_unk14

	def_text_script CompText876F2EC_unk15

	def_text_script CompText876F2EC_unk16

	def_text_script CompText876F2EC_unk17

	def_text_script CompText876F2EC_unk18

	def_text_script CompText876F2EC_unk19

	def_text_script CompText876F2EC_unk20
	ts_check_flag 0x6E, 0x8, 0x15, 0xFF
	ts_flag_set 0x6E, 0x8
	ts_mugshot_show 0x12
	ts_msg_open
	.string "...Umm... What's\n"
	.string "the matter,Lan?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "...Sir..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I heard the board\n"
	.string "was undergoing"
	ts_key_wait 0x0
	ts_clear_msg
	.string "maintenance\n"
	.string "yesterday. Right?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do you remember\n"
	.string "what kind of person\n"
	.string "made those repairs?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It wasn't my Dad was\n"
	.string "it?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x12
	.string "...Your dad?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yeah... It was your\n"
	.string "dad..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "An older guy,right?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "OLD!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x12
	.string "Hmm... Maybe he\n"
	.string "was younger?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Actually,I was so\n"
	.string "busy I didn't pay\n"
	.string "attention. Sorry."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "...OK."
	ts_key_wait 0x0
	ts_clear_msg
	.string "What time did the\n"
	.string "maintenance occur?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x12
	.string "Hmmm... It was\n"
	.string "around 3 o'clock\n"
	.string "yesterday,and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it took about\n"
	.string "two hours."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "So two hours from\n"
	.string "3 o'clock means he\n"
	.string "was here at 4 P.M."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "So..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If we can prove\n"
	.string "Dad did the\n"
	.string "maintenance on the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Blackboard,we can\n"
	.string "prove that he is\n"
	.string "innocent!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "But how can we\n"
	.string "prove that it was\n"
	.string "Dad?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The teacher who\n"
	.string "asked for service"
	ts_key_wait 0x0
	ts_clear_msg
	.string "doesn't remember\n"
	.string "his face..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Don't give up\n"
	.string "so easily!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's see what\n"
	.string "we can find in\n"
	.string "the school!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Someone must have\n"
	.string "seen Dad here!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Seen Dad..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...seen..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x12
	.string "What's the matter?\n"
	.string "You've been asking\n"
	.string "a lot of questions!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Is something\n"
	.string "bothering you,Lan?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "I'm OK. Thanks..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x12
	.string "Well,if you're\n"
	.string "OK..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F2EC_unk21
	ts_mugshot_show 0x12
	ts_msg_open
	.string "The Blackboard\n"
	.string "maintenance was"
	ts_key_wait 0x0
	ts_clear_msg
	.string "at 3 o'clock\n"
	.string "yesterday."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It took about two\n"
	.string "hours to complete."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm not sure if the\n"
	.string "person who performed\n"
	.string "the maintenance was"
	ts_key_wait 0x0
	ts_clear_msg
	.string "your Dad...\n"
	.string "I'm sorry..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F2EC_unk22

	def_text_script CompText876F2EC_unk23

	def_text_script CompText876F2EC_unk24

	def_text_script CompText876F2EC_unk25
	ts_mugshot_show 0x12
	ts_msg_open
	.string "Strange..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I haven't seen a\n"
	.string "single Security\n"
	.string "Bot..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876F2EC_unk26

	def_text_script CompText876F2EC_unk27

	def_text_script CompText876F2EC_unk28

	def_text_script CompText876F2EC_unk29

	def_text_script CompText876F2EC_unk30
	ts_mugshot_show 0x17
	ts_msg_open
	.string "Hey,you were a\n"
	.string "witness in court\n"
	.string "weren't you...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Amazing...\n"
	.string "Were you nervous?\n"
	.string "Did you mess up?"
	ts_key_wait 0x0
	ts_end

	