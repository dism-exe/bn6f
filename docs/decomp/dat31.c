// 0x810c448
int sub_810C448()
{
    unsigned __int8 *v0; // r7

    return (*(&off_810C45C + *v0))();
}


// 0x810c46c
void sub_810C46C()
{
    Battle *v0; // r5
    int v1; // r7
    char v2; // zf
    int v3; // r1
    int v4; // r2

    if ( *(v1 + 1) )
    {
        if ( sprite_getFrameParameters() & 0x80 )
            *v1 = 4;
    }
    else
    {
        object_canMove(*(v1 + 1));
        if ( v2 )
        {
            object_exitAttackState(v0);
        }
        else
        {
            *(v1 + 1) = 1;
            object_setFlag1(64);
            object_setFlag1(0x400000);
            PlaySoundEffect(201, v3, v4);
            object_setCounterTime(30);
            v0->currAnimation = 1;
        }
    }
}


// 0x810c4b4
signed int sub_810C4B4()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r1
    int v3; // r0
    int v4; // r4
    int v5; // r1
    int v6; // r6
    signed int result; // r0

    v0->currAnimation = 2;
    v2 = v0->panelY;
    v3 = object_getCoordinatesForPanels(v0->panelX);
    v4 = ((v0->Alliance ^ v0->directionFlip) << 8) + 97;
    spawn_t1_0x0_EffectObject(v0, v3, v3, v5, 0);
    v6 = *(v1 + 8);
    sub_80CB8DE(v0->panelX, v0->panelY, 0, 0x100000);
    result = 8;
    *v1 = 8;
    return result;
}


// 0x810c4ee
int sub_810C4EE()
{
    int v0; // r5
    _WORD *v1; // r7
    int result; // r0

    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        *(v0 + 16) = 3;
        result = 12;
        *v1 = 12;
    }
    return result;
}


// 0x810c508
void sub_810C508()
{
    Battle *v0; // r5

    if ( sprite_getFrameParameters() & 0x80 )
    {
        v0->currAnimation = 0;
        object_clearFlag(64);
        object_exitAttackState(v0);
    }
}


// 0x810c524
int sub_810C524()
{
    unsigned __int8 *v0; // r7

    return (*(&off_810C538 + *v0))();
}


// 0x810c544
void __fastcall sub_810C544(int a1)
{
    Battle *v1; // r5
    int v2; // r7
    int v3; // r1
    int v4; // r2
    int v6; // r0
    int v7; // r0
    char v8; // r1
    int v9; // r0
    int v10; // r1
    int v11; // r0
    int v12; // r1
    int v13; // ST04_4
    unsigned int v14; // r1

    object_canMove(a1);
    if ( _ZF || (v6 = PlaySoundEffect(200, v3, v4), object_updateCollisionData(v6, 53, 2, 3), (v7 = (*(v2 + 40))(*(v2 + 44))) == 0) )
    {
        *(v2 + 26) = 0;
        object_exitAttackState(v1);
    }
    else
    {
        *(v2 + 22) = v7;
        *(v2 + 23) = v8;
        if ( v7 == 5 * (v1->Alliance ^ 1) + 1 || object_getPanelParameters(*(v2 + 22), *(v2 + 23)) & 0xF880080 )
        {
            v9 = v1->panelX;
            v1->futurePanelX = v9;
            v10 = v1->panelY;
            v1->futurePanelY = v10;
            object_reservePanel(v9, v10);
            *v2 = 8;
        }
        else
        {
            v11 = *(v2 + 22);
            v1->futurePanelX = v11;
            v12 = *(v2 + 23);
            v1->futurePanelY = v12;
            object_reservePanel(v11, v12);
            *v2 = 4;
        }
        object_setFlag1(64);
        if ( (object_getPanelParameters(v1->futurePanelX, v1->futurePanelY) & 0x20) != 32 * v1->Alliance )
            object_setPanelAlliance(v1->futurePanelX, v1->futurePanelY, v1->Alliance);
        v13 = *(v2 + 22) - v1->panelX;
        v14 = *(v2 + 48);
        *(v2 + 16) = v14;
        *(v2 + 18) = v14 >> 1;
        __asm { SVC         6 }
        v1->vx = 2621440 * v13;
        v1->currAnimation = 4;
    }
}


// 0x810c604
void sub_810C604()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    unsigned __int8 v3; // vf
    int v4; // r0
    int v5; // r1

    if ( *(*(v0 + 84) + 112) & 0xC000000 )
    {
        *(v1 + 60) = *(v0 + 18);
        object_clearCollisionRegion();
    }
    if ( *(v0 + 18) != *(v1 + 60) )
        object_setCollisionRegion(1);
    *(v0 + 52) += *(v0 + 64);
    if ( *(v1 + 16) == *(v1 + 18) )
    {
        object_setPanelsFromCoordinates(v0);
        object_updateCollisionPanels(v0);
    }
    v2 = *(v1 + 16);
    v3 = __OFSUB__(v2--, 1);
    *(v1 + 16) = v2;
    if ( (v2 < 0) ^ v3 )
    {
        v4 = *(v0 + 20);
        *(v0 + 18) = v4;
        v5 = *(v0 + 21);
        *(v0 + 19) = v5;
        object_removePanelReserve(v4, v5);
        object_setCoordinatesFromPanels(v0);
        object_updateCollisionPanels(v0);
        object_clearFlag(64);
        object_setFlag1(0x80000);
        object_setCollisionRegion(1);
        *(v1 + 26) = 1;
        *(v0 + 16) = 0;
        object_updateCollisionData(0, 1, 2, 3);
        object_exitAttackState(v0);
    }
}


// 0x810c686
int sub_810C686()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int result; // r0

    if ( *(*(v0 + 84) + 112) & 0xC000000 )
    {
        *(v1 + 60) = *(v0 + 18);
        object_clearCollisionRegion();
    }
    if ( *(v0 + 18) != *(v1 + 60) )
        object_setCollisionRegion(1);
    *(v0 + 52) += *(v0 + 64);
    v2 = *(v1 + 16);
    if ( v2 == *(v1 + 18) )
    {
        *(v1 + 16) = v2 + 1;
        object_setPanelsFromCoordinates(v0);
        object_updateCollisionPanels(v0);
        PlaySoundEffect(200, v3, v4);
        *(v0 + 64) = -*(v0 + 64);
        result = 4;
        *v1 = 4;
    }
    else
    {
        result = *(v1 + 16) - 1;
        *(v1 + 16) = result;
    }
    return result;
}


// 0x810c720
int sub_810C720()
{
    int v0; // r5

    *(*(v0 + 84) + 7) = 10;
    return sub_80165B8();
}


// 0x810c72e
int sub_810C72E()
{
    int v0; // r5

    return (*(&off_810C748 + *(*(v0 + 88) + 128)))();
}


// 0x810c754
signed int sub_810C754()
{
    int v0; // r4
    _BYTE *v1; // r6
    int v2; // r7
    signed int result; // r0

    *(v2 + 16) = byte_810C770[*(v0 + 22)];
    object_setAttack0();
    result = 4;
    *v1 = 4;
    return result;
}


// 0x810c776
int sub_810C776()
{
    int v0; // r4
    int v1; // r5
    _BYTE *v2; // r6
    int v3; // r7
    int result; // r0
    __int16 v5; // r0
    char v6; // r2

    *(v1 + 96) = 0;
    result = sub_810C820();
    if ( !result )
    {
        *(v3 + 40) = sub_810C850;
        v5 = object_getFlag();
        v6 = 0;
        if ( v5 & 0xA000 )
            v6 = 1;
        *(v3 + 48) = byte_810C7B0[*(v0 + 22)] << v6;
        object_setAttack0();
        result = 8;
        *v2 = 8;
    }
    return result;
}


// 0x810c7b6
signed int sub_810C7B6()
{
    int v0; // r4
    int v1; // r5
    _BYTE *v2; // r6
    _WORD *v3; // r7
    signed int result; // r0
    __int16 v5; // r0
    char v6; // r2

    if ( *(v1 + 96) || FindBattleActorsWithNonzeroParam_ReturnCountAndSum(96, 37, 42) )
    {
        *(v1 + 16) = 0;
        v5 = object_getFlag();
        v6 = 0;
        if ( v5 & 0xA000 )
            v6 = 1;
        v3[8] = byte_810C814[*(v0 + 22)] << v6;
        object_setAttack0();
        result = 4;
        *v2 = 4;
    }
    else
    {
        v3[4] = byte_810C81A[*(v0 + 22)];
        v3[5] = 10;
        object_setAttack0();
        result = 1;
        *(v1 + 96) = 1;
    }
    return result;
}


// 0x810c820
signed int sub_810C820()
{
    int v0; // r5
    signed int v1; // r6
    __int16 v2; // r0
    int v3; // r3
    int v4; // r4

    v1 = 0;
    v2 = sub_800ED90(v0);
    if ( v3 )
    {
        v4 = v2 & 0x1FF;
        if ( sub_800A704() >= byte_12C )
        {
            somethingWriteChipParams_80126E4(v4);
            object_setAttack0();
            sub_800F322();
            v1 = 1;
        }
    }
    return v1;
}


// 0x810c850
int sub_810C850()
{
    Battle *v0; // r5
    int result; // r0
    int v2; // r0
    int v3; // r2
    int v4; // r0
    int v5; // ST00_4
    int v6; // r1
    int v7; // r2
    int v8; // r3
    bool v9; // zf
    int v10; // r0
    int v11; // r2
    int v12; // r0
    int v13; // ST00_4
    int v14; // r1
    int v15; // r2
    int v16; // r3

    if ( object_getFlag() & 0x4000 )
        return 0;
    v2 = object_getFrontDirection(v0);
    sub_81096FA(v2 + v0->panelX, v0->panelY, v3, byte_810C8B0);
    v5 = v4;
    v9 = object_checkPanelParameters(v4, v6, v7, v8) == 0;
    result = v5;
    if ( v9 )
    {
        v10 = object_getFrontDirection(v0);
        sub_81096FA(v0->panelX - v10, v0->panelY, v11, byte_810C8B0);
        v13 = v12;
        v9 = object_checkPanelParameters(v12, v14, v15, v16) == 0;
        result = v13;
        if ( v9 )
            result = 0;
    }
    return result;
}


// 0x810c9b8
int sub_810C9B8()
{
    unsigned __int8 *v0; // r7

    return (*(&off_810C9CC + *v0))();
}


// 0x810c9f4
void __fastcall sub_810C9F4(int a1)
{
    Battle *v1; // r5
    int v2; // r7
    char v3; // zf
    int v4; // r0
    int v5; // r1
    signed __int16 v6; // r0

    object_canMove(a1);
    if ( v3 )
    {
        object_exitAttackState(v1);
    }
    else
    {
        object_setFlag1(64);
        *(v2 + 1) = 1;
        object_setFlag1(0x400000);
        v4 = v1->panelX;
        v1->futurePanelX = v4;
        v5 = v1->panelY;
        v1->futurePanelY = v5;
        object_reservePanel(v4, v5);
        spawn_t1_0x0_EffectObject(v1, &v1->vx, v1->x, v1->y, v1->z + 0x100000);
        object_clearCollisionRegion();
        sub_801DD34();
        v6 = *(v2 + 13) - 10;
        if ( *(v2 + 13) - 10 <= 0 )
            v6 = 1;
        *(v2 + 16) = v6;
        *v2 = 4;
    }
}


// 0x810ca4c
int sub_810CA4C()
{
    _BYTE *v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r0
    int v4; // r1
    int result; // r0

    v2 = *(v1 + 16) - 1;
    *(v1 + 16) = v2;
    if ( !v2 )
    {
        v3 = (*(v1 + 40))(*(v1 + 44));
        if ( v3 && (*(v1 + 22) = v3, *(v1 + 23) = v4, v3) )
        {
            object_reservePanel(v3, v4);
            *(v1 + 16) = 13;
            *v1 = 8;
        }
        else
        {
            v0[16] = 0;
            *(v1 + 16) = 5;
            *v1 = 32;
        }
    }
    result = *v0 & 0xFD;
    *v0 = result;
    return result;
}


// 0x810ca8e
int sub_810CA8E()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r1
    int v3; // r0
    int v4; // r1
    int result; // r0

    if ( *(v1 + 16) == 3 )
    {
        v2 = *(v1 + 23);
        v3 = object_getCoordinatesForPanels(*(v1 + 22));
        spawn_t1_0x0_EffectObject(v0, v3, v3, v4, 0x100000);
    }
    v0->objFlags &= 0xFDu;
    result = *(v1 + 16) - 1;
    *(v1 + 16) = result;
    if ( !result )
    {
        if ( !object_checkPanelParameters(*(v1 + 22), *(v1 + 23), 16, 260046848) )
        {
            object_removePanelReserve(*(v1 + 22), *(v1 + 23));
            JUMPOUT(*byte_810CAD4);
        }
        v0->panelX = *(v1 + 22);
        v0->panelY = *(v1 + 23);
        object_setCoordinatesFromPanels(v0);
        object_updateCollisionPanels(v0);
        v0->currAnimation = 1;
        *(v1 + 16) = *(v1 + 12);
        object_setCollisionRegion(1);
        sub_801DC7C(0, 0);
        object_setCounterTime(16);
        result = 12;
        *v1 = 12;
    }
    return result;
}


// 0x810cb14
int sub_810CB14()
{
    _WORD *v0; // r7
    int v1; // r0
    int result; // r0

    v1 = v0[8];
    result = v1 - 1;
    v0[8] = result;
    if ( !result )
    {
        result = 16;
        *v0 = 16;
    }
    return result;
}


// 0x810cb2a
int sub_810CB2A()
{
    int v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r1
    int v4; // r2
    int result; // r0
    signed __int16 v6; // r0

    if ( !*(v1 + 1) )
    {
        *(v1 + 1) = 1;
        *(v0 + 16) = 2;
        *(v1 + 16) = 0;
    }
    v2 = *(v1 + 16) + 1;
    *(v1 + 16) = v2;
    if ( v2 == 3 )
    {
        *(v1 + 3);
        sub_810CD38();
        PlaySoundEffect(237, v3, v4);
    }
    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
        v6 = 3;
        if ( *(v1 + 3) == 2 )
            v6 = 7;
        *(v1 + 16) = v6;
        result = 20;
        *v1 = 20;
    }
    return result;
}


// 0x810cb78
int sub_810CB78()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0
    int v3; // r1
    int v4; // r0
    int v5; // r0
    int v6; // r1
    int result; // r0
    int v8; // r0
    int v9; // r1

    if ( *(v1 + 16) == 3 )
    {
        v2 = (*(v1 + 48))(*(v1 + 44));
        if ( v2 )
        {
            *(v1 + 22) = v2;
            *(v1 + 23) = v3;
            object_reservePanel(v2, v3);
        }
        v4 = *(v1 + 22);
        if ( v4 != v0->panelX || *(v1 + 23) != v0->panelY )
        {
            v5 = object_getCoordinatesForPanels(v4);
            spawn_t1_0x0_EffectObject(v0, v5, v5, v6, 0x100000);
        }
    }
    result = *(v1 + 16) - 1;
    *(v1 + 16) = result;
    if ( !result )
    {
        if ( *(v1 + 22) != v0->panelX || *(v1 + 23) != v0->panelY )
            spawn_t1_0x0_EffectObject(v0, &v0->vx, v0->x, v0->y, v0->z + 0x100000);
        v8 = v0->panelX;
        v9 = v0->panelY;
        if ( v8 != *(v1 + 22) || v9 != *(v1 + 23) )
            object_removePanelReserve(v8, v9);
        v0->panelX = *(v1 + 22);
        v0->panelY = *(v1 + 23);
        object_setCoordinatesFromPanels(v0);
        object_updateCollisionPanels(v0);
        result = 24;
        *v1 = 24;
    }
    return result;
}


// 0x810cc0a
int sub_810CC0A()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    int v3; // r0
    int v4; // r1
    int v5; // r2

    if ( !*(v1 + 1) )
    {
        if ( *(v1 + 3) > 1 )
        {
            *(v1 + 1) = 1;
            *(v0 + 16) = 4;
            result = 0;
            *(v1 + 16) = 0;
            return result;
        }
        goto LABEL_7;
    }
    v3 = *(v1 + 16) + 1;
    *(v1 + 16) = v3;
    if ( v3 == 5 )
    {
        sub_810CD38();
        PlaySoundEffect(238, v4, v5);
    }
    result = sprite_getFrameParameters();
    if ( result & 0x80 )
    {
LABEL_7:
        *(v0 + 16) = 0;
        *(v1 + 16) = *(v1 + 24);
        result = 28;
        *v1 = 28;
    }
    return result;
}


// 0x810cc54
int sub_810CC54()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r1
    int v3; // r0
    int v4; // r1
    int result; // r0

    if ( *(v1 + 16) == 3 && (v0->futurePanelX != v0->panelX || v0->futurePanelY != v0->panelY) )
    {
        v2 = v0->futurePanelY;
        v3 = object_getCoordinatesForPanels(v0->futurePanelX);
        spawn_t1_0x0_EffectObject(v0, v3, v3, v4, 0x100000);
    }
    result = *(v1 + 16) - 1;
    *(v1 + 16) = result;
    if ( !result )
    {
        if ( v0->futurePanelX != v0->panelX || v0->futurePanelY != v0->panelY )
            spawn_t1_0x0_EffectObject(v0, &v0->vx, v0->x, v0->y, v0->z + 0x100000);
        object_removePanelReserve(v0->panelX, v0->panelY);
        JUMPOUT(*byte_810CCB4);
    }
    return result;
}


// 0x810ccdc
int sub_810CCDC()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r1
    int v3; // r0
    int v4; // r1
    int result; // r0

    if ( *(v1 + 16) == 3 )
    {
        v2 = v0->panelY;
        v3 = object_getCoordinatesForPanels(v0->panelX);
        spawn_t1_0x0_EffectObject(v0, v3, v3, v4, 0x100000);
    }
    v0->objFlags &= 0xFDu;
    result = *(v1 + 16) - 1;
    *(v1 + 16) = result;
    if ( !result )
    {
        object_clearFlag(64);
        object_setFlag1(0x80000);
        object_removePanelReserve(v0->futurePanelX, v0->futurePanelY);
        JUMPOUT(*byte_810CD20);
    }
    return result;
}


// 0x810cd38
int sub_810CD38()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r6
    char v3; // r0

    v2 = *(v1 + 8);
    v3 = object_getFrontDirection(v0);
    return object_spawnCollisionRegion(v3 + v0->panelX, v0->panelY, 1, 0x100000);
}


// 0x810cdc0
int sub_810CDC0()
{
    int v0; // r5
    int v1; // r6
    int v2; // r7
    char v3; // r0
    int v4; // r1
    char v5; // r0

    if ( !*(v0 + 10) )
    {
        *(v2 + 26) = 1;
        v3 = 0;
        v4 = *(v0 + 19);
        if ( v4 != 3 )
        {
            v3 = 1;
            if ( v4 != 1 )
            {
                GetPositiveSignedRNG();
                v3 = v5 & 1;
            }
        }
        *(v1 + 6) = v3;
    }
    return sub_80165B8();
}


// 0x810ceae
int __fastcall sub_810CEAE(int a1)
{
    Battle *v1; // r5
    int v2; // r7
    int v3; // r0
    int v4; // r2
    int v5; // r0
    int result; // r0
    char v7; // t1
    int v8; // r1
    int v9; // r2
    int v10; // r0
    int v11; // ST00_4
    int v12; // r1
    int v13; // r2
    int v14; // r3
    bool v15; // zf
    int v16; // r0
    int v17; // r1
    int v18; // r2
    int v19; // r3
    int v20; // [sp+0h] [bp-Ch]

    v20 = a1;
    v3 = object_getFlag();
    if ( v3 & 0x4000 )
        return 0;
    v5 = v3 | *(v2 + 56);
    if ( v5 & 0x2000 )
        return 0;
    if ( v5 & 0x8000 )
    {
        sub_81096FA(v5, 0x8000, v4, byte_810CFC0);
        sub_8015C94(v16, v17, v18, v19);
    }
    result = *(v20 + 18) - object_getFrontDirection(v1);
    v7 = *(v20 + 19);
    v8 = v1->panelY;
    v9 = v1->panelX;
    if ( result != v9 || (v9 = v1->panelY, v8 != v9) )
    {
        sub_81096FA(result, v8, v9, byte_810CFAC);
        v11 = v10;
        v15 = object_checkPanelParameters(v10, v12, v13, v14) == 0;
        result = v11;
        if ( v15 )
            result = 0;
    }
    return result;
}


// 0x810cf46
void sub_810CF46()
{
    ;
}


// 0x810d118
int sub_810D118()
{
    int v0; // r5
    int v1; // r0

    v1 = *(v0 + 10);
    if ( !*(v0 + 10) )
    {
        v1 = *(v0 + 96);
        if ( v1 )
            v1 = sub_80E5410(v1);
    }
    return sub_80165C2(v1);
}


// 0x810d130
int sub_810D130()
{
    int v0; // r5

    return (*(&off_810D148 + *(*(v0 + 88) + 128)))();
}


// 0x810d150
int sub_810D150()
{
    int v0; // r4
    int v1; // r5
    int v2; // r6
    int v3; // r4
    int result; // r0

    v3 = *(v0 + 22) & 1;
    *(v1 + 96) = sub_80E532C();
    *v2 = 4;
    result = 0;
    *(v2 + 2) = 0;
    return result;
}


// 0x810d168
void sub_810D168()
{
    ;
}


// 0x810d258
int sub_810D258()
{
    unsigned __int8 *v0; // r7

    return (*(&off_810D26C + *v0))();
}


// 0x810d280
void __fastcall sub_810D280(int a1)
{
    Battle *v1; // r5
    int v2; // r7
    char v3; // zf
    char *v4; // r0
    int v5; // r2
    int v6; // r3
    int v7; // r0
    int v8; // r1

    object_canMove(a1);
    if ( v3 || (v4 = &byte_810D2D4[8 * v1->Alliance], v5 = *v4, v6 = *(v4 + 1), (v7 = (*(v2 + 40))(*(v2 + 44))) == 0) )
    {
        *(v2 + 26) = 0;
        object_exitAttackState(v1);
    }
    else
    {
        v1->futurePanelX = v7;
        v1->futurePanelY = v8;
        object_reservePanel(v7, v8);
        object_setFlag1(64);
        object_setFlag1(0x400000);
        v1->currAnimation = 1;
        *(v2 + 16) = 12;
        *v2 = 4;
    }
}


// 0x810d2e4
int sub_810D2E4()
{
    Battle *v0; // r5
    _WORD *v1; // r7
    int v2; // r1
    int v3; // r0
    int v4; // r1
    int result; // r0
    int v6; // r0
    int v7; // r1

    if ( v1[8] == 3 )
    {
        v2 = v0->futurePanelY;
        v3 = object_getCoordinatesForPanels(v0->futurePanelX);
        spawn_t1_0x0_EffectObject(v0, v3, v3, v4, 0x100000);
    }
    result = v1[8] - 1;
    v1[8] = result;
    if ( !result )
    {
        spawn_t1_0x0_EffectObject(v0, &v0->vx, v0->x, v0->y, v0->z + 0x100000);
        v6 = v0->futurePanelX;
        v0->panelX = v6;
        v7 = v0->futurePanelY;
        v0->panelY = v7;
        object_removePanelReserve(v6, v7);
        object_setCoordinatesFromPanels(v0);
        object_updateCollisionPanels(v0);
        object_clearFlag(64);
        object_setFlag1(0x80000);
        v0->currAnimation = 3;
        v1[8] = 30;
        result = 8;
        *v1 = 8;
    }
    return result;
}


// 0x810d34c
int sub_810D34C()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    if ( *(v1 + 16) == 10 )
        object_setCounterTime(20);
    result = *(v1 + 16) - 1;
    *(v1 + 16) = result;
    if ( !result )
    {
        *(v0 + 16) = 4;
        *(v1 + 16) = *(v1 + 24);
        *(v1 + 18) = 0;
        *(v1 + 48) = 1;
        result = 12;
        *v1 = 12;
    }
    return result;
}


// 0x810d378
int sub_810D378()
{
    int v0; // r5
    int v1; // r7
    int v2; // r2
    int v3; // r0
    int result; // r0

    (*(&off_810D3B8 + *(v1 + 3)))();
    v3 = *(v1 + 48) - 1;
    *(v1 + 48) = v3;
    if ( !v3 )
    {
        *(v1 + 48) = 64;
        PlaySoundEffect(*&byte_810D3DE[2 * *(v1 + 3)], byte_810D3DE, v2);
    }
    result = *(v1 + 16) - 1;
    *(v1 + 16) = result;
    if ( !result )
    {
        *(v0 + 16) = 0;
        *(v1 + 16) = 40;
        result = 16;
        *v1 = 16;
    }
    return result;
}


// 0x810d3ea
_DWORD *sub_810D3EA()
{
    int v0; // r7
    _DWORD *result; // r0

    if ( *(v0 + 16) == 1 )
    {
        sub_810D4E8();
        result = *(v0 + 56);
        *result = 0;
    }
    else
    {
        result = *(v0 + 1);
        if ( !*(v0 + 1) )
        {
            *(v0 + 1) = 1;
            sub_810D4BA();
            result = *(v0 + 56);
            *result = 1;
        }
    }
    return result;
}


// 0x810d414
int __fastcall sub_810D414(int a1, int a2, int a3, int a4)
{
    return sub_810D476(35, a2, a3, a4);
}


// 0x810d41e
int __fastcall sub_810D41E(int a1, int a2, int a3, int a4)
{
    int v4; // r7
    int v5; // r0

    v5 = *(v4 + 18) + 1;
    *(v4 + 18) = v5;
    if ( v5 == 1 )
    {
        camera_initShakeEffect_80302a8(3, 18);
    }
    else if ( v5 >= 22 )
    {
        *(v4 + 18) = 0;
    }
    return sub_810D476(67, a2, a3, a4);
}


// 0x810d444
int __fastcall sub_810D444(int a1, int a2, int a3, int a4)
{
    return sub_810D476(51, a2, a3, a4);
}


// 0x810d44e
int sub_810D44E()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    result = *(v1 + 1);
    if ( !*(v1 + 1) )
    {
        result = *(v1 + 16);
        if ( result == 25 )
        {
            *(v0 + 11) = 1;
            result = sub_810D516();
        }
    }
    return result;
}


// 0x810d466
void sub_810D466()
{
    Battle *v0; // r5
    int v1; // r7
    int v2; // r0

    v2 = *(v1 + 16) - 1;
    *(v1 + 16) = v2;
    if ( !v2 )
        object_exitAttackState(v0);
}


// 0x810d476
int __fastcall sub_810D476(int a1, int a2, int a3, int a4)
{
    int v4; // r5
    int v5; // r4

    v5 = 755040133 - *(v4 + 22);
    return object_spawnCollisionRegion(1, 1, *(v4 + 14), a4);
}


// 0x810d498
int __fastcall sub_810D498(_DWORD *a1)
{
    int v1; // r5
    _DWORD *v2; // r4
    int v3; // r0

    v2 = a1;
    v3 = object_getEnemyByNameRange(a1, 1, 54, *(v1 + 22));
    return object_getEnemyByNameRange(&v2[v3], 61, &loc_184, *(v1 + 22)) + v3;
}


// 0x810d4ba
int sub_810D4BA()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    int v3; // r2
    signed int v4; // r1
    int *v5; // r3
    int v6; // ST00_4
    signed int v7; // ST04_4
    int v8; // ST08_4
    int *v9; // ST0C_4
    int v10; // ST10_4
    int v11; // r5
    int v12; // [sp+0h] [bp-24h]

    result = sub_810D498(&v12);
    if ( result )
    {
        v4 = 1;
        *(v1 + 52) = 1;
        v5 = &v12;
        do
        {
            v6 = result;
            v7 = v4;
            v8 = v3;
            v9 = v5;
            v10 = v0;
            v11 = *v5;
            object_setInvulnerableTime(0xFFFF);
            v4 = v7;
            v3 = v8;
            v0 = v10;
            v5 = v9 + 1;
            result = v6 - 1;
        }
        while ( v6 != 1 );
    }
    return result;
}


// 0x810d4e8
int sub_810D4E8()
{
    int v0; // r5
    int v1; // r7
    int result; // r0
    int v3; // r1
    int v4; // r2
    int *v5; // r3
    int v6; // ST00_4
    int v7; // ST04_4
    int v8; // ST08_4
    int *v9; // ST0C_4
    int v10; // ST10_4
    int v11; // r5
    int v12; // [sp+0h] [bp-24h]

    result = *(v1 + 52);
    if ( result )
    {
        *(v1 + 52) = 0;
        result = sub_810D498(&v12);
        if ( result )
        {
            v5 = &v12;
            do
            {
                v6 = result;
                v7 = v3;
                v8 = v4;
                v9 = v5;
                v10 = v0;
                v11 = *v5;
                object_clearInvulnerableTime();
                v3 = v7;
                v4 = v8;
                v0 = v10;
                v5 = v9 + 1;
                result = v6 - 1;
            }
            while ( v6 != 1 );
        }
    }
    return result;
}


// 0x810d516
int sub_810D516()
{
    int v0; // r5
    int result; // r0
    int v2; // r1
    int v3; // r2
    Battle **v4; // r3
    int v5; // ST00_4
    Battle **v6; // ST0C_4
    int v7; // ST10_4
    Battle *v8; // r5
    int v9; // [sp-10h] [bp-24h]
    int v10; // [sp-Ch] [bp-20h]
    int v11; // [sp+0h] [bp-14h]

    result = sub_810D498(&v11);
    if ( result )
    {
        v4 = &v11;
        do
        {
            v5 = result;
            v9 = v2;
            v10 = v3;
            v6 = v4;
            v7 = v0;
            v8 = *v4;
            spawn_t1_0x0_EffectObject(*v4, &(*v4)->vx, (*v4)->x, (*v4)->y, (*v4)->z);
            object_addHP(v8, v8->maxHP);
            v2 = v9;
            v3 = v10;
            v0 = v7;
            v4 = v6 + 1;
            result = v5 - 1;
        }
        while ( v5 != 1 );
        result = PlaySoundEffect(138, v9, v10);
    }
    return result;
}


// 0x810d590
int sub_810D590()
{
    int v0; // r5
    int v1; // r0

    v1 = *(v0 + 10);
    if ( !*(v0 + 10) )
    {
        sub_810D4E8();
        v1 = 0;
        *(v0 + 96) = 0;
    }
    return sub_80165C2(v1);
}


// 0x810d5a6
int sub_810D5A6()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 11) && *(v0 + 96) )
        sub_810D4E8();
    sub_8016B02();
    result = *(v0 + 9);
    if ( result != 4 )
    {
        result = *(v0 + 96);
        if ( result )
            result = sub_810D4BA();
    }
    return result;
}


// 0x810d5ce
int sub_810D5CE()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 11) && *(v0 + 96) )
        sub_810D4E8();
    sub_8016B36();
    result = *(v0 + 9);
    if ( result != 6 )
    {
        result = *(v0 + 96);
        if ( result )
            result = sub_810D4BA();
    }
    return result;
}


// 0x810d5f6
int sub_810D5F6()
{
    int v0; // r5
    int result; // r0

    if ( !*(v0 + 11) && *(v0 + 96) )
        sub_810D4E8();
    sub_8016B72();
    result = *(v0 + 9);
    if ( result != 7 )
    {
        result = *(v0 + 96);
        if ( result )
            result = sub_810D4BA();
    }
    return result;
}


// 0x810d61e
void sub_810D61E()
{
    int v0; // r5
    int v1; // r7
    int v2; // r4
    signed int v3; // r0

    v2 = *(v0 + 88);
    v3 = *(v2 + 133);
    if ( v3 < 3 )
    {
        *(v2 + 133) = v3 + 1;
        *(v1 + 40) = sub_810D69A;
        *(v1 + 24) = byte_810D584[*(v2 + 22)];
        *(v1 + 3) = 3;
        *(v1 + 12) = 20;
        *(v1 + 13) = 21;
        *(v1 + 14) = 1;
        *(v1 + 15) = 2;
        *(v1 + 48) = 12;
        *(v1 + 52) = 14;
        object_setAttack0();
    }
    else
    {
        *(v2 + 133) = 0;
        if ( object_getFlag() & 0xA000 )
        {
            *(v1 + 16) = 60;
        }
        else
        {
            *(v1 + 40) = sub_810D69A;
            *(v1 + 3) = *(v2 + 22);
            *(v1 + 24) = byte_810D58A[*(v2 + 22)];
            *(v1 + 56) = v0 + 96;
        }
        object_setAttack0();
    }
}


// 0x810d69a
int sub_810D69A()
{
    int v0; // r5
    int v1; // r2
    int result; // r0
    int v3; // r1
    int v4; // r0
    int v5; // r1
    int v6; // r2
    int v7; // r3

    if ( object_getFlag() & 0x4000
        || (sub_81096FA(*(v0 + 18), *(v0 + 19), v1, byte_810D6D4), (result = panelFlagCheck_8015D80(v4, v5, v6, v7)) == 0) )
    {
        result = *(v0 + 18);
        v3 = *(v0 + 19);
    }
    return result;
}


// 0x810d7e4
int sub_810D7E4()
{
    unsigned __int8 *v0; // r7

    return (*(&off_810D7F8 + *v0))();
}


// 0x810d808
int sub_810D808()
{
    int v0; // r4
    Battle *v1; // r5
    int v2; // r7
    int v3; // r0
    int v4; // r0
    int v5; // r4
    char v6; // r0
    int v7; // r6
    int v8; // r7
    int v9; // r0
    int result; // r0
    int v11; // r0
    int v12; // [sp-4h] [bp-10h]

    if ( !*(v2 + 1) )
    {
        *(v2 + 1) = 1;
        object_setFlag1(0x400000);
        *(v2 + 18) = 38;
        v1->currAnimation = 1;
        object_setCounterTime(30);
        v3 = **(v2 + 40);
        if ( v3 )
            *(v3 + 16) = 5;
    }
    v4 = *(v2 + 18) - 1;
    *(v2 + 18) = v4;
    if ( !v4 )
    {
        v12 = v2;
        v5 = (*(v0 + 22) << 16) | ((*(v2 + 12) - 1) << 8) | 0x1000000 | *(v2 + 16);
        v6 = object_getFrontDirection(v1);
        v7 = *(v2 + 8);
        v8 = *(v2 + 48);
        sub_80C5578(v6 + v1->panelX, v1->panelY, 1, 0);
        v2 = v12;
        *(v12 + 14) = 1;
        v1->currAnimation = 2;
        v9 = **(v12 + 40);
        if ( v9 )
        {
            sub_80C4072(v9);
            **(v12 + 40) = 0;
        }
        **(v12 + 48) = 1;
        *v12 = 4;
    }
    result = *(v2 + 18);
    if ( !(result & 4) )
    {
        v11 = object_getFrontDirection(v1);
        result = highlightPanelIfSomeCondition_8109660(v11 + v1->panelX, v1->panelY, *(v2 + 13), v1->Alliance ^ v1->directionFlip);
    }
    return result;
}


// 0x810d8b2
int __fastcall sub_810D8B2(int a1, int a2, int a3)
{
    int v3; // r5
    int v4; // r7
    int v5; // r1
    int v6; // r0
    int result; // r0

    v5 = **(v4 + 48);
    if ( !v5 )
        goto LABEL_8;
    v6 = *(v4 + 14) - 1;
    *(v4 + 14) = v6;
    if ( !v6 )
    {
        *(v4 + 14) = 16;
        PlaySoundEffect(299, v5, a3);
    }
    result = *(v4 + 16) - 1;
    *(v4 + 16) = result;
    if ( !result )
    {
LABEL_8:
        *(v3 + 16) = 3;
        *(v4 + 16) = *(v4 + 24);
        *(v4 + 18) = 22;
        result = 8;
        *v4 = 8;
    }
    return result;
}


// 0x810d8ea
int sub_810D8EA()
{
    int v0; // r5
    int v1; // r7
    int result; // r0

    --*(v1 + 16);
    result = *(v1 + 18) - 1;
    *(v1 + 18) = result;
    if ( !result )
    {
        *(v0 + 16) = 0;
        **(v1 + 48) = 1;
        sub_810DCCE();
        result = 12;
        *v1 = 12;
    }
    return result;
}


// 0x810d940
int sub_810D940()
{
    _DWORD *v0; // r5
    int v1; // r2
    int result; // r0

    sub_810DCCE();
    v1 = *(v0[22] + 22);
    v0[24] = byte_810D964[v1];
    result = byte_810D964[v1 + 6];
    v0[25] = result;
    return result;
}


