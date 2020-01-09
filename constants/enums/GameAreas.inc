/*
To get to the list of all NPC in the area:
For 0x00 maps:
[ [ 0x08034638 + (area * 4) ] + (subarea*4) ]
For 0x80 maps:
[ [ 0x080347E0 + (( area _ 0x80 ) * 4) ] + (subarea * 4) ]
*/

	.equiv REAL_WORLD_MAP_GROUP_START, 0x00
	.equiv INTERNET_MAP_GROUP_START, 0x80
	.equiv UNKNOWN_MAP_GROUP_START, 0xf0

	.macro new_group generic_group_id:req, value
	enum_inc __enum__
	.equiv GROUP_\generic_group_id\(), __enum__
	.set __new_group_\generic_group_id\(), 1
	subenum_start
	.endm

	.macro map_enum map_id:req
	.ifdef GROUP_\map_id\()
		.ifdef __new_group_\map_id\()
			.if __new_group_\map_id\()
				.if GROUP_\map_id\() == __enum__
					.set __new_group_\map_id\(), 0
					.exitm
				.endif
			.endif
		.endif
	.endif
	.equiv GROUP_\map_id\(), __enum__
	subenum MAP_\map_id\()
	.endm

	enum_start REAL_WORLD_MAP_GROUP_START - 1

	new_group ACDC_TOWN // 0x00
	map_enum ACDC_TOWN // 0x00
	map_enum CLASS_6A // 0x01

	new_group CENTRAL_TOWN // 0x01
	map_enum CENTRAL_TOWN // 0x00
	map_enum LAN_HOUSE // 0x01
	map_enum LAN_ROOM // 0x02
	map_enum BATHROOM // 0x03
	map_enum ASTER_LAND // 0x04

	new_group CYBER_ACADEMY // 0x02
	map_enum CLASS_6_1 // 0x00
	map_enum CLASS_6_2 // 0x01
	map_enum CLASS_1_1 // 0x02
	map_enum CLASS_1_2 // 0x03
	map_enum 1F_HALLWAY // 0x04
	map_enum 2F_HALLWAY // 0x05
	map_enum FOYER_HALL // 0x06
	map_enum TEACHER_ROOM // 0x07
	map_enum PRINCIPAL_OFFICE // 0x08
	map_enum RESEARCH_LAB1 // 0x09
	map_enum RESEARCH_LAB2 // 0x0A

	new_group SEASIDE_TOWN // 0x03
	map_enum SEASIDE_TOWN // 0x00
	map_enum AQUARIUM1 // 0x01
	map_enum AQUARIUM2 // 0x02
	map_enum AUDITORIUM // 0x03
	map_enum CONTROL_ROOM // 0x04

	new_group GREEN_TOWN // 0x04
	map_enum GREEN_TOWN // 0x00
	map_enum COURT_FOYER // 0x01
	map_enum COURTROOM // 0x02
	map_enum PUNISHMENT_ROOM // 0x03
	map_enum UNDERGROUND_ROOM // 0x04

	new_group SKY_TOWN // 0x05
	map_enum ADMIN // 0x00
	map_enum SKY_TOWN // 0x01
	map_enum OPERATOR_ROOM // 0x02
	map_enum FORCE_ROOM // 0x03

	new_group EXPO_SITE // 0x06
	map_enum EXPO_SITE // 0x00
	map_enum CENTRAL_HALL // 0x01
	map_enum SEASIDE_HALL // 0x02
	map_enum GREEN_HALL // 0x03
	map_enum SKY_HALL // 0x04

	enum_start INTERNET_MAP_GROUP_START - 1

	new_group ROBOT_CONTROL_COMP // 0x80
	map_enum ROBOT_CONTROL_COMP1 // 0x00
	map_enum ROBOT_CONTROL_COMP2 // 0x01

	new_group AQUARIUM_COMP // 0x81
	map_enum AQUARIUM_COMP1 // 0x00
	map_enum AQUARIUM_COMP2 // 0x01
	map_enum AQUARIUM_COMP3 // 0x02

	new_group JUDGETREE_COMP // 0x82
	map_enum JUDGETREE_COMP1 // 0x00
	map_enum JUDGETREE_COMP2 // 0x01
	map_enum JUDGETREE_COMP3 // 0x02

	new_group MR_WEATHER_COMP // 0x83
	map_enum MR_WEATHER_COMP1 // 0x00
	map_enum MR_WEATHER_COMP2 // 0x01
	map_enum MR_WEATHER_COMP3 // 0x02

	new_group UNUSED_84 // 0x84

	new_group PAVILION_COMP // 0x85
	map_enum PAVILION_COMP1 // 0x00
	map_enum PAVILION_COMP2 // 0x01
	map_enum PAVILION_COMP3 // 0x02
	map_enum PAVILION_COMP4 // 0x03
	map_enum COPYBOT_COMP // 0x04

	new_group UNUSED_85 // 0x85
	new_group UNUSED_86 // 0x86
	new_group UNUSED_87 // 0x87

	new_group HOMEPAGES // 0x88
	map_enum LAN_HP // 0x00
	map_enum ACDC_HP // 0x01
	map_enum EXTRA_UNUSED1 // 0x02
	map_enum AQUARIUM_HP // 0x03
	map_enum EXTRA_UNUSED2 // 0x04
	map_enum GREEN_HP // 0x05
	map_enum SKY_HP // 0x06

	new_group UNUSED_89 // 0x89
	new_group UNUSED_8A // 0x8A
	new_group UNUSED_8B // 0x8B

	new_group COMPS1 // 0x8C
	map_enum ROBODOG_COMP // 0x00
	map_enum LAB_COMP1 // 0x01
	map_enum CLASS_6_1_COMP // 0x02
	map_enum CLASS_6_2_COMP // 0x03
	map_enum CLASS1_1_COMP // 0x04
	map_enum CLASS1_2_COMP // 0x05
	map_enum BATHROOM_COMP // 0x06
	map_enum ELEVATOR_COMP // 0x07
	map_enum FISH_STICK_SHOP_COMP // 0x08
	map_enum SECURITY_CAMERA_COMP // 0x09
	map_enum BOOK_COMP // 0x0A
	map_enum FAN_COMP // 0x0B
	map_enum AIR_CONDITIONER_COMP // 0x0C
	map_enum HEATER_COMP // 0x0D
	map_enum SHOWER_COMP // 0x0E
	map_enum HELIPORT_COMP // 0x0F

	new_group COMPS_2 // 0x8D
	map_enum LAB_COMP2 // 0x00
	map_enum VENDING_MACHINE_COMP // 0x01
	map_enum PUNISH_CHAIR_COMP // 0x02
	map_enum WATER_MACHINE_COMP // 0x03
	map_enum SYMBOL_COMP // 0x04
	map_enum MONITOR_COMP // 0x05
	map_enum POPCORN_SHOP_COMP // 0x06
	map_enum TEACHER_ROOM_COMP // 0x07
	map_enum PIPE_COMP // 0x08
	map_enum OBSERVATION_COMP // 0x09
	map_enum OXYGEN_TANK_COMP // 0x0A
	map_enum PRINCIPAL_OFFICE_COMP // 0x0B
	map_enum MASCOT_COMP // 0x0C
	map_enum STUFFED_TOY_SHOP_COMP // 0x0D
	map_enum DOG_HOUSE_COMP // 0x0E
	map_enum GUIDE_PANEL_COMP // 0x0F

	new_group UNUSED_8E // 0x8E

	new_group CENTRAL_AREA // 0x90
	map_enum CENTRAL_AREA1 // 0x00
	map_enum CENTRAL_AREA2 // 0x01
	map_enum CENTRAL_AREA3 // 0x02

	new_group SEASIDE_AREA // 0x91
	map_enum SEASIDE_AREA1 // 0x00
	map_enum SEASIDE_AREA2 // 0x01
	map_enum SEASIDE_AREA3 // 0x02

	new_group GREEN_AREA // 0x92
	map_enum GREEN_AREA1 // 0x00
	map_enum GREEN_AREA2 // 0x01

	new_group UNDERGROUND // 0x93
	map_enum UNDERGROUND1 // 0x00
	map_enum UNDERGROUND2 // 0x01

	new_group SKY_ACDC_AREA // 0x94
	map_enum SKY_AREA1 // 0x00
	map_enum SKY_AREA2 // 0x01
	map_enum ACDC_AREA // 0x02

	new_group UNDERNET // 0x95
	map_enum UNDERNET1 // 0x00
	map_enum UNDERNET_ZERO // 0x01
	map_enum UNDERNET2 // 0x02
	map_enum UNDERNET3 // 0x03

	new_group GRAVEYARD_IMMORTAL_AREA // 0x96
	map_enum GRAVEYARD1 // 0x00
	map_enum GRAVEYARD2 // 0x01
	map_enum IMMORTAL_AREA // 0x02
