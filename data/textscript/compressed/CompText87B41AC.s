	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B41AC::
	.word 0x55700

	text_archive_start

	def_text_script CompText87B41AC_unk0
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "That was pretty\n"
	.string "cool,Lan!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "In battles,you need\n"
	.string "to be able to flow\n"
	.string "with the current,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "but you also need\n"
	.string "to have the strength\n"
	.string "of a storm at sea!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "But it looks like I\n"
	.string "didn't have to teach\n"
	.string "you that after all!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Alright! This ends\n"
	.string "your final exam!\n"
	.string "You pass!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "From now on,SpoutMan\n"
	.string "will be one of your\n"
	.string "LinkNavis!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B41AC_unk1_id

	def_text_script CompText87B41AC_unk1
	ts_mugshot_hide
	ts_msg_open
	ts_store_timer [
		timer: 0x0,
		value: 0x1,
	]
	ts_sound_play00 track=0x8F
	.string "SpoutMan became\n"
	.string "Lan's LinkNavi!"
	ts_wait_o_w_var [
		variable: 0x0,
		value: 0x2,
	]
	ts_store_timer [
		timer: 0x0,
		value: 0x3,
	]
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B41AC_unk2_id

	def_text_script CompText87B41AC_unk2
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Yeah!!......\n"
	.string "Uh,Shuko,\n"
	.string "what's a LinkNavi?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1F
	.string "Um...\n"
	.string "Well,to put it\n"
	.string "simply..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "you understand\n"
	.string "SpoutMan about as\n"
	.string "well as MegaMan now,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "so you can feel free\n"
	.string "to operate SpoutMan\n"
	.string "any time you want!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "I can operate\n"
	.string "SpoutMan? Any time?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x1F
	.string "Yup..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You've earned the\n"
	.string "right."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Because of my class,\n"
	.string "you've learned how\n"
	.string "to operate SpoutMan,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and the basics of\n"
	.string "how to control\n"
	.string "water."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Actually,you also\n"
	.string "learned one more\n"
	.string "thing..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Because you've\n"
	.string "learned how to\n"
	.string "control water,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "SpoutMan's skills\n"
	.string "should have found\n"
	.string "a nice home inside"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "MegaMan as\n"
	.string "SpoutCross!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B41AC_unk3_id

	def_text_script CompText87B41AC_unk3
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "MegaMan's got\n"
	.string "SpoutMan's skills?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Can I really learn\n"
	.string "that kind of power?"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "'Cause I don't feel\n"
	.string "any different..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B41AC_unk4_id

	def_text_script CompText87B41AC_unk4
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "... Yeah,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and that's why maybe\n"
	.string "you should try it\n"
	.string "for yourself!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B41AC_unk5_id

	def_text_script CompText87B41AC_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "... Um,I guess I'd\n"
	.string "like to see what\n"
	.string "kind of power..."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B41AC_unk6_id

	def_text_script CompText87B41AC_unk6
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "Well then,let's give\n"
	.string "it a try!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B41AC_unk7_id

	def_text_script CompText87B41AC_unk7
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "OK!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You ready,MegaMan?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B41AC_unk8_id

	def_text_script CompText87B41AC_unk8
	ts_mugshot_show mugshot=0x37
	ts_msg_open
	.string "Yeah,I'm all set!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_jump target=CompText87B41AC_unk9_id

	def_text_script CompText87B41AC_unk9
	ts_mugshot_show mugshot=0x1F
	ts_msg_open
	.string "OK! Ready...\n"
	.string "Set...\n"
	.string "Go!!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText87B41AC_unk10

	def_text_script CompText87B41AC_unk11

	