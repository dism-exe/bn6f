#ifndef S_02009CD0_H
#define S_02009CD0_H

#include "inttypes.h"

/**
 * This is responsible for GUI propreties of the chatbox as well as script running.
 So far, I can just tell it seems to control various things in
 the textbox as a GUI element.
Size
 Hypothesis: 0x98 (0x02009D68 - 0x02009CD0)
 ZeroFillByWord(*(tk->ChatboxPtr), 0x230)?
 */
typedef struct {
	/*
	bool.
	- if 0, not visible, otherwise chatbox is visible when
	initiated
	.# enable bit for textbox? Only Hides textbox when in-chat.
	*/
	u8 bVisible;					// loc=0x0
	u8 scriptID;				   // loc=0x1
	/*
	This changes whenever the text reaches a new line!
	*/
	u8 currLine;				   // loc=0x2
	u8 unk_03;					 // loc=0x3
	/*
	Seems to indicate when the script is done by transitioning from 0 to 1
	After a set amount of time, it transitions to 2.
	When a choice is present, the transition to 2 does not occur at all. It stays at 0x01, until the
	*/
	u8 chatPageState;			  // loc=0x4
	/*
	- =0xFF: Cannot leave chatbox
	- values other than 0x00 just make character spam animate until interacted to?
	And when pressing a button, the character stops and the chatbox no longer is responsive
	This can however cause some chats with characters to behave abnormally
	*/
	u8 unk_05;					 // loc=0x5
		u8 pad_06[0x01];
	/*
	- Seems to select the magshot pallete
	*/
	u8 mugshotPalleteSel;		  // loc=0x7
	/*
	- Mugshot animation speed is not affected
	*/
	u8 typingSpeed;				// loc=0x8
	/*
	If 0, it indicates a character was just printed to the screen
	Its end state after everything has been typed, is 0 however.
	If 1, this indicates that a character is about to be TYPED.
	*/
	u8 bNumCharacterTyped;		 // loc=0x9
	u8 unk_0A;					 // loc=0xA
	/*
	Set to -1 everytime a page loads for some reason
	*/
	u8 unk_0B;					 // loc=0xB
	/*
	TODO: v figure out what i was talking about. why was i yelling??
	I THINK THIS AND 0D ARE WRONG. THESE ARE 1C AND 1D, AND ALSO LIKELY ON REVERSE
	Vertical coordinate of the chatbox (not the text, or the mugshot, literally the box)
	0x00 is at the top of the screen, and it grows downwards
	*/
	u8 chatbox_y;				  // loc=0xC
	/*
	Horizontal coordinate of the chatbox (not the text, or the mugshot, literally the box)
	0x00 is at the natural positon, it transforms to the right
	*/
	u8 chatbox_x;				  // loc=0xD
	u8 unk_0E;					 // loc=0xE
	/*
	at 0x00, only a little of the box is visible, as it increases, more of the box loads
	until it loads completely at 0x08
	*/
	u8 amount_of_box_appeared;	 // loc=0xF
	/*
	Determines how open the chatbox is. The values are used for the chatbox full opening
	states and closing. The width of the chatbox varies in each state, and the mugshot appears
	when the chatbox is in state 3. At high values, random graphics appear.
	[0xZZ]
	.# determines textbox width and content state
	*/
	u8 chatboxOpenState;		   // loc=0x10
	/*
	((void (*)(void))*(&0x803FF04 + chatbox->unk_11))(); TODO: MMBN6
	This structure pointers appears to contain very important information about the chatbox's
	initiaton
	*/
	u8 bxoff_11;				   // loc=0x11
	u8 unk_12;					 // loc=0x12
	/*
	Position of coicecursor, depends on what is selected in a choice
	Changing this is valid and it changes the cursor position accordingly
	*/
	u8 choiceCursorPos;			// loc=0x13
	u8 unk_14;					 // loc=0x14
	u8 unk_15;					 // loc=0x15
	u8 unk_16;					 // loc=0x16
	u8 unk_17;					 // loc=0x17
	u8 textCoord;				  // loc=0x18
	u8 unk_19;					 // loc=0x19
	u8 csrCoord;				   // loc=0x1A
	u8 unk_1B;					 // loc=0x1B
	u8 unk_1C;					 // loc=0x1C
	u8 unk_1D;					 // loc=0x1D
	u8 unk_1E;					 // loc=0x1E
	u8 unk_1F;					 // loc=0x1F
		u8 pad_20[0x02];
	u16 keyState;				  // loc=0x22
	/*
	joystick->keyPress
	Stays at its default state, but changes when a key is pressed
	for a brief moment
	*/
	u16 keyPress;				  // loc=0x24
	/*
	chatbox->loc_26 = joystick->IQR
	Obtained from the Joystick module
	Those are flags for which joystick
	keys are pressed.
	*/
	u16 keysFlags;				 // loc=0x26
		u8 pad_28[0x04];
	/*
	Advances everytime a character is processed from pCurrScript
	starts at pCurrScript
		0x9C	u8		RelScriptId
		[0xZZ] <RelScriptID?>
		.# more likely to be a scriptID than 0x01!
		.# doesnt change while interacting with obj!
		.# (?)
	*/
	u8 *pScriptCursor;			 // loc=0x2C
	u16 *pScriptArray;			 // loc=0x30
	u8 *pCurrScript;			   // loc=0x34
	u32 unk_38;					// loc=0x38
		u8 pad_3C[0x01];
	u8 unk_3D;					 // loc=0x3D
	/*
	When not in a choice menu, and the page chat finished typing
	Default - 0x0421 (Game code always maintains this)
		Full open chat window, no mugshot
	The following is ORR'd with Default:
	0x0002 - mugshotActive
	0x0004 - ?
	0x0008 - ?
	0x000F - pallete rainbow active in loc_40?
	0x0100 - hides Chatbox
	0x04
	*/
	u16 flags_3E;				  // loc=0x3E
	/*
	hypothesis: [0x0000RRYY]
	The last four bytes are responsible for the filtering.
	It's more complicated logically, in the sense green and yellow alternate between even/odd YY, or some
	other logic.
	RR also alternates with blue.
	*/
	u32 mugshot_color_filter;	  // loc=0x40
	u32 unk_44;					// loc=0x44
		u8 pad_48[0x04];
	u32 unk_4C;					// loc=0x4C
	u32 unk_50;					// loc=0x50
	u32 unk_54;					// loc=0x54
	u32 unk_58;					// loc=0x58
		u8 pad_5C[0x08];
	u16 unk_64;					// loc=0x64
		u8 pad_66[0x02];
	u16 unk_68;					// loc=0x68
	u16 unk_6A;					// loc=0x6A
	u16 unk_6C;					// loc=0x6C
	u16 unk_6E;					// loc=0x6E
	u32 unk_70;					// loc=0x70
	u32 unk_74;					// loc=0x74
	u32 unk_78;					// loc=0x78
	u32 unk_7C;					// loc=0x7C
	/*
  usage:
	temp = *(u32*)&chatbox->unk_80;
			chatbox->unk_12 = temp--;
	*/
	u8 unk_80;					 // loc=0x80
		u8 pad_81[0x03];
	u32 unk_84;					// loc=0x84
	u32 unk_88;					// loc=0x88
		u8 pad_8C[0x04];
	u32 unk_90;					// loc=0x90
	u8 unk_94;					 // loc=0x94
		u8 pad_95[0x03];
	// size=0x98
}ChatBoxPropreties;

#endif /* S_02009CD0_H */
