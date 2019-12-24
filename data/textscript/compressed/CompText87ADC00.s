	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87ADC00::
	.word 0x5E000

	text_archive_start

	def_text_script CompText87ADC00_unk0
	ts_msg_open
	.string "After that,we turned\n"
	.string "Captain Blackbeard\n"
	.string "in to the NetPolice."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What he had said\n"
	.string "about an\n"
	.string "\"organization\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "sounded suspicious,\n"
	.string "but we'll let the\n"
	.string "NetPolice handle it."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "As for us,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "we helped clean up\n"
	.string "the huge mess at\n"
	.string "the Aquarium."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And that\n"
	.string "whole time..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Plata..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He never left\n"
	.string "Mick's side."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ADC00_unk1
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "I really want to\n"
	.string "thank you boys again\n"
	.string "for everything."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sure you know\n"
	.string "by now,but..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That Captain\n"
	.string "Blackbeard fellow"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "was once the animal\n"
	.string "trainer for the show\n"
	.string "here."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But he wasn't\n"
	.string "very good to\n"
	.string "the animals..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Plata here probably\n"
	.string "ran away because he\n"
	.string "was afraid of him."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And that's why\n"
	.string "I fired him."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I never thought\n"
	.string "that he would seek\n"
	.string "revenge like this."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm sorry I dragged\n"
	.string "you boys into this\n"
	.string "mess."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=2

	def_text_script CompText87ADC00_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Well,no one was\n"
	.string "badly hurt,so I'd\n"
	.string "say it's OK now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Alright,we\n"
	.string "should get going\n"
	.string "now."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ADC00_unk3
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "The boys are going\n"
	.string "home now,Plata."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Be a good penguin\n"
	.string "and let go of Mick!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=4

	def_text_script CompText87ADC00_unk4
	ts_mugshot_hide
	ts_msg_open
	.string "*Squawk!!*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=5

	def_text_script CompText87ADC00_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Uh... He's never\n"
	.string "gonna let go,\n"
	.string "is he...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=6

	def_text_script CompText87ADC00_unk6
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "That's a bit of a\n"
	.string "problem,isn't it...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=7

	def_text_script CompText87ADC00_unk7
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... Hey,Lan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=8

	def_text_script CompText87ADC00_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=9

	def_text_script CompText87ADC00_unk9
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Get ready to run."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=10

	def_text_script CompText87ADC00_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Wha-?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ADC00_unk11
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "What the!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's Captain\n"
	.string "Blackbeard over\n"
	.string "there!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He's escaped\n"
	.string "already!!?"
	ts_sound_play_bgm track=0xC
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ADC00_unk12
	ts_mugshot_hide
	ts_msg_open
	.string "*Squawk!!?*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ADC00_unk13
	ts_mugshot_hide
	ts_msg_open
	.string "*Squaaaaawk!!*"
	ts_wait frames=0x3C
	ts_end

	def_text_script CompText87ADC00_unk14
	ts_mugshot_show mugshot=0x8
	ts_msg_open
	.string "... Hm?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What's going on?"
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0x14,
	]
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ADC00_unk15
	ts_mugshot_hide
	ts_msg_open
	.string "*Squawk?*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87ADC00_unk16
	ts_mugshot_hide
	ts_msg_open
	.string "*Squawk? Squawk?*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=17

	def_text_script CompText87ADC00_unk17
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "They've gone home,\n"
	.string "Plata."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=18

	def_text_script CompText87ADC00_unk18
	ts_mugshot_hide
	ts_msg_open
	.string "*Squaaaawk!?*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=19

	def_text_script CompText87ADC00_unk19
	ts_store_timer [
		timer: 0x0,
		value: 0xE,
	]
	ts_control_lock
	ts_text_speed delay=0x3
	ts_mugshot_hide
	ts_msg_open
	.string "*Squaawk! Squaawk!*"
	ts_wait frames=0x1E
	ts_clear_msg
	.string "*Squaawk! Squaawk!*"
	ts_wait frames=0x1E
	ts_clear_msg
	.string "*Squaawk! Squaawk!*"
	ts_wait frames=0x1E
	ts_wait_hold unused=0x0

	