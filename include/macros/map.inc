
	.macro map_id map:req
	.byte GROUP_\map\(), MAP_\map\()
	.endm
