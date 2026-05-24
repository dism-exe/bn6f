#include "EWRAM.h"

extern void sub_8005EEC_c(u32 warp_data_ptr, u32 warp_index, u8 transition_type);
extern void sub_8035738_c(void);

void warp_setSubsystemIndexTo0x10AndOthers_8005f00_c(u32 warp_data_ptr, u32 warp_index, u8 transition_type)
{
    sub_8005EEC_c(warp_data_ptr, warp_index, transition_type);
    eToolkit->GameStatePtr->SubsystemIndex = 0x10;
    sub_8035738_c();
}
