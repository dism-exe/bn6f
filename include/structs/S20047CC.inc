    .ifndef STRUCT_S20047CC_INC
    .set STRUCT_S20047CC_INC, 1

	.macro s_20047cc_struct, label=oS20047CC, struct_entry=label_struct_entry, struct_begin=struct_begin
		\struct_begin
		struct_init_defs \struct_entry, \label
        u8 \label, Unk_00  // loc=0x0
        u8 \label, Unk_01  // loc=0x1
        u8 \label, Unk_02  // loc=0x2
        u8 \label, Unk_03  // loc=0x3
        u8 \label, Unk_04  // loc=0x4
        u8 \label, Unk_05  // loc=0x5
        u8 \label, Unk_06  // loc=0x6
        u8 \label, Unk_07  // loc=0x7
        u8 \label, Unk_08  // loc=0x8
        u8 \label, Unk_09  // loc=0x9
        u8 \label, Unk_0A  // loc=0xA
        u8 \label, Unk_0B  // loc=0xB
        u8 \label, Unk_0C  // loc=0xC
        u8 \label, Unk_0D  // loc=0xD
        u8 \label, Unk_0E  // loc=0xE
        u8 \label, Und_0F  // loc=0xF
        u8 \label, Unk_10  // loc=0x10
        u8 \label, Und_11  // loc=0x11
        u8 \label, Unk_12  // loc=0x12
            u8_arr \label, Und_13, 0x04
        u8 \label, Unk_17  // loc=0x17
        u8 \label, Unk_18  // loc=0x18
        u8 \label, Unk_19  // loc=0x19
        u8 \label, Und_1A  // loc=0x1A
        u8 \label, Unk_1B  // loc=0x1B
        u8 \label, Unk_1C  // loc=0x1C
        u8 \label, Unk_1D  // loc=0x1D
        u8 \label, Unk_1E  // loc=0x1E
        u8 \label, Unk_1F  // loc=0x1F
        u8 \label, Unk_20  // loc=0x20
        u8 \label, Unk_21  // loc=0x21
        u8 \label, Unk_22  // loc=0x22
        u8 \label, Unk_23  // loc=0x23
        u8 \label, Und_24  // loc=0x24
        u8 \label, Unk_25  // loc=0x25
        u8 \label, Unk_26  // loc=0x26
        u8 \label, Unk_27  // loc=0x27
        u8 \label, Unk_28  // loc=0x28
        u8 \label, Unk_29  // loc=0x29
        u8 \label, Und_2A  // loc=0x2A
        u8 \label, Unk_2B  // loc=0x2B
        u8 \label, Unk_2C  // loc=0x2C
        u8 \label, Unk_2D  // loc=0x2D
        u8 \label, Unk_2E  // loc=0x2E
        u8 \label, Unk_2F  // loc=0x2F
        u8 \label, Unk_30  // loc=0x30
            u8_arr \label, Und_31, 0x04
        u8 \label, Unk_35  // loc=0x35
        u8 \label, Und_36  // loc=0x36
        u8 \label, Unk_37  // loc=0x37
        u8 \label, Unk_38  // loc=0x38
        u8 \label, Unk_39  // loc=0x39
            u8_arr \label, Und_3A, 0x04
        u16 \label, Unk_3E // loc=0x3E
        // instantly affects screen
        u16 \label, NaviHP // loc=0x40
        // this is set by loc_3E
        u16 \label, NaviHPUpdate // loc=0x42
        u16 \label, Und_44 // loc=0x44
        u16 \label, Unk_46 // loc=0x46
        u16 \label, Unk_48 // loc=0x48
        u16 \label, Unk_4A // loc=0x4A
            u8_arr \label, Und_4C, 0x0A
        u8 \label, Unk_56  // loc=0x56
        u8 \label, Unk_57  // loc=0x57
        u8 \label, Unk_58  // loc=0x58
        u8 \label, Unk_59  // loc=0x59
        u8 \label, Unk_5A  // loc=0x5A
        u8 \label, Unk_5B  // loc=0x5B
            u8_arr \label, Und_5C, 0x03
        u8 \label, Unk_5F  // loc=0x5F
        u8 \label, Unk_60  // loc=0x60
            u8_arr \label, Und_61, 0x03
        u0 \label, Size // loc=0x64
    .endm

   	def_struct_offsets s_20047cc_struct, oS20047CC

/*
03007CC8 03007CD8 03007D28 080014EC 08006DF6
08006E0E 0800A2F8 08013438 080136F0? 08013704?
0801379E 080137B6 080137E6 080137FE 08013B64
0803F894 0803F8C4 0814D954
*/
    .endif // STRUCT_S20047CC_INC
