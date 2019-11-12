	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87565E8::
	.word 0x6B500

	text_archive_start

	def_text_script CompText87565E8_unk0
	ts_jump 27

	def_text_script CompText87565E8_unk1
	ts_check_game_version 0xFF, 0xB
	ts_msg_open
	.string "A poster of\n"
	.string "Solar Boy Django..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "He looks ready\n"
	.string "to ride off to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "whereabouts unknown\n"
	.string "on his motorcycle!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87565E8_unk2
	ts_msg_open
	.string "The window in Lan's\n"
	.string "room lets in plenty\n"
	.string "of healthy sunlight!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87565E8_unk3
	ts_msg_open
	.string "You can almost hear\n"
	.string "the dog on this\n"
	.string "calendar howling."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87565E8_unk4
	ts_check_game_version 0xFF, 0xA
	ts_msg_open
	.string "There are still a\n"
	.string "few things from the\n"
	.string "move left at the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "bottom of Lan's blue\n"
	.string "sports bag to sort\n"
	.string "through."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87565E8_unk5
	ts_msg_open
	.string "It's Lan's new\n"
	.string "closet."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Even though he\n"
	.string "just moved in,it's\n"
	.string "already a mess..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87565E8_unk6
	ts_msg_open
	.string "Pajamas hanging\n"
	.string "neatly on hangers..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The pajamas have the\n"
	.string "same mark as Lan's\n"
	.string "beloved bandana."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87565E8_unk7
	ts_msg_open
	.string "Lan's personal\n"
	.string "computer."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It was moved very\n"
	.string "carefully from his\n"
	.string "old house."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87565E8_unk8
	ts_msg_open
	.string "Various memorabilia\n"
	.string "Lan has collected."
	ts_key_wait 0x0
	ts_clear_msg
	.string "When it was time to\n"
	.string "move,Lan had to\n"
	.string "throw some of it"
	ts_key_wait 0x0
	ts_clear_msg
	.string "away,so there isn't\n"
	.string "very much left..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87565E8_unk9
	ts_check_game_version 0xFF, 0xC
	ts_msg_open
	.string "It's one of the\n"
	.string "newest video game\n"
	.string "machines out there."
	ts_key_wait 0x0
	ts_clear_msg
	.string "With its touchpad\n"
	.string "and dual screens,\n"
	.string "it's one hot item!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87565E8_unk10
	ts_msg_open
	.string "There are still a\n"
	.string "few things from the\n"
	.string "move left at the"
	ts_key_wait 0x0
	ts_clear_msg
	.string "bottom of Lan's\n"
	.string "white sports bag\n"
	.string "to sort through."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87565E8_unk11
	ts_msg_open
	.string "A poster of\n"
	.string "Solar Boy Django..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The flames around\n"
	.string "him burn bright like\n"
	.string "the sun."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87565E8_unk12
	ts_msg_open
	.string "It's one of the\n"
	.string "newest video game\n"
	.string "machines out there."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Its small size and\n"
	.string "slick design makes\n"
	.string "it one hot item."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87565E8_unk13

	def_text_script CompText87565E8_unk14

	def_text_script CompText87565E8_unk15

	def_text_script CompText87565E8_unk16

	def_text_script CompText87565E8_unk17

	def_text_script CompText87565E8_unk18

	def_text_script CompText87565E8_unk19

	def_text_script CompText87565E8_unk20
	ts_flag_set 0x1F, 0x17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Bedtime already?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x15, 0xFF, 0xFF
	ts_flag_clear 0x1F, 0x17
	ts_end

	def_text_script CompText87565E8_unk21
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Do you want to save\n"
	.string "what happened today?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x16, 0x18, 0xFF
	ts_end

	def_text_script CompText87565E8_unk22
	ts_check_flag 0x4, 0x17, 0xFF, 0x17
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Can I overwrite the\n"
	.string "previous data?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x17, 0x18, 0xFF
	ts_end

	def_text_script CompText87565E8_unk23
	ts_mugshot_show 0x37
	ts_msg_open
	ts_call_save 0xFF, 0x19, 0x0
	.string "OK!\n"
	.string "... All saved!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 24

	def_text_script CompText87565E8_unk24
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Good night,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87565E8_unk25
	ts_mugshot_show 0x37
	ts_msg_open
	.string "The save failed..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'll try again,OK?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x17, 0x18, 0xFF
	ts_end

	def_text_script CompText87565E8_unk26

	def_text_script CompText87565E8_unk27
	ts_check_flag 0x1D, 0x17, 0xFF, 0x1C
	ts_mugshot_show 0x37
	ts_msg_open
	.string "You don't have to\n"
	.string "sleep yet,right,Lan?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87565E8_unk28
	ts_msg_open
	.string "It's a bit early to\n"
	.string "be going to bed..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87565E8_unk29

	def_text_script CompText87565E8_unk30

	def_text_script CompText87565E8_unk31

	def_text_script CompText87565E8_unk32

	def_text_script CompText87565E8_unk33

	def_text_script CompText87565E8_unk34

	def_text_script CompText87565E8_unk35

	def_text_script CompText87565E8_unk36

	def_text_script CompText87565E8_unk37

	def_text_script CompText87565E8_unk38

	def_text_script CompText87565E8_unk39

	