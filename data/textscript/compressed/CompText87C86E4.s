	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C86E4::
	.word 0xA3C00

	text_archive_start

	def_text_script CompText87C86E4_unk0
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "MegaMan!\n"
	.string "That form..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You've fought off\n"
	.string "the Cybeast's power!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C86E4_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "Lan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Please...\n"
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "delete me!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C86E4_unk2
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "What are you saying,\n"
	.string "MegaMan!?\n"
	.string "Don't give up!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hang in there!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C86E4_unk3
	ts_check_game_version [
		jumpIfCybeastGregar: 0xFF,
		jumpIfCybeastFalzar: 0x4,
	]
	ts_mugshot_show [
		mugshot: 0x58,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x191,
	]
	.string "*grrrrrrrr!!*"
	ts_wait [
		frames: 0x5A,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87C86E4_unk4
	ts_mugshot_show [
		mugshot: 0x59,
	]
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x193,
	]
	.string "*screeeeeech!!*"
	ts_wait [
		frames: 0x46,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87C86E4_unk5
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0xFF,
		jumpIfElecMan: 0x9,
		jumpIfSlashMan: 0x7,
		jumpIfEraseMan: 0xE,
		jumpIfChargeMan: 0xD,
		jumpIfSpoutMan: 0x6,
		jumpIfTomahawkMan: 0xA,
		jumpIfTenguMan: 0x8,
		jumpIfGroundMan: 0xB,
		jumpIfDustMan: 0xC,
		jumpIfProtoMan: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_msg_open
	.string "Hey,what are we\n"
	.string "doing!?\n"
	.string "Are we attacking?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87C86E4_unk6
	ts_mugshot_show [
		mugshot: 0x48,
	]
	ts_msg_open
	.string "Lan,what should we\n"
	.string "do,drip!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87C86E4_unk7
	ts_mugshot_show [
		mugshot: 0x4B,
	]
	ts_msg_open
	.string "He's attacking!!\n"
	.string "Slash back...!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87C86E4_unk8
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	ts_msg_open
	.string "He is approaching,\n"
	.string "Lan! Shall I prepare\n"
	.string "to attack?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87C86E4_unk9
	ts_mugshot_show [
		mugshot: 0x49,
	]
	ts_msg_open
	.string "He's coming!!\n"
	.string "Lan,can I zap him!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87C86E4_unk10
	ts_mugshot_show [
		mugshot: 0x4A,
	]
	ts_msg_open
	.string "Lan,what are we\n"
	.string "doing!?\n"
	.string "He's coming!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87C86E4_unk11
	ts_mugshot_show [
		mugshot: 0x4D,
	]
	ts_msg_open
	.string "Whiiiiir!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Yo,here he comes...\n"
	.string "Want me to attack\n"
	.string "back...!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87C86E4_unk12
	ts_mugshot_show [
		mugshot: 0x4E,
	]
	ts_msg_open
	.string "Tsk,he's attacking!!\n"
	.string "You gonna let me\n"
	.string "take care of this!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87C86E4_unk13
	ts_mugshot_show [
		mugshot: 0x4F,
	]
	ts_msg_open
	.string "Which track,Lan...!?\n"
	.string "Choo,choo..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87C86E4_unk14
	ts_mugshot_show [
		mugshot: 0x50,
	]
	ts_msg_open
	.string "Lan Hikari...\n"
	.string "Should I wipe him\n"
	.string "out...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 15,
	]

	def_text_script CompText87C86E4_unk15
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "W-Wait...\n"
	.string "MegaMan is still..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait [
		frames: 0xF,
	]
	.string "."
	ts_wait [
		frames: 0xF,
	]
	.string "."
	ts_wait [
		frames: 0xF,
	]
	.string " No,I can't keep\n"
	.string "on doing this."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I can't keep on\n"
	.string "holding back..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I've gotta stop him\n"
	.string "here."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 16,
	]

	def_text_script CompText87C86E4_unk16
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0xFF,
		jumpIfElecMan: 0x14,
		jumpIfSlashMan: 0x12,
		jumpIfEraseMan: 0x19,
		jumpIfChargeMan: 0x18,
		jumpIfSpoutMan: 0x11,
		jumpIfTomahawkMan: 0x15,
		jumpIfTenguMan: 0x13,
		jumpIfGroundMan: 0x16,
		jumpIfDustMan: 0x17,
		jumpIfProtoMan: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	ts_text_speed [
		delay: 0x3,
	]
	.string "... Attack,\n"
	.string "HeatMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x47,
	]
	ts_text_speed [
		delay: 0x2,
	]
	.string "You sure!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 26,
	]

	def_text_script CompText87C86E4_unk17
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	ts_text_speed [
		delay: 0x3,
	]
	.string "... Attack,\n"
	.string "SpoutMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_text_speed [
		delay: 0x2,
	]
	ts_mugshot_show [
		mugshot: 0x48,
	]
	.string "Is...\n"
	.string "Is that OK,drip!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 26,
	]

	def_text_script CompText87C86E4_unk18
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	ts_text_speed [
		delay: 0x3,
	]
	.string "... Attack,\n"
	.string "SlashMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4B,
	]
	ts_text_speed [
		delay: 0x2,
	]
	.string "You really sure!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 26,
	]

	def_text_script CompText87C86E4_unk19
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	ts_text_speed [
		delay: 0x3,
	]
	.string "... Attack,\n"
	.string "TenguMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4C,
	]
	ts_text_speed [
		delay: 0x2,
	]
	.string "Are you alright with\n"
	.string "this!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 26,
	]

	def_text_script CompText87C86E4_unk20
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	ts_text_speed [
		delay: 0x3,
	]
	.string "... Attack,\n"
	.string "ElecMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x49,
	]
	ts_text_speed [
		delay: 0x2,
	]
	.string "Are you absolutely\n"
	.string "sure?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 26,
	]

	def_text_script CompText87C86E4_unk21
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	ts_text_speed [
		delay: 0x3,
	]
	.string "... Attack,\n"
	.string "TomahawkMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4A,
	]
	ts_text_speed [
		delay: 0x2,
	]
	.string "But Lan,\n"
	.string "it's MegaMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 26,
	]

	def_text_script CompText87C86E4_unk22
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	ts_text_speed [
		delay: 0x3,
	]
	.string "... Attack,\n"
	.string "GroundMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4D,
	]
	ts_text_speed [
		delay: 0x2,
	]
	.string "Yo' sure it's OK?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 26,
	]

	def_text_script CompText87C86E4_unk23
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	ts_text_speed [
		delay: 0x3,
	]
	.string "... Attack,\n"
	.string "DustMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4E,
	]
	ts_text_speed [
		delay: 0x2,
	]
	.string "... Sure about\n"
	.string "this!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 26,
	]

	def_text_script CompText87C86E4_unk24
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	ts_text_speed [
		delay: 0x3,
	]
	.string "... Attack,\n"
	.string "ChargeMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x4F,
	]
	ts_text_speed [
		delay: 0x2,
	]
	.string "Ya sure this is\n"
	.string "the right track...?\n"
	.string "Chooooooo..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 26,
	]

	def_text_script CompText87C86E4_unk25
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	ts_text_speed [
		delay: 0x3,
	]
	.string "... Attack,\n"
	.string "EraseMan..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x50,
	]
	ts_text_speed [
		delay: 0x2,
	]
	.string "If you're really\n"
	.string "sure,I won't be\n"
	.string "holding back..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 26,
	]

	def_text_script CompText87C86E4_unk26
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "I,I finally\n"
	.string "understand..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "and MegaMan also\n"
	.string "asked me to do\n"
	.string "this..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I wish that all I\n"
	.string "had to do was knock\n"
	.string "him out..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But if that\n"
	.string "failed..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I must stop him no\n"
	.string "matter what!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 27,
	]

	def_text_script CompText87C86E4_unk27
	ts_check_navi_all [
		jumpIfMegaMan: 0xFF,
		jumpIfHeatMan: 0xFF,
		jumpIfElecMan: 0x1F,
		jumpIfSlashMan: 0x1D,
		jumpIfEraseMan: 0x24,
		jumpIfChargeMan: 0x23,
		jumpIfSpoutMan: 0x1C,
		jumpIfTomahawkMan: 0x20,
		jumpIfTenguMan: 0x1E,
		jumpIfGroundMan: 0x21,
		jumpIfDustMan: 0x22,
		jumpIfProtoMan: 0xFF,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Do it,HeatMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You've gotta...\n"
	.string "You've gotta\n"
	.string "stop him!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C86E4_unk28
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Do it,SpoutMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You've gotta...\n"
	.string "You've gotta\n"
	.string "stop him!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C86E4_unk29
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Do it,SlashMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You've gotta...\n"
	.string "You've gotta\n"
	.string "stop him!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C86E4_unk30
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Do it,TenguMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You've gotta...\n"
	.string "You've gotta\n"
	.string "stop him!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C86E4_unk31
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Do it,ElecMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You've gotta...\n"
	.string "You've gotta\n"
	.string "stop him!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C86E4_unk32
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Do it,TomahawkMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You've gotta...\n"
	.string "You've gotta\n"
	.string "stop him!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C86E4_unk33
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Do it,GroundMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You've gotta...\n"
	.string "You've gotta\n"
	.string "stop him!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C86E4_unk34
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Do it,DustMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You've gotta...\n"
	.string "You've gotta\n"
	.string "stop him!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C86E4_unk35
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Do it,ChargeMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You've gotta...\n"
	.string "You've gotta\n"
	.string "stop him!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87C86E4_unk36
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Do it,EraseMan!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You've gotta...\n"
	.string "You've gotta\n"
	.string "stop him!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	