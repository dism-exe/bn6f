	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B3A04::
	.word 0x3F200

	text_archive_start

	def_text_script CompText87B3A04_unk0
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Well if it isn't\n"
	.string "SpoutMan! Shuko's\n"
	.string "checked in already."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "So what are you\n"
	.string "doin' here?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3A04_unk1_id

	def_text_script CompText87B3A04_unk1
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "I'm a teacher\n"
	.string "today,drip!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3A04_unk2_id

	def_text_script CompText87B3A04_unk2
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Ha,ha,ha,ha!\n"
	.string "You,a teacher!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B3A04_unk3
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "Whooooa!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B3A04_unk4
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "*glub,blub,blub!!*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B3A04_unk5
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Ack!! What am I\n"
	.string "gonna do!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I accidentally\n"
	.string "opened the cyber-\n"
	.string "water valve too far!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Are you there,\n"
	.string "SpoutMan!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B3A04_unk6
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "I'm here,drip!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3A04_unk7_id

	def_text_script CompText87B3A04_unk7
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "I've done it again!!\n"
	.string "I'm sorry,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I washed all the\n"
	.string "fish data out into\n"
	.string "the cyberwater!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3A04_unk8_id

	def_text_script CompText87B3A04_unk8
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3A04_unk9_id

	def_text_script CompText87B3A04_unk9
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "I've gotta stop\n"
	.string "the cyberwater!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm really sorry,but\n"
	.string "can you help me\n"
	.string "gather all the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "fish data that's\n"
	.string "washed out onto the\n"
	.string "Net?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3A04_unk10_id

	def_text_script CompText87B3A04_unk10
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Eh? Me!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3A04_unk11_id

	def_text_script CompText87B3A04_unk11
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "That data's really\n"
	.string "important to the\n"
	.string "Aquarium! If I lose"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "them,I'm toast! And\n"
	.string "if that happens,my\n"
	.string "brothers and I..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "*sniffle...*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3A04_unk12_id

	def_text_script CompText87B3A04_unk12
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Ack!\n"
	.string "OK,OK,I understand!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Don't worry,I'll go\n"
	.string "get that fish data\n"
	.string "for you!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3A04_unk13_id

	def_text_script CompText87B3A04_unk13
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Really!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Thank you!\n"
	.string "You are my family's\n"
	.string "savior!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3A04_unk14_id

	def_text_script CompText87B3A04_unk14
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Alright,let's go,\n"
	.string "SpoutMan!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3A04_unk15_id

	def_text_script CompText87B3A04_unk15
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Roger,drip!!"
	ts_key_wait any=0x0
	ts_end

	