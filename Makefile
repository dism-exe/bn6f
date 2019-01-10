# binary tools used in build
MAKE = make
AS = tools/binutils/bin/arm-none-eabi-as
LD = tools/binutils/bin/arm-none-eabi-ld
OBJCOPY = tools/binutils/bin/arm-none-eabi-objcopy
SHA1SUM = sha1sum
PY = py

# project paths
SRCDIR = asm
BIN = bin
CONST = constants
INC = include

# project files
SFILES = rom.s data.s ewram.s iwram.s

OFILES = $(addprefix $(OBJ),$(SFILES:.s=.o))
BUILD_NAME = bn6f
ROM = $(BUILD_NAME).gba

# build flags
COMPLIANCE_FLAGS = -g -I$(INC)
WFLAGS =
ARCH = -mcpu=arm7tdmi -march=armv4t -mthumb -mthumb-interwork
CDEBUG =
CFLAGS =
ASFLAGS = $(ARCH) $(WFLAGS) $(COMPLIANCE_FLAGS) --agbasm
ASDEBUGFLAGS = --agbasm-debug $(@:.o=.dump)
LDFLAGS = -Map $(BUILD_NAME).map
LIB =

# TODO: INTEGRATE SCAN INCLUDES

all: $(ROM)
	@$(SHA1SUM) -c $(BUILD_NAME).sha1

$(ROM): %.elf
	$(OBJCOPY) -O binary $(BUILD_NAME).elf $(ROM)

%.elf: $(OFILES)
	$(LD) $(LDFLAGS) -o $(BUILD_NAME).elf -T ld_script.ld $(OFILES) $(LIB)

%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@

checksum:
	@$(SHA1SUM) -c $(BUILD_NAME).sha1

fdiff:
	$(PY) tools/fdiff.py $(BUILD_NAME).ign $(ROM) -s2

tail: $(ROM)
	@# Create tail.bin using the tail location in current elf then compile again
	$(PY) tools/gen_obj_tail.py $(BUILD_NAME).elf _$(ROM) bin/tail.bin 'tail'
	@echo "Updated tail.bin!"

clean:
	rm -f *.o
	rm -f *.map
	rm -f *.elf
	rm -f *.gba
