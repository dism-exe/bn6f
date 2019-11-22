	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875752C::
	.word 0x9FE00

	text_archive_start

	def_text_script CompText875752C_unk0
	ts_msg_open
	.string "A display panel for\n"
	.string "plotting graphs in\n"
	.string "Math class."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Thanks to this,more\n"
	.string "people are starting\n"
	.string "to like Math..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "... Maybe."
	ts_key_wait [
		any: 0x0,
	]
	ts_check_flag [
		flag: 0x187,
		jumpIfTrue: 0x12,
		jumpIfFalse: 0xFF,
	]
	ts_clear_msg
	.string "Looking closer,you\n"
	.string "see something shiny\n"
	.string "behind the display."
	ts_key_wait [
		any: 0x0,
	]
	ts_mugshot_hide
	ts_check_flag [
		flag: 0x1729,
		jumpIfTrue: 0x13,
		jumpIfFalse: 0xFF,
	]
	ts_clear_msg
	ts_item_give [
		item: 0x72,
		amount: 0x1,
	]
	ts_player_animate_scene [
		animation: 0x18,
	]
	.string "Lan got:\n"
	.string "\""
	ts_print_item [
		item: 0x72,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Regular memory\n"
	.string "increased by\n"
	.string "1 MB!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_scene
	ts_flag_set [
		flag: 0x187,
	]
	ts_end

	def_text_script CompText875752C_unk1
	ts_msg_open
	.string "The blackboard."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's actually a\n"
	.string "touch panel,so no\n"
	.string "chalk is needed."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It was custom made\n"
	.string "for this school."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk2
	ts_msg_open
	.string "A display of things\n"
	.string "useful for class."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There are maps,basic\n"
	.string "formulas,and figures\n"
	.string "posted all over it."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk3
	ts_msg_open
	.string "There are killifish\n"
	.string "living in this\n"
	.string "fishtank."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They drift around\n"
	.string "to and fro,without\n"
	.string "a care in the world."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk4
	ts_msg_open
	.string "Every student has\n"
	.string "their own locker."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You can tell what\n"
	.string "people are like by\n"
	.string "how they use it."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk5
	ts_msg_open
	.string "A record of the\n"
	.string "class crayfish's\n"
	.string "growth."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's a living animal\n"
	.string "so it grows a little\n"
	.string "bit every day."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk6
	ts_check_flag [
		flag: 0x859,
		jumpIfTrue: 0x10,
		jumpIfFalse: 0xFF,
	]
	ts_msg_open
	.string "A special gizmo in\n"
	.string "this tank sets the\n"
	.string "water to a certain"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "temperature that is\n"
	.string "just right for the\n"
	.string "animal in it."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Thanks to this,the\n"
	.string "crayfish are very\n"
	.string "healthy."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk7
	ts_check_chapter [
		lower: 0x32,
		upper: 0x32,
		jumpIfInRange: 0x15,
		jumpIfOutOfRange: 0xFF,
	]
	ts_jump [
		target: 20,
	]

	def_text_script CompText875752C_unk8
	ts_msg_open
	.string "Every student's desk\n"
	.string "at Cyber Academy has\n"
	.string "a computer built in."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "This makes studying\n"
	.string "much more efficient\n"
	.string "for the students."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk9
	ts_msg_open
	.string "Cyber Academy takes\n"
	.string "security very\n"
	.string "seriously."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If anything happens,\n"
	.string "it can be dealt with\n"
	.string "very quickly."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk10
	ts_msg_open
	.string "This high-tech\n"
	.string "podium is linked to"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "every student's\n"
	.string "desk."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "With this,a teacher\n"
	.string "can see a student's\n"
	.string "answers right away."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk11
	ts_msg_open
	.string "There are some fish\n"
	.string "in this tank..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Big fish,little\n"
	.string "fish... happily\n"
	.string "swimming around."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk12
	ts_msg_open
	.string "There is a control\n"
	.string "panel underneath the\n"
	.string "blackboard."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's so that people\n"
	.string "can jack in for\n"
	.string "Virus Busting class."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk13
	ts_check_flag [
		flag: 0x87B,
		jumpIfTrue: 0xE,
		jumpIfFalse: 0xFF,
	]
	ts_msg_open
	.string "Cyber Academy takes\n"
	.string "security very\n"
	.string "seriously."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "If anything happens,\n"
	.string "it can be dealt with\n"
	.string "very quickly."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk14
	ts_check_flag [
		flag: 0x804,
		jumpIfTrue: 0xF,
		jumpIfFalse: 0xFF,
	]
	ts_msg_open
	.string "A security camera..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "Hmm... The clue was,\n"
	.string "\"I am always looking\n"
	.string " at the crayfish\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "\"Looking\"...\n"
	.string "Hmm... Maybe..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Hey! You can jack\n"
	.string "in to this security\n"
	.string "camera!"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x86F,
	]
	ts_end

	def_text_script CompText875752C_unk15
	ts_msg_open
	.string "It's the security\n"
	.string "camera for Lan's\n"
	.string "classroom."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You can jack in to\n"
	.string "it."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk16
	ts_check_flag [
		flag: 0x86F,
		jumpIfTrue: 0x11,
		jumpIfFalse: 0xFF,
	]
	ts_msg_open
	ts_mugshot_show [
		mugshot: 0x0,
	]
	.string "... Ah! Here's the\n"
	.string "crayfish!"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "So I guess the\n"
	.string "crayfish in the\n"
	.string "clue are these...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Then the answer is\n"
	.string "the thing that's"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "always looking at\n"
	.string "these guys...?"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Always looking...\n"
	.string "Hmm......"
	ts_flag_set [
		flag: 0x87B,
	]
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk17
	ts_msg_open
	.string "A special gizmo in\n"
	.string "this tank sets the\n"
	.string "water to a certain"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "temperature that is\n"
	.string "just right for the\n"
	.string "creature in it."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Because of this,the\n"
	.string "crayfish are very\n"
	.string "healthy."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk18
	ts_end

	def_text_script CompText875752C_unk19
	ts_clear_msg
	ts_item_give [
		item: 0x72,
		amount: 0x1,
	]
	ts_player_animate_scene [
		animation: 0x18,
	]
	.string "MegaMan got:\n"
	.string "\""
	ts_print_item [
		item: 0x72,
		buffer: 0x0,
	]
	.string "\"!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_player_finish
	ts_player_reset_scene
	ts_flag_set [
		flag: 0x187,
	]
	ts_clear_msg
	.string "Regular memory\n"
	.string "increased by\n"
	.string "1 MB!!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk20
	ts_msg_open
	.string "Broom closets."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They're big enough\n"
	.string "for a person to\n"
	.string "hide in."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Looks like a good\n"
	.string "hiding place for\n"
	.string "hide and seek..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText875752C_unk21
	ts_check_flag [
		flag: 0x81A,
		jumpIfTrue: 0x14,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x819,
		jumpIfTrue: 0xFF,
		jumpIfFalse: 0x14,
	]
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "... Huh?"
	ts_key_wait [
		any: 0x0,
	]
	ts_flag_set [
		flag: 0x85D,
	]
	ts_end

	