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

        .macro data_def_rel_pointer p=''
            .if \p != ''
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

    /* bytecode macros */
    .macro e5_nop
        .byte E5_NOP
    .endm

    .macro e6_end
        .byte E6_END
    .endm

    .macro e7_buttonhalt, mode
        .byte E7_BUTTONHALT, \mode
    .endm

    .macro e8_msgbox, mode
        .byte E8_MSGBOX, \mode
    .endm
    // modes 4, 5, 6, 7
    .macro e8_msgbox_special, mode, type, button_halt_arr_pos
        .byte E8_MSGBOX, \mode, \type, \button_halt_arr_pos
    .endm

    .macro e9_newline
        .byte E9_NEWLINE
    .endm

    // modes 0 to 2
    .macro ea_flag mode:req, flag_byte_low:req, flag_byte_high:req
        .byte EA_FLAG, \mode, \flag_byte_low, \flag_byte_high
    .endm
    // modes 3 to 5
    .macro ea_flag_range mode:req, flag_byte_low, flag_byte_high, num_flags
        .byte EA_FLAG, \mode
        .if \mode != EA_UNDEFINED_05
            .byte \flag_byte_low, \flag_byte_high, \num_flags
        .endif
    .endm
    // mode 6
    .macro ea_load_and_set flag:req
        .byte EA_FLAG, EA_LOAD_AND_SET_FLAG, \flag
    .endm
    // modes 7 to A
    .macro enum_flag_set_unk mode, flag_byte_low, flag_byte_high
        .byte EA_FLAG, \mode, \flag_byte_low, \flag_byte_high
    .endm

    .macro eb_option unk, LR, UD
        .byte EB_OPTION, \unk, \LR, \UD
    .endm

    .macro ec_label mode, amount
        .byte EC_LABEL, \mode, \amount
    .endm

    // ...

    .macro f0_jump, mode:req, byte
        .if \mode == F0_EXEC_SCRIPT || \mode == F0_STORE_SCRIPT
            .byte F0_JUMP, \mode, \byte
        .else
            .byte F0_JUMP, \mode
        .endif
    .endm

    .macro f1_text_speed, mode_unused, speed
        .byte F1_TEXT_SPEED, \mode_unused, \speed
    .endm

    .macro f2_clear_msgbox
        .byte F2_CLEAR_MSGBOX
    .endm

    .macro f3_control mode:req, flags
        .byte F3_CONTROL, \mode
        .if \mode == F3_SET_FLAGS
            .byte \flags
        .endif
    .endm

    .macro f5_mugshot mode:req, byte
        .if \mode == F5_REMOVE
            .byte F5_MUGSHOT, \mode
        .else
            .byte F5_MUGSHOT, \mode, \byte
        .endif
    .endm

    .macro f6_textcolor mode:req, palette_idx:req
        .byte F6_TEXTCOLOR, \mode, \palette_idx
    .endm

    // modes 0 to 3
    .macro f7_move mode, x, y, z
        .byte F7_MOVE, \mode
        .if \mode != F7_NOP_01 && \mode != F7_NOP_03
            .byte \x, \y, \z
        .endif
    .endm
    // modes 4 to 6
    .macro f7_move_text_item mode, x, y
        .byte F7_MOVE, \mode, \x, \y
    .endm
    // modes 7 to 9
    .macro f7_move_cur mode, x
        .byte F7_MOVE, \mode, \x
    .endm



    .endif // TEXT_SCRIPT_INC
