// eEventFlags
    // huge buffer of flags
    // bit position is reversed for continuity

        enum_start 0x05e0 // 0x0BC
    enum EVENT_0BC_FLAG7
    enum EVENT_0BC_FLAG5
    enum EVENT_0BC_FLAG4
    enum EVENT_0BC_FLAG3
    enum EVENT_0BC_FLAG2
    enum EVENT_0BC_FLAG1
    enum EVENT_0BC_FLAG0

        enum_start 0x1718 // 0x2E3
    // activates when pressing L, jacking in,
    // and talking to objects (but not NPCs?)
    // otherwise constantly cleared
    enum EVENT_2E3_FLAG7
    enum EVENT_2E3_FLAG6
    enum EVENT_2E3_FLAG5
    enum EVENT_2E3_FLAG4
    enum EVENT_2E3_FLAG3
    // MegaMan disappears from PET, HP becomes 0/0
    enum EVENT_PET_NAVI_ACTIVE
    enum EVENT_2E3_FLAG1
    enum EVENT_2E3_FLAG0
        enum_start 0x1720 // 0x2E4
    enum EVENT_2E4_FLAG7
    enum EVENT_2E4_FLAG6
    enum EVENT_2E4_FLAG5
    enum EVENT_2E4_FLAG4
    enum EVENT_2E4_FLAG3
    enum EVENT_2E4_FLAG2
    enum EVENT_2E4_FLAG1
    enum EVENT_2E4_FLAG0
    // applies on map update (like after closing a submenu)
        enum_start 0x1728 // 0x2E5
    enum EVENT_2E5_L_MESSAGE_ACTIVE
    // when enabled, Lan's sprite is replaced with MegaMan
    enum EVENT_COPYBOT_ACTIVE
    enum EVENT_2E5_FLAG5
    enum EVENT_2E5_FLAG4
    enum EVENT_2E5_FLAG3
    enum EVENT_2E5_FLAG2
    enum EVENT_2E5_FLAG1
    enum EVENT_2E5_FLAG0


// eFlags2009F38
