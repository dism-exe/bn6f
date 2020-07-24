
	.macro map_object_spawn_data_struct index, x, y, z, object_id
	init_rom_struct map_object_spawn_data_struct
	object_spawn_data_struct [
		type: OBJECT_SPAWN_TYPE_OVERWORLD_MAP,
		index: \index,
		x: \x,
		y: \y,
		z: \z,
		// object_id is an index into the OverworldMapObjects array.
		object_id: \object_id,
	]
	u0 Size // loc=0x14
	.endm
