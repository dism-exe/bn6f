	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText875906C::
	.word 0x75C00

	text_archive_start

	def_text_script CompText875906C_unk0
	ts_msg_open
	.string "There are some\n"
	.string "very old books on\n"
	.string "top of this cabinet."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They look like lists\n"
	.string "of past graduates."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk1
	ts_msg_open
	.string "The monitor on top\n"
	.string "of this cabinet is"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "displaying a graph\n"
	.string "about something or\n"
	.string "another."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk2
	ts_msg_open
	.string "Teachers' schedules\n"
	.string "for this week are\n"
	.string "on this blackboard."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"Monday: Teachers'\n"
	.string " Meeting\""
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk3
	ts_check_chapter [
		lower: 0x20,
		upper: 0xFF,
		jumpIfInRange: TS_CONTINUE,
		jumpIfOutOfRange: CompText875906C_unk17_id,
	]
	ts_msg_open
	.string "The blackboard's\n"
	.string "control panel."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can instantly\n"
	.string "change what is\n"
	.string "shown on-screen,"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "and even jack in!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk4
	ts_msg_open
	.string "There are important-\n"
	.string "looking papers\n"
	.string "here..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Looking at them\n"
	.string "without permission\n"
	.string "would be really bad."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk5
	ts_msg_open
	ts_check_flag [
		flag: 0x81C,
		jumpIfTrue: CompText875906C_unk15_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x81A,
		jumpIfTrue: CompText875906C_unk14_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_flag [
		flag: 0x430,
		jumpIfTrue: CompText875906C_unk15_id,
		jumpIfFalse: TS_CONTINUE,
	]
	.string "A big computer that\n"
	.string "controls all of the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "school's Security\n"
	.string "Bots."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It also controls\n"
	.string "all security inside\n"
	.string "the school."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There is a port for\n"
	.string "jacking in,but only\n"
	.string "teachers can use it."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk6
	ts_msg_open
	.string "There are all sorts\n"
	.string "of materials for\n"
	.string "class in this"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "teachers' cabinet."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk7
	ts_msg_open
	.string "These are the\n"
	.string "teachers' desks."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The computers in\n"
	.string "these desks are a\n"
	.string "bit more powerful"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "than the ones in\n"
	.string "the student model."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk8
	ts_check_chapter [
		lower: 0x4,
		upper: 0x4,
		jumpIfInRange: CompText875906C_unk10_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "These are the\n"
	.string "teachers' desks."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The computers in\n"
	.string "these desks are a\n"
	.string "bit more powerful"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "than the ones in\n"
	.string "the student model."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk9
	ts_msg_open
	.string "Looking up,there\n"
	.string "is a staircase sign."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can go to the\n"
	.string "2nd floor this way\n"
	.string "it seems."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk10
	ts_check_flag [
		flag: 0x480,
		jumpIfTrue: CompText875906C_unk11_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_check_multi_flag [
		flag: 0x47D,
		count: 0x3,
		jumpIfAllSet: TS_CONTINUE,
		jumpIfNotAllSet: CompText875906C_unk11_id,
	]
	ts_flag_set flag=0x480
	ts_flag_set flag=0x437
	ts_end

	def_text_script CompText875906C_unk11
	ts_msg_open
	.string "These are the\n"
	.string "teachers' desks."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The computers in\n"
	.string "these desks are a\n"
	.string "bit more powerful"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "than the ones in\n"
	.string "the student model."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk12
	ts_msg_open
	.string "The sign above the\n"
	.string "door says:\n"
	.string "\"ResearchLab2\"."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk13
	ts_msg_open
	.string "The sign above the\n"
	.string "door says:\n"
	.string "\"ResearchLab1\"."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk14
	ts_msg_open
	.string "A big computer that\n"
	.string "controls all of the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "school's Security\n"
	.string "Bots."
	ts_key_wait any=0x0
	ts_clear_msg
	ts_mugshot_show mugshot=0x37
	.string "Lan,send me into\n"
	.string "this computer!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "I'll look for the\n"
	.string "video data that\n"
	.string "Security Bot took!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk15
	ts_msg_open
	.string "A big computer that\n"
	.string "controls all of the"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "school's Security\n"
	.string "Bots."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It also controls\n"
	.string "all security inside\n"
	.string "the school."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can jack in."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk16
	ts_msg_open
	.string "There are pamphlets\n"
	.string "for something inside\n"
	.string "the box."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk17
	ts_msg_open
	.string "It's the control\n"
	.string "panel for the\n"
	.string "blackboard."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can change what\n"
	.string "is shown on-screen\n"
	.string "instantly."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText875906C_unk18
	ts_msg_open

	