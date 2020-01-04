	.ifndef TEXT_SCRIPT_COMMANDS_INC
	.set TEXT_SCRIPT_COMMANDS_INC, 0
	
// Legend: When a parameter is specified, its byte offset, bit offset, and size are specified as [byte_offset:bit_offset:size]

/* primary (chatbox) interpreter commands */

	// Does nothing.
	.macro ts_nop 
		.byte 0xE5
	.endm
	
	// Closes any open message box and ends script execution.
	.macro ts_end 
		.byte 0xE6
	.endm
	
	// Pauses script execution until a button is pressed.
	// :param any[1:0:8]: If true, any button can be pressed; otherwise, only A and B will have an effect.
	.macro ts_key_wait any:req
		.byte 0xE7, \any
	.endm
	
	// Opens the message box and waits until the animation finishes.
	.macro ts_msg_open 
		.byte 0xE8, 0x0
	.endm
	
	// Closes the message box and waits until the animation finishes.
	.macro ts_msg_close 
		.byte 0xE8, 0x1
	.endm
	
	// Opens the message box without any animation.
	.macro ts_msg_open_quick 
		.byte 0xE8, 0x2
	.endm
	
	// Closes the message box without any animation. However, if the message box contains a mugshot, it remains on-screen.
	.macro ts_msg_close_quick 
		.byte 0xE8, 0x3
	.endm
	
	// Opens the message box and waits until the animation finishes.
	// :param size[2:0:8]: The message box size type to use.
	// :param arrowPos[3:0:8]: The arrow position type to use, or 255 to use the current arrow position.
	.macro ts_msg_open_ext size:req, arrowPos:req
		.byte 0xE8, 0x4, \size, \arrowPos
	.endm
	
	// Closes the message box and waits until the animation finishes.
	// :param size[2:0:8]: The message box size type to use.
	// :param arrowPos[3:0:8]: The arrow position type to use, or 255 to use the current arrow position.
	.macro ts_msg_close_ext size:req, arrowPos:req
		.byte 0xE8, 0x5, \size, \arrowPos
	.endm
	
	// Opens the message box without any animation.
	// :param size[2:0:8]: The message box size type to use.
	// :param arrowPos[3:0:8]: The arrow position type to use, or 255 to use the current arrow position.
	.macro ts_msg_open_quick_ext size:req, arrowPos:req
		.byte 0xE8, 0x6, \size, \arrowPos
	.endm
	
	// Closes the message box without any animation. However, if the message box contains a mugshot, it remains on-screen.
	// :param size[2:0:8]: The message box size type to use.
	// :param arrowPos[3:0:8]: The arrow position type to use, or 255 to use the current arrow position.
	.macro ts_msg_close_quick_ext size:req, arrowPos:req
		.byte 0xE8, 0x7, \size, \arrowPos
	.endm
	
	// Opens the menu message box and waits until the animation finishes.
	.macro ts_msg_open_menu 
		.byte 0xE8, 0x8
	.endm
	
	// Closes the menu message box and waits until the animation finishes.
	.macro ts_msg_close_menu 
		.byte 0xE8, 0x9
	.endm
	
	// Opens the menu message box without any animation.
	.macro ts_msg_open_menu_quick 
		.byte 0xE8, 0xA
	.endm
	
	// Closes the menu message box without any animation. However, if the message box contains a mugshot, it remains on-screen.
	.macro ts_msg_close_menu_quick 
		.byte 0xE8, 0xB
	.endm
	
	// Opens the Crossover Battle message box and waits until the animation finishes.
	.macro ts_msg_open_crossover 
		.byte 0xE8, 0xC
	.endm
	
	// Closes the Crossover Battle message box and waits until the animation finishes.
	.macro ts_msg_close_crossover 
		.byte 0xE8, 0xD
	.endm
	
	// Opens the Crossover Battle message box without any animation.
	.macro ts_msg_open_crossover_quick 
		.byte 0xE8, 0xE
	.endm
    
	// Closes the Crossover Battle message box without any animation. However, if the message box contains a mugshot, it remains on-screen.
	.macro ts_msg_close_crossover_quick 
		.byte 0xE8, 0xF
	.endm
	
	// Opens the e-mail message box without any animation.
	.macro ts_msg_open_email 
		.byte 0xE8, 0x10
	.endm
	
	// Closes the e-mail message box without any animation. However, if the message box contains a mugshot, it remains on-screen.
	.macro ts_msg_close_email 
		.byte 0xE8, 0x11
	.endm
	
	// Continues printing text on the next line.
	.macro ts_newline 
		.byte 0xE9
	.endm

	// Sets the specified flag.
	// :param flag[2:0:16]: The flag to set.
	.macro ts_flag_set flag:req
		.byte 0xEA, 0x0
		.hword \flag
	.endm
	
	// Clears the specified flag.
	// :param flag[2:0:16]: The flag to clear.
	.macro ts_flag_clear flag:req
		.byte 0xEA, 0x1
		.hword \flag
	.endm
	
	// Toggles the specified flag.
	// :param flag[2:0:16]: The flag to toggle.
	.macro ts_flag_toggle flag:req
		.byte 0xEA, 0x2
		.hword \flag
	.endm
	
	// Sets a series of flags starting at the specified flag.
	// :param flag[2:0:16]: The first flag to set.
	// :param count[4:0:8]: The amount of subsequent flags to set.
	.macro ts_flag_multi_set flag:req, count:req
		.byte 0xEA, 0x3
		.hword \flag
		.byte \count
	.endm
	
	// Clears a series of flags starting at the specified flag.
	// :param flag[2:0:16]: The first flag to clear.
	// :param count[4:0:8]: The amount of subsequent flags to clear.
	.macro ts_flag_multi_clear flag:req, count:req
		.byte 0xEA, 0x4
		.hword \flag
		.byte \count
	.endm
	
	// Set a buffered flag stored in memory.
	// :param buffer[2:0:8]: The buffer to load the flag from.
	.macro ts_flag_set_buffered buffer:req
		.byte 0xEA, 0x6, \buffer
	.endm
	
	// Makes the player receive the e-mail with the specified flag.
	// :param flag[2:0:16]: The flag of the e-mail to give.
	.macro ts_flag_add_mail flag:req
		.byte 0xEA, 0x7
		.hword \flag
	.endm
	
	// Unlocks the BBS message with the specified flag.
	// :param flag[2:0:16]: The flag of the BBS message to unlock.
	.macro ts_flag_add_b_b_s_message flag:req
		.byte 0xEA, 0x9
		.hword \flag
	.endm
	
	// Unlocks the request with the specified flag on the Request BBS.
	// :param flag[2:0:16]: The flag of the BBS message to unlock.
	.macro ts_flag_add_request flag:req
		.byte 0xEA, 0xA
		.hword \flag
	.endm

	// Creates a cursor menu option at the current text position.
	// :param brackets[1:0:8]: If true, uses a brackets cursor instead of the standard arrow cursor. (However, this is overriden by the selection command.)
	// :param right[2:0:4]: Which option to go to when Right is pressed.
	// :param left[2:4:4]: Which option to go to when Left is pressed.
	// :param down[3:0:4]: Which option to go to when Down is pressed.
	// :param up[3:4:4]: Which option to go to when Up is pressed.
	.macro ts_option brackets:req, right:req, left:req, down:req, up:req
		.byte 0xEB, \brackets, (\left << 4) | \right, (\up << 4) | \down
	.endm

	
	// Moves the text position to the right in blocks of space widths.
	// :param count[2:0:8]: The amount of spaces to insert.
	.macro ts_space count:req
		.byte 0xEC, 0x0, \count
	.endm
	
	// Moves the text position to the right a number of pixels.
	// :param count[2:0:8]: The amount of pixels to insert.
	.macro ts_space_px count:req
		.byte 0xEC, 0x1, \count
	.endm
	
    // TODO: update this to be similar to ts_jump_random, since it's dynamic
	// FIXME: update parameter names
	// Lets the player choose from a number of previously defined options with the D-Pad and A button, and jumps to a different script if a certain option is chosen. If the B button is pressed, the last option is chosen by default.
	// :param length[1:0:8]:
	// :param default[2:0:4]: The option that is selected by default.
	// :param BSeparate[2:5:1]: If true, pressing the B button is treated as a separate option; otherwise, the last defined option is assigned.
	// :param disableB[2:6:1]: If true, pressing the B button has no effect; otherwise, it chooses the last labeled option.
	// :param clear[2:7:1]: If true, clears the message box after choosing an option.
	.macro ts_select p0:req, p1:req, p2=NULL, p3=NULL, p4=NULL, p5=NULL, p6=NULL, p7=NULL, p8=NULL
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

        .if \p5 != NULL
        .byte \p5
        .endif

        
        .if \p6 != NULL
        .byte \p6
        .endif
        
        .if \p7 != NULL
        .byte \p7
        .endif
        
        .if \p8 != NULL
        .byte \p8
        .endif
	.endm

	// Pauses script execution for a specified number of frames.
	// :param frames[2:0:16]: The amount of frames to wait.
    .macro ts_wait frames:req
	.byte 0xEE, 0x0
	.hword \frames
	.endm
	
	// Pauses script execution for a specified number of frames, unless the A or B button has been pressed.
	// :param frames[2:0:16]: The maximum amount of frames to wait.
	.macro ts_wait_skip frames:req
	.byte 0xEE, 0x1
	.hword \frames
	.endm

	// Pauses script execution until the specified flag is set.
	// :param flag[2:0:16]: The flag that must be set before script execution may continue.
	.macro ts_wait_flag flag:req
		.byte 0xEE, 0x2
		.hword \flag
	.endm
	
	
	// Pauses script execution until the specified overworld variable equals a specific value.
	// :param variable[2:0:8]: The index of the variable.
	// :param value[3:0:8]: The value the variable must be equal to before script execution may continue.
	.macro ts_wait_o_w_var variable:req, value:req
		.byte 0xEE, 0x3, \variable, \value
	.endm
	
	// Pauses script execution until the specified flag is cleared.
	// :param flag[2:0:16]: The flag that must be cleared before script execution may continue.
	.macro ts_wait_flag_clear flag:req
		.byte 0xEE, 0x4
		.hword \flag
	.endm
	
	// Pauses script execution indefinitely.
	// unused params
	.macro ts_wait_hold unused:req
		.byte 0xEE, 0xFF
		.hword \unused
	.endm

	// Checks the specified flag, and jumps to a different script depending on if it is true or false.
	// :param flag[2:0:16]: The flag to check.
	// :param jumpIfTrue[4:0:8]: The script to jump to if the flag is set, or 255 to continue with the current script.
	// :param jumpIfFalse[5:0:8]: The script to jump to if the flag is not set, or 255 to continue with the current script.
	.macro ts_check_flag flag:req, jumpIfTrue:req, jumpIfFalse:req
		.byte 0xEF, 0x0
		.hword \flag
		.byte \jumpIfTrue, \jumpIfFalse
	.endm
	
	// Checks the current story chapter, and jumps to a different script depending on if it falls inside or outside the specified range.
	// :param lower[2:0:8]: The lower boundary of the range.
	// :param upper[3:0:8]: The lower boundary of the range.
	// :param jumpIfInRange[4:0:8]: The script to jump to if the current story chapter falls inside the range, or 255 to continue with the current script.
	// :param jumpIfOutOfRange[5:0:8]: The script to jump to if the current story chapter falls outside the range, or 255 to continue with the current script.
	.macro ts_check_chapter lower:req, upper:req, jumpIfInRange:req, jumpIfOutOfRange:req
		.byte 0xEF, 0x1, \lower, \upper, \jumpIfInRange, \jumpIfOutOfRange
	.endm
	
	// Checks the current subarea, and jumps to a different script depending on if it falls inside or outside the specified range.
	// :param lower[2:0:8]: The lower boundary of the range.
	// :param upper[3:0:8]: The lower boundary of the range.
	// :param jumpIfInRange[4:0:8]: The script to jump to if the subarea falls inside the range, or 255 to continue with the current script.
	// :param jumpIfOutOfRange[5:0:8]: The script to jump to if the subarea falls outside the range, or 255 to continue with the current script.
	.macro ts_check_sub_area lower:req, upper:req, jumpIfInRange:req, jumpIfOutOfRange:req
		.byte 0xEF, 0x2, \lower, \upper, \jumpIfInRange, \jumpIfOutOfRange
	.endm
	
	// Checks a global variable in memory, and jumps to a different script depending on if it is equal to the specified value or not.
	// :param variable[2:0:8]: The index of the variable to load.
	// :param value[3:0:8]: The value to compare to.
	// :param jumpIfEqual[4:0:8]: The script to jump to if the values are equal, or 255 to continue with the current script.
	// :param jumpIfNotEqual[5:0:8]: The script to jump to if the values are not equal, or 255 to continue with the current script.
	.macro ts_check_global variable:req, value:req, jumpIfEqual:req, jumpIfNotEqual:req
		.byte 0xEF, 0x3, \variable, \value, \jumpIfEqual, \jumpIfNotEqual
	.endm
	
	// Checks the current area, and jumps to a different script depending on if it falls inside or outside the specified range.
	// :param lower[2:0:8]: The lower boundary of the range.
	// :param upper[3:0:8]: The lower boundary of the range.
	// :param jumpIfInRange[4:0:8]: The script to jump to if the area falls inside the range, or 255 to continue with the current script.
	// :param jumpIfOutOfRange[5:0:8]: The script to jump to if the area falls outside the range, or 255 to continue with the current script.
	.macro ts_check_area lower:req, upper:req, jumpIfInRange:req, jumpIfOutOfRange:req
		.byte 0xEF, 0x4, \lower, \upper, \jumpIfInRange, \jumpIfOutOfRange
	.endm
	
	// Checks the current game version, and jumps to a different script depending on if the current game is Cybeast Gregar or Cybeast Falzar.
	// :param jumpIfCybeastGregar[2:0:8]: The script to jump to if the current game is Cybeast Gregar, or 255 to continue with the current script.
	// :param jumpIfCybeastFalzar[3:0:8]: The script to jump to if the current game is Cybeast Falzar, or 255 to continue with the current script.
	.macro ts_check_game_version jumpIfCybeastGregar:req, jumpIfCybeastFalzar:req
		.byte 0xEF, 0x5, \jumpIfCybeastGregar, \jumpIfCybeastFalzar
	.endm
	
	// Checks if the Beast Link Gate is connected, and jumps to a different script depending on if it is.
	// :param jumpIfConnected[2:0:8]: The script to jump to if the Beast Link Gate is connected, or 255 to continue with the current script.
	// :param jumpIfNotConnected[3:0:8]: The script to jump to if the Beast Link Gate is not connected, or 255 to continue with the current script.
	.macro ts_check_chip_gate jumpIfConnected:req, jumpIfNotConnected:req
		.byte 0xEF, 0x6, \jumpIfConnected, \jumpIfNotConnected
	.endm
	
	// Checks how many of the specified item are in the player's inventory, and jumps to a different script depending on if it is equal to, greater than or less than the specified amount.
	// :param item[2:0:8]: The item to check the amount of.
	// :param amount[3:0:8]: The amount to compare to.
	// :param jumpIfEqual[4:0:8]: The script to jump to if the number of items is equal to the specified amount, or 255 to continue with the current script.
	// :param jumpIfGreater[5:0:8]: The script to jump to if the number of items is greater than the specified amount, or 255 to continue with the current script.
	// :param jumpIfLess[6:0:8]: The script to jump to if the number of items is less than the specified amount, or 255 to continue with the current script.
	.macro ts_check_item07 item:req, amount:req, jumpIfEqual:req, jumpIfGreater:req, jumpIfLess:req
		.byte 0xEF, 0x7, \item, \amount, \jumpIfEqual, \jumpIfGreater, \jumpIfLess
	.endm
	
	// Checks how many of the specified chip with the specified code are in the player's Pack as well as folders, 
	// and jumps to a different script depending on if it is equal to, greater than or less than the specified amount.
	// :param chip[2:0:16]: The chip to check.
	// :param code[4:0:8]: The code of the chip to check.
	// :param amount[5:0:8]: The amount to compare to.
	// :param jumpIfEqual[6:0:8]: The script to jump to if the number of items is equal to the specified amount, or 255 to continue with the current script.
	// :param jumpIfGreater[7:0:8]: The script to jump to if the number of items is greater than the specified amount, or 255 to continue with the current script.
	// :param jumpIfLess[8:0:8]: The script to jump to if the number of items is less than the specified amount, or 255 to continue with the current script.
	.macro ts_check_chip_code chip:req, code:req, amount:req, jumpIfEqual:req, jumpIfGreater:req, jumpIfLess:req
		.byte 0xEF, 0x8
		.hword \chip
		.byte \code, \amount, \jumpIfEqual, \jumpIfGreater, \jumpIfLess
	.endm
	
	// Checks how many of the specified chip with the specified code are in the player's Pack, 
	// and jumps to a different script depending on if it is equal to, greater than or less than the specified amount.
	// :param chip[2:0:16]: The chip to check.
	// :param code[4:0:8]: The code of the chip to check.
	// :param amount[5:0:8]: The amount to compare to.
	// :param jumpIfEqual[6:0:8]: The script to jump to if the number of chips is equal to the specified amount, or 255 to continue with the current script.
	// :param jumpIfGreater[7:0:8]: The script to jump to if the number of chips is greater than the specified amount, or 255 to continue with the current script.
	// :param jumpIfLess[8:0:8]: The script to jump to if the number of chips is less than the specified amount, or 255 to continue with the current script.
	.macro ts_check_pack_chip_code chip:req, code:req, amount:req, jumpIfEqual:req, jumpIfGreater:req, jumpIfLess:req
		.byte 0xEF, 0x9
		.hword \chip
		.byte \code, \amount, \jumpIfEqual, \jumpIfGreater, \jumpIfLess
	.endm
	
	// Attempts to adds to the player's inventory a specified amount of the specified item, or sets it to the maximum if that is exceeded, plays a sound effect if any were added, and jumps to a different script depending on how many were added.
	// :param item[2:0:8]: The item to give, or 255 to give a buffered item.
	// :param amount[3:0:8]: The amount of items to give.
	// :param jumpIfAll[4:0:8]: The script to jump to if all items could be added, or 255 to continue with the current script.
	// :param jumpIfNone[5:0:8]: The script to jump to if no items at all could be added, or 255 to continue with the current script.
	// :param jumpIfSome[6:0:8]: The script to jump to if some, but not all items could be added, or 255 to continue with the current script.
	.macro ts_check_give_item item:req, amount:req, jumpIfAll:req, jumpIfNone:req, jumpIfSome:req
		.byte 0xEF, 0xA, \item, \amount, \jumpIfAll, \jumpIfNone, \jumpIfSome
	.endm
	
	// Attempts to take from the player's inventory a specified amount of the specified item, but only if the player has enough, and jumps to a different script depending on how many the player had.
	// :param item[2:0:8]: The item to take.
	// :param amount[3:0:8]: The amount of items to take.
	// :param jumpIfAll[4:0:8]: The script to jump to if there were enough items, or 255 to continue with the current script.
	// :param jumpIfNone[5:0:8]: The script to jump to if there were no items at all, or 255 to continue with the current script.
	// :param jumpIfSome[6:0:8]: The script to jump to if there were some, but not enough items, or 255 to continue with the current script.
	.macro ts_check_take_item item:req, amount:req, jumpIfAll:req, jumpIfNone:req, jumpIfSome:req
		.byte 0xEF, 0xB, \item, \amount, \jumpIfAll, \jumpIfNone, \jumpIfSome
	.endm
	
	// Sets the count of the specified item in the player's inventory to the specified amount, and plays a sound effect.
	// :param item[2:0:8]: The item to change the amount of.
	// :param amount[3:0:8]: The new amount of items.
	.macro ts_set_item item:req, amount:req
		.byte 0xEF, 0xC, \item, \amount
	.endm
	
	
	.macro ts_check_item0_d 
		.byte 0xEF, 0xD
	.endm
	
	// Attempts to adds to the player's inventory and buffers a specified amount of Zenny, or sets it to the maximum if that is exceeded, plays a sound effect if any was added, and jumps to a different script depending on how much was added.
	// :param amount[2:0:32]: The amount of Zenny to give and buffer, or 4294967295 to use a previously buffered amount.
	// :param jumpIfAll[6:0:8]: The script to jump to if all Zenny could be added, or 255 to continue with the current script.
	// :param jumpIfNone[7:0:8]: The script to jump to if no Zenny at all could be added, or 255 to continue with the current script.
	// :param jumpIfSome[8:0:8]: The script to jump to if some, but not all Zenny could be added, or 255 to continue with the current script.
	.macro ts_check_give_zenny amount:req, jumpIfAll:req, jumpIfNone:req, jumpIfSome:req
		.byte 0xEF, 0xE
		.word \amount
		.byte \jumpIfAll, \jumpIfNone, \jumpIfSome
	.endm
	
	// Attempts to take from the player's inventory a specified amount of Zenny, but only if the player has enough, and jumps to a different script depending on how much the player had.
	// :param amount[2:0:32]: The amount of Zenny to take.
	// :param jumpIfAll[6:0:8]: The script to jump to if there was enough Zenny, or 255 to continue with the current script.
	// :param jumpIfNone[7:0:8]: The script to jump to if there was no Zenny at all, or 255 to continue with the current script.
	// :param jumpIfSome[8:0:8]: The script to jump to if there was some, but not enough Zenny, or 255 to continue with the current script.
	.macro ts_check_take_zenny amount:req, jumpIfAll:req, jumpIfNone:req, jumpIfSome:req
		.byte 0xEF, 0xF
		.word \amount
		.byte \jumpIfAll, \jumpIfNone, \jumpIfSome
	.endm
	
	// Sets the amount of Zenny in the player's inventory to the specified amount, and plays a sound effect.
	// :param amount[2:0:32]: The new amount of Zenny.
	.macro ts_set_zenny amount:req
		.byte 0xEF, 0x10
		.word \amount
	.endm
	
	// Checks how much Zenny is in the player's inventory, and jumps to a different script depending on if it is equal to, greater than or less than the specified amount.
	// :param amount[2:0:32]: The amount to compare to.
	// :param jumpIfEqual[6:0:8]: The script to jump to if the amount of Zenny is equal to the specified amount, or 255 to continue with the current script.
	// :param jumpIfGreater[7:0:8]: The script to jump to if the amount of Zenny is greater than the specified amount, or 255 to continue with the current script.
	// :param jumpIfLess[8:0:8]: The script to jump to if the amount of Zenny is less than the specified amount, or 255 to continue with the current script.
	.macro ts_check_zenny amount:req, jumpIfEqual:req, jumpIfGreater:req, jumpIfLess:req
		.byte 0xEF, 0x11
		.word \amount
		.byte \jumpIfEqual, \jumpIfGreater, \jumpIfLess
	.endm
	
	// Attempts to adds to the player's inventory and buffers a specified amount of BugFrags,
	// or sets it to the maximum if that is exceeded, plays a sound effect if any were added, and jumps to a different script depending on how many were added.
	// :param amount[2:0:32]: The amount of BugFrags to give and buffer, or 4294967295 to use a previously buffered amount.
	// :param jumpIfAll[6:0:8]: The script to jump to if all BugFrags could be added, or 255 to continue with the current script.
	// :param jumpIfNone[7:0:8]: The script to jump to if no BugFrags at all could be added, or 255 to continue with the current script.
	// :param jumpIfSome[8:0:8]: The script to jump to if some, but not all BugFrags could be added, or 255 to continue with the current script.
	.macro ts_check_give_bug_frags amount:req, jumpIfAll:req, jumpIfNone:req, jumpIfSome:req
		.byte 0xEF, 0x12
		.word \amount
		.byte \jumpIfAll, \jumpIfNone, \jumpIfSome
	.endm
	
	// Attempts to take from the player's inventory a specified amount of BugFrags, but only if the player has enough, and jumps to a different script depending on how many the player had.
	// :param amount[2:0:32]: The amount of BugFrags to take.
	// :param jumpIfAll[6:0:8]: The script to jump to if there were enough BugFrags, or 255 to continue with the current script.
	// :param jumpIfNone[7:0:8]: The script to jump to if there were no BugFrags at all, or 255 to continue with the current script.
	// :param jumpIfSome[8:0:8]: The script to jump to if there were some, but not enough BugFrags, or 255 to continue with the current script.
	.macro ts_check_take_bug_frags amount:req, jumpIfAll:req, jumpIfNone:req, jumpIfSome:req
		.byte 0xEF, 0x13
		.word \amount
		.byte \jumpIfAll, \jumpIfNone, \jumpIfSome
	.endm
	
	// Sets the amount of BugFrags in the player's inventory to the specified amount, and plays a sound effect.
	// :param amount[2:0:32]: The new amount of BugFrags.
	.macro ts_set_bug_frags amount:req
		.byte 0xEF, 0x14
		.word \amount
	.endm
	
	// Compares the amount of BugFrags in the player's inventory to the specified amount, and jumps to a different script depending on if it is equal, greater or less.
	// :param amount[2:0:32]: The amount to compare to.
	// :param jumpIfEqual[6:0:8]: The script to jump to if the amount of BugFrags is equal to the specified amount, or 255 to continue with the current script.
	// :param jumpIfGreater[7:0:8]: The script to jump to if the amount of BugFrags is greater than the specified amount, or 255 to continue with the current script.
	// :param jumpIfLess[8:0:8]: The script to jump to if the amount of BugFrags is less than the specified amount, or 255 to continue with the current script.
	.macro ts_check_bug_frags amount:req, jumpIfEqual:req, jumpIfGreater:req, jumpIfLess:req
		.byte 0xEF, 0x15
		.word \amount
		.byte \jumpIfEqual, \jumpIfGreater, \jumpIfLess
	.endm

	// Checks the player's inventory for the specified range of items, and jumps to a different script depending on if the player has any of them.
	// :param item[2:0:8]: The first item to check for.
	// :param count[3:0:8]: The amount of subsequent items to check for.
	// :param jumpIfOne[4:0:8]: The script to jump to if the player has at least one of the specified items, or 255 to continue with the current script.
	// :param jumpIfLess[5:0:8]: The script to jump to if the player does not have any of the specified items, or 255 to continue with the current script.
	.macro ts_check_have_one_item item:req, count:req, jumpIfOne:req, jumpIfLess:req
		.byte 0xEF, 0x1A, \item, \count, \jumpIfOne, \jumpIfLess
	.endm
	
	// Plays the "item get" sound effect, and adds to the player's inventory a specified amount of the specified NaviCust program with the specified color, or sets it to the maximum if that is exceeded. If the specified program/color combination does not exist, no NaviCust program is given.
	// :param program[2:0:8]: The NaviCust program to give, or 255 to use a previously buffered program.
	// :param amount[3:0:8]: The amount of NaviCust programs to give.
	// :param color[4:0:8]: The color of the NaviCust program to give, or 255 to use a previously buffered color.
	.macro ts_item_give_navi_cust_program program:req, amount:req, color:req
		.byte 0xEF, 0x1B, \program, \amount, \color
	.endm
	
	// Takes from the player's inventory a specified amount of the specified NaviCust program with the specified color, but only if the player has enough. If the specified program/color combination does not exist, no NaviCust program is taken.
	// :param program[2:0:8]: The NaviCust program to take.
	// :param amount[3:0:8]: The amount of NaviCust programs to take.
	// :param color[4:0:8]: The color of the NaviCust program to take.
	.macro ts_item_take_navi_cust_program program:req, amount:req, color:req
		.byte 0xEF, 0x1C, \program, \amount, \color
	.endm
	
	// Plays the "item get" sound effect, and sets the count of the specified NaviCust program with the specified color in the player's inventory to the specified amount. If the specified program/color combination does not exist, no NaviCust program is given or taken.
	// :param program[2:0:8]: The NaviCust program to change the amount of.
	// :param amount[3:0:8]: The new amount of NaviCust programs.
	// :param color[4:0:8]: The color of the NaviCust program to change the amount of.
	.macro ts_item_set_navi_cust_program program:req, amount:req, color:req
		.byte 0xEF, 0x1D, \program, \amount, \color
	.endm
	
	// Checks how many of the specified NaviCust program with the specified color are in the player's inventory, and jumps to a different script depending on if it is equal to, greater than or less than the specified amount.
	// :param program[2:0:8]: The NaviCust program to check the amount of.
	// :param amount[3:0:8]: The amount to compare to.
	// :param jumpIfEqual[4:0:8]: The script to jump to if the number of NaviCust programs is equal to the specified amount, or 255 to continue with the current script.
	// :param jumpIfGreater[5:0:8]: The script to jump to if the number of NaviCust programs is greater than the specified amount, or 255 to continue with the current script.
	// :param jumpIfLess[6:0:8]: The script to jump to if the number of NaviCust programs is less than the specified amount, or 255 to continue with the current script.
	// :param color[7:0:8]: The color of the NaviCust program to check.
	.macro ts_check_navi_cust_program program:req, amount:req, jumpIfEqual:req, jumpIfGreater:req, jumpIfLess:req, color:req
		.byte 0xEF, 0x1E, \program, \amount, \jumpIfEqual, \jumpIfGreater, \jumpIfLess, \color
	.endm
	
	// Checks the player's inventory for the specified range of items, and jumps to a different script depending on if the player has at least two of them.
	// :param item[2:0:8]: The first item to check for.
	// :param count[3:0:8]: The amount of subsequent items to check for.
	// :param jumpIfTwo[4:0:8]: The script to jump to if the player has at least two of the specified items, or 255 to continue with the current script.
	// :param jumpIfLess[5:0:8]: The script to jump to if the player has less than two of the specified items, or 255 to continue with the current script.
	.macro ts_check_have_two_item item:req, count:req, jumpIfTwo:req, jumpIfLess:req
		.byte 0xEF, 0x20, \item, \count, \jumpIfTwo, \jumpIfLess
	.endm
	
	// Jumps to a different script depending on the result of the last battle.
	// :param jumpIfWon[2:0:8]: The script to jump to if the player won the last battle, or 255 to continue with the current script.
	// :param jumpIfLost[3:0:8]: The script to jump to if the player lost the last battle, or 255 to continue with the current script.
	// :param jumpIfTie[4:0:8]: The script to jump to if the last battle resulted in a tie, or 255 to continue with the current script.
	// :param jumpIfEscaped[5:0:8]: The script to jump to if the player escaped from the last battle, or 255 to continue with the current script.
	.macro ts_check_battle_result jumpIfWon:req, jumpIfLost:req, jumpIfTie:req, jumpIfEscaped:req
		.byte 0xEF, 0x21, \jumpIfWon, \jumpIfLost, \jumpIfTie, \jumpIfEscaped
	.endm
	
	// Checks the stock of the specified shop, and jumps to a different script depending on if the shop is all sold out.
	// :param shop[2:0:8]: The shop to check the stock of.
	// :param jumpIfStocked[3:0:8]: The script to jump to if the shop still has stock, or 255 to continue with the current script.
	// :param jumpIfSoldOut[4:0:8]: The script to jump to if the shop is all sold out, or 255 to continue with the current script.
	.macro ts_check_shop_stock shop:req, jumpIfStocked:req, jumpIfSoldOut:req
		.byte 0xEF, 0x22, \shop, \jumpIfStocked, \jumpIfSoldOut
	.endm
	
	// Checks a series of flags starting at the specified flag, and jumps to a different script depending on if they are all set.
	// :param flag[2:0:16]: The first flag to check.
	// :param count[4:0:8]: The amount of subsequent flags to check.
	// :param jumpIfAllSet[5:0:8]: The script to jump to if all flags are set, or 255 to continue with the current script.
	// :param jumpIfNotAllSet[6:0:8]: The script to jump to if not all flags are set, or 255 to continue with the current script.
	.macro ts_check_multi_flag flag:req, count:req, jumpIfAllSet:req, jumpIfNotAllSet:req
		.byte 0xEF, 0x28
		.hword \flag
		.byte \count, \jumpIfAllSet, \jumpIfNotAllSet
	.endm
	
	// Jumps to a script index loaded from the WaterGod Program buffer. As the WaterGod Program is not in this game, the command does not function correctly.
	// :param index[2:0:8]: The index of the jump buffer to read from. There is only one suitable jump buffer, so this should always be zero.
	.macro ts_check_water_god_program index:req
		.byte 0xEF, 0x29, \index
	.endm
	
	// Checks how many of the specified chip with any code are in the player's Pack as well as folders, 
	// and jumps to a different script depending on if it is equal to, greater than or less than the specified amount.
	// :param chip[2:0:16]: The chip to check.
	// :param amount[4:0:8]: The amount to compare to.
	// :param jumpIfEqual[5:0:8]: The script to jump to if the number of items is equal to the specified amount, or 255 to continue with the current script.
	// :param jumpIfGreater[6:0:8]: The script to jump to if the number of items is greater than the specified amount, or 255 to continue with the current script.
	// :param jumpIfLess[7:0:8]: The script to jump to if the number of items is less than the specified amount, or 255 to continue with the current script.
	.macro ts_check_chip chip:req, amount:req, jumpIfEqual:req, jumpIfGreater:req, jumpIfLess:req
		.byte 0xEF, 0x2A
		.hword \chip
		.byte \amount, \jumpIfEqual, \jumpIfGreater, \jumpIfLess
	.endm
	
	// Checks if the player has unlocked all DoubleSouls, and jumps to a different script depending on if they have. 
	// Holdover from Mega Man Battle Network 4, and does not function properly in this game.
	// :param jumpIfAll[2:0:8]: The script to jump to if all DoubleSouls have been unlocked, or 255 to continue with the current script.
	// :param jumpIfNotAll[3:0:8]: The script to jump to if not all DoubleSouls have been unlocked, or 255 to continue with the current script.
	.macro ts_check_double_souls jumpIfAll:req, jumpIfNotAll:req
		.byte 0xEF, 0x2B, \jumpIfAll, \jumpIfNotAll
	.endm
	
	// Checks the current LinkNavi and jumps to a different script depending on which it is. Only works properly in certain cutscenes.
	// :param variable[2:0:8]: The index of the overworld variable to check; should be 0 to check LinkNavi.
	// :param jumpIfMegaMan[3:0:8]: The script to jump to if MegaMan is the current LinkNavi, or 255 to continue with the current script.
	// :param jumpIfHeatMan[4:0:8]: The script to jump to if HeatMan is the current LinkNavi, or 255 to continue with the current script.
	// :param jumpIfElecMan[5:0:8]: The script to jump to if ElecMan is the current LinkNavi, or 255 to continue with the current script.
	// :param jumpIfSlashMan[6:0:8]: The script to jump to if SlashMan is the current LinkNavi, or 255 to continue with the current script.
	// :param jumpIfEraseMan[7:0:8]: The script to jump to if EraseMan is the current LinkNavi, or 255 to continue with the current script.
	// :param jumpIfChargeMan[8:0:8]: The script to jump to if ChargeMan is the current LinkNavi, or 255 to continue with the current script.
	// :param jumpIfSpoutMan[9:0:8]: The script to jump to if SpoutMan is the current LinkNavi, or 255 to continue with the current script.
	// :param jumpIfTomahawkMan[10:0:8]: The script to jump to if TomahawkMan is the current LinkNavi, or 255 to continue with the current script.
	// :param jumpIfTenguMan[11:0:8]: The script to jump to if TenguMan is the current LinkNavi, or 255 to continue with the current script.
	// :param jumpIfGroundMan[12:0:8]: The script to jump to if GroundMan is the current LinkNavi, or 255 to continue with the current script.
	// :param jumpIfDustMan[13:0:8]: The script to jump to if DustMan is the current LinkNavi, or 255 to continue with the current script.
	// :param jumpIfProtoMan[14:0:8]: The script to jump to if ProtoMan is the current LinkNavi, or 255 to continue with the current script.
	.macro ts_check_link_navi variable:req, jumpIfMegaMan:req, jumpIfHeatMan:req, jumpIfElecMan:req, jumpIfSlashMan:req, jumpIfEraseMan:req, jumpIfChargeMan:req, jumpIfSpoutMan:req, jumpIfTomahawkMan:req, jumpIfTenguMan:req, jumpIfGroundMan:req, jumpIfDustMan:req, jumpIfProtoMan:req
		.byte 0xEF, 0x2E, \variable, \jumpIfMegaMan, \jumpIfHeatMan, \jumpIfElecMan, \jumpIfSlashMan, \jumpIfEraseMan, \jumpIfChargeMan, \jumpIfSpoutMan, \jumpIfTomahawkMan, \jumpIfTenguMan, \jumpIfGroundMan, \jumpIfDustMan, \jumpIfProtoMan
	.endm
	
	// Checks the player's current Navi, and jumps to a different script depending on which it is.
	// :param jumpIfMegaMan[2:0:8]: The script to jump to if the player's current Navi is MegaMan, or 255 to continue with the current script.
	// :param jumpIfHeatMan[3:0:8]: The script to jump to if the player's current Navi is HeatMan, or 255 to continue with the current script.
	// :param jumpIfElecMan[4:0:8]: The script to jump to if the player's current Navi is ElecMan, or 255 to continue with the current script.
	// :param jumpIfSlashMan[5:0:8]: The script to jump to if the player's current Navi is SlashMan, or 255 to continue with the current script.
	// :param jumpIfEraseMan[6:0:8]: The script to jump to if the player's current Navi is EraseMan, or 255 to continue with the current script.
	// :param jumpIfChargeMan[7:0:8]: The script to jump to if the player's current Navi is ChargeMan, or 255 to continue with the current script.
	// :param jumpIfSpoutMan[8:0:8]: The script to jump to if the player's current Navi is SpoutMan, or 255 to continue with the current script.
	// :param jumpIfTomahawkMan[9:0:8]: The script to jump to if the player's current Navi is TomahawkMan, or 255 to continue with the current script.
	// :param jumpIfTenguMan[10:0:8]: The script to jump to if the player's current Navi is TenguMan, or 255 to continue with the current script.
	// :param jumpIfGroundMan[11:0:8]: The script to jump to if the player's current Navi is GroundMan, or 255 to continue with the current script.
	// :param jumpIfDustMan[12:0:8]: The script to jump to if the player's current Navi is DustMan, or 255 to continue with the current script.
	// :param jumpIfProtoMan[13:0:8]: The script to jump to if the player's current Navi is ProtoMan, or 255 to continue with the current script.
	.macro ts_check_navi_all jumpIfMegaMan:req, jumpIfHeatMan:req, jumpIfElecMan:req, jumpIfSlashMan:req, jumpIfEraseMan:req, jumpIfChargeMan:req, jumpIfSpoutMan:req, jumpIfTomahawkMan:req, jumpIfTenguMan:req, jumpIfGroundMan:req, jumpIfDustMan:req, jumpIfProtoMan:req
		.byte 0xEF, 0x2F, \jumpIfMegaMan, \jumpIfHeatMan, \jumpIfElecMan, \jumpIfSlashMan, \jumpIfEraseMan, \jumpIfChargeMan, \jumpIfSpoutMan, \jumpIfTomahawkMan, \jumpIfTenguMan, \jumpIfGroundMan, \jumpIfDustMan, \jumpIfProtoMan
	.endm
	
	// Check's the player's current Navi's base HP, and jumps to a different script depending on whether it is at least the specified amount.
	// :param hp[2:0:16]: The base HP to compare to.
	// :param jumpIfGreaterOrEqual[4:0:8]: The script to jump to if the player's current Navi's base HP is at least the specified amount, or 255 to continue with the current script.
	// :param jumpIfLess[5:0:8]: The script to jump to if the player's current Navi's base HP is less than the specified amount, or 255 to continue with the current script.
	.macro ts_check_base_h_p hp:req, jumpIfGreaterOrEqual:req, jumpIfLess:req
		.byte 0xEF, 0x31
		.hword \hp
		.byte \jumpIfGreaterOrEqual, \jumpIfLess
	.endm
	
	// Checks if the player has collected all 12 DarkChips, and jumps to a different script depending on if they have. As this game's Library does not include DarkChips, this command has little use.
	// :param jumpIfTrue[2:0:8]: The script to jump to if the player has collected all 12 DarkChips, or 255 to continue with the current script.
	// :param jumpIfFalse[3:0:8]: The script to jump to if the player has not collected all 12 DarkChips, or 255 to continue with the current script.
	.macro ts_check_library_dark_full jumpIfTrue:req, jumpIfFalse:req
		.byte 0xEF, 0x32, \jumpIfTrue, \jumpIfFalse
	.endm
	
	// Checks the amount of chips in the player's specified Library, and jumps to a different script depending on if it falls inside or outside the specified range.
	// :param library[2:0:8]: The library to check. Possible values include: 0 = Standard, 1 = Mega, 2 = Giga, 4 = P.A., 5 = Secret, 6 = Dark.
	// :param lower[3:0:8]: The lower boundary of the range.
	// :param upper[4:0:8]: The lower boundary of the range.
	// :param jumpIfInRange[5:0:8]: The script to jump to if the number of chips falls within the range, or 255 to continue with the current script.
	// :param jumpIfOutOfRange[6:0:8]: The script to jump to if the number of chips falls outside the range, or 255 to continue with the current script.
	.macro ts_check_library library:req, lower:req, upper:req, jumpIfInRange:req, jumpIfOutOfRange:req
		.byte 0xEF, 0x33, \library, \lower, \upper, \jumpIfInRange, \jumpIfOutOfRange
	.endm
	
	// Checks the amount of Standard chips in the player's Library, and jumps to a different script depending on if it falls inside or outside the specified range.
	// :param lower[2:0:8]: The lower boundary of the range.
	// :param upper[3:0:8]: The lower boundary of the range.
	// :param jumpIfInRange[4:0:8]: The script to jump to if the number of chips falls within the range, or 255 to continue with the current script.
	// :param jumpIfOutOfRange[5:0:8]: The script to jump to if the number of chips falls outside the range, or 255 to continue with the current script.
	.macro ts_check_library_standard lower:req, upper:req, jumpIfInRange:req, jumpIfOutOfRange:req
		.byte 0xEF, 0x34, \lower, \upper, \jumpIfInRange, \jumpIfOutOfRange
	.endm
	
	// Checks the amount of Mega chips in the player's Library, and jumps to a different script depending on if it falls inside or outside the specified range.
	// :param lower[2:0:8]: The lower boundary of the range.
	// :param upper[3:0:8]: The lower boundary of the range.
	// :param jumpIfInRange[4:0:8]: The script to jump to if the number of chips falls within the range, or 255 to continue with the current script.
	// :param jumpIfOutOfRange[5:0:8]: The script to jump to if the number of chips falls outside the range, or 255 to continue with the current script.
	.macro ts_check_library_mega lower:req, upper:req, jumpIfInRange:req, jumpIfOutOfRange:req
		.byte 0xEF, 0x35, \lower, \upper, \jumpIfInRange, \jumpIfOutOfRange
	.endm
	
	// Checks the amount of Mega chips in the player's Library, and jumps to a different script depending on if it falls inside or outside the specified range.
	// :param lower[2:0:8]: The lower boundary of the range.
	// :param upper[3:0:8]: The lower boundary of the range.
	// :param jumpIfInRange[4:0:8]: The script to jump to if the number of chips falls within the range, or 255 to continue with the current script.
	// :param jumpIfOutOfRange[5:0:8]: The script to jump to if the number of chips falls outside the range, or 255 to continue with the current script.
	.macro ts_check_library_giga lower:req, upper:req, jumpIfInRange:req, jumpIfOutOfRange:req
		.byte 0xEF, 0x36, \lower, \upper, \jumpIfInRange, \jumpIfOutOfRange
	.endm
	
	// Checks the amount of Program Advances in the player's Library, and jumps to a different script depending on if it falls inside or outside the specified range.
	// :param lower[2:0:8]: The lower boundary of the range.
	// :param upper[3:0:8]: The lower boundary of the range.
	// :param jumpIfInRange[4:0:8]: The script to jump to if the number of chips falls within the range, or 255 to continue with the current script.
	// :param jumpIfOutOfRange[5:0:8]: The script to jump to if the number of chips falls outside the range, or 255 to continue with the current script.
	.macro ts_check_library_p_a lower:req, upper:req, jumpIfInRange:req, jumpIfOutOfRange:req
		.byte 0xEF, 0x37, \lower, \upper, \jumpIfInRange, \jumpIfOutOfRange
	.endm
	
	// Checks the amount of Secret chips in the player's Library, and jumps to a different script depending on if it falls inside or outside the specified range.
	// :param lower[2:0:8]: The lower boundary of the range.
	// :param upper[3:0:8]: The lower boundary of the range.
	// :param jumpIfInRange[4:0:8]: The script to jump to if the number of chips falls within the range, or 255 to continue with the current script.
	// :param jumpIfOutOfRange[5:0:8]: The script to jump to if the number of chips falls outside the range, or 255 to continue with the current script.
	.macro ts_check_library_secret lower:req, upper:req, jumpIfInRange:req, jumpIfOutOfRange:req
		.byte 0xEF, 0x38, \lower, \upper, \jumpIfInRange, \jumpIfOutOfRange
	.endm
	
	// Checks the amount of Dark chips in the player's Library, and jumps to a different script depending on if it falls inside or outside the specified range. As this game's Library does not include DarkChips, this command has little use.
	// :param lower[2:0:8]: The lower boundary of the range.
	// :param upper[3:0:8]: The lower boundary of the range.
	// :param jumpIfInRange[4:0:8]: The script to jump to if the number of chips falls within the range, or 255 to continue with the current script.
	// :param jumpIfOutOfRange[5:0:8]: The script to jump to if the number of chips falls outside the range, or 255 to continue with the current script.
	.macro ts_check_library_dark lower:req, upper:req, jumpIfInRange:req, jumpIfOutOfRange:req
		.byte 0xEF, 0x39, \lower, \upper, \jumpIfInRange, \jumpIfOutOfRange
	.endm
	
	// Checks the player's current Request BBS rank and jumps to a different script depending on which it is.
	// :param jumpIfCRank[2:0:8]: The script to jump to if the player is C Rank, or 255 to continue with the current script.
	// :param jumpIfBRank[3:0:8]: The script to jump to if the player is B Rank, or 255 to continue with the current script.
	// :param jumpIfARank[4:0:8]: The script to jump to if the player is A Rank, or 255 to continue with the current script.
	// :param jumpIfSRank[5:0:8]: The script to jump to if the player is S Rank, or 255 to continue with the current script.
	// :param jumpIfMasterRank[6:0:8]: The script to jump to if the player is Master Rank, or 255 to continue with the current script.
	.macro ts_check_request_b_b_s_rank jumpIfCRank:req, jumpIfBRank:req, jumpIfARank:req, jumpIfSRank:req, jumpIfMasterRank:req
		.byte 0xEF, 0x3B, \jumpIfCRank, \jumpIfBRank, \jumpIfARank, \jumpIfSRank, \jumpIfMasterRank
	.endm
	
	// Jumps to previously buffered different script. If that is 255, execution continues with the current script.
	.macro ts_jump_buffer 
		.byte 0xF0, 0x1
	.endm
	
	// Buffers a script to be jumped to later.
	// :param target[2:0:8]: The script to jump to, or 255 to continue with the script that is being executed when this value is read later.
	.macro ts_jump_buffer_set target:req
		.byte 0xF0, 0x2, \target
	.endm
	
	// Jumps to a different script.
	// :param target[2:0:8]: The script to jump to, or 255 to continue with the current script.
	.macro ts_jump target:req
		.byte 0xF0, 0x0, \target
	.endm
    
	// TODO: update with appropriate macro -- this is just for testing with dumping
	// Jumps to a random different script.
	// :param length[1:0:6]:
	// :param unused[1:6:1]: An unused parameter with unknown intended purpose.
	// :param untrap[1:7:1]: If set to true, the first jump target will be ignored if Untrap is active.
    .macro ts_jump_random p0:req, p1=NULL, p2=NULL, p3=NULL, p4=NULL, p5=NULL, p6=NULL, p7=NULL, p8=NULL, p9=NULL, p10=NULL, p11=NULL, p12=NULL, p13=NULL, p14=NULL, p15=NULL, p16=NULL
        .byte 0xF0, \p0
        .if \p1 != NULL
        .byte \p1
        .endif

        .if \p2 != NULL
        .byte \p2
        .endif
        
        .if \p3 != NULL
        .byte \p3
        .endif
        
        .if \p4 != NULL
        .byte \p4
        .endif
        
        .if \p5 != NULL
        .byte \p5
        .endif
        
        .if \p6 != NULL
        .byte \p6
        .endif
        
        .if \p7 != NULL
        .byte \p7
        .endif
        
        .if \p8 != NULL
        .byte \p8
        .endif
        
        .if \p9 != NULL
        .byte \p9
        .endif
        
        .if \p10 != NULL
        .byte \p10
        .endif
        
        .if \p11 != NULL
        .byte \p11
        .endif
        
        .if \p12 != NULL
        .byte \p12
        .endif
        
        .if \p13 != NULL
        .byte \p13
        .endif
        
        .if \p14 != NULL
        .byte \p14
        .endif
        
        .if \p15 != NULL
        .byte \p15
        .endif

        .if \p16 != NULL
        .byte \p16
        .endif
	.endm
	
	// Changes the speed at which text is printed to the screen.
	// :param delay[2:0:8]: The amount of frames to wait after printing a character. The default is 2 frames.
	.macro ts_text_speed delay:req
		.byte 0xF1, 0x0, \delay
	.endm
	
	// Clears any currently open message box and resets the text printer position.
	.macro ts_clear_msg 
		.byte 0xF2
	.endm
	
	// Disables use of the A and B buttons to advance a message.
	.macro ts_control_lock 
		.byte 0xF3, 0x0
	.endm
	
	// Enables use of the A and B buttons to advance a message.
	.macro ts_control_unlock 
		.byte 0xF3, 0x1
	.endm
	
	// Sets the specified overworld control bits.
	// :param bitmask[2:0:8]: The overworld control bits to set.
	.macro ts_control_set bitmask:req
		.byte 0xF3, 0x2, \bitmask
	.endm
	
	// Plays the "item get" sound effect, and adds to the player's inventory a specified amount of the specified item, or sets it to the maximum if that is exceeded.
	// :param item[2:0:8]: The item to give, or 255 to load from a previously buffered Mystery Data and buffer a value based on which item that was.
	// :param amount[3:0:8]: The amount of items to give.
	.macro ts_item_give item:req, amount:req
		.byte 0xF4, 0x0, \item, \amount
	.endm
	
	// Takes from the player's inventory a specified amount of the specified item, but only if the player has enough.
	// :param item[2:0:8]: The item to take.
	// :param amount[3:0:8]: The amount of items to take.
	.macro ts_item_take item:req, amount:req
		.byte 0xF4, 0x1, \item, \amount
	.endm
	
	// Plays the "item get" sound effect, and sets the count of the specified item in the player's inventory to the specified amount.
	// :param item[2:0:8]: The item to change the amount of.
	// :param amount[3:0:8]: The new amount of items.
	.macro ts_item_set item:req, amount:req
		.byte 0xF4, 0x2, \item, \amount
	.endm
	
	// Plays the "item get" sound effect, and adds to the player's Pack a specified amount of the specified chip with the specified code, or sets it to the maximum if that is exceeded.
	// :param chip[2:0:16]: The chip to give, or 65535 to load from a previously buffered Mystery Data.
	// :param code[4:0:8]: The code of the chip to give, or 255 to load from a previously buffered Mystery Data.
	// :param amount[5:0:8]: The amount of chips to give.
	.macro ts_item_give_chip chip:req, code:req, amount:req
		.byte 0xF4, 0x10
		.hword \chip
		.byte \code, \amount
	.endm
	
	// Takes from the player's inventory a specified amount of the specified chip with the specified code, but only if the player has enough.
	// :param chip[2:0:16]: The chip to take.
	// :param code[4:0:8]: The code of the chip to take.
	// :param amount[5:0:8]: The amount of chips to take.
	.macro ts_item_take_chip chip:req, code:req, amount:req
		.byte 0xF4, 0x11
		.hword \chip
		.byte \code, \amount
	.endm
	
	// Plays the "item get" sound effect, and sets the count of the specified chip with the specified code in the player's Pack to the specified amount.
	// :param chip[2:0:16]: The chip to change the amount of.
	// :param code[4:0:8]: The code of the chip to change the amount of.
	// :param amount[5:0:8]: The new amount of chips.
	.macro ts_item_set_chip chip:req, code:req, amount:req
		.byte 0xF4, 0x12
		.hword \chip
		.byte \code, \amount
	.endm
	
	// Plays the "item get" sound effect, and adds to the player's Pack 90 of every chip in the Library.
	.macro ts_item_give_all_chips 
		.byte 0xF4, 0x15
	.endm
	
	// Displays a mugshot in the current message box.
	// :param mugshot[2:0:8]: The mugshot to use.
	.macro ts_mugshot_show mugshot:req
		.byte 0xF5, 0x0, \mugshot
	.endm
	
	// Hides any mugshot being displayed in the current message box.
	.macro ts_mugshot_hide 
		.byte 0xF5, 0x1
	.endm
	
	// Changes the palette of the mugshot currently being displayed.
	// :param palette[2:0:8]: The mugshot palette to use.
	.macro ts_mugshot_palette palette:req
		.byte 0xF5, 0x2, \palette
	.endm
	
	// Changes the animation of the mugshot currently being displayed.
	// :param animation[2:0:8]: The mugshot animation to use.
	.macro ts_mugshot_animation animation:req
		.byte 0xF5, 0x3, \animation
	.endm
	
	// Changes which OAM palette will be used to store the next mugshot's palette.
	// :param palette[2:0:8]: The OAM palette to use.
	.macro ts_mugshot_o_a_m_palette palette:req
		.byte 0xF5, 0x4, \palette
	.endm
	
	// Changes the palette of the message box text and arrow.
	// :param palette[2:0:8]: The palette to use.
	.macro ts_color palette:req
		.byte 0xF6, 0x0, \palette
	.endm
	
	// Changes the palette of the message box text and arrow to a previously buffered palette.
	// :param buffer[2:0:8]: The palette buffer to load from.
	.macro ts_color_buffered buffer:req
		.byte 0xF6, 0x1, \buffer
	.endm
	
	// Changes the position and type of the message box background, whether it is currently being displayed or not.
	// :param left[2:0:8]: The horizontal distance, in number of tiles, between the left edge of the message box and the left edge of the screen.
	// :param top[3:0:8]: The vertical distance, in number of tiles, between the top edge of the message box and the top edge of the screen.
	// :param type[4:0:8]: The type of message box to use.
	.macro ts_position_box left:req, top:req, type:req
		.byte 0xF7, 0x0, \left, \top, \type
	.endm
	
	// Changes the position of the text, as well as the relative distance of the message box arrow, whether it is currently being displayed or not.
	// :param left[2:0:8]: The horizontal distance, in number of pixels, between the left edge of the text and the left edge of the screen.
	// :param top[3:0:8]: The vertical distance, in number of pixels, between the top edge of the text and the top edge of the screen.
	// :param arrowDistance[4:0:8]: The vertical distance, in increments of 12 pixels, between the top edge of the text and the top edge of the message box arrow.
	.macro ts_position_text left:req, top:req, arrowDistance:req
		.byte 0xF7, 0x2, \left, \top, \arrowDistance
	.endm
	
	// Changes the position of the message box arrow, whether it is currently being displayed or not.
	// :param left[2:0:8]: The horizontal distance, in number of pixels, between the left edge of the arrow and the left edge of the screen.
	// :param top[3:0:8]: The vertical distance, in number of pixels, between the top edge of the arrow and the top edge of the screen.
	.macro ts_position_arrow left:req, top:req
		.byte 0xF7, 0x4, \left, \top
	.endm
	
	// Changes the position of the mugshot, unless it is currently being displayed.
	// :param left[2:0:8]: The horizontal distance, in number of pixels, between the center of the mugshot and the left edge of the screen.
	// :param top[3:0:8]: The vertical distance, in number of pixels, between the center of the mugshot and the top edge of the screen.
	.macro ts_position_mugshot left:req, top:req
		.byte 0xF7, 0x5, \left, \top
	.endm
	
	// Centers the text in the screen given the specified width and height, and places the message box arrow in the bottom right corner of the text.
	// :param width[2:0:8]: The horizontal distance, in increments of a single character width, between the left edge of the text and the right edge of the text.
	// :param height[3:0:8]: The vertical distance, in increments of 14 pixels, between the top edge of the text and the bottom edge of the text.
	.macro ts_position_text_center width:req, height:req
		.byte 0xF7, 0x6, \width, \height
	.endm
	
	// Allocates space for a number of horizontally oriented menu options from the right side of the text area, taking into account the current state of the message box.
	// :param width[2:0:8]: The horizontal distance, in increments of a single character width, between the right edge of the text area and the left edge of the menu option.
	.macro ts_position_option_horizontal width:req
		.byte 0xF7, 0x7, \width
	.endm
	
	// Allocates space for a menu option in a vertically oriented menu from the right side of the text area, taking into account the current state of the message box.
	// :param width[2:0:8]: The horizontal distance, in increments of a single character width, between the right edge of the text area and the left edge of the menu option.
	.macro ts_position_option_vertical width:req
		.byte 0xF7, 0x8, \width
	.endm
	
	// Allocates space for a number of menu options from the center of the text area.
	// :param width[2:0:8]: The horizontal distance, in increments of a single character width, between the center of the text area and the left edge of the menu option.
	.macro ts_position_option_from_center width:req
		.byte 0xF7, 0x9, \width
	.endm
	
	// Locks the player's movement.
	.macro ts_player_lock 
		.byte 0xF8, 0x0
	.endm
	
	// Sets the player's current animation. Does not work if the player is interacting with an object.
	// :param animation[2:0:8]: The animation to display.
	.macro ts_player_animate_scene animation:req
		.byte 0xF8, 0x1, \animation
	.endm
	
	// Unlocks the player's movement.
	.macro ts_player_unlock 
		.byte 0xF8, 0x2
	.endm
	
	// Pauses script execution until the player's current animation finishes or loops.
	.macro ts_player_finish 
		.byte 0xF8, 0x3
	.endm
	
	// Resets the player's current animation to what it was before it was changed. If it was not changed, the first animation is set. Does not work if the player is interacting with an object.
	.macro ts_player_reset_scene 
		.byte 0xF8, 0x4
	.endm
	
	// Sets the player's current animation. Only works if the player is interacting with an object.
	// :param animation[2:0:8]: The animation to display.
	.macro ts_player_animate_object animation:req
		.byte 0xF8, 0x5, \animation
	.endm
	
	// Resets the player's current animation to what it was before it was changed. If it was not changed, the first animation is set. Only works if the player is interacting with an object.
	.macro ts_player_reset_object 
		.byte 0xF8, 0x6
	.endm
	
	// Writes the specified value into the specified timer.
	// :param timer[2:0:8]: The timer to change the value of.
	// :param value[3:0:8]: The new value for the timer.
	.macro ts_store_timer timer:req, value:req
		.byte 0xF9, 0x0, \timer, \value
	.endm
	
	// Writes the specified 8-bit value into the specified global variable.
	// :param global[2:0:8]: The global variable to change the value of.
	// :param value[3:0:8]: The new value for the global variable.
	.macro ts_store_global global:req, value:req
		.byte 0xF9, 0x1, \global, \value
	.endm

	// Prints the name of an item, either specified or loaded from a buffer.
	// :param item[2:0:8]: The buffer to load the item from, plus one. If zero, uses the specified item instead.
	// :param buffer[3:4:4]: If greater than zero, the buffer to load the item index from, plus one.
	.macro ts_print_item item:req, buffer:req
		.byte 0xFA, 0x0, \item, ((\buffer & 0xF) << 4) | 0x0
	.endm
	
	// Prints the name of a chip, either specified or loaded from a buffer.
	// :param chip[2:0:8]: If the buffer is not set, the chip name to print.
	// :param buffer[3:4:4]: If greater than zero, the buffer to load the chip index from, plus one.
	.macro ts_print_chip1 chip:req, buffer:req
		.byte 0xFA, 0x0, \chip, ((\buffer & 0xF) << 4) | 0x1
	.endm
	
	
	.macro ts_print_chip2 chip:req, buffer:req
		.byte 0xFA, 0x0, \chip, ((\buffer & 0xF) << 4) | 0x2
	.endm
	
	// Prints a chip code, either specified or loaded from a buffer.
	// :param code[2:0:8]: If the buffer is not set, the entry index of the chip code to print.
	// :param buffer[3:4:4]: If greater than zero, the buffer to load the chip code index from plus one.
	.macro ts_print_code code:req, buffer:req
		.byte 0xFA, 0x0, \code, ((\buffer & 0xF) << 4) | 0x3
	.endm
	
	// Prints the name of a folder, either specified or loaded from a buffer.
	// :param entry[2:0:8]: If the buffer is not set, the entry index of the folder name to print.
	// :param buffer[3:4:4]: If greater than zero, the buffer to load the folder name index from plus one.
	.macro ts_print_folder_name entry:req, buffer:req
		.byte 0xFA, 0x0, \entry, ((\buffer & 0xF) << 4) | 0x4
	.endm
	
	// Prints the name of a NaviCust program, either specified or loaded from a buffer.
	// :param program[2:0:8]: If the buffer is not set, the entry index of the NaviCust program name to print.
	// :param buffer[3:4:4]: If greater than zero, the buffer to load the folder name index from plus one.
	.macro ts_print_navi_cust_program5 program:req, buffer:req
		.byte 0xFA, 0x0, \program, ((\buffer & 0xF) << 4) | 0x5
	.endm
	
	
	.macro ts_print_navi_cust_program6 program:req, buffer:req
		.byte 0xFA, 0x0, \program, ((\buffer & 0xF) << 4) | 0x6
	.endm
	
	
	.macro ts_print_chip7 chip:req, buffer:req
		.byte 0xFA, 0x0, \chip, ((\buffer & 0xF) << 4) | 0x7
	.endm
	
	// Prints the name of a NetNavi, either specified or loaded from a buffer.
	// :param navi[2:0:8]: If the buffer is not set, the entry index of the NetNavi name to print.
	// :param buffer[3:4:4]: If greater than zero, the buffer to load the NetNavi name index from plus one.
	.macro ts_print_navi navi:req, buffer:req
		.byte 0xFA, 0x0, \navi, ((\buffer & 0xF) << 4) | 0x8
	.endm
	
	// Prints the name of the a request from the Request BBS. Only works properly in the Request BBS.
	// :param request[2:0:8]: If the buffer is not set, the entry index of the request to print.
	// :param buffer[3:4:4]: If greater than zero, the buffer to load the request index from plus one.
	.macro ts_print_request request:req, buffer:req
		.byte 0xFA, 0x0, \request, ((\buffer & 0xF) << 4) | 0x9
	.endm
	
	// Prints the name of the current Navi.
	.macro ts_print_current_navi 
		.byte 0xFA, 0x1, 0x0
	.endm
	
	// Prints the name of the current overworld Navi. The only difference with printCurrentNavi is that ProtoMan's name is replaced with MegaMan's in the Japanese version only.
	.macro ts_print_current_navi_ow 
		.byte 0xFA, 0x1, 0x4
	.endm
	
	// Prints the current amount of Zenny the player has.
	// :param minLength[2:0:4]: The minimum amount of characters to print. If the amount of Zenny consists of less digits, additional spaces are printed.
	// :param padZeros[2:6:1]: If true, pads the amount of Zenny with zeros instead of spaces, if necessary.
	// :param padLeft[2:7:1]: If true, places the padding, if any, to the left of the amount of Zenny instead of to the right.
	.macro ts_print_zenny3 minLength:req, padZeros:req, padLeft:req
		.byte 0xFA, 0x3
		.byte (\minLength & 0xF) | ((\padZeros & 0x1) << 6) | ((\padLeft & 0x1) << 7)
		.byte 0x0
	.endm
	
	.macro ts_print_zenny4 minLength:req, padZeros:req, padLeft:req
		.byte 0xFA, 0x4
		.byte (\minLength & 0xF) | ((\padZeros & 0x1) << 6) | ((\padLeft & 0x1) << 7)
		.byte 0x0
	.endm
	
	// Prints the contents of the specified 32-bit buffer as a decimal number.
	// :param minLength[2:0:4]: The minimum amount of characters to print. If the number consists of less digits, additional spaces are printed.
	// :param padZeros[2:6:1]: If true, pads the number with zeros instead of spaces, if necessary.
	// :param padLeft[2:7:1]: If true, places the padding, if any, to the left of the amount of Zenny instead of to the right.
	// :param buffer[3:0:8]: The buffer to print.
	.macro ts_print_buffer03 minLength:req, padZeros:req, padLeft:req, buffer:req
		.byte 0xFA, 0x3
		.byte (\minLength & 0xF) | ((\padZeros & 0x1) << 6) | ((\padLeft & 0x1) << 7)
		.byte \buffer
	.endm
	
	
	.macro ts_print_buffer04 minLength:req, padZeros:req, padLeft:req, buffer:req
		.byte 0xFA, 0x4
		.byte (\minLength & 0xF) | ((\padZeros & 0x1) << 6) | ((\padLeft & 0x1) << 7)
		.byte \buffer
	.endm
	
	// Prints a stat from the currently active Navi Data Chip. Only functions properly in the status screen.
	// :param minLength[2:0:4]: The minimum amount of characters to print. If the number consists of less digits, additional spaces are printed.
	// :param padZeros[2:6:1]: If true, pads the amount of Zenny with zeros instead of spaces, if necessary.
	// :param padLeft[2:7:1]: If true, places the padding, if any, to the left of the amount of Zenny instead of to the right.
	// :param stat[3:0:8]: The stat to print. Possible values are: 0 = HP, 1 = Attack, 2 = MegaFolder, 3 = Custom, 4 = Speed, 5 = Charge
	.macro ts_print_navi_data_chip_stat minLength:req, padZeros:req, padLeft:req, stat:req
		.byte 0xFA, 0x6
		.byte (\minLength & 0xF) | ((\padZeros & 0x1) << 6) | ((\padLeft & 0x1) << 7)
		.byte \stat
	.endm
	
	// Prints a script of at most 3 bytes from a buffered pointer.
	// :param bufferOffset[2:0:8]: The offset in the buffer to load the script pointer from.
	.macro ts_print_buffered_short_string bufferOffset:req
		.byte 0xFA, 0xB, \bufferOffset
	.endm
	
	// Prints the specified link string buffer (such as player name, player comment, opponent name, etc.).
	// :param buffer[2:0:8]: The link string buffer to print.
	.macro ts_print_link_buffer buffer:req
		.byte 0xFA, 0xC, \buffer
	.endm
	
	// Adds to the player's inventory and buffers an amount of Zenny, and plays a sound effect. Unlike in previous games, this command is not actually random but rather always picks the last amount.
	// :param length[2:0:8]:
	.macro ts_start_give_random_zenny length:req
		.byte 0xFB, 0x0, \length
	.endm
	
	// Adds to the player's Pack and buffers a chip with code, and plays a sound effect. Unlike in previous games, this command is not actually random but rather always picks the last amount.
	// :param length[2:0:8]:
	.macro ts_start_give_random_chip_code length:req
		.byte 0xFB, 0x1, \length
	.endm
	
	// Starts a random battle from the current area.
	.macro ts_start_random_battle 
		.byte 0xFB, 0x2
	.endm
	
	// Starts the specified fixed battle.
	// :param battle[2:0:16]: The battle to load.
	.macro ts_start_fixed_battle battle:req
		.byte 0xFB, 0x3
		.hword \battle
	.endm
	
	// Opens the shop screen with the specified shop.
	// :param shop[2:0:8]: The index of the shop to load.
	.macro ts_start_shop shop:req
		.byte 0xFB, 0x5, \shop
	.endm
	
	// Checks if the player has at least 10 BugFrags, and jumps to a different script if they don't.
	// :param jumpIfNotEnoughBugFrags[3:0:8]: The script to jump to if the player has less than 10 BugFrags, or 255 to continue with the current script.
	.macro ts_start_bug_frag_trader jumpIfNotEnoughBugFrags:req
		.byte 0xFB, 0x6, 0x1, \jumpIfNotEnoughBugFrags
	.endm
	
	// Checks if the player has at least the specified number of chips, jumping to a different script if they don't, and opens the chip trader screen with the specified number of chips.
	// :param amount[2:0:8]: The amount of chips the chip trader takes.
	// :param jumpIfNotEnoughChips[3:0:8]: The script to jump to if the player has less than the specified number of chips, or 255 to continue with the current script.
	.macro ts_start_chip_trader amount:req, jumpIfNotEnoughChips:req
		.byte 0xFB, 0x6, \amount, \jumpIfNotEnoughChips
	.endm
	
	// Heals the player by the specified amount of HP (but no more than their maximum HP) and plays a sound effect.
	// :param amount[2:0:16]: The amount of HP to recover.
	.macro ts_start_heal amount:req
		.byte 0xFB, 0x8
		.hword \amount
	.endm
	
	// Opens the BBS screen with the specified BBS.
	// :param bbs[2:0:8]: The BBS to load.
	.macro ts_start_b_b_s bbs:req
		.byte 0xFB, 0xA, \bbs
	.endm
	
	// Opens the cyberspace map screen with the specified map.
	// :param map[2:0:8]: The cyberspace map to load.
	.macro ts_start_map map:req
		.byte 0xFB, 0xB, \map
	.endm
	
	// Replaces the Player's folder in the specified slot with the specified folder and registers all its chips in the Library.
	// :param folder[2:0:4]: The new folder to place in the specified slot.
	// :param slot[2:4:4]: The folder slot to place the new folder in.
	.macro ts_start_give_folder folder:req, slot:req
		.byte 0xFB, 0xD
		.byte (\folder & 0xF) | ((\slot & 0xF) << 4)
	.endm
	
	// Opens the Request BBS screen with the specified Request BBS.
	// :param bbs[2:0:8]: The Request BBS to load. As there is only one Request BBS in the game, the only valid value is 0.
	.macro ts_start_request_b_b_s bbs:req
		.byte 0xFB, 0xE, \bbs
	.endm
	
	// Opens the mailbox.
	// :param homepage[2:0:8]: If true, opens the mailbox on Lan's HP. Otherwise, opens the PET's mailbox. However, this parameter is always forcibly set to true anyway.
	.macro ts_start_mailbox homepage:req
		.byte 0xFB, 0xF, \homepage
	.endm
	
	// Saves the game, and jumps to a different script depending on if the save was successful or not.
	// :param jumpIfSuccessful[2:0:8]: The script to jump to if the save was successful, or 255 to continue with the current script.
	// :param jumpIfFailed[3:0:8]: The script to jump to if the save failed, or 255 to continue with the current script.
	// :param jumpUnused[4:0:8]: An unused jump destination, presumably for if the save failed.
	.macro ts_call_save jumpIfSuccessful:req, jumpIfFailed:req, jumpUnused:req
		.byte 0xFC, 0x0, \jumpIfSuccessful, \jumpIfFailed, \jumpUnused
	.endm
	
	// Triggers a PET overworld effect, such as hiding/showing the icon, producing e-mail/call notifications, etc.
	// :param effect[3:0:8]: The PET effect to trigger.
	.macro ts_call_p_e_t_effect effect:req
		.byte 0xFC, 0x3, 0x0, \effect
	.endm
	
	// Enables a minigame-specific overworld effect. The effects may not show up outside of their respective minigames, though.
	// :param effect[3:0:8]: The minigame-specific effect to enable. Possible values: 0 (AquaMan), 1 (SlashMan), 2 (TenguMan), 3 (ElecMan), 4 (EraseMan), 5 (GroundMan).
	.macro ts_call_minigame_effect effect:req
		.byte 0xFC, 0x3, 0x2, \effect
	.endm
	
	// Enables a scenario-specific overworld effect. The effects may not show up outside of their respective scenarios, though.
	// :param effect[3:0:8]: The scenario-specific effect to enable. The two possible value are 0 (Soul Weapons counter) and 1 (Mr. Weather Comp rainbow gauge).
	.macro ts_call_scenario_effect effect:req
		.byte 0xFC, 0x3, 0x4, \effect
	.endm
	
	// Clears all data related to the AquaMan fishing minigame and resets their positions when the player re-enters the area.
	.macro ts_call_reset_fishing_minigame unused=0x0
		.byte 0xFC, 0x3, 0x5, \unused
	.endm
	
	// Clears all data related to Evil Spirits and resets their positions when the player re-enters the area.
	.macro ts_call_reset_evil_spirits unused=0x0
		.byte 0xFC, 0x3, 0x6, \unused
	.endm
	
	// Adds new stock to AsterLand.
	.macro ts_call_aster_land_stock_add unused=0x0
		.byte 0xFC, 0x3, 0x7, \unused
	.endm
	
	// Reloads all Soul Weapons for the current area.
	.macro ts_call_reload_soul_weapons unused=0x0
		.byte 0xFC, 0x3, 0x8, \unused
	.endm
	
	// Gets the current amount of Crossover Points that the player has. But because nothing is done with it, this command is useless.
	.macro ts_call_get_crossover_points unused=0x0
		.byte 0xFC, 0x3, 0x9, \unused
	.endm
	
	// Changes the player's current amount of Crossover Points to the specified amount.
	// :param points[3:0:8]: The new number of Crossover Points.
	.macro ts_call_set_crossover_points points:req
		.byte 0xFC, 0x3, 0xA, \points
	.endm
	
	// Unlocks all BBS messages. BBS messages that were already unlocked remain on the list, which results in duplicates.
	.macro ts_call_add_all_b_b_s_messages unused=0x0
		.byte 0xFC, 0x3, 0xB, \unused
	.endm
	
	// Changes the player's overworld sprite when the map is refreshed.
	// :param sprite[3:0:8]: The new sprite for the player. Possible values: 0 (default), 1 (swimming AquaMan), 2 (Blue Mystery Data), 3 (unused).
	.macro ts_call_change_player_sprite sprite:req
		.byte 0xFC, 0x3, 0xC, \sprite
	.endm
	
	// Unlocks all requests on the Request BBS. Requests that were already unlocked remain on the list, which results in duplicates.
	.macro ts_call_add_all_requests unused=0x0
		.byte 0xFC, 0x3, 0xD, \unused
	.endm
	
	// Buffers the (index of the) current location of the Gold Mystery Data. The index of the area and subarea are stored in the first and second buffer, and the third and fourth buffer are cleared.
	.macro ts_call_buffer_gold_mystery_data_location 
		.byte 0xFC, 0x3, 0xE
	.endm
	
	// Unloads all overworld objects from the current map.
	.macro ts_call_unload_objects unused=0x0
		.byte 0xFC, 0x3, 0xF, \unused
	.endm
	
	// Reloads all overworld objects on the current map, if they are not already loaded.
	.macro ts_call_reload_objects unused=0x0
		.byte 0xFC, 0x3, 0x10, \unused
	.endm
	
	// Reloads the base stats and abilities for the current Navi.
	.macro ts_call_reload_navi_base_stats unused=0x0
		.byte 0xFC, 0x3, 0x11, \unused
	.endm
	
	// Reloads stat boosts and abilities from the Navi Customizer, Mod Cards and the MegaMan Navi Data Chip. Does not update stats from Navi Data Chips of Link Navis.
	.macro ts_call_reload_navi_stat_boosts unused=0x0
		.byte 0xFC, 0x3, 0x12, \unused
	.endm
	
	// Sets the current Navi's current HP to its maximum.
	// FIXME: update name to hp, not h_p
	.macro ts_call_set_full_h_p unused=0x0
		.byte 0xFC, 0x3, 0x13, \unused
	.endm
	
	// May have been intended to set every virus's delete count to max, but the command is not implemented and does not function.
	.macro ts_call_max_virus_delete_count unused=0x0
		.byte 0xFC, 0x3, 0x14, \unused
	.endm
	
	// Fades out the screen to black.
	.macro ts_call_fade_out 
		.byte 0xFC, 0x4
	.endm
	
	// Adds 9 copies of all NaviCust programs to the player's inventory.
	.macro ts_call_give_all_navi_cust_programs 
		.byte 0xFC, 0x5
	.endm
	
	// Disables the mugshot brightening animation when a message box is opened.
	.macro ts_call_disable_mugshot_brighten 
		.byte 0xFC, 0x6
	.endm
	
	// Checks the map from which the player jacked in, and jumps to a different script depending on if it is an outside map or an inside map.
	// :param jumpIfOutside[2:0:8]: The script to jump to if the player jacked in from an outside map, or 255 to continue with the current script.
	// :param jumpIfInside[3:0:8]: The script to jump to if the player jacked in from an inside map, or 255 to continue with the current script.
	.macro ts_call_check_outside_jack_in jumpIfOutside:req, jumpIfInside:req
		.byte 0xFC, 0x8, \jumpIfOutside, \jumpIfInside
	.endm
	
	// Displays a Disturb Icon with the specified color at the current position in the text box.
	// :param color[2:0:8]: The color of the Disturb Icon to print.
	.macro ts_call_disturb_icon color:req
		.byte 0xFC, 0x9, \color
	.endm
	
	// Changes the player's current Navi to the specified Navi.
	// :param navi[2:0:8]: The Navi to change to.
	.macro ts_call_change_navi navi:req
		.byte 0xFC, 0xF, \navi
	.endm
	
	// Adds the Request Points from the current active Request to the player's total, or sets it to the maximum if that would be exceeded.
	.macro ts_call_request_points_add 
		.byte 0xFC, 0x10
	.endm
	
	// Buffers the number of Request Points that are received from the current active Request.
	.macro ts_call_request_points_buffer 
		.byte 0xFC, 0x11
	.endm
	
	// Sets the clear flag for the current active Request.
	.macro ts_call_request_finish 
		.byte 0xFC, 0x13
	.endm
	
	// Buffers the amount of Rush Food that is about to be thrown.
	.macro ts_call_rush_food_buffer 
		.byte 0xFC, 0x14
	.endm
	
	// Loads the specified sound track into its designated track slot and starts playback.
	// :param track[2:0:16]: The sound track to play.
	.macro ts_sound_play00 track:req
		.byte 0xFD, 0x0
		.hword \track
	.endm
	
	// Stops playback of all track groups if a BGM is currently playing and clears the BGM track number.
	.macro ts_sound_stop_bgm 
		.byte 0xFD, 0x1, 0xFF, 0x0
	.endm
	
	// Loads the specified sound track into its designated track slot, sets the BGM track number to the specified sound track and starts playback.
	// :param track[2:0:16]: The sound track to play.
	.macro ts_sound_play_bgm track:req
		.byte 0xFD, 0x1
		.hword \track
	.endm
	
	// Enables the sound effect that plays when a text character is printed on the screen.
	.macro ts_sound_enable_text_sfx 
		.byte 0xFD, 0x2
	.endm
	
	// Disables the sound effect that plays when a text character is printed on the screen.
	.macro ts_sound_disable_text_sfx 
		.byte 0xFD, 0x3
	.endm
	
	// Stops playback of all track slots and clears the BGM track number.
	.macro ts_sound_stop 
		.byte 0xFD, 0x4
	.endm
	
	// Creates a fade-out for the specified track slot over the specified length of time.
	// :param slot[2:0:8]: The track slot to fade out.
	// :param length[3:0:8]: The length of the fade-out, where each unit equates 16 frames.
	.macro ts_sound_fade_out slot:req, length:req
		.byte 0xFD, 0x5, \slot, \length
	.endm
	
	
	.macro ts_sound_play06 
		.byte 0xFD, 0x6
	.endm
	
	
	.macro ts_sound_play07 
		.byte 0xFD, 0x7
	.endm
	
	// Enables the sound effect that plays when a menu option is selected or a menu is cancelled.
	.macro ts_sound_enable_choice_sfx 
		.byte 0xFD, 0x8
	.endm
	
	// Disables the sound effect that plays when a menu option is selected or a menu is cancelled.
	.macro ts_sound_disable_choice_sfx 
		.byte 0xFD, 0x9
	.endm
	
	// Starts playing the default sound track for the current area using its assigned track slot.
	.macro ts_sound_play_area_bgm 
		.byte 0xFD, 0xA
	.endm
	
	// If the specified sound track is a BGM, loads it into track slot 31 and sets the BGM track number, then creates a fade-in over the specified length of time.
	// :param track[2:0:8]: The BGM sound track to play.
	// :param length[3:0:8]: The length of the fade-out, where each unit equates 16 frames.
	.macro ts_sound_fade_in_bgm track:req, length:req
		.byte 0xFD, 0xB, \track, \length
	.endm
	
	// Creates a Number Trader entry option at the current text position that takes numerical characters (0-9).
	// :param char[2:0:8]: The digit that this option corresponds with.
	.macro ts_menu_option_number_trader char:req
		.byte 0xFE, 0x0, \char
	.endm
	
	// Lets the player put in a Number Trader code using previously defined options.
	.macro ts_menu_select_number_trader 
		.byte 0xFE, 0x1
	.endm
	
	// Creates a password entry option at the current text position that takes numerical characters (0-9). Holdover from Mega Man Battle Network 4.
	// :param char[2:0:8]: The digit that this option corresponds with.
	.macro ts_menu_option_number char:req
		.byte 0xFE, 0x2, \char
	.endm
	
	// Lets the player put in a previously buffered password, and jumps to a different script depending on the player's input.
	// :param jumpIfCorrect[2:0:8]: The script to jump to if the player entered the incorrect password, or 255 to continue with the current script.
	// :param jumpIfIncorrect[3:0:8]: The script to jump to if the player entered an incorrect password, or 255 to continue with the current script.
	// :param jumpIfCancelled[4:0:8]: The script to jump to if the player cancelled the password entry, or 255 to continue with the current script.
	.macro ts_menu_select_buffered_password jumpIfCorrect:req, jumpIfIncorrect:req, jumpIfCancelled:req
		.byte 0xFE, 0x3, \jumpIfCorrect, \jumpIfIncorrect, \jumpIfCancelled
	.endm
	
	// Creates a password entry option at the current text position that takes name characters (0-9, A-Z, some special characters). Holdover from Mega Man Battle Network 4.
	// :param char[2:0:8]: The character that this option corresponds with.
	.macro ts_menu_option_name char:req
		.byte 0xFE, 0x4, \char
	.endm
	
	// Lets the player put in their name using previously defined options, and jumps to a different script depending on the player's input. Holdover from Mega Man Battle Network 4.
	// :param jumpIfConfirmed[2:0:8]: The script to jump to if the player confirmed their entry (and it did not match a known bad word), or 255 to continue with the currect script.
	// :param jumpIfBadWord[3:0:8]: The script to jump to if the player entered a bad word, or 255 to continue with the current script.
	// :param jumpIfCancelled[4:0:8]: The script to jump to if the player cancelled their entry, or 255 to continue with the current script.
	.macro ts_menu_select_name jumpIfConfirmed:req, jumpIfBadWord:req, jumpIfCancelled:req
		.byte 0xFE, 0x5, \jumpIfConfirmed, \jumpIfBadWord, \jumpIfCancelled
	.endm
	
	// Creates a password entry option at the current text position that takes numerical characters (0-9). Holdover from Mega Man Battle Network 5.
	// :param char[2:0:8]: The index of the character that this option corresponds with.
	.macro ts_menu_option_password char:req
		.byte 0xFE, 0xD, \char
	.endm
	
	// Lets the player put in a password, and jumps to a different script depending on the player's input. This command has a bug where the last byte is not skipped if script execution continues with this script.
	// :param jumpIfCorrect[2:0:8]: The script to jump to if the player entered the incorrect password, or 255 to continue with the current script.
	// :param jumpIfIncorrect[3:0:8]: The script to jump to if the player entered an incorrect password, or 255 to continue with the current script.
	// :param jumpIfCancelled[4:0:8]: The script to jump to if the player cancelled the password entry, or 255 to continue with the current script.
	// :param password[5:0:8]: The index of the password to compare to.
	.macro ts_menu_select_password jumpIfCorrect:req, jumpIfIncorrect:req, jumpIfCancelled:req, password:req
		.byte 0xFE, 0x10, \jumpIfCorrect, \jumpIfIncorrect, \jumpIfCancelled, \password
	.endm
	
	// Creates a Crossover Trader entry option at the current text position that takes numerical characters (0-9).
	// :param char[2:0:8]: The digit that this option corresponds with.
	.macro ts_menu_option_crossover_trader char:req
		.byte 0xFE, 0x11, \char
	.endm
	
	// Lets the player select a number of Crossover Points using previously defined options.
	.macro ts_menu_select_crossover_trader 
		.byte 0xFE, 0x12
	.endm
	
	// Prints the specified name script data that was received from the e-Reader.
	// :param data[2:0:8]: The index of the data to print. 0 and 1 pertain to Rare Chip Data.
	.macro ts_ereader_name data:req
		.byte 0xFF, 0x0, \data
	.endm
	
	// Prints the specified description script data that was received from the e-Reader.
	// :param data[2:0:8]: The index of the data to print. 0 and 1 pertain to Rare Chip Data.
	.macro ts_ereader_desc01 data:req
		.byte 0xFF, 0x1, \data
	.endm
	
	// Prints the specified description script data that was received from the e-Reader.
	// :param data[2:0:8]: The index of the data to print. 0 and 1 pertain to Rare Chip Data.
	.macro ts_ereader_desc0A data:req
		.byte 0xFF, 0xA, \data
	.endm


/* secondary (visual) interpreter commands */
	
	// Closes any open message box and ends script execution.
/*	
	// Moves the text position to the right a number of pixels.
	// :param count[2:0:8]: The amount of pixels to insert.
	.macro ts_space_px count:req
		.byte 0xEC, 0x1, \count
	.endm
	
	// Prints the contents of the specified 32-bit buffer as a decimal number.
	// :param buffer[1:0:7]: The buffer to print.
	// :param minLength[2:0:4]: The minimum amount of characters to print. If the number consists of less digits, additional spaces are printed.
	// :param padZeros[2:6:1]: If true, pads the amount of Zenny with zeros instead of spaces, if necessary.
	// :param padLeft[2:7:1]: If true, places the padding, if any, to the left of the amount of Zenny instead of to the right.
	.macro ts_print_buffer buffer:req, minLength:req, padZeros:req, padLeft:req
		.byte 0xF2, 0x0, (\buffer & 0x7F)
		.byte (\minLength & 0xF) | ((\padZeros & 0x1) << 6) | ((\padLeft & 0x1) << 7)
	.endm
	
	// Prints a stat from the currently active Navi Data Chip. Only functions properly in the status screen.
	// :param stat[1:0:7]: The stat to print. Possible values are: 0 = HP, 1 = Attack, 2 = MegaFolder, 3 = Custom, 4 = Speed, 5 = Charge
	// :param minLength[2:0:4]: The minimum amount of characters to print. If the number consists of less digits, additional spaces are printed.
	// :param padZeros[2:6:1]: If true, pads the amount of Zenny with zeros instead of spaces, if necessary.
	// :param padLeft[2:7:1]: If true, places the padding, if any, to the left of the amount of Zenny instead of to the right.
	.macro ts_print_navi_data_chip_stat stat:req, minLength:req, padZeros:req, padLeft:req
		.byte 0xF2, 0x80, (\stat & 0x7F)
		.byte (\minLength & 0xF) | ((\padZeros & 0x1) << 6) | ((\padLeft & 0x1) << 7)
	.endm
	
	// Holdover from Mega Man Battle Network 4. Does not function in this game.
	.macro ts_print_short_string 
		.byte 0xFA, 0x0
	.endm
	
	// Prints the specified link string buffer (such as player name, player comment, opponent name, etc.).
	// :param buffer[2:0:8]: The link string buffer to print.
	.macro ts_print_link_buffer_s buffer:req
		.byte 0xFA, 0x1, \buffer
	.endm
	
	// Prints the contents of the specified 32-bit buffer as a decimal number. Performs the same function as printBuffer, but there has much less options. Primarily used for Mod Card parameter buffers.
	// :param length[2:0:4]: The exact number of characters to print. The contents of the buffer must have at most this number of digits. 
	// If it has less digits, the number is left-padded with spaces. If length equals zero, then this command prints as many characters as needed to 
	// represent the contents of the buffer in text, up to 8 characters.
	// :param buffer[3:0:8]: The buffer to print. Must be at least 1.
	.macro ts_print_mod_buffer length:req, buffer:req
		.byte 0xFA, 0x2, \length, \buffer
	.endm
	
	
	.macro ts_print_mod_buffer 
		.byte 0xFA, 0x3
	.endm
	
	// Prints the specified name script data that was received from the e-Reader.
	// :param data[2:0:8]: The index of the data to print. 0 and 1 pertain to Rare Chip Data.
	.macro ts_ereader_name data:req
		.byte 0xFF, 0x0, \data
	.endm
	
	// Prints the specified description script data that was received from the e-Reader.
	// :param data[2:0:8]: The index of the data to print. 0 and 1 pertain to Rare Chip Data.
	.macro ts_ereader_desc data:req
		.byte 0xFF, 0x1, \data
	.endm
*/
	
    .macro ts_print_mod_buffer p0:req, p1:req
	.byte 0xFA, 0x02, \p0, \p1
	.endm
	
    // _s because this name conflicts with ts_print_link_buffer
	.macro ts_print_link_buffer_s p0:req
	.byte 0xFA, 0x01, \p0
	.endm
	
    /*
	.macro ts_space_px p0:req
	.byte 0xEC, 0x01, \p0
	.endm
    */

    // naming conflict, adding _s
	// Checks the current game version, and jumps to a different script depending on if the current game is Cybeast Gregar or Cybeast Falzar.
	// :param jumpIfCybeastGregar[1:0:8]: The script to jump to if the current game is Cybeast Gregar, or 255 to continue with the current script.
	// :param jumpIfCybeastFalzar[2:0:8]: The script to jump to if the current game is Cybeast Falzar, or 255 to continue with the current script.
	.macro ts_check_game_version_s jumpIfCybeastGregar:req, jumpIfCybeastFalzar:req
		.byte 0xEF, \jumpIfCybeastGregar, \jumpIfCybeastFalzar
	.endm
	
	.endif
