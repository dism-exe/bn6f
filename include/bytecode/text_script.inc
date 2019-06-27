	.ifndef TEXT_SCRIPT_INC
	.set TEXT_SCRIPT_INC, 0
	// text script
	// enum TextScriptCmd
	enum_start 0xE5
	enum E5_NOP // ()
	enum E6_END // ()
	enum E7_BUTTONHALT
		.equiv E7_A_OR_B, 0x00
		.equiv E7_ANY, 0x01
	enum E8_MSGBOX
		.equiv E8_OPEN, 0x00
		.equiv E8_CLOSE, 0x01
		.equiv E8_OPEN_NO_ANIM, 0x02
		.equiv E8_CLOSE_NO_ANIM, 0x03
		// (XX, YY)
		.equiv E8_OPEN_SPECIAL, 0x04
		.equiv E8_CLOSE_SPECIAL, 0x05
		.equiv E8_OPEN_SPECIAL_NO_ANIM, 0x06
		.equiv E8_CLOSE_SPECIAL_NO_ANIM, 0x07
		// ()
		.equiv E8_OPEN_SPECIAL_1, 0x08
		.equiv E8_CLOSE_SPECIAL_1, 0x09
		.equiv E8_OPEN_SPECIAL_1_NO_ANIM, 0x0A
		.equiv E8_CLODE_SPECIAL_1_NO_ANIM, 0x0B
		.equiv E8_OPEN_SPECIAL_2, 0x0C
		.equiv E8_CLOSE_SPECIAL_2, 0x0D
		.equiv E8_OPEN_SPECIAL_2_NO_ANIM, 0x0E
		.equiv E8_CLODE_SPECIAL_2_NO_ANIM, 0x0F
		.equiv E8_OPEN_SPECIAL_3, 0x10
		.equiv E8_CLOSE_SPECIAL_3, 0x11
	enum E9_NEWLINE // ()
	enum EA_FLAG
		// (flag_byte_low, flag_byte_high)
		.equiv EA_SET, 0x00
		.equiv EA_CLEAR, 0x01
		.equiv EA_TOGGLE, 0x02

		// (flag_byte_low, flag_byte_high, num_flags)
		.equiv EA_SET_RANGE, 0x03
		.equiv EA_CLEAR_RANGE, 0x04
		.equiv EA_UNDEFINED_05, 0x05

		// (flag)
		.equiv EA_LOAD_AND_SET_FLAG, 0x06

		// (flag_byte_low, flag_byte_high)
		.equiv EA_NOP_08, 0x08
		.equiv EA_SET_09, 0x09
		.equiv EA_SET_0A, 0x0A
	enum EB_OPTION // (unk, LR, UD)
	enum EC_LABEL
		// (mode, amount)
		.equiv EC_LABEL_SPACES, 0x00
		.equiv EC_LABEL_ONE_PIX_LINES, 0x01
	enum ED_SELECT
	enum EE_PAUSE
	enum EF_CHECKFLAG
	enum F0_JUMP
		// (scriptId)
		.equiv F0_EXEC_SCRIPT, 0x00
		// ()
		.equiv F0_EXEC_RAM_SCRIPT, 0x01
		// (scriptId)
		.equiv F0_STORE_SCRIPT, 0x02
	enum F1_TEXT_SPEED
	enum F2_CLEAR_MSGBOX
	enum F3_CONTROL
		.equiv F3_DISABLE_BUTTON_INPUT, 0x00
		.equiv F3_ENABLE_BUTTON_INPUT, 0x01
		// (flags)
		.equiv F3_SET_FLAGS, 0x03
	enum F4_UNK
	enum F5_MUGSHOT
		// (mugshot)
		.equiv F5_DISP, 0x00
		// ()
		.equiv F5_REMOVE, 0x01
		// (byte)
		.equiv F5_CHANGE_PALETTE, 0x02
		.equiv F5_CHANGE_ANIMATION, 0x03
		.equiv F5_CHANGE_OAM_PALETTE, 0x04
	enum F6_TEXTCOLOR
		.equiv F6_LOAD_ROM_PALETTE, 0x00
		.equiv F6_LOAD_RAM_PALETTE, 0x01
	enum F7_MOVE
		// (x, y, z)
		.equiv F7_BOX, 0x00
		// ()
		.equiv F7_NOP_01, 0x01
		// (x, y, z)
		.equiv F7_TEXT, 0x02
		// ()
		.equiv F7_NOP_03, 0x03

		// (X, Y)
		.equiv F7_BUTTONHALT_ARROW, 0x04
		.equiv F7_MUGSHOT, 0x05
		.equiv F7_TEXT_2D, 0x06

		// (X)
		.equiv F7_CUR_07, 0x07
		.equiv F7_CUR_08, 0x08
		.equiv F7_CUR_09, 0x09
	enum F8_PLAYERANIMATION
	enum F9_STOREBYTE
	enum FA_PRINT
	enum FB_SPECIAL
	enum FC_INTERFACE
	enum FD_SOUND
	enum FE_NUMBERINPUT
	enum FF_COPYTEXT

	.macro text_script_start label:req
		// define text_script macro based on label
		.purgem text_script
		.purgem data_def_rel_pointer
		.purgem text_script_rel_pointers

		.macro text_script id:req, name:req
			.equiv \label\()__\id, . - \label
			.equiv \label\()_\name, \id
		.endm

		// agbasm quirk? setting p to '' defaults to 33 or some other garbage for some reason
		.macro data_def_rel_pointer p=DEFAULT
			.if \p != DEFAULT // somehow setting this to NULL fails when text_script_rel_pointers is called on only 0???
				.hword \label\()__\p
			.endif
		.endm

		// pass script ids, this is to allow variable args up to size 16
		// this is so relative pointers are used by passing script ids instead of labels
		.macro text_script_rel_pointers p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15
			data_def_rel_pointer \p0
			data_def_rel_pointer \p1
			data_def_rel_pointer \p2
			data_def_rel_pointer \p3
			data_def_rel_pointer \p4
			data_def_rel_pointer \p5
			data_def_rel_pointer \p6
			data_def_rel_pointer \p7
			data_def_rel_pointer \p8
			data_def_rel_pointer \p9
			data_def_rel_pointer \p10
			data_def_rel_pointer \p11
			data_def_rel_pointer \p12
			data_def_rel_pointer \p13
			data_def_rel_pointer \p14
			data_def_rel_pointer \p15
		.endm
	.endm

	// just to remove purge warning
	.macro text_script
	.endm
	.macro text_script_rel_pointers
	.endm
	.macro data_def_rel_pointer
	.endm
	.macro text_script_rel_pointers_auto
	.endm



	/* bytecode macros */
	.macro ts_nop
	.byte 0xE5
	.endm
	.macro ts_end
	.byte 0xE6
	.endm
	.macro ts_key_wait p0:req
	.byte 0xE7, \p0
	.endm
	.macro ts_msg_open
	.byte 0xE8, 0x0
	.endm
	.macro ts_msg_close
	.byte 0xE8, 0x1
	.endm
	.macro ts_msg_open_quick
	.byte 0xE8, 0x2
	.endm
	.macro ts_msg_close_quick
	.byte 0xE8, 0x3
	.endm
	.macro ts_msg_open_ext p0:req, p1:req
	.byte 0xE8, 0x4, \p0, \p1
	.endm
	.macro ts_msg_close_ext p0:req, p1:req
	.byte 0xE8, 0x5, \p0, \p1
	.endm
	.macro ts_msg_open_quick_ext p0:req, p1:req
	.byte 0xE8, 0x6, \p0, \p1
	.endm
	.macro ts_msg_close_quick_ext p0:req, p1:req
	.byte 0xE8, 0x7, \p0, \p1
	.endm
	.macro ts_msg_open_menu
	.byte 0xE8, 0x8
	.endm
	.macro ts_msg_close_menu
	.byte 0xE8, 0x9
	.endm
	.macro ts_msg_open_menu_quick
	.byte 0xE8, 0xA
	.endm
	.macro ts_msg_close_menu_quick
	.byte 0xE8, 0xB
	.endm
	.macro ts_msg_open_crossover
	.byte 0xE8, 0xC
	.endm
	.macro ts_msg_close_crossover
	.byte 0xE8, 0xD
	.endm
	.macro ts_msg_open_crossover_quick
	.byte 0xE8, 0xE
	.endm
	.macro ts_msg_close_crossover_quick
	.byte 0xE8, 0xF
	.endm
	.macro ts_msg_open_email
	.byte 0xE8, 0x10
	.endm
	.macro ts_msg_close_email
	.byte 0xE8, 0x11
	.endm
	.macro ts_newline
	.byte 0xE9
	.endm
	.macro ts_flag_set p0:req, p1:req
	.byte 0xEA, 0x0, \p0, \p1
	.endm
	.macro ts_flag_clear p0:req, p1:req
	.byte 0xEA, 0x1, \p0, \p1
	.endm
	.macro ts_flag_toggle p0:req, p1:req
	.byte 0xEA, 0x2, \p0, \p1
	.endm
	.macro ts_flag_multi_set p0:req, p1:req, p2:req
	.byte 0xEA, 0x3, \p0, \p1, \p2
	.endm
	.macro ts_flag_multi_clear p0:req, p1:req, p2:req
	.byte 0xEA, 0x4, \p0, \p1, \p2
	.endm
	.macro ts_flag_set_buffered p0:req
	.byte 0xEA, 0x6, \p0
	.endm
	.macro ts_flag_add_mail p0:req, p1:req
	.byte 0xEA, 0x7, \p0, \p1
	.endm
	.macro ts_flag_add_b_b_s_message p0:req, p1:req
	.byte 0xEA, 0x9, \p0, \p1
	.endm
	.macro ts_flag_add_request p0:req, p1:req
	.byte 0xEA, 0xA, \p0, \p1
	.endm
	.macro ts_option p0:req, p1:req, p2:req
	.byte 0xEB, \p0, \p1, \p2
	.endm
	.macro ts_space p0:req
	.byte 0xEC, 0x0, \p0
	.endm

	.macro ts_space_px p0:req
	.byte 0xEC, 0x1, \p0
	.endm
	.macro ts_select p0:req, p1:req, p2=NULL, p3=NULL, p4=NULL
	.byte 0xED, \p0, \p1
	.if \p2 != NULL
	.byte \p2
	.endif
	.if \p3 != NULL
	.byte \p3
	.endif
	.if \p4 != NULL
	.byte \p4
	.endif
	.endm
	.macro ts_wait p0:req, p1:req
	.byte 0xEE, 0x0, \p0, \p1
	.endm
	.macro ts_wait_skip p0:req, p1:req
	.byte 0xEE, 0x1, \p0, \p1
	.endm
	.macro ts_wait_flag p0:req, p1:req
	.byte 0xEE, 0x2, \p0, \p1
	.endm
	.macro ts_wait_o_w_var p0:req, p1:req
	.byte 0xEE, 0x3, \p0, \p1
	.endm
	.macro ts_wait_flag_clear p0:req, p1:req
	.byte 0xEE, 0x4, \p0, \p1
	.endm
	.macro ts_wait_hold p0:req, p1:req
	.byte 0xEE, 0xFF, \p0, \p1
	.endm
	.macro ts_check_flag p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x0, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_chapter p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x1, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_sub_area p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x2, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_global p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x3, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_area p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x4, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_game_version p0:req, p1:req
	.byte 0xEF, 0x5, \p0, \p1
	.endm
	.macro ts_check_chip_gate p0:req, p1:req
	.byte 0xEF, 0x6, \p0, \p1
	.endm
	.macro ts_check_item07 p0:req, p1:req, p2:req, p3:req, p4:req
	.byte 0xEF, 0x7, \p0, \p1, \p2, \p3, \p4
	.endm
	.macro ts_check_chip_code p0:req, p1:req, p2:req, p3:req, p4:req, p5:req, p6:req
	.byte 0xEF, 0x8, \p0, \p1, \p2, \p3, \p4, \p5, \p6
	.endm
	.macro ts_check_pack_chip_code p0:req, p1:req, p2:req, p3:req, p4:req, p5:req, p6:req
	.byte 0xEF, 0x9, \p0, \p1, \p2, \p3, \p4, \p5, \p6
	.endm
	.macro ts_check_give_item p0:req, p1:req, p2:req, p3:req, p4:req
	.byte 0xEF, 0xA, \p0, \p1, \p2, \p3, \p4
	.endm
	.macro ts_check_take_item p0:req, p1:req, p2:req, p3:req, p4:req
	.byte 0xEF, 0xB, \p0, \p1, \p2, \p3, \p4
	.endm
	.macro ts_set_item p0:req, p1:req
	.byte 0xEF, 0xC, \p0, \p1
	.endm
	.macro ts_check_item0_d p0:req, p1:req, p2:req, p3:req, p4:req
	.byte 0xEF, 0xD, \p0, \p1, \p2, \p3, \p4
	.endm
	.macro ts_check_give_zenny p0:req, p1:req, p2:req, p3:req, p4:req, p5:req, p6:req
	.byte 0xEF, 0xE, \p0, \p1, \p2, \p3, \p4, \p5, \p6
	.endm
	.macro ts_check_take_zenny p0:req, p1:req, p2:req, p3:req, p4:req, p5:req, p6:req
	.byte 0xEF, 0xF, \p0, \p1, \p2, \p3, \p4, \p5, \p6
	.endm
	.macro ts_set_zenny p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x10, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_zenny p0:req, p1:req, p2:req, p3:req, p4:req, p5:req, p6:req
	.byte 0xEF, 0x11, \p0, \p1, \p2, \p3, \p4, \p5, \p6
	.endm
	.macro ts_check_give_bug_frags p0:req, p1:req, p2:req, p3:req, p4:req, p5:req, p6:req
	.byte 0xEF, 0x12, \p0, \p1, \p2, \p3, \p4, \p5, \p6
	.endm
	.macro ts_check_take_bug_frags p0:req, p1:req, p2:req, p3:req, p4:req, p5:req, p6:req
	.byte 0xEF, 0x13, \p0, \p1, \p2, \p3, \p4, \p5, \p6
	.endm
	.macro ts_set_bug_frags p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x14, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_bug_frags p0:req, p1:req, p2:req, p3:req, p4:req, p5:req, p6:req
	.byte 0xEF, 0x15, \p0, \p1, \p2, \p3, \p4, \p5, \p6
	.endm
	.macro ts_check_have_one_item p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x1A, \p0, \p1, \p2, \p3
	.endm
	.macro ts_item_give_navi_cust_program p0:req, p1:req, p2:req
	.byte 0xEF, 0x1B, \p0, \p1, \p2
	.endm
	.macro ts_item_take_navi_cust_program p0:req, p1:req, p2:req
	.byte 0xEF, 0x1C, \p0, \p1, \p2
	.endm
	.macro ts_item_set_navi_cust_program p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x1D, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_navi_cust_program p0:req, p1:req, p2:req, p3:req, p4:req, p5:req
	.byte 0xEF, 0x1E, \p0, \p1, \p2, \p3, \p4, \p5
	.endm
	.macro ts_check_have_two_item p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x20, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_battle_result p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x21, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_shop_stock p0:req, p1:req, p2:req
	.byte 0xEF, 0x22, \p0, \p1, \p2
	.endm
	.macro ts_check_multi_flag p0:req, p1:req, p2:req, p3:req, p4:req
	.byte 0xEF, 0x28, \p0, \p1, \p2, \p3, \p4
	.endm
	.macro ts_check_water_god_program p0:req
	.byte 0xEF, 0x29, \p0
	.endm
	.macro ts_check_chip p0:req, p1:req, p2:req, p3:req, p4:req, p5:req
	.byte 0xEF, 0x2A, \p0, \p1, \p2, \p3, \p4, \p5
	.endm
	.macro ts_check_double_souls p0:req, p1:req
	.byte 0xEF, 0x2B, \p0, \p1
	.endm
	.macro ts_check_link_navi p0:req, p1:req, p2:req, p3:req, p4:req, p5:req, p6:req, p7:req, p8:req, p9:req, p10:req, p11:req, p12:req
	.byte 0xEF, 0x2E, \p0, \p1, \p2, \p3, \p4, \p5, \p6, \p7, \p8, \p9, \p10, \p11, \p12
	.endm
	.macro ts_check_navi_all p0:req, p1:req, p2:req, p3:req, p4:req, p5:req, p6:req, p7:req, p8:req, p9:req, p10:req, p11:req
	.byte 0xEF, 0x2F, \p0, \p1, \p2, \p3, \p4, \p5, \p6, \p7, \p8, \p9, \p10, \p11
	.endm
	.macro ts_check_base_h_p p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x31, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_library_dark_full p0:req, p1:req
	.byte 0xEF, 0x32, \p0, \p1
	.endm
	.macro ts_check_library p0:req, p1:req, p2:req, p3:req, p4:req
	.byte 0xEF, 0x33, \p0, \p1, \p2, \p3, \p4
	.endm
	.macro ts_check_library_standard p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x34, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_library_mega p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x35, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_library_giga p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x36, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_library_p_a p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x37, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_library_secret p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x38, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_library_dark p0:req, p1:req, p2:req, p3:req
	.byte 0xEF, 0x39, \p0, \p1, \p2, \p3
	.endm
	.macro ts_check_request_b_b_s_rank p0:req, p1:req, p2:req, p3:req, p4:req
	.byte 0xEF, 0x3B, \p0, \p1, \p2, \p3, \p4
	.endm
	.macro ts_jump_buffer
	.byte 0xF0, 0x1
	.endm
	.macro ts_jump_buffer_set p0:req
	.byte 0xF0, 0x2, \p0
	.endm
	.macro ts_jump p0:req
	.byte 0xF0, 0x0, \p0
	.endm
	.macro ts_jump_random p0:req
	.byte 0xF0, \p0
	.endm
	.macro ts_text_speed p0:req
	.byte 0xF1, 0x0, \p0
	.endm
	.macro ts_clear_msg
	.byte 0xF2
	.endm
	.macro ts_control_lock
	.byte 0xF3, 0x0
	.endm
	.macro ts_control_unlock
	.byte 0xF3, 0x1
	.endm
	.macro ts_control_set p0:req
	.byte 0xF3, 0x2, \p0
	.endm
	.macro ts_item_give p0:req, p1:req
	.byte 0xF4, 0x0, \p0, \p1
	.endm
	.macro ts_item_take p0:req, p1:req
	.byte 0xF4, 0x1, \p0, \p1
	.endm
	.macro ts_item_set p0:req, p1:req
	.byte 0xF4, 0x2, \p0, \p1
	.endm
	.macro ts_item_give_chip p0:req, p1:req, p2:req, p3:req
	.byte 0xF4, 0x10, \p0, \p1, \p2, \p3
	.endm
	.macro ts_item_take_chip p0:req, p1:req, p2:req, p3:req
	.byte 0xF4, 0x11, \p0, \p1, \p2, \p3
	.endm
	.macro ts_item_set_chip p0:req, p1:req, p2:req, p3:req
	.byte 0xF4, 0x12, \p0, \p1, \p2, \p3
	.endm
	.macro ts_item_give_all_chips
	.byte 0xF4, 0x15
	.endm
	.macro ts_mugshot_show p0:req
	.byte 0xF5, 0x0, \p0
	.endm
	.macro ts_mugshot_hide
	.byte 0xF5, 0x1
	.endm
	.macro ts_mugshot_palette p0:req
	.byte 0xF5, 0x2, \p0
	.endm
	.macro ts_mugshot_animation p0:req
	.byte 0xF5, 0x3, \p0
	.endm
	.macro ts_mugshot_o_a_m_palette p0:req
	.byte 0xF5, 0x4, \p0
	.endm
	.macro ts_color p0:req
	.byte 0xF6, 0x0, \p0
	.endm
	.macro ts_color_buffered p0:req
	.byte 0xF6, 0x1, \p0
	.endm
	.macro ts_position_box p0:req, p1:req, p2:req
	.byte 0xF7, 0x0, \p0, \p1, \p2
	.endm
	.macro ts_position_text p0:req, p1:req, p2:req
	.byte 0xF7, 0x2, \p0, \p1, \p2
	.endm
	.macro ts_position_arrow p0:req, p1:req
	.byte 0xF7, 0x4, \p0, \p1
	.endm
	.macro ts_position_mugshot p0:req, p1:req
	.byte 0xF7, 0x5, \p0, \p1
	.endm
	.macro ts_position_text_center p0:req, p1:req
	.byte 0xF7, 0x6, \p0, \p1
	.endm
	.macro ts_position_option_horizontal p0:req
	.byte 0xF7, 0x7, \p0
	.endm
	.macro ts_position_option_vertical p0:req
	.byte 0xF7, 0x8, \p0
	.endm
	.macro ts_position_option_from_center p0:req
	.byte 0xF7, 0x9, \p0
	.endm
	.macro ts_player_lock
	.byte 0xF8, 0x0
	.endm
	.macro ts_player_animate_scene p0:req
	.byte 0xF8, 0x1, \p0
	.endm
	.macro ts_player_unlock
	.byte 0xF8, 0x2
	.endm
	.macro ts_player_finish
	.byte 0xF8, 0x3
	.endm
	.macro ts_player_reset_scene
	.byte 0xF8, 0x4
	.endm
	.macro ts_player_animate_object p0:req
	.byte 0xF8, 0x5, \p0
	.endm
	.macro ts_player_reset_object
	.byte 0xF8, 0x6
	.endm
	.macro ts_store_timer p0:req, p1:req
	.byte 0xF9, 0x0, \p0, \p1
	.endm
	.macro ts_store_global p0:req, p1:req
	.byte 0xF9, 0x1, \p0, \p1
	.endm
	.macro ts_print_item p0:req, p1:req
	.byte 0xFA, 0x0, \p0<<4 | \p1>>4, \p1>>4 | 0x0
	.endm
	.macro ts_print_chip1 p0:req, p1:req
	.byte 0xFA, 0x0, \p0<<4 | \p1>>4, \p1>>4 | 0x1
	.endm
	.macro ts_print_chip2 p0:req, p1:req
	.byte 0xFA, 0x0, \p0<<4 | \p1>>4, \p1>>4 | 0x2
	.endm
	.macro ts_print_code p0:req, p1:req
	.byte 0xFA, 0x0, \p0<<4 | \p1>>4, \p1>>4 | 0x3
	.endm
	.macro ts_print_folder_name p0:req, p1:req
	.byte 0xFA, 0x0, \p0<<4 | \p1>>4, \p1>>4 | 0x4
	.endm
	.macro ts_print_navi_cust_program5 p0:req, p1:req
	.byte 0xFA, 0x0, \p0<<4 | \p1>>4, \p1>>4 | 0x5
	.endm
	.macro ts_print_navi_cust_program6 p0:req, p1:req
	.byte 0xFA, 0x0, \p0<<4 | \p1>>4, \p1>>4 | 0x6
	.endm
	.macro ts_print_chip7 p0:req, p1:req
	.byte 0xFA, 0x0, \p0<<4 | \p1>>4, \p1>>4 | 0x7
	.endm
	.macro ts_print_navi p0:req, p1:req
	.byte 0xFA, 0x0, \p0<<4 | \p1>>4, \p1>>4 | 0x8
	.endm
	.macro ts_print_request p0:req, p1:req
	.byte 0xFA, 0x0, \p0<<4 | \p1>>4, \p1>>4 | 0x9
	.endm
	.macro ts_print_current_navi p0:req
	.byte 0xFA, 0x1, 0x0, \p0
	.endm
	.macro ts_print_current_navi_o_w p0:req
	.byte 0xFA, 0x1, 0x4, \p0
	.endm
	.macro ts_print_zenny3 p0:req
	.byte 0xFA, 0x3, 0x0, 0x0, \p0
	.endm
	.macro ts_print_zenny4 p0:req
	.byte 0xFA, 0x4, 0x0, 0x0, \p0
	.endm
	.macro ts_print_buffer03 p0:req, p1:req
	.byte 0xFA, 0x3, \p0, \p1
	.endm
	.macro ts_print_buffer04 p0:req, p1:req
	.byte 0xFA, 0x4, \p0, \p1
	.endm
	.macro ts_print_navi_data_chip_stat p0:req, p1:req
	.byte 0xFA, 0x6, \p0, \p1
	.endm
	.macro ts_print_buffered_short_string p0:req
	.byte 0xFA, 0xB, \p0
	.endm
	.macro ts_print_link_buffer p0:req
	.byte 0xFA, 0xC, \p0
	.endm
	.macro ts_start_give_random_zenny p0:req
	.byte 0xFB, 0x0, \p0
	.endm
	.macro ts_start_give_random_chip_code p0:req
	.byte 0xFB, 0x1, \p0
	.endm
	.macro ts_start_random_battle
	.byte 0xFB, 0x2
	.endm
	.macro ts_start_fixed_battle p0:req, p1:req
	.byte 0xFB, 0x3, \p0, \p1
	.endm
	.macro ts_start_shop p0:req
	.byte 0xFB, 0x5, \p0
	.endm
	.macro ts_start_bug_frag_trader p0:req
	.byte 0xFB, 0x6, 0x1, \p0
	.endm
	.macro ts_start_chip_trader p0:req, p1:req
	.byte 0xFB, 0x6, \p0, \p1
	.endm
	.macro ts_start_heal p0:req, p1:req
	.byte 0xFB, 0x8, \p0, \p1
	.endm
	.macro ts_start_b_b_s p0:req
	.byte 0xFB, 0xA, \p0
	.endm
	.macro ts_start_map p0:req
	.byte 0xFB, 0xB, \p0
	.endm
	.macro ts_start_give_folder p0:req
	.byte 0xFB, 0xD, \p0
	.endm
	.macro ts_start_request_b_b_s p0:req
	.byte 0xFB, 0xE, \p0
	.endm
	.macro ts_start_mailbox p0:req
	.byte 0xFB, 0xF, \p0
	.endm
	.macro ts_call_save p0:req, p1:req, p2:req
	.byte 0xFC, 0x0, \p0, \p1, \p2
	.endm
	.macro ts_call_p_e_t_effect p0:req
	.byte 0xFC, 0x3, 0x0, \p0
	.endm
	.macro ts_call_minigame_effect p0:req
	.byte 0xFC, 0x3, 0x2, \p0
	.endm
	.macro ts_call_scenario_effect p0:req
	.byte 0xFC, 0x3, 0x4, \p0
	.endm
	.macro ts_call_reset_fishing_minigame p0:req
	.byte 0xFC, 0x3, 0x5, \p0
	.endm
	.macro ts_call_reset_evil_spirits p0:req
	.byte 0xFC, 0x3, 0x6, \p0
	.endm
	.macro ts_call_aster_land_stock_add p0:req
	.byte 0xFC, 0x3, 0x7, \p0
	.endm
	.macro ts_call_reload_soul_weapons p0:req
	.byte 0xFC, 0x3, 0x8, \p0
	.endm
	.macro ts_call_get_crossover_points p0:req
	.byte 0xFC, 0x3, 0x9, \p0
	.endm
	.macro ts_call_set_crossover_points p0:req
	.byte 0xFC, 0x3, 0xA, \p0
	.endm
	.macro ts_call_add_all_b_b_s_messages p0:req
	.byte 0xFC, 0x3, 0xB, \p0
	.endm
	.macro ts_call_change_player_sprite p0:req
	.byte 0xFC, 0x3, 0xC, \p0
	.endm
	.macro ts_call_add_all_requests p0:req
	.byte 0xFC, 0x3, 0xD, \p0
	.endm
	.macro ts_call_buffer_gold_mystery_data_location p0:req
	.byte 0xFC, 0x3, 0xE, \p0
	.endm
	.macro ts_call_unload_objects p0:req
	.byte 0xFC, 0x3, 0xF, \p0
	.endm
	.macro ts_call_reload_objects p0:req
	.byte 0xFC, 0x3, 0x10, \p0
	.endm
	.macro ts_call_reload_navi_base_stats p0:req
	.byte 0xFC, 0x3, 0x11, \p0
	.endm
	.macro ts_call_reload_navi_stat_boosts p0:req
	.byte 0xFC, 0x3, 0x12, \p0
	.endm
	.macro ts_call_set_full_h_p p0:req
	.byte 0xFC, 0x3, 0x13, \p0
	.endm
	.macro ts_call_max_virus_delete_count p0:req
	.byte 0xFC, 0x3, 0x14, \p0
	.endm
	.macro ts_call_fade_out
	.byte 0xFC, 0x4
	.endm
	.macro ts_call_give_all_navi_cust_programs
	.byte 0xFC, 0x5
	.endm
	.macro ts_call_disable_mugshot_brighten
	.byte 0xFC, 0x6
	.endm
	.macro ts_call_check_outside_jack_in p0:req, p1:req
	.byte 0xFC, 0x8, \p0, \p1
	.endm
	.macro ts_call_disturb_icon p0:req
	.byte 0xFC, 0x9, \p0
	.endm
	.macro ts_call_change_navi p0:req
	.byte 0xFC, 0xF, \p0
	.endm
	.macro ts_call_request_points_add
	.byte 0xFC, 0x10
	.endm
	.macro ts_call_request_points_buffer
	.byte 0xFC, 0x11
	.endm
	.macro ts_call_request_finish
	.byte 0xFC, 0x13
	.endm
	.macro ts_call_rush_food_buffer
	.byte 0xFC, 0x14
	.endm
	.macro ts_sound_play00 p0:req, p1:req
	.byte 0xFD, 0x0, \p0, \p1
	.endm
	.macro ts_sound_stop_bgm
	.byte 0xFD, 0x1, 0xFF, 0x0
	.endm
	.macro ts_sound_play_bgm p0:req, p1:req
	.byte 0xFD, 0x1, \p0, \p1
	.endm
	.macro ts_sound_enable_text_sfx
	.byte 0xFD, 0x2
	.endm
	.macro ts_sound_disable_text_sfx
	.byte 0xFD, 0x3
	.endm
	.macro ts_sound_stop
	.byte 0xFD, 0x4
	.endm
	.macro ts_sound_fade_out p0:req, p1:req
	.byte 0xFD, 0x5, \p0, \p1
	.endm
	.macro ts_sound_play06 p0:req, p1:req
	.byte 0xFD, 0x6, \p0, \p1
	.endm
	.macro ts_sound_play07 p0:req, p1:req
	.byte 0xFD, 0x7, \p0, \p1
	.endm
	.macro ts_sound_enable_choice_sfx
	.byte 0xFD, 0x8
	.endm
	.macro ts_sound_disable_choice_sfx
	.byte 0xFD, 0x9
	.endm
	.macro ts_sound_play_area_bgm
	.byte 0xFD, 0xA
	.endm
	.macro ts_sound_fade_in_bgm p0:req, p1:req
	.byte 0xFD, 0xB, \p0, \p1
	.endm
	.macro ts_menu_option_number_trader p0:req
	.byte 0xFE, 0x0, \p0
	.endm
	.macro ts_menu_select_number_trader
	.byte 0xFE, 0x1
	.endm
	.macro ts_menu_option_number p0:req
	.byte 0xFE, 0x2, \p0
	.endm
	.macro ts_menu_select_buffered_password p0:req, p1:req, p2:req
	.byte 0xFE, 0x3, \p0, \p1, \p2
	.endm
	.macro ts_menu_option_name p0:req
	.byte 0xFE, 0x4, \p0
	.endm
	.macro ts_menu_select_name p0:req, p1:req, p2:req
	.byte 0xFE, 0x5, \p0, \p1, \p2
	.endm
	.macro ts_menu_option_password p0:req
	.byte 0xFE, 0xD, \p0
	.endm
	.macro ts_menu_select_password p0:req, p1:req, p2:req, p3:req
	.byte 0xFE, 0x10, \p0, \p1, \p2, \p3
	.endm
	.macro ts_menu_option_crossover_trader p0:req
	.byte 0xFE, 0x11, \p0
	.endm
	.macro ts_menu_select_crossover_trader
	.byte 0xFE, 0x12
	.endm
	.macro ts_ereader_name p0:req
	.byte 0xFF, 0x0, \p0
	.endm
	.macro ts_ereader_desc01 p0:req
	.byte 0xFF, 0x1, \p0
	.endm
	.macro ts_ereader_desc0A p0:req
	.byte 0xFA, 0xA, \p0
	.endm

	/* secondary interpreter commands */
	.macro ts_print_mod_buffer p0:req, p1:req
	.byte 0xFA, 0x02, \p0, \p1
	.endm
	/*
	.macro ts_space_px p0:req
	.byte 0xEC, 0x01, \p0
	.endm
	.macro ts_check_game_version p0:req, p1:req
	.byte 0xEF, \p0, \p1
	.endm
	*/


	.endif // TEXT_SCRIPT_INC
