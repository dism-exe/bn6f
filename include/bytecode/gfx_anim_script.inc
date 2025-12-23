
	// has to be defined separately from gfx_anim_data_struct because the "start" command definition only specifies up to Param3
	.macro gfx_anim_data_common_struct param0:req, param1:req, command:req, index:req, param2=0xff, param3=0xff
	.word \param0
	.word \param1
	.byte \command
	.byte \index
	.byte \param2
	.byte \param3
	.endm

	enum_start 0, 4

	enum GFX_ANIM_PAL_COPY // 0x00
	.macro gfx_anim_pal_copy dest:req, size:req, index:req
	gfx_anim_data_common_struct \dest, \size, GFX_ANIM_PAL_COPY, \index
	.endm

	enum GFX_ANIM_4BIT_TILE_COPY // 0x04
	.macro gfx_anim_4bit_tile_copy gfx_src:req, gfx_dest:req, index:req, num_tiles:req, buffer_index:req
	gfx_anim_data_common_struct \gfx_src, \gfx_dest, GFX_ANIM_4BIT_TILE_COPY, \index, \num_tiles, \buffer_index
	.endm

	enum GFX_ANIM_UNK_08 // 0x08
	// no macro until I can find ROM data which uses this command

  // Corresponds to command sub_8002310
	enum GFX_ANIM_MANUAL_PAL_TRANSFORM // 0x0c
	.macro gfx_anim_manual_pal_transform transform_type:req, ptr5:req, index:req, num_pals:req
	gfx_anim_data_common_struct \transform_type, \ptr5, GFX_ANIM_MANUAL_PAL_TRANSFORM, \index, \num_pals
	.endm

	enum GFX_ANIM_PLAY_SOUND // 0x10
  // encountered in byte_8039350
	.macro gfx_anim_play_sound index:req
	gfx_anim_data_common_struct 0x000000ff, 0x000000ff, GFX_ANIM_PLAY_SOUND, \index
	.endm

	enum GFX_ANIM_MODIFY_EVENT_FLAGS // 0x14
	// haven't actually seen an instance of this command, guessing values
	.macro gfx_anim_modify_event_flags index:req
	gfx_anim_data_common_struct 0xffffffff, 0xffffffff, GFX_ANIM_MODIFY_EVENT_FLAGS, \index
	.endm

	enum GFX_ANIM_8BIT_TILE_COPY // 0x18
	.macro gfx_anim_8bit_tile_copy gfx_src:req, gfx_dest:req, index:req, num_tiles:req, buffer_index:req
	gfx_anim_data_common_struct \gfx_src, \gfx_dest, GFX_ANIM_8BIT_TILE_COPY, \index, \num_tiles, \buffer_index
	.endm

  // data commands, processed by ProcessGFXAnims after initial loading by LoadGFXAnim

	enum_start
	
	enum GFX_ANIM_END // 0x0
	// ends a gfx anim
	.macro gfx_anim_end
	.word GFX_ANIM_END
	.endm

	enum GFX_ANIM_LOOP // 0x1
	// jumps to the loop address, which is by default the first gfx_anim_data command executed
	.macro gfx_anim_loop
	.word GFX_ANIM_LOOP
	.endm

	enum GFX_ANIM_JUMP // 0x2
	// sets the loop address to the given address and jumps to it
	.macro gfx_anim_jump dest:req
	.word GFX_ANIM_JUMP
	.word \dest
	.endm

  // Commands that expect pointers in the data: 0x00, 0x04, and 0x18
  // Commands that do not: 0x08, 0x0C, 0x10, 0x14

	// generic command to specify data for a gfx anim after the initial command has been executed
	.macro gfx_anim_data_ptr ptr:req, delay:req
	.word \ptr, \delay
	.endm

  // This expects an event flag for command 0x14.
	.macro gfx_anim_data_event event16:req, delay:req
  .hword \event16
  .hword 0x0000
  .word \delay
	.endm

  // This expects a sound effect index for command 0x10.
	.macro gfx_anim_data_sound sound_effect8:req, delay:req
  .byte \sound_effect8, 0x0, 0x0, 0x0
	.word \delay
	.endm

	// for command 0x10 when sound effect is 0xFF
	.macro gfx_anim_data_no_sound delay:req
	.word 0xFFFFFFFF
	.word \delay
	.endm

	.macro gfx_anim_data data:req, delay:req
	.word \data, \delay
	.endm

	// gfx_anim_pal_copy dest=0x3001a20, size=0x20, index=1
	// gfx_anim_data data=0x8594ad0, delay=6
	// ...
	// gfx_anim_end
	// gfx_anim_4bit_tile_copy gfx_src=dword_8617488, gfx_dest=0x6008040, index=0, num_tiles=36, buffer_index=8
	// gfx_anim_manual_pal_transform transform_type=0xc, dest=0x3001b60, index=0xf, num_pals=0xe
	// gfx_anim_8bit_tile_copy gfx_src=0x850d034, gfx_dest=0x60079c0, index=0x2, num_tiles=15, buffer_index=13
