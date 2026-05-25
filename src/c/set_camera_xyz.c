#include "EWRAM.h"

void SetCameraXYZ_c(u32 x, u32 y, u32 z)
{
    Camera *cam = eToolkit->CameraPtr;
    cam->X = x;
    cam->Y = y;
    cam->Z = z;
}
