	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8755C18::
	.word 0x71500

	text_archive_start

	def_text_script CompText8755C18_unk0
	ts_msg_open
	.string "Lan's new house..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It was built just\n"
	.string "recently,so it still\n"
	.string "has that sparkle."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8755C18_unk1
	ts_msg_open
	.string "It's Lan's\n"
	.string "neighbor's house."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You can't see it\n"
	.string "from here,but they\n"
	.string "have a rooftop pool."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8755C18_unk2
	ts_msg_open
	.string "It's another one\n"
	.string "of Lan's neighbor's\n"
	.string "houses."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Every morning,the\n"
	.string "wife sends off her\n"
	.string "husband with a hug."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They're the perfect\n"
	.string "couple because they\n"
	.string "get along so well."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8755C18_unk3
	ts_msg_open
	.string "A new house and a\n"
	.string "new neighbor..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There's a garden in\n"
	.string "the middle of this\n"
	.string "house."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Talk about a modern\n"
	.string "design!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8755C18_unk4
	ts_msg_open
	.string "The flowers that Mom\n"
	.string "bought especially\n"
	.string "for this little"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "flower bed are\n"
	.string "growing nicely."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8755C18_unk5
	ts_msg_open
	.string "It's the LevBus\n"
	.string "station."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "The LevBus is what\n"
	.string "connects different\n"
	.string "towns together."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's a totally\n"
	.string "futuristic mode of\n"
	.string "transportation!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8755C18_unk6
	ts_check_chapter [
		lower: 0x20,
		upper: 0xFF,
		jumpIfInRange: 0xB,
		jumpIfOutOfRange: 0xFF,
	]
	ts_msg_open
	.string "It's the chip shop,\n"
	.string "\"AsterLand\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "Sounds like a shop\n"
	.string "where you can find\n"
	.string "all sorts of chips."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "They're remodeling\n"
	.string "right now,so they're\n"
	.string "not open."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8755C18_unk7
	ts_check_chapter [
		lower: 0x62,
		upper: 0xFF,
		jumpIfInRange: 0xE,
		jumpIfOutOfRange: 0xFF,
	]
	ts_msg_open
	.string "\"Future site\n"
	.string " of the Expo\""
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "is what is written."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You can hear the\n"
	.string "construction work\n"
	.string "going on inside."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8755C18_unk8
	ts_msg_open
	.string "It's the entrance to\n"
	.string "Lan's new school,\n"
	.string "Cyber Academy."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "There's an infrared\n"
	.string "system in place on\n"
	.string "the outer wall to"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "stop unauthorized\n"
	.string "people from going\n"
	.string "into the school."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8755C18_unk9
	ts_msg_open
	.string "There's a statue of\n"
	.string "a blue bird sitting\n"
	.string "among these flowers."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "With its wings out,\n"
	.string "ready to fly,this\n"
	.string "bird is the symbol"
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "of Central Town."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8755C18_unk10
	ts_msg_open
	.string "Up ahead is where\n"
	.string "the Expo will be\n"
	.string "held."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's still under\n"
	.string "construction,so you\n"
	.string "can't go in."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8755C18_unk11
	ts_end

	def_text_script CompText8755C18_unk12
	ts_check_chapter [
		lower: 0x62,
		upper: 0xFF,
		jumpIfInRange: 0xF,
		jumpIfOutOfRange: 0xFF,
	]
	ts_msg_open
	.string "It's the Expo\n"
	.string "Site..."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "But it looks like\n"
	.string "it's still under\n"
	.string "construction..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8755C18_unk13
	ts_check_flag [
		flag: 0x11D0,
		jumpIfTrue: 0x10,
		jumpIfFalse: 0xFF,
	]
	ts_check_flag [
		flag: 0x11CF,
		jumpIfTrue: 0x11,
		jumpIfFalse: 0xFF,
	]
	ts_jump [
		target: 16,
	]

	def_text_script CompText8755C18_unk14
	ts_msg_open
	.string "It says:\n"
	.string "\"Expo Site\"."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You don't hear any\n"
	.string "construction noises\n"
	.string "anymore..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8755C18_unk15
	ts_msg_open
	.string "It's the Expo Site.\n"
	.string "It appears they're\n"
	.string "finally finished."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8755C18_unk16
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 [
		track: 0x175,
	]
	.string "*woof,"
	ts_wait [
		frames: 0x8,
	]
	ts_sound_play00 [
		track: 0x175,
	]
	.string "woof!!*"
	ts_wait [
		frames: 0x8,
	]
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "It's a RoboDog...\n"
	.string "and you can jack in!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText8755C18_unk17
	ts_msg_open
	.string "It's a RoboDog,but\n"
	.string "for some reason,it's\n"
	.string "really quiet now."
	ts_key_wait [
		any: 0x0,
	]
	ts_clear_msg
	.string "You can jack in!!"
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	