	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A7418::
	.word 0x88900

	text_archive_start

	def_text_script CompText87A7418_unk0
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "So,MegaMan,how do\n"
	.string "you like the real\n"
	.string "world?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk1_id

	def_text_script CompText87A7418_unk1
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "If I could,I'd\n"
	.string "stay here forever."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk2_id

	def_text_script CompText87A7418_unk2
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Wahaha!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "If only that were\n"
	.string "possible!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They're still doing\n"
	.string "research,but if a\n"
	.string "CopyBot could hold"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "more energy,then\n"
	.string "maybe you can\n"
	.string "someday!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk3_id

	def_text_script CompText87A7418_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Well,I'm happy\n"
	.string "anyway,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "even if MegaMan\n"
	.string "can only be here\n"
	.string "sometimes!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk4_id

	def_text_script CompText87A7418_unk4
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk5_id

	def_text_script CompText87A7418_unk5
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Alright,MegaMan,\n"
	.string "time to go back\n"
	.string "into Lan's PET."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk6_id

	def_text_script CompText87A7418_unk6
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "OK. I hope I can\n"
	.string "use a CopyBot\n"
	.string "again sometime!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk7_id

	def_text_script CompText87A7418_unk7
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Ha,ha,ha!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This school has a\n"
	.string "few you can use,so\n"
	.string "don't worry!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk8_id

	def_text_script CompText87A7418_unk8
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "OK!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A7418_unk9
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Welcome back,\n"
	.string "MegaMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk10_id

	def_text_script CompText87A7418_unk10
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "It's good to be\n"
	.string "home,Lan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A7418_unk11
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "... I see.\n"
	.string "So,you're ready...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "BlastMan...\n"
	.string "Let's show them\n"
	.string "our power!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A7418_unk12
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "You may go back\n"
	.string "to your seat,Lan..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk13_id

	def_text_script CompText87A7418_unk13
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Let's get started!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk14_id

	def_text_script CompText87A7418_unk14
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x5,
	]
	ts_sound_play_bgm track=0x63
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0xC3
	.string "*wham!!*"
	ts_wait frames=0x5F
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_sound_play_bgm track=0xC
	ts_end

	def_text_script CompText87A7418_unk15
	ts_mugshot_show mugshot=0xB
	ts_msg_open
	.string "Waaaaah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk16_id

	def_text_script CompText87A7418_unk16
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "What's wrong!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A7418_unk17
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "It's a\n"
	.string "Security Bot..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "What's it\n"
	.string "doing here?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk18_id

	def_text_script CompText87A7418_unk18
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Wait! Stay back!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A7418_unk19
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "No Security Bot has\n"
	.string "ever broken into a\n"
	.string "classroom before."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll beat it with my\n"
	.string "super deadly martial\n"
	.string "arts combo!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A7418_unk20
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "M-Mr.Mach!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk21_id

	def_text_script CompText87A7418_unk21
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "Super-secret hundred\n"
	.string "hand punch!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk22_id

	def_text_script CompText87A7418_unk22
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x178
	ts_store_timer [
		timer: 0x0,
		value: 0x80,
	]
	.string "*wap* "
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x81,
	]
	ts_sound_play00 track=0x179
	ts_store_timer [
		timer: 0x0,
		value: 0x82,
	]
	.string "*pow*\n"
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x83,
	]
	ts_sound_play00 track=0x17A
	ts_store_timer [
		timer: 0x0,
		value: 0x84,
	]
	.string "*bam* "
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x85,
	]
	ts_sound_play00 track=0x17B
	ts_store_timer [
		timer: 0x0,
		value: 0x86,
	]
	.string "*bop*"
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x87,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk23_id

	def_text_script CompText87A7418_unk23
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "M-Mr.Mach!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A7418_unk24
	ts_mugshot_show mugshot=0x12
	ts_msg_open
	.string "W-What power...\n"
	.string "Security Bots...\n"
	.string "Wow..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... *thud*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A7418_unk25
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Mr.Mach! Mr.Mach!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... He fainted..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk26_id

	def_text_script CompText87A7418_unk26
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan,we've gotta do\n"
	.string "something about the\n"
	.string "Security Bot!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk27_id

	def_text_script CompText87A7418_unk27
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x88,
	]
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0xC3
	.string "*wham!!*"
	ts_wait frames=0x5F
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk28_id

	def_text_script CompText87A7418_unk28
	ts_mugshot_show mugshot=0x17
	ts_msg_open
	.string "Ahh!\n"
	.string "There's more of\n"
	.string "them here!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A7418_unk29
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Everyone,get to the\n"
	.string "middle of the room!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A7418_unk30
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "What in the world\n"
	.string "is going on...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk31_id

	def_text_script CompText87A7418_unk31
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "The fun's only\n"
	.string "just begun..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk32_id

	def_text_script CompText87A7418_unk32
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... What!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A7418_unk33
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "No,you didn't...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk34_id

	def_text_script CompText87A7418_unk34
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "The real fun\n"
	.string "starts now!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Hit it,BlastMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A7418_unk35
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Wah!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Cut it out!\n"
	.string "Put out the fire!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk36_id

	def_text_script CompText87A7418_unk36
	ts_mugshot_show mugshot=0x14
	ts_msg_open
	.string "Just try and make\n"
	.string "me! You'll just put\n"
	.string "everyone in danger!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I mean,I don't\n"
	.string "really want to hurt\n"
	.string "you...much."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I just wanna see you\n"
	.string "squirm a little!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I wonder how long\n"
	.string "you'll last?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87A7418_unk37
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Gotta stay\n"
	.string "calm..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "First,I have to put\n"
	.string "out those Security\n"
	.string "Bots' flames..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But how...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk38_id

	def_text_script CompText87A7418_unk38
	ts_mugshot_show mugshot=0x33
	ts_msg_open
	.string "Hot,hot,hot!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87A7418_unk39_id

	def_text_script CompText87A7418_unk39
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... I have to\n"
	.string "do something!!"
	ts_key_wait any=0x0
	ts_end

	