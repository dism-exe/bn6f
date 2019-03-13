// eEventFlags
    // since a huge usage of this is the following:
    // r0[15:3] = event byte offset
    // r0[2:0] = event bit offset
    // 0x2001C88 + 32*r0 + (r1>>3) is the byte address
    // bits are reversed, so bit X is set to 7-X
    // this is3broken into a grouping of 32 byte groups

    .equiv EVENT_G17, 0x17 // 0x2001f68
        .equiv EVENT_G17_B3, 0x18 // 0x2001f6b
            // activates when pressing L, jacking in,
            // and talking to objects (but not NPCs?)
            // otherwise constantly cleared
            .equiv EVENT_G17_B3_FLAG7, EVENT_G17_B3 | 7-7
            // MegaMan disappears from PET, HP becomes 0/0
            .equiv EVENT_G17_NAVI_ACTIVE, EVENT_G17_B3 | 7-2

        .equiv EVENT_G17_B4, 0x20 // 0x2001f6c
            .equiv EVENT_G17_B4_FLAG7, EVENT_G17_B4 | 7-7

        // applies on map update (like after closing a submenu)
        .equiv EVENT_G17_B5, 0x28 // 0x2001f6d
            .equiv EVENT_G17_L_MESSAGE_ACTIVE, EVENT_G17_B5 | 7-7
            // when enabled, Lan's sprite is replaced with MegaMan
            .equiv EVENT_G17_COPYBOT_ACTIVE, EVENT_G17_B5 | 7-6
            .equiv EVENT_G17_B5_FLAG5, EVENT_G17_B5 | 7-5
            .equiv EVENT_G17_B5_FLAG1, EVENT_G17_B5 | 7-1
            .equiv EVENT_G17_B5_FLAG0, EVENT_G17_B5 | 7-0



// eFlags2009F38
