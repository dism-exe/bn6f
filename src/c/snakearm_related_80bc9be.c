#include "EWRAM.h"

/* On `obj`: if obj != NULL AND obj[9] != 8: obj[16] = 2; obj[9] = 8. */
void snakearmRelated_setAnim2CurAction8IfCurActionNot8_80BC9BE_c(u8 *obj)
{
    if (obj != 0 && obj[9] != 8) {
        obj[16] = 2;
        obj[9]  = 8;
    }
}
