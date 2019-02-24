.ifndef BYTECODE_TEXTSCRIPT_INC
.set BYTECODE_TEXTSCRIPT_INC, 1

.include "include/macros.inc"

// text script
enum_start 0xE5
enum TEXTSCRIPT_E5_NOP							// ()
enum TEXTSCRIPT_E6_END							// ()
enum TEXTSCRIPT_E7_BUTTONHALT	    	// (mode)
enum TEXTSCRIPT_E8_MSGBOX						// (mode, [XX, YY])
enum TEXTSCRIPT_E9_NEWLINE          // ()
enum TEXTSCRIPT_EA_FLAG             //
enum TEXTSCRIPT_EB_OPTION           //
enum TEXTSCRIPT_EC_LABEL            //
enum TEXTSCRIPT_ED_SELECT           //
enum TEXTSCRIPT_EE_PAUSE            //
enum TEXTSCRIPT_EF_CHECKFLAG        //
enum TEXTSCRIPT_F0_JUMP             //
enum TEXTSCRIPT_F1_TEXTSPEED        //
enum TEXTSCRIPT_F2_CLEARMSGBOX      //
enum TEXTSCRIPT_F3_CONTROL          //
enum TEXTSCRIPT_F4_UNK              //
enum TEXTSCRIPT_F5_MUGSHOT          //
enum TEXTSCRIPT_F6_TEXTCOLOR        //
enum TEXTSCRIPT_F7_MOVEBOX          //
enum TEXTSCRIPT_F8_PLAYERANIMATION	//
enum TEXTSCRIPT_F9_STOREBYTE        //
enum TEXTSCRIPT_FA_PRINT            //
enum TEXTSCRIPT_FB_SPECIAL          //
enum TEXTSCRIPT_FC_INTERFACE        //
enum TEXTSCRIPT_FD_SOUND            //
enum TEXTSCRIPT_FE_NUMBERINPUT      //
enum TEXTSCRIPT_FF_COPYTEXT         //

.macro ts_nop
  .byte TEXTCRIPT_E5_NOP
.endm

.macro ts_end
  .byte TEXTSCRIPT_E6_END
.endm

.macro ts_buttonhalt mode:req
  .byte TEXTSCRIPT_E7_BUTTONHALT, \mode
.endm

.macro ts_msgbox mode:req, XX, YY
  .byte TEXTSCRIPT_E8_MSGBOX, \mode
  .if \mode > 3 && \mode < 8
    .byte XX, YY
  .endif
.endm

.macro ts_newline
  .byte TEXTSCRIPT_E9_NEWLINE
.endm

.macro ts_flag mode:req, XXXX:req, YY
  .byte TEXTSCRIPT_EA_FLAG, \mode
  .hword XXXX
  .if \mode > 2 && \mode < 5
    .byte YY
  .endif
.endm

.macro ts_option unk:req, XX:req, LR:req, UD:req
  .byte TEXTSCRIPT_EB_OPTION, \XX, \LR, \UD
.endm

.macro ts_label spaces:req, amount
  .byte TEXTSCRIPT_EC_LABEL, \req, \amount
.endm

.endif // BYTECODE_TEXTSCRIPT_INC
