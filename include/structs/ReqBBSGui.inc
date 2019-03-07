
	.macro req_bbs_gui_struct, label=oReqBBSGui, struct_entry=label_struct_entry, struct_begin=struct_begin
		\struct_begin
		struct_init_defs \struct_entry, \label
        u8 \label, JumpTableOffset_00 // loc=0x0
        struct_org 0x04
        u8 \label, Unk_04 // loc=0x4
        // This corresponds to the XX in (new = XX/YY)
        u8 \label, NumNewRequests // loc=0x5
        u8 \label, Und_06 // loc=0x06
        u8 \label, Und_07 // loc=0x07
        u8 \label, AnimationTimer0 // loc=0x8
        u8 \label, AnimationTimer1 // loc=0x9
        u8 \label, Und_0A // loc=0xA
        u8 \label, UnkState_0B // loc=0xB
        u8 \label, Und_0C // loc=0xC
        // In the select chatbox, this represents XX in "Point: XX/YY"
        u8 \label, NumPoints // loc=0xD
        /*
        This is an index? to an array that determines the total points in
        "Points: XX/YY".
         array = [10, 25, 35, 75, 75]
        */
        u8 \label, TotalPointsIdx // loc=0xE
        u8 \label, Unk_0F // loc=0xF
        struct_org 0x1E
        u16 \label, TotalNewRequests // loc=0x1E
        u16 \label, CursorPos // loc=0x20
        u16 \label, CursorPosUpdate // loc=0x22
        u16 \label, PagePos // loc=0x24
        u16 \label, PagePosUpdate // loc=0x26
        ptr \label, TwoTextRelatedPointers // loc=0x28

        // implied size via ZeroFillByWord(&eReqBBSGui, 0x2C)
		u0 \label, Size // loc=0x20
	.endm

	def_struct_offsets req_bbs_gui_struct, oReqBBSGui
