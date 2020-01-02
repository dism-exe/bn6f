	.ifndef TEXT_SCRIPT_INC
	.set TEXT_SCRIPT_INC, 0

    .include "constants/constants.inc"

	__subsection_id = 0
	__cur_text_script_id = 0

    // for jumps to 0xFF, which just continue the current script
    .equiv TS_CONTINUE, 0xFF


	.macro text_archive_start
	/* increment subsection id before anything because
	   text scripts go after relative offsets */
	__subsection_id = __subsection_id + 1

	/* define the base pointer of the relative offsets */
	.data __subsection_id - 1
	__text_script_rel_pointers_base = .
	/* switch back to the subsection where text scripts are defined */
	.data __subsection_id

	/* reset the current text script id */
	__cur_text_script_id = 0
	.endm


	/* use this if not all text scripts of a text archive are dumped */
	.macro incomplete_text_archive_start
	/* reset the current text script id */
	__cur_text_script_id = 0
	.endm

	.macro __set_text_script_id label:req
	/* if specified... */
	.if \label != NULL
	/* ...define the label of this text script */
\label\():
	/* set the label id */
	.equiv \label\()_id, __cur_text_script_id
	.endif

	/* increment the current text script id */
	__cur_text_script_id = __cur_text_script_id + 1
	.endm


	/* use when starting a new text script of a text archive */
	.macro def_text_script label=NULL // TODO: remove _start once dependency on rel. pointers is removed
	/* define a relative offset */

	/* must calculate the offset here so that the program counter symbol (.)
	   represents the program counter of the text data subsection */
	.equ __text_script_relative_offset_temp, . - __text_script_rel_pointers_base
	.data __subsection_id - 1
	.hword __text_script_relative_offset_temp
	/* switch back to the text script subsection */
	.data __subsection_id

	/* set text script id info */
	__set_text_script_id \label
	.endm


	/* use this macro if not all text scripts of a text archive are dumped */
	.macro incomplete_text_script label=NULL
	__set_text_script_id \label
	.endm


	.macro switch_to_text_script_relative_offset_subsection
	.data __subsection_id - 1
	.endm


	.macro switch_to_text_script_text_data_subsection
	.data __subsection_id
	.endm

    .include "include/bytecode/text_script_commands.inc"

	.endif // TEXT_SCRIPT_INC
