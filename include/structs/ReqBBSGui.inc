
	.macro req_bbs_gui_struct, label=oReqBBSGui, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	u8 SubsystemJumpTableOffset // loc=0x0
	struct_org 0x04
	u8 Unk_04 // loc=0x4
	// This corresponds to the XX in (new = XX/YY)
	u8 NumNewRequests // loc=0x5
	u8 Und_06 // loc=0x06
	u8 Und_07 // loc=0x07
	u8 AnimationTimer0 // loc=0x8
	u8 AnimationTimer1 // loc=0x9
	u8 Und_0A // loc=0xA
	u8 UnkState_0B // loc=0xB
	u8 Und_0C // loc=0xC
	// In the select chatbox, this represents XX in "Point: XX/YY"
	u8 NumPoints // loc=0xD
	/*
	This is an index? to an array that determines the total points in
	"Points: XX/YY".
	 array = [10, 25, 35, 75, 75]
	*/
	u8 TotalPointsIdx // loc=0xE
	u8 Unk_0F // loc=0xF
	struct_org 0x1E
	u16 TotalNewRequests // loc=0x1E
	u16 CursorPos // loc=0x20
	u16 CursorPosUpdate // loc=0x22
	u16 PagePos // loc=0x24
	u16 PagePosUpdate // loc=0x26
	ptr TwoTextRelatedPointers // loc=0x28

	// implied size via ZeroFillByWord(&eReqBBSGui, 0x2C)
	u0 Size // loc=0x2C
	restore_struct_label
	.endm

	def_struct_offsets req_bbs_gui_struct, oReqBBSGui
