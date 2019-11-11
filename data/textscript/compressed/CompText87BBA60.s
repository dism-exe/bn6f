	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87BBA60::
	.word 0x58B00

	text_archive_start

	def_text_script CompText87BBA60_unk0
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Great job,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87BBA60_unk1
	ts_mugshot_show 0x2D
	ts_msg_open
	.string "N-No..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "JudgeMan lost..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BBA60_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The Robots' electric\n"
	.string "arms stopped\n"
	.string "zapping!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That means Dad's\n"
	.string "safe,too!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BBA60_unk3
	ts_mugshot_show 0x2C
	ts_msg_open
	.string "... Hmph."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BBA60_unk4
	ts_msg_open
	.string "After that,I hurried\n"
	.string "to Dad's cell."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Somehow,we stopped\n"
	.string "it in time,and Dad\n"
	.string "was OK."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But boy,did we cut\n"
	.string "it close! There was\n"
	.string "only 1 minute left."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You can't imagine\n"
	.string "how happy I was we\n"
	.string "made it..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "After that,the real\n"
	.string "culprit of this\n"
	.string "whole incident,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Prosecutor Ito,\n"
	.string "didn't put up a\n"
	.string "fight"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and quietly let\n"
	.string "himself be arrested\n"
	.string "by the NetPolice."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He wouldn't say\n"
	.string "anything during the\n"
	.string "investigation,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and after examining\n"
	.string "the JudgeTree,it was\n"
	.string "found that"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the Prosecutor had\n"
	.string "really messed up\n"
	.string "the tree's program."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It looked like it\n"
	.string "was going to be\n"
	.string "really hard to fix,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but somehow,a few\n"
	.string "days later,the tree\n"
	.string "was able to hold"
	ts_key_wait 0x0
	ts_clear_msg
	.string "trials again.\n"
	.string "Its first job was..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BBA60_unk5
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_msg_open
	ts_store_timer 0x0, 0x10
	ts_wait 0xA, 0x0
	ts_sound_play00 0xA0, 0x1
	.string "*crack! "
	ts_wait 0x20, 0x0
	ts_sound_play00 0xA0, 0x1
	.string "crack!*"
	ts_wait 0x20, 0x0
	ts_wait_o_w_var 0x0, 0x11
	ts_clear_msg
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_end

	def_text_script CompText87BBA60_unk6
	ts_mugshot_hide
	ts_msg_open
	.string "I PRONOUNCE THAT\n"
	.string "PROSECUTOR ITO,IS..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "GUILTY!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "HE WILL BE STRIPPED\n"
	.string "OF HIS TITLE OF\n"
	.string "\"PROSECUTOR\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "EFFECTIVE\n"
	.string "IMMEDIATELY."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87BBA60_unk7
	ts_msg_open
	.string "In the end,the trial\n"
	.string "system set up by the\n"
	.string "Prosecutor"
	ts_key_wait 0x0
	ts_clear_msg
	.string "was used to put\n"
	.string "the Prosecutor\n"
	.string "himself on trial."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm sure adults who\n"
	.string "saw this said to\n"
	.string "each other,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"How ironic\"..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And I'm pretty sure\n"
	.string "the Prosecutor got"
	ts_key_wait 0x0
	ts_clear_msg
	.string "a very harsh\n"
	.string "punishment..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string "."
	ts_wait 0xF, 0x0
	.string " Oh,yeah..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There was one more\n"
	.string "person who needed\n"
	.string "punishing that I"
	ts_key_wait 0x0
	ts_clear_msg
	.string "can't forget about.\n"
	.string "That person was in\n"
	.string "Central Town..."
	ts_key_wait 0x0
	ts_end

	