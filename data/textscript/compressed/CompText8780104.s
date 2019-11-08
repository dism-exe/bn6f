	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8780104::
	.word 0xA3500

	text_archive_start

	def_text_script CompText8780104_unk0
	ts_msg_open
	.string "It's a CopyBot.\n"
	.string "There's no need to\n"
	.string "use it now."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk1

	def_text_script CompText8780104_unk2

	def_text_script CompText8780104_unk3

	def_text_script CompText8780104_unk4

	def_text_script CompText8780104_unk5
	ts_mugshot_show 0xE
	ts_msg_open
	.string "*huff,huff...*\n"
	.string "Air... so thin...\n"
	.string "faint... must..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... *huff,huff*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk6
	ts_mugshot_show 0x15
	ts_msg_open
	.string "The fan,heater,air\n"
	.string "conditioner,and\n"
	.string "shower here are"
	ts_key_wait 0x0
	ts_clear_msg
	.string "familiar objects\n"
	.string "that represent the\n"
	.string "weather."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The fan is for wind,\n"
	.string "the heater is for\n"
	.string "heat,the air"
	ts_key_wait 0x0
	ts_clear_msg
	.string "conditioner is for\n"
	.string "coldness,and the\n"
	.string "shower is for rain."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk7

	def_text_script CompText8780104_unk8

	def_text_script CompText8780104_unk9

	def_text_script CompText8780104_unk10
	ts_check_chapter 0x42, 0x42, 0xF, 0xFF
	ts_mugshot_show 0xE
	ts_msg_open
	.string "Hmmmmmmph!!\n"
	.string "I just can't win!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk11
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Ummmm...\n"
	.string "Where am I supposed\n"
	.string "to jack in...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk12
	ts_check_chapter 0x42, 0x42, 0x11, 0xFF
	ts_mugshot_show 0xD
	ts_msg_open
	.string "Where's the next\n"
	.string "judge!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk13
	ts_check_chapter 0x42, 0x42, 0x12, 0xFF
	ts_mugshot_show 0xB
	ts_msg_open
	.string "I-I'm scared..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk14
	ts_check_chapter 0x42, 0x42, 0x13, 0xFF
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Whooooooa!!\n"
	.string "We've gotta go for\n"
	.string "broke!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk15
	ts_mugshot_show 0xE
	ts_msg_open
	.string "*huff...*\n"
	.string "I can't do this...\n"
	.string "Going home..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk16
	ts_mugshot_show 0x15
	ts_msg_open
	.string "... So that's what\n"
	.string "happened on the\n"
	.string "Undernet..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... It's too bad,but\n"
	.string "I think you should\n"
	.string "give up..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The Undernet is too\n"
	.string "dangerous!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk17
	ts_mugshot_show 0xD
	ts_msg_open
	.string "Please don't talk to\n"
	.string "me right now."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I can't believe I\n"
	.string "lost so badly..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk18
	ts_mugshot_show 0xB
	ts_msg_open
	.string "I was so scared that\n"
	.string "I couldn't even take\n"
	.string "one step!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk19
	ts_mugshot_show 0x14
	ts_msg_open
	.string "Lan,I'm sorry..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk20

	def_text_script CompText8780104_unk21

	def_text_script CompText8780104_unk22

	def_text_script CompText8780104_unk23

	def_text_script CompText8780104_unk24

	def_text_script CompText8780104_unk25

	def_text_script CompText8780104_unk26

	def_text_script CompText8780104_unk27

	def_text_script CompText8780104_unk28

	def_text_script CompText8780104_unk29

	def_text_script CompText8780104_unk30

	def_text_script CompText8780104_unk31

	def_text_script CompText8780104_unk32

	def_text_script CompText8780104_unk33

	def_text_script CompText8780104_unk34

	def_text_script CompText8780104_unk35

	def_text_script CompText8780104_unk36

	def_text_script CompText8780104_unk37

	def_text_script CompText8780104_unk38

	def_text_script CompText8780104_unk39

	def_text_script CompText8780104_unk40
	ts_mugshot_show 0xD
	ts_msg_open
	.string "The one that saved\n"
	.string "Sky Town from that\n"
	.string "terrible crisis was"
	ts_key_wait 0x0
	ts_clear_msg
	.string "some strange girl.\n"
	.string "Well,that's what\n"
	.string "people are saying..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But whatever,it's\n"
	.string "only gossip."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk41
	ts_check_flag 0xA, 0xC, 0x2A, 0xFF
	ts_mugshot_show 0xE
	ts_msg_open
	.string "It sounds like the\n"
	.string "final round of the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Operator Navi\n"
	.string "Selection Test has\n"
	.string "started!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder who will\n"
	.string "win..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk42
	ts_mugshot_show 0xE
	ts_msg_open
	.string "Hasn't the Operator\n"
	.string "Navi pretty much\n"
	.string "been chosen?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder who won?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk43
	ts_mugshot_show 0x15
	ts_msg_open
	.string "We didn't prepare\n"
	.string "enough electricity\n"
	.string "after all..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The electricity\n"
	.string "didn't reach all the\n"
	.string "way over here."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hmm,hmm,hmm...\n"
	.string "I wonder why..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk44

	def_text_script CompText8780104_unk45

	def_text_script CompText8780104_unk46

	def_text_script CompText8780104_unk47

	def_text_script CompText8780104_unk48

	def_text_script CompText8780104_unk49

	def_text_script CompText8780104_unk50
	ts_mugshot_show 0x15
	ts_msg_open
	.string "Without the Force\n"
	.string "Program,we can't\n"
	.string "create our full"
	ts_key_wait 0x0
	ts_clear_msg
	.string "output of power."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks to that,\n"
	.string "things that machines\n"
	.string "used to do,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "humans now have to\n"
	.string "do by hand..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "... *sigh* How\n"
	.string "inconvenient it is!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk51
	ts_mugshot_show 0xD
	ts_msg_open
	.string "I heard that a lot\n"
	.string "of money went into\n"
	.string "making the Expo."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Mayor Cain really\n"
	.string "wants it to succeed,\n"
	.string "huh?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk52
	ts_check_flag 0x20, 0xC, 0x36, 0xFF
	ts_check_chapter 0x52, 0x53, 0x35, 0xFF
	ts_mugshot_show 0xE
	ts_msg_open
	.string "Hey,have you seen\n"
	.string "the Expo commercial?\n"
	.string "Well,have you!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The Navi in that\n"
	.string "commercial is really\n"
	.string "handsome!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder if I can\n"
	.string "meet him when I go\n"
	.string "to the Expo."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk53
	ts_mugshot_show 0xE
	ts_msg_open
	.string "There's something\n"
	.string "happening in Seaside\n"
	.string "Town..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You really shouldn't\n"
	.string "go near there..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8780104_unk54
	ts_mugshot_show 0xE
	ts_msg_open
	.string "All the good feeling\n"
	.string "the Expo was making\n"
	.string "is all gone now,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "all because of what\n"
	.string "happened in Seaside\n"
	.string "Town!"
	ts_key_wait 0x0
	ts_end

	