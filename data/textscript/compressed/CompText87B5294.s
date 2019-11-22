	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87B5294::
	.word 0x58C00

	text_archive_start

	def_text_script CompText87B5294_unk0
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... Well,we made\n"
	.string "it through the\n"
	.string "prelims."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "What do you wanna\n"
	.string "do now?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 1,
	]

	def_text_script CompText87B5294_unk1
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "How about a little\n"
	.string "something called\n"
	.string "\"HOMEWORK\"!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 2,
	]

	def_text_script CompText87B5294_unk2
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Ouch..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 3,
	]

	def_text_script CompText87B5294_unk3
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "If you'd stop\n"
	.string "putting it off,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "it'd be over sooner!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 4,
	]

	def_text_script CompText87B5294_unk4
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Blah..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 5,
	]

	def_text_script CompText87B5294_unk5
	ts_mugshot_hide
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_call_p_e_t_effect [
		effect: 0x2,
	]
	.string "*beep beep!*"
	ts_wait [
		frames: 0x3E,
	]
	ts_call_p_e_t_effect [
		effect: 0x1,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x37,
	]
	.string "Ah,you've got mail!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 6,
	]

	def_text_script CompText87B5294_unk6
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Thank goodness!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 7,
	]

	def_text_script CompText87B5294_unk7
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... Did you just\n"
	.string "say something?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 8,
	]

	def_text_script CompText87B5294_unk8
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "No,no,no! Nothing!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Look,uh,you were\n"
	.string "about to read me\n"
	.string "my mail!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 9,
	]

	def_text_script CompText87B5294_unk9
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "... OK."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	.string "."
	ts_wait [
		frames: 0x1E,
	]
	ts_wait [
		frames: 0x1E,
	]
	.string ". Huh? This is\n"
	.string "from the Aquarium\n"
	.string "Director!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'll read what\n"
	.string "it says!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"Hello. It has been\n"
	.string " a while since I've\n"
	.string " contacted you."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " Unfortunately,we\n"
	.string " need you to appear\n"
	.string " at the trial of"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " Captain Blackbeard\n"
	.string " for the incident a\n"
	.string " little while back"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " at the Aquarium.\n"
	.string " Since you were the\n"
	.string " one who thwarted"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " Cpt.Blackbeard,you\n"
	.string " will be asked to\n"
	.string " take an oath and"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " testify.\n"
	.string " The trial starts\n"
	.string " this afternoon,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " and is at the\n"
	.string " Green Town\n"
	.string " Courthouse."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string " I appreciate your\n"
	.string " cooperation on such\n"
	.string " short notice.\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 10,
	]

	def_text_script CompText87B5294_unk10
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Me,go to court?\n"
	.string "Testify!?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "What am I supposed\n"
	.string "to do when I\n"
	.string "testify...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "I'm not in trouble,\n"
	.string "am I...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 11,
	]

	def_text_script CompText87B5294_unk11
	ts_mugshot_show [
		mugshot: 0x37,
	]
	ts_msg_open
	.string "I don't know,but it\n"
	.string "seems like a serious\n"
	.string "responsibility."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It looks like you\n"
	.string "have to go today,"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "so let's go to the\n"
	.string "courthouse in\n"
	.string "Green Town!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You can probably\n"
	.string "get there by taking\n"
	.string "the LevBus."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_jump [
		target: 12,
	]

	def_text_script CompText87B5294_unk12
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... Ugh,I am so\n"
	.string "nervous about\n"
	.string "this..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "OK,let's go see\n"
	.string "what's up in\n"
	.string "Green Town!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	