
off_80790A4::
	.word byte_80790AC
	.word byte_80790CC
byte_80790AC::
	.byte 0x90, 0x2, 0x8, 0x5, 0x0, 0x0, 0xB8, 0xFF, 0x0, 0x0, 0x6, 0x0, 0x0, 0x0
	.byte 0x0, 0x0, 0x93, 0x1, 0x0, 0x7, 0x0, 0x0, 0xE, 0x0, 0x0, 0x0, 0x8, 0x2
	.byte 0x0, 0x0, 0x0, 0x0
byte_80790CC::
	.byte 0x93, 0x0, 0x0, 0x3, 0x0, 0x0, 0xC4, 0x0, 0x0, 0x0, 0x18, 0xFE, 0x0
	.byte 0x0, 0x0, 0x0, 0x96, 0x2, 0x0, 0x1, 0x0, 0x0, 0x68, 0xFD, 0x0, 0x0
	.byte 0x52, 0x0, 0x0, 0x0, 0x0, 0x0
off_80790EC::
	gfx_anim_4bit_tile_copy gfx_src=dword_86190F4 gfx_dest=unk_6008020 index=0x00 num_tiles=0x02 buffer_index=0x0E
	gfx_anim_data_ptr ptr=dword_807910C delay=0x00000005
	gfx_anim_data_ptr ptr=dword_8079110 delay=0x00000005
	gfx_anim_loop

dword_807910C::
	.word 0x10000
dword_8079110::
	.word 0x30002
byte_8079114::
	gfx_anim_pal_copy dest=palette_3001980 size=0x00000020 index=0x02
	gfx_anim_data_ptr ptr=byte_85F1678 delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85F1698 delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F16B8 delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F16D8 delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F16F8 delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85F16D8 delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F16B8 delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F1698 delay=0x00000012
	gfx_anim_loop

byte_8079164::
	gfx_anim_pal_copy dest=unk_30019A0 size=0x00000020 index=0x03
	gfx_anim_data_ptr ptr=byte_85F187C delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85F189C delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F18BC delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F18DC delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F18FC delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85F18DC delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F18BC delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F189C delay=0x00000012
	gfx_anim_loop

byte_80791B4::
	gfx_anim_pal_copy dest=unk_30019E0 size=0x00000020 index=0x04
	gfx_anim_data_ptr ptr=byte_85F1A80 delay=0x00000010
	gfx_anim_data_ptr ptr=byte_85F1AA0 delay=0x00000010
	gfx_anim_data_ptr ptr=byte_85F1AC0 delay=0x00000010
	gfx_anim_data_ptr ptr=byte_85F1AE0 delay=0x00000010
	gfx_anim_data_ptr ptr=byte_85F1B00 delay=0x00000010
	gfx_anim_data_ptr ptr=byte_85F1AE0 delay=0x00000010
	gfx_anim_data_ptr ptr=byte_85F1AC0 delay=0x00000010
	gfx_anim_data_ptr ptr=byte_85F1AA0 delay=0x00000010
	gfx_anim_loop

byte_8079204::
	gfx_anim_pal_copy dest=palette_3001980 size=0x00000020 index=0x02
	gfx_anim_data_ptr ptr=byte_85F1678 delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85F1698 delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F16B8 delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F16D8 delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F16F8 delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85F16D8 delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F16B8 delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F1698 delay=0x00000012
	gfx_anim_loop

byte_8079254::
	gfx_anim_pal_copy dest=unk_30019A0 size=0x00000020 index=0x03
	gfx_anim_data_ptr ptr=byte_85F187C delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85F189C delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F18BC delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F18DC delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F18FC delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85F18DC delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F18BC delay=0x00000012
	gfx_anim_data_ptr ptr=byte_85F189C delay=0x00000012
	gfx_anim_loop

byte_80792A4::
	gfx_anim_pal_copy dest=unk_30019E0 size=0x00000020 index=0x04
	gfx_anim_data_ptr ptr=byte_85F1A80 delay=0x00000010
	gfx_anim_data_ptr ptr=byte_85F1AA0 delay=0x00000010
	gfx_anim_data_ptr ptr=byte_85F1AC0 delay=0x00000010
	gfx_anim_data_ptr ptr=byte_85F1AE0 delay=0x00000010
	gfx_anim_data_ptr ptr=byte_85F1B00 delay=0x00000010
	gfx_anim_data_ptr ptr=byte_85F1AE0 delay=0x00000010
	gfx_anim_data_ptr ptr=byte_85F1AC0 delay=0x00000010
	gfx_anim_data_ptr ptr=byte_85F1AA0 delay=0x00000010
	gfx_anim_loop

byte_80792F4::
	gfx_anim_pal_copy dest=unk_3001A20 size=0x00000020 index=0x05
	gfx_anim_data_ptr ptr=byte_85F4D24 delay=0x00000008
	gfx_anim_data_ptr ptr=byte_85F4D44 delay=0x00000008
	gfx_anim_data_ptr ptr=byte_85F4D64 delay=0x00000008
	gfx_anim_loop












