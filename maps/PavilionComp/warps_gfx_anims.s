
off_806A7AC:
	.word off_806A7C0
	.word off_806A7D0
	.word off_806A7E0
	.word off_806A7F0
	.word off_806A800
off_806A7C0:
	.word LCDControl
	.word 0, 0
	.byte 0, 0, 0, 0
off_806A7D0:
	.word LCDControl
	.word 0, 0
	.byte 0, 0, 0, 0
off_806A7E0:
	.word LCDControl
	.word 0, 0
	.byte 0, 0, 0, 0
off_806A7F0:
	.word LCDControl
	.word 0, 0
	.byte 0, 0, 0, 0
off_806A800:
	.word LCDControl
	.word 0, 0
	.byte 0, 0, 0, 0
off_806A810:
	gfx_anim_pal_copy dest=palette_3001960 size=0x00000020 index=0x00
	gfx_anim_data_ptr ptr=byte_8614D60 delay=0x00000020
	gfx_anim_data_ptr ptr=byte_8614D80 delay=0x0000001C
	gfx_anim_data_ptr ptr=byte_8614DA0 delay=0x0000000E
	gfx_anim_data_ptr ptr=byte_8614DC0 delay=0x0000001C
	gfx_anim_data_ptr ptr=byte_8614DA0 delay=0x00000020
	gfx_anim_data_ptr ptr=byte_8614DC0 delay=0x00000020
	gfx_anim_data_ptr ptr=byte_8614DA0 delay=0x0000001C
	gfx_anim_data_ptr ptr=byte_8614D80 delay=0x0000000E
	gfx_anim_data_ptr ptr=byte_8614D60 delay=0x0000001C
	gfx_anim_data_ptr ptr=byte_8614D80 delay=0x00000020
	gfx_anim_loop

off_806A870:
	gfx_anim_pal_copy dest=palette_3001980 size=0x00000020 index=0x01
	gfx_anim_data_ptr ptr=byte_85D053C delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85D055C delay=0x00000014
	gfx_anim_data_ptr ptr=byte_85D057C delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85D059C delay=0x00000014
	gfx_anim_loop

off_806A8A0:
	gfx_anim_pal_copy dest=unk_30019A0 size=0x00000020 index=0x02
	gfx_anim_data_ptr ptr=byte_85D05C0 delay=0x00000014
	gfx_anim_data_ptr ptr=byte_85D05E0 delay=0x0000000E
	gfx_anim_data_ptr ptr=byte_85D0600 delay=0x00000014
	gfx_anim_data_ptr ptr=byte_85D05E0 delay=0x0000000E
	gfx_anim_loop

off_806A8D0:
	gfx_anim_pal_copy dest=unk_30019E0 size=0x00000020 index=0x03
	gfx_anim_data_ptr ptr=byte_85D0624 delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85D0644 delay=0x00000010
	gfx_anim_data_ptr ptr=byte_85D0664 delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85D0644 delay=0x00000010
	gfx_anim_loop

off_806A900:
	gfx_anim_pal_copy dest=unk_3001A60 size=0x00000020 index=0x04
	gfx_anim_data_ptr ptr=byte_85D0688 delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85D06A8 delay=0x0000000C
	gfx_anim_data_ptr ptr=byte_85D06C8 delay=0x00000008
	gfx_anim_data_ptr ptr=byte_85D06E8 delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85D06C8 delay=0x0000000C
	gfx_anim_data_ptr ptr=byte_85D06A8 delay=0x00000008
	gfx_anim_loop

off_806A940:
	gfx_anim_pal_copy dest=unk_3001A80 size=0x00000020 index=0x05
	gfx_anim_data_ptr ptr=byte_85D070C delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85D072C delay=0x0000000C
	gfx_anim_data_ptr ptr=byte_85D074C delay=0x00000008
	gfx_anim_data_ptr ptr=byte_85D076C delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85D074C delay=0x0000000C
	gfx_anim_data_ptr ptr=byte_85D072C delay=0x00000008
	gfx_anim_loop

off_806A980:
	gfx_anim_pal_copy dest=unk_3001AA0 size=0x00000020 index=0x06
	gfx_anim_data_ptr ptr=byte_85D0790 delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85D07B0 delay=0x0000000C
	gfx_anim_data_ptr ptr=byte_85D07D0 delay=0x00000008
	gfx_anim_data_ptr ptr=byte_85D07F0 delay=0x00000028
	gfx_anim_data_ptr ptr=byte_85D07D0 delay=0x0000000C
	gfx_anim_data_ptr ptr=byte_85D07B0 delay=0x00000008
	gfx_anim_loop

byte_806A9C0:
	gfx_anim_pal_copy dest=unk_3001AE0 size=0x00000020 index=0x07
	gfx_anim_data_ptr ptr=byte_85D0814 delay=0x00000030
	gfx_anim_data_ptr ptr=byte_85D0834 delay=0x0000000C
	gfx_anim_data_ptr ptr=byte_85D0854 delay=0x0000000A
	gfx_anim_data_ptr ptr=byte_85D0874 delay=0x00000008
	gfx_anim_data_ptr ptr=byte_85D0854 delay=0x0000000A
	gfx_anim_data_ptr ptr=byte_85D0834 delay=0x0000000C
	gfx_anim_loop




