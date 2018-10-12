#ifndef CONSTANTS_KEYS_H
#define CONSTANTS_KEYS_H

typedef enum {
	Key_None=0x0000, Key_A=0x0001, Key_B=0x002, Key_SELECT=0x0004, Key_START=0x0008,
	Key_Right=0x0010, Key_Left=0x0020, Key_Up=0x0040, Key_Down=0x0080, 
	Key_R=0x0100, Key_L=0x200, Key_DEFAULT=0xFC00
}Key;

#endif // CONSTANTS_KEYS_H