	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C56CC::
	.word 0x85F00

	text_archive_start

	def_text_script CompText87C56CC_unk0
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "Yeah!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "With the Cybeast in\n"
	.string "our hot hands,we\n"
	.string "don't have to care"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "about Baryl anymore!\n"
	.string "Now,we are ready to\n"
	.string "fight!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "First we shed off\n"
	.string "our WWW bonds,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "then we'll move\n"
	.string "forward with our\n"
	.string "own organization!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C56CC_unk1
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Wait a second."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C56CC_unk2
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "What?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C56CC_unk3_id

	def_text_script CompText87C56CC_unk3
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "I've never had any\n"
	.string "interest in your new\n"
	.string "organization."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I only helped you\n"
	.string "kidnap MegaMan on\n"
	.string "Baryl's command..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but if you want to\n"
	.string "defect,I will not\n"
	.string "be joining you."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm going back to\n"
	.string "Baryl."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If we ever meet\n"
	.string "again,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "we will be enemies!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C56CC_unk4_id

	def_text_script CompText87C56CC_unk4
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "H-Hey...\n"
	.string "What are ye sayin'?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C56CC_unk5
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "You're a strange\n"
	.string "one..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Why do you care\n"
	.string "so much about\n"
	.string "Baryl...?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C56CC_unk6
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "... Hmph,that's\n"
	.string "enough!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C56CC_unk7
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "I'm sure we're all\n"
	.string "curious to know\n"
	.string "why you'd go back,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and I suppose we can\n"
	.string "let you do what you\n"
	.string "want..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But in exchange,we\n"
	.string "get to do what we\n"
	.string "want."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Since we're a real\n"
	.string "organization now,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "we should do things\n"
	.string "for us and only for\n"
	.string "us!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C56CC_unk8_id

	def_text_script CompText87C56CC_unk8
	ts_mugshot_hide
	ts_msg_open
	.string "Tee,hee,hee... If\n"
	.string "that's the case,I've\n"
	.string "got a great plan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C56CC_unk9
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "Hey,where have you\n"
	.string "been all this time,\n"
	.string "Yuika!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C56CC_unk10_id

	def_text_script CompText87C56CC_unk10
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Doing the obvious!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If we're rebelling\n"
	.string "against Baryl,then\n"
	.string "we should tell him!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So I told him,\"We're\n"
	.string "not listening to you\n"
	.string "anymore!\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ahahaha!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And then,even the\n"
	.string "mighty Baryl was\n"
	.string "speechless!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C56CC_unk11_id

	def_text_script CompText87C56CC_unk11
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "Is that right,lass!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He got what he\n"
	.string "deserved,he did!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C56CC_unk12_id

	def_text_script CompText87C56CC_unk12
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "Anyway,you were\n"
	.string "saying something\n"
	.string "about a good plan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C56CC_unk13_id

	def_text_script CompText87C56CC_unk13
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "I got some good news\n"
	.string "from our dear\n"
	.string "\"benefactor\"."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C56CC_unk14_id

	def_text_script CompText87C56CC_unk14
	ts_mugshot_show mugshot=0x2D
	ts_msg_open
	.string "Good news?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C56CC_unk15_id

	def_text_script CompText87C56CC_unk15
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "... You'll like it."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Apparently,there's\n"
	.string "these \"Cybeast\n"
	.string "Worshippers\" in the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Undernet who can\n"
	.string "call out the\n"
	.string "Cybeast's max power."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C56CC_unk16_id

	def_text_script CompText87C56CC_unk16
	ts_mugshot_show mugshot=0x2A
	ts_msg_open
	.string "The \"Cybeast\n"
	.string "Worshippers\" on the\n"
	.string "Undernet?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What a suspicious-\n"
	.string "soundin' lot."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Not that we're ones\n"
	.string "to talk..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C56CC_unk17_id

	def_text_script CompText87C56CC_unk17
	ts_jump target=CompText87C56CC_unk18_id

	def_text_script CompText87C56CC_unk18
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "The \"benefactor\"\n"
	.string "said that if we tell\n"
	.string "them we're with the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"priest\",then\n"
	.string "they'll tell us\n"
	.string "anything we want."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And that's not all\n"
	.string "he's given us!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He also sent us\n"
	.string "this really neat,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "suuuuper cute doll!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C56CC_unk19_id

	def_text_script CompText87C56CC_unk19
	ts_mugshot_show mugshot=0x2E
	ts_msg_open
	.string "... A doll?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What did he send\n"
	.string "that for!? We don't\n"
	.string "need or want it!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C56CC_unk20_id

	def_text_script CompText87C56CC_unk20
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "I bet you'll be\n"
	.string "surprised once I\n"
	.string "tell you why!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "See,if we use it on\n"
	.string "MegaMan..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Tee,hee! Something\n"
	.string "really fun will\n"
	.string "happen!"
	ts_key_wait any=0x0
	ts_end

	