	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875EA10::
	.word 0x8D800

	text_archive_start

	def_text_script CompText875EA10_unk0
	ts_msg_open
	.string "The water leak has\n"
	.string "made a mess,so you\n"
	.string "can't go forward..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875EA10_unk1
	ts_check_item07 [
		item: 0x42,
		amount: 0x1,
		jumpIfEqual: 0x11,
		jumpIfGreater: 0x11,
		jumpIfLess: 0xFF,
	]
	ts_msg_open
	.string "There is a cybertree\n"
	.string "in the way."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's a very strong\n"
	.string "tree,so it won't be\n"
	.string "easy to cut it down."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875EA10_unk2
	ts_check_item07 [
		item: 0x1C,
		amount: 0x1,
		jumpIfEqual: 0xB,
		jumpIfGreater: 0xB,
		jumpIfLess: 0xFF,
	]
	ts_msg_open
	.string "There is a cloud\n"
	.string "floating in the\n"
	.string "way..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875EA10_unk3
	ts_check_chapter [
		lower: 0x5,
		upper: 0x5,
		jumpIfInRange: 0x6,
		jumpIfOutOfRange: 0xFF,
	]
	ts_jump target=7

	def_text_script CompText875EA10_unk4
	ts_msg_open
	.string "It's a Net\n"
	.string "information board."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It has a map of\n"
	.string "CentralArea3 on it."
	ts_key_wait any=0x0
	ts_start_map map=0x2
	ts_end

	def_text_script CompText875EA10_unk5
	ts_msg_open
	.string "You always thought\n"
	.string "it was a Navi,but\n"
	.string "it's really just"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "a papier mache."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Even if it were a\n"
	.string "Navi,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "watching over this\n"
	.string "area 24 hours a day\n"
	.string "would not be easy!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875EA10_unk6
	ts_check_flag [
		flag: 0x482,
		jumpIfTrue: 0x7,
		jumpIfFalse: 0xFF,
	]
	ts_flag_set flag=0x482
	ts_jump target=7

	def_text_script CompText875EA10_unk7
	ts_msg_open
	.string "Long ago,there were\n"
	.string "2 beasts with great\n"
	.string "powers on the Net..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "These 2 beasts were\n"
	.string "not friendly to\n"
	.string "each other,rather"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "they fought each\n"
	.string "other again and\n"
	.string "again."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They fought fiercely\n"
	.string "and greatly changed\n"
	.string "the face of the Net."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "People feared these\n"
	.string "2 beasts and called\n"
	.string "them..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Cybeasts..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "One of the Cybeasts\n"
	.string "was shaped like a\n"
	.string "great wolf..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Cybeast Gregar."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Its roar was enough\n"
	.string "to cause the whole\n"
	.string "Net to shake,and"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "it devoured many\n"
	.string "Navis with its sharp\n"
	.string "fangs..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The other Cybeast\n"
	.string "was a giant bird-\n"
	.string "like beast..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Cybeast Falzar."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "With its huge wings,\n"
	.string "it scattered objects\n"
	.string "all over the Net,and"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "with its razor-sharp\n"
	.string "claws,it shredded\n"
	.string "many programs..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This is where the 2\n"
	.string "Cybeasts' reign of\n"
	.string "terror ended --"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "where they fought\n"
	.string "each other to the\n"
	.string "end..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The chasm in this\n"
	.string "area was born from\n"
	.string "their clash,and"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "the bottom of this\n"
	.string "pit is known as the\n"
	.string "Underground."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It is said that even\n"
	.string "now,the Cybeasts are\n"
	.string "sleeping there..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875EA10_unk8
	ts_check_flag [
		flag: 0x50A,
		jumpIfTrue: 0xA,
		jumpIfFalse: 0xFF,
	]
	ts_msg_open
	.string "A cyberpipe..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and it's leaking..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875EA10_unk9
	ts_msg_open
	.string "The darkness won't\n"
	.string "budge,even with your\n"
	.string "strongest attacks."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Maybe the\n"
	.string "EvilSpirits are\n"
	.string "related somehow..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875EA10_unk10
	ts_msg_open
	.string "It's a cyberpipe."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875EA10_unk11
	ts_msg_open
	.string "The "
	ts_print_item [
		item: 0x1C,
		buffer: 0x0,
	]
	.string " sucked\n"
	.string "the cloud up!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0xAD
	.string "*vrooooom!!*"
	ts_wait frames=0x28
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_flag_clear flag=0x3
	ts_sound_play00 track=0x74
	ts_wait frames=0x28
	ts_clear_msg
	ts_mugshot_show mugshot=0x0
	.string "Alright!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875EA10_unk12
	ts_check_flag [
		flag: 0xC8D,
		jumpIfTrue: 0xE,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0xC85,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0xF,
	]
	ts_check_flag [
		flag: 0xC89,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x10,
	]
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Choo,choo! We'll be\n"
	.string "departing shortly.\n"
	.string "Are you ready?"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal width=0x8
	ts_option [
		brackets: 0x0,
		right: 0x1,
		left: 0x1,
		down: 0x0,
		up: 0x0,
	]
	ts_space count=0x1
	.string " Yes  "
	ts_option [
		brackets: 0x0,
		right: 0x0,
		left: 0x0,
		down: 0x1,
		up: 0x1,
	]
	ts_space count=0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0xD, 0xFF
	ts_flag_set flag=0xC97
	ts_end

	def_text_script CompText875EA10_unk13
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "We'll be departing\n"
	.string "as soon as you're\n"
	.string "ready!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875EA10_unk14
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "Jack me out,Lan! The\n"
	.string "final exam is next\n"
	.string "on the schedule!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875EA10_unk15
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "We don't need to be\n"
	.string "at this station,yet!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We should go to the\n"
	.string "Undernet2 station\n"
	.string "first!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875EA10_unk16
	ts_mugshot_show mugshot=0x4F
	ts_msg_open
	.string "We don't need to be\n"
	.string "at this station,yet!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "We should go to the\n"
	.string "Sky Area2 station\n"
	.string "first!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875EA10_unk17
	ts_msg_open
	ts_print_current_navi
	.string " used:\n"
	.string "\""
	ts_print_item [
		item: 0x42,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait any=0x0
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 track=0x188
	.string "*chop! "
	ts_wait frames=0x3C
	ts_sound_play00 track=0x188
	.string "chop! "
	ts_wait frames=0x3C
	ts_sound_play00 track=0x188
	.string "chop!*"
	ts_wait frames=0x50
	ts_clear_msg
	ts_sound_disable_text_sfx
	ts_sound_play00 track=0xE5
	.string "*KA-CHOP!!* "
	ts_wait frames=0x3C
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait any=0x0
	ts_sound_play00 track=0x74
	ts_flag_clear flag=0x2
	ts_end

	