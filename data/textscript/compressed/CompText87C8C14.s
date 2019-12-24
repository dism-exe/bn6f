	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C8C14::
	.word 0x169A00

	text_archive_start

	def_text_script CompText87C8C14_unk0
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87C8C14_unk1_id,
	]
	ts_mugshot_show mugshot=0x58
	ts_msg_open
	.string "*grrr...rrr*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk2_id

	def_text_script CompText87C8C14_unk1
	ts_mugshot_show mugshot=0x59
	ts_msg_open
	.string "*scr...eeee...*"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk2_id

	def_text_script CompText87C8C14_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "M-MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk3
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText87C8C14_unk4_id,
	]
	ts_mugshot_show mugshot=0x58
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x191
	.string "*rrr...rooooooar!!*"
	ts_wait frames=0x5A
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk4
	ts_mugshot_show mugshot=0x59
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x193
	.string "*scr...reeeeech!!*"
	ts_wait frames=0x46
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan,are you OK?\n"
	.string "MegaMan!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk6
	ts_check_link_navi [
		variable: 0x0,
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TS_CONTINUE,
		jumpIfElecMan: CompText87C8C14_unk10_id,
		jumpIfSlashMan: CompText87C8C14_unk8_id,
		jumpIfEraseMan: CompText87C8C14_unk15_id,
		jumpIfChargeMan: CompText87C8C14_unk14_id,
		jumpIfSpoutMan: CompText87C8C14_unk7_id,
		jumpIfTomahawkMan: CompText87C8C14_unk11_id,
		jumpIfTenguMan: CompText87C8C14_unk9_id,
		jumpIfGroundMan: CompText87C8C14_unk12_id,
		jumpIfDustMan: CompText87C8C14_unk13_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "... Relax,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "he's just knocked\n"
	.string "out."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Me,on the other\n"
	.string "hand,I'm a bit\n"
	.string "burnt out..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk16_id

	def_text_script CompText87C8C14_unk7
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "He's alright,drip."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He just fainted.\n"
	.string "That's all,drip!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Um,but I need a\n"
	.string "little help,drip..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk16_id

	def_text_script CompText87C8C14_unk8
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "He'll be OK."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He's just taking\n"
	.string "a time out."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I took quite a\n"
	.string "slashing..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk16_id

	def_text_script CompText87C8C14_unk9
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "Please calm down."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He is only\n"
	.string "unconscious."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I,however,am not\n"
	.string "feeling so well..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk16_id

	def_text_script CompText87C8C14_unk10
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "Calm down."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He is resting now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "However,I have taken\n"
	.string "a great deal of\n"
	.string "damage..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk16_id

	def_text_script CompText87C8C14_unk11
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "He'll be OK."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He's just fainted."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I could really\n"
	.string "use some help\n"
	.string "here..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk16_id

	def_text_script CompText87C8C14_unk12
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Whiiiir...\n"
	.string "He's OK."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He's just sleepin'\n"
	.string "now."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I took a real\n"
	.string "beatin',though..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk16_id

	def_text_script CompText87C8C14_unk13
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "He's alright."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Just taking a nap."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ugh,any more,and I\n"
	.string "woulda gone to the\n"
	.string "scrap heap!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk16_id

	def_text_script CompText87C8C14_unk14
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo...choo...\n"
	.string "He's going to be\n"
	.string "fine."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He fainted,that's\n"
	.string "all."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But I feel like I've\n"
	.string "been run over..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk16_id

	def_text_script CompText87C8C14_unk15
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "He's fine."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "He's just knocked\n"
	.string "out."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I've taken quite a\n"
	.string "bit of damage,\n"
	.string "though."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk16_id

	def_text_script CompText87C8C14_unk16
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Really!?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "That's a relief..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm going to jack\n"
	.string "MegaMan out right\n"
	.string "now..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk17_id

	def_text_script CompText87C8C14_unk17
	ts_mugshot_hide
	ts_msg_open
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I don't think so!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk18
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Thank you so much!\n"
	.string "You've just made my\n"
	.string "life easier!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk19_id

	def_text_script CompText87C8C14_unk19
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "C-CircusMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk20_id

	def_text_script CompText87C8C14_unk20
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "And here I thought I\n"
	.string "was going to have to\n"
	.string "work hard."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But you clowns just\n"
	.string "handed him to me on\n"
	.string "a silver platter!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Watching you two\n"
	.string "fight from my ring-\n"
	.string "side seat was fun!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk21_id

	def_text_script CompText87C8C14_unk21
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "How low will you\n"
	.string "go!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk22_id

	def_text_script CompText87C8C14_unk22
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Oh,hoho,you're\n"
	.string "looking mighty\n"
	.string "scary!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "And all I wanted was\n"
	.string "for you to tell me\n"
	.string "I'm so smart!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "See,this is called\n"
	.string "\"profiting while\n"
	.string "others fight\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Didn't they teach\n"
	.string "you that in school?\n"
	.string "Kyahahaha!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Now,before CircusMan\n"
	.string "takes MegaMan,I\n"
	.string "think it's time"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "to finish of that\n"
	.string "annoying Navi you\n"
	.string "borrowed."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk23_id

	def_text_script CompText87C8C14_unk23
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Rooooger!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk24
	ts_check_link_navi [
		variable: 0x0,
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TS_CONTINUE,
		jumpIfElecMan: CompText87C8C14_unk28_id,
		jumpIfSlashMan: CompText87C8C14_unk26_id,
		jumpIfEraseMan: CompText87C8C14_unk33_id,
		jumpIfChargeMan: CompText87C8C14_unk32_id,
		jumpIfSpoutMan: CompText87C8C14_unk25_id,
		jumpIfTomahawkMan: CompText87C8C14_unk29_id,
		jumpIfTenguMan: CompText87C8C14_unk27_id,
		jumpIfGroundMan: CompText87C8C14_unk30_id,
		jumpIfDustMan: CompText87C8C14_unk31_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x47
	ts_msg_open
	.string "... This is bad. I\n"
	.string "used up all my\n"
	.string "energy last battle!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What are we gonna\n"
	.string "do...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk34_id

	def_text_script CompText87C8C14_unk25
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Oh,no! I used all my\n"
	.string "strength in the last\n"
	.string "battle,drip!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What are we gonna\n"
	.string "do...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk34_id

	def_text_script CompText87C8C14_unk26
	ts_mugshot_show mugshot=0x4B
	ts_msg_open
	.string "Argh... I used up\n"
	.string "everything in that\n"
	.string "last fight!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What are we gonna\n"
	.string "do...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk34_id

	def_text_script CompText87C8C14_unk27
	ts_mugshot_show mugshot=0x4C
	ts_msg_open
	.string "No... I foolishly\n"
	.string "spent all my energy\n"
	.string "on the last battle."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What are we gonna\n"
	.string "do...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk34_id

	def_text_script CompText87C8C14_unk28
	ts_mugshot_show mugshot=0x49
	ts_msg_open
	.string "This is not good. I\n"
	.string "put everything into\n"
	.string "the last battle!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What are we gonna\n"
	.string "do...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk34_id

	def_text_script CompText87C8C14_unk29
	ts_mugshot_show mugshot=0x4A
	ts_msg_open
	.string "Nooo! All of my\n"
	.string "strength was used\n"
	.string "up in that fight!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What are we gonna\n"
	.string "do...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk34_id

	def_text_script CompText87C8C14_unk30
	ts_mugshot_show mugshot=0x4D
	ts_msg_open
	.string "Aw,dang. I spent\n"
	.string "everythin' in that\n"
	.string "last battle."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What are we gonna\n"
	.string "do...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk34_id

	def_text_script CompText87C8C14_unk31
	ts_mugshot_show mugshot=0x4E
	ts_msg_open
	.string "Tsk,that last battle\n"
	.string "sucked me of every-\n"
	.string "thing I had!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What are we gonna\n"
	.string "do...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk34_id

	def_text_script CompText87C8C14_unk32
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's not good to\n"
	.string "battle when all ya\n"
	.string "steam is gone..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What are we gonna\n"
	.string "do...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk34_id

	def_text_script CompText87C8C14_unk33
	ts_mugshot_show mugshot=0x50
	ts_msg_open
	.string "Curses,I wiped\n"
	.string "myself out during\n"
	.string "that last battle."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "What are we gonna\n"
	.string "do...!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk34_id

	def_text_script CompText87C8C14_unk34
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "It's time to say\n"
	.string "good-bye,kiddies!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Ahoo,hoo,hoo!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk35
	ts_mugshot_hide
	ts_msg_open
	.string "That's far enough..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk36
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Uuugh...\n"
	.string "I totally didn't\n"
	.string "see..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk37_id

	def_text_script CompText87C8C14_unk37
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "Who!?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk38
	ts_mugshot_show mugshot=0x5A
	ts_msg_open
	.string "......"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk39
	ts_sound_play_bgm track=0xE
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "ProtoMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk40_id

	def_text_script CompText87C8C14_unk40
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "Sorry to have kept\n"
	.string "you waiting!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "ProtoMan,cut that\n"
	.string "clown to pieces!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk41_id

	def_text_script CompText87C8C14_unk41
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "Roger!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk42
	ts_mugshot_show mugshot=0x54
	ts_msg_open
	.string "Yu-Yuika...\n"
	.string "This guy doesn't\n"
	.string "play fair!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk43_id

	def_text_script CompText87C8C14_unk43
	ts_mugshot_show mugshot=0x2B
	ts_msg_open
	.string "And we were so\n"
	.string "close!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll remember this!!"
	ts_key_wait any=0x0
	ts_sound_fade_out [
		slot: 0x1F,
		length: 0xA,
	]
	ts_end

	def_text_script CompText87C8C14_unk44
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "They got away..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well,whatever. Right\n"
	.string "now,MegaMan needs to\n"
	.string "be healed. ProtoMan!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk45_id

	def_text_script CompText87C8C14_unk45
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "Got it!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk46
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "Not looking your\n"
	.string "usual healthy self,\n"
	.string "MegaMan."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Recovery!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk47
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... Nnnngh..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk48
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... ProtoMan...\n"
	.string "Why are you here...?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk49_id

	def_text_script CompText87C8C14_unk49
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "M-MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk50
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Lan..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk51
	ts_check_link_navi [
		variable: 0x0,
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TS_CONTINUE,
		jumpIfElecMan: CompText87C8C14_unk55_id,
		jumpIfSlashMan: CompText87C8C14_unk53_id,
		jumpIfEraseMan: CompText87C8C14_unk60_id,
		jumpIfChargeMan: CompText87C8C14_unk59_id,
		jumpIfSpoutMan: CompText87C8C14_unk52_id,
		jumpIfTomahawkMan: CompText87C8C14_unk56_id,
		jumpIfTenguMan: CompText87C8C14_unk54_id,
		jumpIfGroundMan: CompText87C8C14_unk57_id,
		jumpIfDustMan: CompText87C8C14_unk58_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "and... HeatMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk61_id

	def_text_script CompText87C8C14_unk52
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "and... SpoutMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk61_id

	def_text_script CompText87C8C14_unk53
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "and... SlashMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk61_id

	def_text_script CompText87C8C14_unk54
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "and... TenguMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk61_id

	def_text_script CompText87C8C14_unk55
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "and... ElecMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk61_id

	def_text_script CompText87C8C14_unk56
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "and... TomahawkMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk61_id

	def_text_script CompText87C8C14_unk57
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "and... GroundMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk61_id

	def_text_script CompText87C8C14_unk58
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "and... DustMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk61_id

	def_text_script CompText87C8C14_unk59
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "and... ChargeMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk61_id

	def_text_script CompText87C8C14_unk60
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "and... EraseMan."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk61_id

	def_text_script CompText87C8C14_unk61
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "I see..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You guys had to come\n"
	.string "rescue me again.\n"
	.string "I'm really sorry..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'm causing so much\n"
	.string "trouble for you guys\n"
	.string "because I'm so weak."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk62_id

	def_text_script CompText87C8C14_unk62
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "Self-reflection is\n"
	.string "fine,MegaMan,but..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "not right here..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Do you know where\n"
	.string "you are right now?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk63
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... Yeah,that's\n"
	.string "true... Sorry..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk64_id

	def_text_script CompText87C8C14_unk64
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "... Hmm?"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk65
	ts_mugshot_show mugshot=0x4
	ts_msg_open
	.string "What is it,ProtoMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk66_id

	def_text_script CompText87C8C14_unk66
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "Chaud,I sense\n"
	.string "something very close\n"
	.string "by."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Something very\n"
	.string "powerful..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87C8C14_unk67
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "... Yeah,and it's\n"
	.string "getting closer."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This power...\n"
	.string "It can't be..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk68_id

	def_text_script CompText87C8C14_unk68
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "No mistaking it."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... It's him."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk69_id

	def_text_script CompText87C8C14_unk69
	ts_check_link_navi [
		variable: 0x0,
		jumpIfMegaMan: TS_CONTINUE,
		jumpIfHeatMan: TS_CONTINUE,
		jumpIfElecMan: CompText87C8C14_unk73_id,
		jumpIfSlashMan: CompText87C8C14_unk71_id,
		jumpIfEraseMan: CompText87C8C14_unk78_id,
		jumpIfChargeMan: CompText87C8C14_unk77_id,
		jumpIfSpoutMan: CompText87C8C14_unk70_id,
		jumpIfTomahawkMan: CompText87C8C14_unk74_id,
		jumpIfTenguMan: CompText87C8C14_unk72_id,
		jumpIfGroundMan: CompText87C8C14_unk75_id,
		jumpIfDustMan: CompText87C8C14_unk76_id,
		jumpIfProtoMan: TS_CONTINUE,
	]
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "MegaMan! HeatMan!\n"
	.string "Jack out you two!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's too dangerous\n"
	.string "here!\n"
	.string "I'll take him on!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x47
	.string "What are you\n"
	.string "blabbing about!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk79_id

	def_text_script CompText87C8C14_unk70
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "MegaMan! SpoutMan!\n"
	.string "Jack out you two!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's too dangerous\n"
	.string "here!\n"
	.string "I'll take him on!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x48
	.string "... But...!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk79_id

	def_text_script CompText87C8C14_unk71
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "MegaMan! SlashMan!\n"
	.string "Jack out you two!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's too dangerous\n"
	.string "here!\n"
	.string "I'll take him on!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x4B
	.string "... What are you\n"
	.string "talking about!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk79_id

	def_text_script CompText87C8C14_unk72
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "MegaMan! TenguMan!\n"
	.string "Jack out you two!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's too dangerous\n"
	.string "here!\n"
	.string "I'll take him on!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x4C
	.string "But...!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk79_id

	def_text_script CompText87C8C14_unk73
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "MegaMan! ElecMan!\n"
	.string "Jack out you two!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's too dangerous\n"
	.string "here!\n"
	.string "I'll take him on!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x49
	.string "I must object!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk79_id

	def_text_script CompText87C8C14_unk74
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "MegaMan!\n"
	.string "TomahawkMan!\n"
	.string "Jack out you two!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's too dangerous\n"
	.string "here!\n"
	.string "I'll take him on!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x4A
	.string "What are you talking\n"
	.string "about!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk79_id

	def_text_script CompText87C8C14_unk75
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "MegaMan! GroundMan!\n"
	.string "Jack out you two!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's too dangerous\n"
	.string "here!\n"
	.string "I'll take him on!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x4D
	.string "But!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk79_id

	def_text_script CompText87C8C14_unk76
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "MegaMan! DustMan!\n"
	.string "Jack out you two!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's too dangerous\n"
	.string "here!\n"
	.string "I'll take him on!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x4E
	.string "Hey,now..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk79_id

	def_text_script CompText87C8C14_unk77
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "MegaMan! ChargeMan!\n"
	.string "Jack out you two!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's too dangerous\n"
	.string "here!\n"
	.string "I'll take him on!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x4F
	.string "... But..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk79_id

	def_text_script CompText87C8C14_unk78
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "MegaMan! EraseMan!\n"
	.string "Jack out you two!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's too dangerous\n"
	.string "here!\n"
	.string "I'll take him on!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x50
	.string "But why!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk79_id

	def_text_script CompText87C8C14_unk79
	ts_mugshot_show mugshot=0x3B
	ts_msg_open
	.string "Right now,you two in\n"
	.string "your current state\n"
	.string "would slow me down!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87C8C14_unk80_id

	def_text_script CompText87C8C14_unk80
	ts_mugshot_hide
	ts_msg_open
	ts_text_speed delay=0x2
	.string "Be gone!"
	ts_key_wait any=0x0
	ts_end

	