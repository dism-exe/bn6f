#ifndef game_areas
#define game_areas

/*
To get to the list of all NPC in the area:
For 0x00 maps:
[ [ 0x08034638 + (area * 4) ] + (subarea*4) ]
For 0x80 maps:
[ [ 0x080347E0 + (( area - 0x80 ) * 4) ] + (subarea * 4) ]
00 - ACDC Town
00 = ACDC Town
01 = Class 6-A

01 - Central Town
00 = Central Town
01 = Lan's House
02 = Lan's Room
03 = Bathroom
04 = AsterLand

02 - Cyber Academy
00 = Class 6-1
01 = Class 6-2
02 = Class 1-1
03 = Class 1-2
04 = 1F Hallway
05 = 2F Hallway
06 = Foyer Hall
07 = Teachers' Room
08 = Principal's Office
09 = Research Lab1
0A = Research Lab2

03 - Seaside Town
00 = Seaside Town
01 = Aquarium1
02 = Aquarium2
03 = Auditorium
04 = Control Room

04 - Green Town
00 = Green Town
01 = Court Foyer
02 = Courtroom
03 = Punishment Room
04 = Underground Room

05 - Sky Town
00 = Admin
01 = Sky Town
02 = Operator Room
03 = Force Room

06 - Expo Site
00 = Expo Site
01 = Central Hall
02 = Seaside Hall
03 = Green Hall
04 = Sky Hall
05 = CopyBot Control Room (has no name)

80 - Robot Control Comp
00 = Robot Control Comp1
01 = Robot Control Comp2

81 - Aquarium Comp
00 = Aquarium Comp1
01 = Aquarium Comp2
02 = Aquarium Comp3

82 - JudgeTree Comp
00 = JudgeTree Comp1
01 = JudgeTree Comp2
02 = JudgeTree Comp3

83 - Mr. Weather Comp
00 = Mr. Weather Comp1
01 = Mr. Weather Comp2
02 = Mr. Weather Comp3

85 - Pavilion Comp
00 = Pavilion Comp1
01 = Pavilion Comp2
02 = Pavilion Comp3
03 = Pavilion Comp4
04 = CopyBot Comp

88 - HomePages
00 = Lan's HP
01 = ACDC HP
02 = Extra (unused)
03 = Aquarium HP
04 = Extra (unused)
05 = Green HP
06 = Sky HP

8C - Comps 1
00 = RoboDog Comp
01 = Lab's Comp1
02 = Class 6-1 Comp
03 = Class 6-2 Comp
04 = Class 1-1 Comp
05 = Class 1-2 Comp
06 = Bathroom Comp
07 = Elevator Comp
08 = Fish Stick Shop Comp
09 = Security Camera Comp
0A = Book Comp
0B = Fan Comp
0C = Air Conditioner Comp
0D = Heater Comp
0E = Shower Comp
0F = Heliport Comp

8D - Comps 2
00 = Lab's Comp2
01 = Vending Machine Comp
02 = Punish Chair Comp
03 = Water Machine Comp
04 = Symbol Comp
05 = Monitor Comp
06 = Popcorn Shop Comp
07 = Teachers' Room Comp
08 = Pipe Comp
09 = Observation Comp
0A = Oxygen Tank Comp
0B = Principal's Office Comp
0C = Mascot Comp
0D = Stuffed Toy Shop Comp
0E = Dog House Comp
0F = Guide Panel Comp

90 - Central Area
00 = Central Area1
01 = Central Area2
02 = Central Area3

91 - Seaside Area
00 = Seaside Area1
01 = Seaside Area2
02 = Seaside Area3

92 - Green Area
00 = Green Area1
01 = Green Area2

93 - Underground
00 = Underground1
01 = Underground2

94 - Sky/ACDC Area
00 = Sky Area1
01 = Sky Area2
02 = ACDC Area

95 - Undernet
00 = Undernet1
01 = Undernet Zero
02 = Undernet2
03 = Undernet3

96 - Graveyard/Immortal Area
00 = Graveyard1
01 = Graveyard2
02 = Immortal Area
*/

#endif // game_areas