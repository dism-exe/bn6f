#include "types.h"

extern void SetEventFlag_c(u32 flag);

#define EVENT_PLAYER_CAN_MOVE 0x1714u

void SetPlayerCanMoveEventFlag_c(void)
{
    SetEventFlag_c(EVENT_PLAYER_CAN_MOVE);
}
