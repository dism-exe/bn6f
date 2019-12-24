	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8758410::
	.word 0x6AC00

	text_archive_start

	def_text_script CompText8758410_unk0
	ts_msg_open
	.string "A display panel for\n"
	.string "plotting graphs in\n"
	.string "Math class."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Thanks to this,more\n"
	.string "people are starting\n"
	.string "to like Math..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... Maybe."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758410_unk1
	ts_msg_open
	.string "The blackboard."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's actually a\n"
	.string "touch panel,so no\n"
	.string "chalk is needed."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It was custom made\n"
	.string "for this school."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758410_unk2
	ts_msg_open
	.string "A display of things\n"
	.string "useful for class."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "There are maps,basic\n"
	.string "formulas,and figures\n"
	.string "posted all over it."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758410_unk3
	ts_msg_open
	.string "Tulips that were\n"
	.string "planted during\n"
	.string "Biology class."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "They are a bright,\n"
	.string "vivid yellow."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758410_unk4
	ts_msg_open
	.string "Every student has\n"
	.string "their own locker."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can tell what\n"
	.string "people are like by\n"
	.string "how they use it."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758410_unk5
	ts_msg_open
	.string "A watering pot used\n"
	.string "for watering the\n"
	.string "tulips."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "\"For Biology Class\n"
	.string " Use\" is written on\n"
	.string "it."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758410_unk6
	ts_msg_open
	.string "Tulips are growing\n"
	.string "nicely in this pot."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Behind the tulips\n"
	.string "are student drawn\n"
	.string "pictures of them."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758410_unk7
	ts_msg_open
	.string "Every student has\n"
	.string "their own locker."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can tell what\n"
	.string "people are like by\n"
	.string "how they use it."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758410_unk8
	ts_msg_open
	.string "Every student's desk\n"
	.string "at Cyber Academy has\n"
	.string "a computer built in."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "This makes studying\n"
	.string "much more efficient\n"
	.string "for the students."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758410_unk9
	ts_msg_open
	.string "Cyber Academy takes\n"
	.string "security very\n"
	.string "seriously."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Security cameras in\n"
	.string "each room are always\n"
	.string "keeping watch..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758410_unk10
	ts_msg_open
	.string "This high-tech\n"
	.string "podium is linked to"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "every student's\n"
	.string "desk."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "With this,a teacher\n"
	.string "can see a student's\n"
	.string "answers right away."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758410_unk11
	ts_msg_open
	.string "It looks like this\n"
	.string "tulip has been\n"
	.string "over-watered."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The extra water\n"
	.string "glistens in the\n"
	.string "pot's overflow tray."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758410_unk12
	ts_check_chapter [
		lower: 0x0,
		upper: 0x1E,
		jumpIfInRange: CompText8758410_unk14_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "There is a control\n"
	.string "panel underneath the\n"
	.string "blackboard."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's so that people\n"
	.string "can jack in for\n"
	.string "Virus Busting class."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758410_unk13
	ts_msg_open
	.string "Cyber Academy takes\n"
	.string "security very\n"
	.string "seriously."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Security cameras in\n"
	.string "each room are always\n"
	.string "keeping watch..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8758410_unk14
	ts_msg_open
	.string "There is a control\n"
	.string "panel underneath the\n"
	.string "blackboard."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's so that people\n"
	.string "can jack in for\n"
	.string "Virus Busting class."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "... But it looks\n"
	.string "like it's broken\n"
	.string "right now."
	ts_key_wait any=0x0
	ts_end

	