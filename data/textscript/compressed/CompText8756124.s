	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8756124::
	.word 0x67700

	text_archive_start

	def_text_script CompText8756124_unk0
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText8756124_unk11_id,
	]
	ts_msg_open
	.string "This new house came\n"
	.string "with a brand new\n"
	.string "shoe rack."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Sitting on top are 2\n"
	.string "golden fish statues\n"
	.string "like the ones in"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "End City."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8756124_unk1
	ts_msg_open
	.string "It's the family\n"
	.string "sofa."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's so soft and\n"
	.string "comfy,and it even\n"
	.string "seats three!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8756124_unk2
	ts_msg_open
	.string "A plant Mom bought\n"
	.string "almost as soon as\n"
	.string "you moved in."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's sitting there\n"
	.string "happily cleaning the\n"
	.string "living room air."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8756124_unk3
	ts_msg_open
	.string "This TV is special\n"
	.string "because it can learn\n"
	.string "what your favorite"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "programs are,and\n"
	.string "then record them\n"
	.string "automatically!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8756124_unk4
	ts_msg_open
	.string "Mom took the move as\n"
	.string "a chance to get a\n"
	.string "custom kitchen!"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It looks like she\n"
	.string "splurged and got all\n"
	.string "sorts of new,nifty"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "appliances and\n"
	.string "cooking tools!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8756124_unk5
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText8756124_unk12_id,
	]
	ts_msg_open
	.string "There's a piece of\n"
	.string "steak sizzling in a\n"
	.string "pan on the stovetop."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Black pepper is\n"
	.string "sprinkled on top\n"
	.string "of this rare steak."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Mmm... This is good\n"
	.string "ol' homecooking at\n"
	.string "its finest!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8756124_unk6
	ts_msg_open
	.string "A refrigerator\n"
	.string "Mom picked out..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Mom has a good eye\n"
	.string "when it comes to\n"
	.string "shopping,so"
	ts_key_wait any=0x0
	ts_clear_msg
	.string "it's bound to be a\n"
	.string "good fridge!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8756124_unk7
	ts_msg_open
	.string "You can look into\n"
	.string "the litte center\n"
	.string "garden from here..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "Nothing has been\n"
	.string "planted yet,so it's\n"
	.string "still just grass."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8756124_unk8
	ts_check_game_version [
		jumpIfCybeastGregar: TS_CONTINUE,
		jumpIfCybeastFalzar: CompText8756124_unk10_id,
	]
	ts_msg_open
	.string "Mom painted this\n"
	.string "picture to spice\n"
	.string "up the room."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The theme of the\n"
	.string "picture is...\n"
	.string "\"Smile\"."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8756124_unk9
	ts_msg_open
	.string "It's a control\n"
	.string "panel,but it's not\n"
	.string "just any panel..."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "You can operate any\n"
	.string "electronic device in\n"
	.string "the house with this!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8756124_unk10
	ts_msg_open
	.string "Mom painted this\n"
	.string "picture to spice\n"
	.string "up the room."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "The monkey looks at\n"
	.string "you with a cheery\n"
	.string "smile."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8756124_unk11
	ts_msg_open
	.string "This new house came\n"
	.string "with a brand new\n"
	.string "shoe rack."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "A ship's steering\n"
	.string "wheel is sitting\n"
	.string "on top."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's a souvenir from\n"
	.string "a trip somewhere..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8756124_unk12
	ts_msg_open
	.string "The savory smell of\n"
	.string "roasted onion drifts\n"
	.string "from the oven."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8756124_unk13
	ts_msg_open
	.string "This kind of foot-\n"
	.string "stool is called an\n"
	.string "\"ottoman\"."
	ts_key_wait any=0x0
	ts_clear_msg
	.string "It's great for\n"
	.string "relaxing after a day\n"
	.string "of hard NetBattling."
	ts_key_wait any=0x0
	ts_end

	