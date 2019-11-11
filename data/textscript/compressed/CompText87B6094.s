	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B6094::
	.word 0x9CF00

	text_archive_start

	def_text_script CompText87B6094_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I wonder if it's\n"
	.string "really OK to just\n"
	.string "walk in now..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87B6094_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "That Navi just now\n"
	.string "said that if you"
	ts_key_wait 0x0
	ts_clear_msg
	.string "have a PET that has\n"
	.string "permission data on"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it,the security gate\n"
	.string "should automatically\n"
	.string "let you in."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So it's probably OK!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87B6094_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Alright,I'll\n"
	.string "give it a try."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B6094_unk3
	ts_sound_play_bgm 0x63, 0x0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "."
	ts_wait 0x14, 0x0
	.string "."
	ts_wait 0x14, 0x0
	.string "."
	ts_wait 0x14, 0x0
	.string "."
	ts_wait 0x14, 0x0
	.string "."
	ts_wait 0x14, 0x0
	.string "."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B6094_unk4
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hey,"
	ts_sound_play_bgm 0x8, 0x0
	.string "\n"
	.string "looks like I'm in!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87B6094_unk5
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Heeey!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B6094_unk6
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Over here,over here!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B6094_unk7
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Looks like you got\n"
	.string "the permission data\n"
	.string "with no problems."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87B6094_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Yeah,it went OK!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "By the way..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87B6094_unk9
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Oh,sorry."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This man is the\n"
	.string "prosecutor who\n"
	.string "is in charge of"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the case involving\n"
	.string "the Aquarium,\n"
	.string "Prosecutor Ito."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 10

	def_text_script CompText87B6094_unk10
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "Ah,so you're the one\n"
	.string "testifying today."
	ts_key_wait 0x0
	ts_clear_msg
	.string "How do you do?\n"
	.string "I'm Prosecutor Ito."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script CompText87B6094_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Um... I kinda know,\n"
	.string "but what exactly is\n"
	.string "a prosecutor...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script CompText87B6094_unk12
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "Haha,oh,sorry!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "A \"prosecutor\" is\n"
	.string "basically a person\n"
	.string "that looks into an"
	ts_key_wait 0x0
	ts_clear_msg
	.string "incident and tries\n"
	.string "to bring the culprit\n"
	.string "in to court to face"
	ts_key_wait 0x0
	ts_clear_msg
	.string "justice. That's\n"
	.string "what I do. It's an\n"
	.string "important job,and"
	ts_key_wait 0x0
	ts_clear_msg
	.string "today's trial is one\n"
	.string "part of my job."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script CompText87B6094_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "So that's what\n"
	.string "you do."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh! I forgot!\n"
	.string "I'm Lan Hikari.\n"
	.string "Nice to meet you."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script CompText87B6094_unk14
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "Lan Hikari,huh...\n"
	.string "That's a nice name."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script CompText87B6094_unk15
	ts_mugshot_show 0x0
	ts_msg_open
	.string "R-Really?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 16

	def_text_script CompText87B6094_unk16
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "When you've been a\n"
	.string "prosecutor for as\n"
	.string "long as I have,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you've heard a lot\n"
	.string "of names,and you can\n"
	.string "tell just by a name"
	ts_key_wait 0x0
	ts_clear_msg
	.string "if a person is good\n"
	.string "or bad."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You are a good\n"
	.string "person..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "or am I wrong?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script CompText87B6094_unk17
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Heheh,well,when you\n"
	.string "put it like that..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script CompText87B6094_unk18
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "Your parents gave\n"
	.string "you a very good\n"
	.string "name,you know."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Come to think\n"
	.string "of it,your father,\n"
	.string "he's one of the top"
	ts_key_wait 0x0
	ts_clear_msg
	.string "5 scientists in the\n"
	.string "world,Dr.Yuichiro\n"
	.string "Hikari,right?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 19

	def_text_script CompText87B6094_unk19
	ts_mugshot_show 0xF
	ts_msg_open
	.string "Ho,ho! Is that so?\n"
	.string "I didn't know that!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 20

	def_text_script CompText87B6094_unk20
	ts_mugshot_show 0x0
	ts_msg_open
	.string "How did you know\n"
	.string "that?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 21

	def_text_script CompText87B6094_unk21
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "I ran a little\n"
	.string "background check\n"
	.string "on you beforehand."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's something that\n"
	.string "needs to be done\n"
	.string "here for the trial."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Ah,but I'm\n"
	.string "jealous that your\n"
	.string "father is Dr.Hikari."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I would love to talk\n"
	.string "with him,even for\n"
	.string "just a little bit."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script CompText87B6094_unk22
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Really? I'll tell\n"
	.string "him that!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 23

	def_text_script CompText87B6094_unk23
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "You will!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I was only half-\n"
	.string "serious,I mean I\n"
	.string "never thought..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B6094_unk24
	ts_mugshot_show 0xF
	ts_msg_open
	.string "You two seem to\n"
	.string "have a lot to talk\n"
	.string "about,but"
	ts_key_wait 0x0
	ts_clear_msg
	.string "we should really\n"
	.string "get to the trial..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B6094_unk25
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "Ah,that's true.\n"
	.string "I'm sorry."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87B6094_unk26
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "Speaking of that,\n"
	.string "this is your first\n"
	.string "time here,right,Lan?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I think you should\n"
	.string "take a look around\n"
	.string "the courtroom."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I think you'll be\n"
	.string "surprised by what\n"
	.string "you see in there."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The system here is\n"
	.string "really something\n"
	.string "else!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The courtroom is\n"
	.string "right behind those\n"
	.string "huge doors!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 27

	def_text_script CompText87B6094_unk27
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hmm,a special\n"
	.string "system...?\n"
	.string "Sounds exciting!"
	ts_key_wait 0x0
	ts_end

	