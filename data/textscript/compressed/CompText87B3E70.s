	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B3E70::
	.word 0x41800

	text_archive_start

	def_text_script CompText87B3E70_unk0
	ts_mugshot_show mugshot=0x42
	ts_msg_open
	.string "*blub,blub...*\n"
	.string "*gasp...*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Oh,SpoutMan...*gasp*\n"
	.string "You've gathered all\n"
	.string "the fish data *blub*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I finally *glub*\n"
	.string "fixed that valve she\n"
	.string "broke...*blub,blub*"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The water should\n"
	.string "go down very soon\n"
	.string "*blub,blub,blub...*"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B3E70_unk1
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Lan,SpoutMan,you\n"
	.string "guys really\n"
	.string "saved me!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The water's draining\n"
	.string "out now,and you got\n"
	.string "the fish data back!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Everything should be\n"
	.string "OK again!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3E70_unk2_id

	def_text_script CompText87B3E70_unk2
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "... Ahem,Shuko..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Sorry,but you're\n"
	.string "fired as of today!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3E70_unk3_id

	def_text_script CompText87B3E70_unk3
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Huh? Whaaaat!?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3E70_unk4_id

	def_text_script CompText87B3E70_unk4
	ts_mugshot_show mugshot=0xF
	ts_msg_open
	.string "What do you mean,\n"
	.string "\"Whaaaat!?\""
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You flood the Net,\n"
	.string "you nearly lose our\n"
	.string "crucial fish data..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "at this rate,you're\n"
	.string "going to completely\n"
	.string "ruin this aquarium!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3E70_unk5_id

	def_text_script CompText87B3E70_unk5
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "... I'm really\n"
	.string "sorry!!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... I've really\n"
	.string "caused a lot of\n"
	.string "problems..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I guess I can't be\n"
	.string "a teacher and have a\n"
	.string "part-time job."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Well then,I'll\n"
	.string "devote myself to\n"
	.string "being a teacher!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "OK,Lan,let's proceed\n"
	.string "to your final exam!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Jack out and wait\n"
	.string "for me! I'll be\n"
	.string "there soon!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B3E70_unk6_id

	def_text_script CompText87B3E70_unk6
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Shuko has really\n"
	.string "become a cheery\n"
	.string "person,huh...?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright,jack out,\n"
	.string "SpoutMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B3E70_unk7
	ts_mugshot_show mugshot=0x48
	ts_msg_open
	.string "Roger,drip!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B3E70_unk8
	ts_msg_open
	.string "A short while\n"
	.string "later..."
	ts_key_wait any=0x0
	ts_end

	