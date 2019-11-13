TextScriptDadCybeastTut::
	text_archive_start

	def_text_script TextScriptDadCybeastTut_unk0
	ts_mugshot_show 0x5
	ts_msg_open
	.string "MegaMan has a\n"
	.string "Cybeast's power\n"
	.string "inside of him..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let me explain how\n"
	.string "you can harness\n"
	.string "that power."
	ts_key_wait 0x0
	ts_end

	def_text_script TextScriptDadCybeastTut_unk1
	ts_mugshot_show 0x5
	ts_msg_open
	.string "The CybeastButton!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script TextScriptDadCybeastTut_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The CybeastButton...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script TextScriptDadCybeastTut_unk3
	ts_mugshot_show 0x5
	ts_msg_open
	.string "It's a button to\n"
	.string "release the\n"
	.string "CybeastPower locked"
	ts_key_wait 0x0
	ts_clear_msg
	.string "inside of MegaMan."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Releasing 100% of\n"
	.string "the power would\n"
	.string "be dangerous..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There is a limit\n"
	.string "to the power you\n"
	.string "can control..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd say it's set\n"
	.string "at about 50% or\n"
	.string "so..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Pressing this button\n"
	.string "will cause MegaMan\n"
	.string "to \"BeastOut\"."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script TextScriptDadCybeastTut_unk4
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Lan,\n"
	.string "give it a shot!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScriptDadCybeastTut_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Meg...MegaMan is\n"
	.string "a Cybeast now!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script TextScriptDadCybeastTut_unk6
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Lan,try talking\n"
	.string "to MegaMan."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script TextScriptDadCybeastTut_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "O...OK...\n"
	.string "MegaMan,are you\n"
	.string "alright?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script TextScriptDadCybeastTut_unk8
	ts_mugshot_show 0x59
	ts_msg_open
	.string "Yes... I'm OK.\n"
	.string "I'm able to focus\n"
	.string "but..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I feel an amazing,\n"
	.string "raging power rising\n"
	.string "inside..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script TextScriptDadCybeastTut_unk9
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Good,it seems like\n"
	.string "you are able to\n"
	.string "control it."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Controlling a\n"
	.string "Cybeast's power will"
	ts_key_wait 0x0
	ts_clear_msg
	.string "completely exhaust\n"
	.string "your emotions."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can only be a\n"
	.string "Cybeast until this"
	ts_key_wait 0x0
	ts_clear_msg
	.string "EmotionCounter\n"
	.string "reaches 0."
	ts_key_wait 0x0
	ts_end

	def_text_script TextScriptDadCybeastTut_unk10
	ts_mugshot_show 0x5
	ts_msg_open
	.string "When MegaMan is a\n"
	.string "Cybeast,its power\n"
	.string "should give all"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Elementless attack\n"
	.string "chips that do not\n"
	.string "dim the screen"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Attack+30."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Really!?\n"
	.string "No way...!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 11

	def_text_script TextScriptDadCybeastTut_unk11
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Also,when using a\n"
	.string "chip,MegaMan will\n"
	.string "have a Cybeast's"
	ts_key_wait 0x0
	ts_clear_msg
	.string "speed,letting him\n"
	.string "automatically rush\n"
	.string "to where the attack"
	ts_key_wait 0x0
	ts_clear_msg
	.string "will hit! But only\n"
	.string "for chips that do\n"
	.string "not dim the screen."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 12

	def_text_script TextScriptDadCybeastTut_unk12
	ts_mugshot_show 0x5
	ts_msg_open
	.string "By tapping the B\n"
	.string "Button,you can\n"
	.string "use a rapid fire"
	ts_key_wait 0x0
	ts_clear_msg
	.string "FalzarBuster..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And if you power up\n"
	.string "a Elementless chip\n"
	.string "as a Cybeast,it will"
	ts_key_wait 0x0
	ts_clear_msg
	.string "set off an awesome\n"
	.string "special move!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 13

	def_text_script TextScriptDadCybeastTut_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It really feels\n"
	.string "wild! I wonder if\n"
	.string "I can really handle"
	ts_key_wait 0x0
	ts_clear_msg
	.string "all this power..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 14

	def_text_script TextScriptDadCybeastTut_unk14
	ts_mugshot_show 0x59
	ts_msg_open
	.string "Lan,it's alright!\n"
	.string "I believe in you!\n"
	.string "Let's give it a try!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 15

	def_text_script TextScriptDadCybeastTut_unk15
	ts_mugshot_show 0x5
	ts_msg_open
	.string "MegaMan is right.\n"
	.string "Lan,try operating\n"
	.string "him!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScriptDadCybeastTut_unk16
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Cool! I busted those\n"
	.string "viruses in the blink\n"
	.string "of an eye..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... MegaMan!\n"
	.string "Are you OK?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 17

	def_text_script TextScriptDadCybeastTut_unk17
	ts_mugshot_show 0x59
	.string "Yeah...\n"
	.string "I'm OK,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 18

	def_text_script TextScriptDadCybeastTut_unk18
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Whew!\n"
	.string "Thank goodness!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 19

	def_text_script TextScriptDadCybeastTut_unk19
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Incredible power...\n"
	.string "But you seem to\n"
	.string "handle it well..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Each turn you spend\n"
	.string "as a Cybeast will"
	ts_key_wait 0x0
	ts_clear_msg
	.string "decrease your\n"
	.string "EmotionCounter\n"
	.string "by 1."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When that counter\n"
	.string "hits 0,MegaMan will\n"
	.string "return to normal..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Except a bit tired."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan,when MegaMan is\n"
	.string "tired,don't press\n"
	.string "the CybeastButton."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Understand?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 20

	def_text_script TextScriptDadCybeastTut_unk20
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Got..Gotcha...\n"
	.string "But what happens\n"
	.string "if I press it...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 21

	def_text_script TextScriptDadCybeastTut_unk21
	ts_mugshot_show 0x5
	ts_msg_open
	.string "When he's tired,he\n"
	.string "can't control the\n"
	.string "CybeastPower..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If that happens...\n"
	.string "The CybeastPower\n"
	.string "will reach 100%"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and completely\n"
	.string "take over!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "MegaMan would become\n"
	.string "completely wild...\n"
	.string "He'll \"BeastOver\"!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 22

	def_text_script TextScriptDadCybeastTut_unk22
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Wild..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 23

	def_text_script TextScriptDadCybeastTut_unk23
	ts_mugshot_show 0x5
	ts_msg_open
	.string "After MegaMan is\n"
	.string "no longer wild,\n"
	.string "he will probably"
	ts_key_wait 0x0
	ts_clear_msg
	.string "be very tired...\n"
	.string "Be careful not to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "transform at the\n"
	.string "wrong time."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 24

	def_text_script TextScriptDadCybeastTut_unk24
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Yeah...\n"
	.string "The CybeastButton\n"
	.string "and BeastOut..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's an awesome\n"
	.string "power,but it can\n"
	.string "be dangerous to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "MegaMan. I'll use\n"
	.string "it as a trump card\n"
	.string "during battle."
	ts_key_wait 0x0
	ts_end

	def_text_script TextScriptDadCybeastTut_unk25
	ts_mugshot_show 0x37
	ts_msg_open
	.string "*huff...huff...*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 26

	def_text_script TextScriptDadCybeastTut_unk26
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan! You've\n"
	.string "transformed back!\n"
	.string "Are you OK!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 27

	def_text_script TextScriptDadCybeastTut_unk27
	ts_mugshot_show 0x5
	ts_msg_open
	.string "That power seems\n"
	.string "to place a great\n"
	.string "burden on his body."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When EmotionCounter\n"
	.string "reaches zero,MegaMan\n"
	.string "will transform back."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Then he'll feel\n"
	.string "tired like this\n"
	.string "for a while."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan,when MegaMan is\n"
	.string "tired,don't press\n"
	.string "the CybeastButton."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Understand?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 28

	def_text_script TextScriptDadCybeastTut_unk28
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Got..Gotcha...\n"
	.string "But what happens\n"
	.string "if I press it...?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 29

	def_text_script TextScriptDadCybeastTut_unk29
	ts_mugshot_show 0x5
	ts_msg_open
	.string "When he's tired,he\n"
	.string "can't control the\n"
	.string "CybeastPower..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If that happens...\n"
	.string "The CybeastPower\n"
	.string "will reach 100%"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and completely\n"
	.string "take over!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "MegaMan would become\n"
	.string "completely wild...\n"
	.string "He'll \"BeastOver\"!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 30

	def_text_script TextScriptDadCybeastTut_unk30
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Wild..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 31

	def_text_script TextScriptDadCybeastTut_unk31
	ts_mugshot_show 0x5
	ts_msg_open
	.string "After MegaMan is\n"
	.string "no longer wild,\n"
	.string "he will probably"
	ts_key_wait 0x0
	ts_clear_msg
	.string "be very tired...\n"
	.string "Be careful not to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "transform at the\n"
	.string "wrong time."
	ts_key_wait 0x0
	ts_clear_msg

	def_text_script TextScriptDadCybeastTut_unk32
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Yeah!\n"
	.string "I think I've got\n"
	.string "the hang of it!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 33

	def_text_script TextScriptDadCybeastTut_unk33
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Transforming into a\n"
	.string "Cybeast gives him\n"
	.string "incredible power,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but it's also very\n"
	.string "tiring for MegaMan."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You have to be\n"
	.string "careful when you\n"
	.string "use this power."
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 34

	def_text_script TextScriptDadCybeastTut_unk34
	ts_mugshot_show 0x0
	ts_msg_open
	.string "OK! Thanks,Dad!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScriptDadCybeastTut_unk35
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Lan,don't run away.\n"
	.string "You should keep\n"
	.string "going!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScriptDadCybeastTut_unk36
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Press the\n"
	.string "CybeastButton,Lan."
	ts_key_wait 0x0
	ts_end

	def_text_script TextScriptDadCybeastTut_unk37
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Press the\n"
	.string "CybeastButton,Lan."
	ts_key_wait 0x0
	ts_end

	def_text_script TextScriptDadCybeastTut_unk38
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Lan! Look at\n"
	.string "MegaMan! You can't\n"
	.string "transform now!"
	ts_key_wait 0x0
	ts_end

	def_text_script TextScriptDadCybeastTut_unk39
	ts_mugshot_show 0x5
	ts_msg_open
	.string "Lan,don't cancel.\n"
	.string "You should keep\n"
	.string "going!"
	ts_key_wait 0x0
	ts_end

	.balign 4, 0
