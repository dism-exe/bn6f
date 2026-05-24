#include "types.h"

// Toolkit.GameStatePtr at toolkit + 0x3c -> 0x020093EC.
// GameState.SubsystemIndex at offset 0x0.
#define eToolkit_GameStatePtr (*(u8 **)0x020093ECu)

extern void sub_8005EEC_c(u32 warp_data_ptr, u32 warp_index, u8 transition_type);
extern void sub_8035738_c(void);

void warp_setSubsystemIndexTo0x10AndOthers_8005f00_c(u32 warp_data_ptr, u32 warp_index, u8 transition_type)
{
    sub_8005EEC_c(warp_data_ptr, warp_index, transition_type);
    eToolkit_GameStatePtr[0] = 0x10;
    sub_8035738_c();
}
