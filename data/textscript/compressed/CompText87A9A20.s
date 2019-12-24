	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A9A20::
	.word 0x9BF00

	text_archive_start

	def_text_script CompText87A9A20_unk0
	ts_msg_open
	.string "The next day..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A9A20_unk1
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "... Alright,I'm\n"
	.string "taking attendance!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Tab!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87A9A20_unk2
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Heeere!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=3

	def_text_script CompText87A9A20_unk3
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Alice!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87A9A20_unk4
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "Here!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87A9A20_unk5
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Mick!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "."
	ts_wait frames=0x14
	.string "."
	ts_wait frames=0x14
	.string "."
	ts_wait frames=0x14
	.string " Mick?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Late again...\n"
	.string "He'll never learn to\n"
	.string "wake up on time..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87A9A20_unk6
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x18B
	.string "*thud,thud,thud*"
	ts_wait frames=0x48
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87A9A20_unk7
	ts_mugshot_hide
	ts_msg_open
	.string "I'm here,I'm here!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm blazing down\n"
	.string "the hallway!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Only 15 more feet\n"
	.string "and I'll be there!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x18B
	.string "*thud,thud,thud*"
	ts_wait frames=0x48
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... 6 more feet!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A9A20_unk8
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "No running in the\n"
	.string "halls! ... Honestly,\n"
	.string "you'll never change."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Hm?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A9A20_unk9
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "*huff,huff...*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Whoo,just made it!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87A9A20_unk10
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Huh!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=11

	def_text_script CompText87A9A20_unk11
	ts_mugshot_show mugshot=0xC
	ts_msg_open
	.string "W-Wha...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=12

	def_text_script CompText87A9A20_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Wh-What the!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A9A20_unk13
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... W-What!? What's\n"
	.string "everyone so\n"
	.string "surprised at?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=14

	def_text_script CompText87A9A20_unk14
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "... Mick,what is\n"
	.string "that thing behind\n"
	.string "you?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=15

	def_text_script CompText87A9A20_unk15
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... Behind me?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A9A20_unk16
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... Ack!! What is\n"
	.string "this thing!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87A9A20_unk17
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "You brought it here,\n"
	.string "didn't you?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87A9A20_unk18
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "I don't know nothing\n"
	.string "about this bird!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Get away!\n"
	.string "Shoo,shoo!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A9A20_unk19
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... Grr!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A9A20_unk20
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Argh!! What's with\n"
	.string "you!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=21

	def_text_script CompText87A9A20_unk21
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Looks like it's\n"
	.string "attached itself\n"
	.string "to you..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Any idea why?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=22

	def_text_script CompText87A9A20_unk22
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Why?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "."
	ts_wait frames=0x14
	.string "."
	ts_wait frames=0x14
	.string "."
	ts_wait frames=0x14
	.string " Oh! now I\n"
	.string "remember!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I gave it some food\n"
	.string "yesterday. What a\n"
	.string "strange pigeon!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=23

	def_text_script CompText87A9A20_unk23
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "... Uh,Mick,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "that's not a\n"
	.string "pigeon -- it's a\n"
	.string "penguin!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=24

	def_text_script CompText87A9A20_unk24
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "."
	ts_wait frames=0xF
	.string "."
	ts_wait frames=0xF
	.string "."
	ts_wait frames=0xF
	.string " Ooooh..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So this is a\n"
	.string "pelican..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=25

	def_text_script CompText87A9A20_unk25
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "."
	ts_wait frames=0xF
	.string "."
	ts_wait frames=0xF
	.string "."
	ts_wait frames=0xF
	.string " Uh,\n"
	.string "that's enough\n"
	.string "for now..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That penguin seems\n"
	.string "to really like you."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So for now,try to\n"
	.string "take good care\n"
	.string "of it!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A9A20_unk26
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "What!? Why!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=27

	def_text_script CompText87A9A20_unk27
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Well,you can't just\n"
	.string "ditch the bird!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=28

	def_text_script CompText87A9A20_unk28
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Y-Yeah,but..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hmph! Why me!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A9A20_unk29
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "There's something\n"
	.string "strange about that\n"
	.string "penguin,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=30

	def_text_script CompText87A9A20_unk30
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "."
	ts_wait frames=0xF
	.string "."
	ts_wait frames=0xF
	.string "."
	ts_wait frames=0xF
	.string " Hmm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe it IS\n"
	.string "a pelican..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=31

	def_text_script CompText87A9A20_unk31
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "L-Lan!!?"
	ts_key_wait any=0x0
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x7,
	]
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A9A20_unk32
	ts_msg_open
	.string "After school..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x177
	.string "*ding,"
	ts_wait frames=0x2A
	.string "dong,"
	ts_wait frames=0x28
	.string "ding,"
	ts_wait frames=0x28
	.string "dong*"
	ts_wait frames=0x50
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_sound_fade_in_bgm [
		track: 0x5,
		length: 0x7,
	]
	ts_end

	def_text_script CompText87A9A20_unk33
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Ahhhh!\n"
	.string "School's finally\n"
	.string "over!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Hm?"
	ts_key_wait any=0x0
	ts_clear_msg

	def_text_script CompText87A9A20_unk34
	ts_mugshot_hide
	ts_msg_open
	.string "*Squawk! Squawk!*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A9A20_unk35
	ts_mugshot_hide
	ts_msg_open
	.string "*Squawk! Squawk!*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=36

	def_text_script CompText87A9A20_unk36
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "What's with you--"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "making a racket all\n"
	.string "of a sudden!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Argh..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A9A20_unk37
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "That's some noise\n"
	.string "it's making."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Maybe it's\n"
	.string "hungry?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=38

	def_text_script CompText87A9A20_unk38
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "You think\n"
	.string "it's hungry?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I don't have\n"
	.string "any more of that\n"
	.string "pigeon food!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=39

	def_text_script CompText87A9A20_unk39
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Speaking of\n"
	.string "which,what do\n"
	.string "penguins eat?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Hmm,maybe we\n"
	.string "should ask the\n"
	.string "Biology teacher..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Tell you what,Mick,\n"
	.string "I'll find some bird\n"
	.string "food for you!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You just hang tight\n"
	.string "here and watch the\n"
	.string "penguin,OK?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=40

	def_text_script CompText87A9A20_unk40
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... I don't really\n"
	.string "wanna owe you..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but I don't wanna\n"
	.string "leave this penguin\n"
	.string "alone,either."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Gotta choose...\n"
	.string "Gotta choose..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright,you'd better\n"
	.string "find me some\n"
	.string "bird food or else!"
	ts_key_wait any=0x0
	ts_end

	