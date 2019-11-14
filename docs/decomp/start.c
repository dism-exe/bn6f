// 0x8000000
void __noreturn GameEntryPoint()
{
    _R0 = 18;
    __asm { MSR         CPSR_cf, R0 }
    _R0 = 19;
    __asm { MSR         CPSR_cf, R0 }
    _R0 = 31;
    __asm { MSR         CPSR_cf, R0 }
    *byte_3007FFC = sub_3005B00;
    GamePakWaitstateControl = 17844;
    start_clearMemory(&unk_3000000, 32256);
    start_clearMemory(&timer_2000000, 0x40000);
    start_clearMemory(0x6000000, 98304);
    start_clearMemory(0x7000000, 1024);
    start_clearMemory(0x5000000, 1024);
    start_copyMemory(IWRAMRoutinesROMLocation, sub_3005B00, 7892);
    SetPrimaryToolkitPointers();
    RandomizeExtraToolkitPointers();
    start_800023C();
}


// 0x80001c4
// (void *mem, int size) -> void
void __cdecl start_clearMemory(void *mem, int size)
{
    do
    {
        size -= 4;
        *(mem + size) = 0;
    }
    while ( size );
}


// 0x80001d8
// (void *src, void *dest, int size) -> void
void __cdecl start_copyMemory(void *src, void *dest, int size)
{
    do
    {
        size -= 4;
        *(dest + size) = *(src + size);
    }
    while ( size );
}


// 0x800023c
// () -> void
void __noreturn start_800023C()
{
    sub_3005DA0();
}


// 0x800024c
int __fastcall SetInterruptCallback(int a1, void *a2)
{
    int v3; // [sp+0h] [bp-4h]

    _SetInterruptCallback(a1, a2);
    return v3;
}


// 0x800025c
int __fastcall __noreturn start_dead_800025C(int a1)
{
    int v2; // [sp+0h] [bp-4h]

    sub_3005DEC(a1);
    return v2;
}


// 0x8000268
void __fastcall __noreturn start_dead_8000268(int a1)
{
    sub_3005E02(a1);
}


// 0x800027c
int __noreturn start_800027C()
{
    int v1; // [sp+0h] [bp-4h]

    sub_3005E18();
    return v1;
}


// 0x8000288
int __noreturn start_8000288()
{
    int v1; // [sp+0h] [bp-4h]

    sub_3005E2C();
    return v1;
}


// 0x800029c
int __noreturn start_800029C()
{
    int v1; // [sp+0h] [bp-4h]

    sub_3005E60();
    return v1;
}


// 0x80002a8
void __noreturn start_80002A8()
{
    sub_3005E6A();
}


