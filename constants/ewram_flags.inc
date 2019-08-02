// eEventFlags
	// huge buffer of flags
	// bit position is reversed for continuity

		enum_start 0xe0 // 0x1C
	enum EVENT_E0
	enum EVENT_E1
	enum EVENT_E2
	enum EVENT_E3
	enum EVENT_E4
	enum EVENT_E5
	enum EVENT_E6
	enum EVENT_E7

		enum_start 0xf0 // 0x1E
	enum EVENT_F0
	enum EVENT_F1
	enum EVENT_F2
	enum EVENT_F3
	enum EVENT_F4
	enum EVENT_F5
	enum EVENT_F6
	enum EVENT_F7

		enum_start 0x160 // 0x2C
	enum EVENT_160
	enum EVENT_161
	enum EVENT_162
	enum EVENT_163
	enum EVENT_164
	enum EVENT_165
	enum EVENT_166
	enum EVENT_167

		enum_start 0x4e9
	enum EVENT_4E9

		enum_start 0x5df // 0xBC
	enum EVENT_5DF
	enum EVENT_5E0
	enum EVENT_5E1
	enum EVENT_5E2
	enum EVENT_5E3
	enum EVENT_5E4
	enum EVENT_5E5
	enum EVENT_5E6
	enum EVENT_5E7

		enum_start 0x5f0 // 0xBE
	enum EVENT_5F0
	enum EVENT_5F1
	enum EVENT_5F2
	enum EVENT_5F3
	enum EVENT_5F4
	enum EVENT_5F5
	enum EVENT_5F6
	enum EVENT_5F7

		enum_start 0x5f8 // 0x0BF
	enum EVENT_5F8
	enum EVENT_5F9
	enum EVENT_5FA
	enum EVENT_5FB
	enum EVENT_5FC
	enum EVENT_5FD
	enum EVENT_5FE
	enum EVENT_5FF


		enum_start 0x67f
	enum EVENT_67F
	enum EVENT_680
	enum EVENT_681

		enum_start 0x1700 // [0x2E0] = 0x2001f68
	enum EVENT_1700
	// disables object animation/translation and collisions
	enum EVENT_NPC_OBJECTS_DISABLED
	// applies to portals and battle animation
	enum EVENT_NON_NPC_ANIMATION_LOCKED
	enum EVENT_1703
	enum EVENT_1704
	enum EVENT_1705
	enum EVENT_PET_COMM_SAVE_DISABLED
	enum EVENT_PET_DISABLED
		// [0x2E1] = 0x2001f69
	enum EVENT_1708
	enum EVENT_1709
	enum EVENT_170A
	enum EVENT_170B
	enum EVENT_170C
	enum EVENT_170D
	enum EVENT_170E
	enum EVENT_170F
		// [0x2E2] = 0x2001f6a
	enum EVENT_1710
	enum EVENT_1711
	enum EVENT_1712
	enum EVENT_1713
	enum EVENT_PLAYER_CAN_MOVE
	// if 0, npc resets to default position after talking
	// else they remain in the direction that was facing the player
	enum EVENT_EVENT_CUR_DIR_LOCKED
	enum EVENT_1716 // constantly written
	enum EVENT_1717_PLAYER_ADVANCE_FORWARD
		// [0x2E3] = 0x2001f6b
	// activates when pressing L, jacking in,
	// and talking to objects (but not NPCs?)
	// otherwise constantly cleared
	enum EVENT_1718
	enum EVENT_1719
	enum EVENT_171A
	enum EVENT_171B
	enum EVENT_171C
	// MegaMan disappears from PET, HP becomes 0/0
	enum EVENT_PET_NAVI_ACTIVE
	enum EVENT_171E
	enum EVENT_171F
		// enum_start 0x1720 // 0x2E4
	enum EVENT_1720
	enum EVENT_1721
	enum EVENT_1722
	enum EVENT_1723
	enum EVENT_1724
	enum EVENT_1725
	enum EVENT_1726
	enum EVENT_1727
	// applies on map update (like after closing a submenu)
		// 0x2E5
	enum EVENT_L_MESSAGE_ACTIVE
	// when enabled, Lan's sprite is replaced with MegaMan
	enum EVENT_COPYBOT_ACTIVE
	enum EVENT_172A
	enum EVENT_172B
	enum EVENT_172C
	enum EVENT_172D
	enum EVENT_172E
	enum EVENT_172F
		// 0x2E6
	enum EVENT_1730
	enum EVENT_1731
	enum EVENT_1732
	enum EVENT_1733
	enum EVENT_1734
	enum EVENT_1735
	enum EVENT_1736
	enum EVENT_1737
		// 0x2E7
	enum EVENT_1738
	enum EVENT_1739
	enum EVENT_173A
	enum EVENT_173B
	enum EVENT_173C
	enum EVENT_173D
	enum EVENT_173E
	enum EVENT_173F
		// 0x2E8
	enum EVENT_1740
	enum EVENT_1741
	enum EVENT_1742
	enum EVENT_1743
	enum EVENT_1744
	enum EVENT_1745
	enum EVENT_1746
	enum EVENT_1747



// eFlags2009F38
