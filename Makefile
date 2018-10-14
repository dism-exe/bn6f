ifneq ($(DEVKITARM)/base_tools,)
    include $(DEVKITARM)/base_tools
endif

# binary tools used in build
# (the arm-none-eabi toolchain should be in the path)
MAKE = make
CC = arm-none-eabi-gcc
AS = arm-none-eabi-as
LD = arm-none-eabi-ld
OBJCOPY = arm-none-eabi-objcopy
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
ASFLAGS = $(ARCH) $(WFLAGS) $(COMPLIANCE_FLAGS)
LDFLAGS = -g -Map $(BUILD_NAME).map
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
	$(PY) tools/fdiff.py _$(ROM) $(ROM) -s2

tail: $(ROM)
	@# Create tail.bin using the tail location in current elf then compile again
	$(PY) tools/gen_obj_tail.py $(BUILD_NAME).elf _$(ROM) bin/tail.bin 'tail'
	@echo "Updated tail.bin!"

clean:
	rm -f *.o
	rm -f *.map
	rm -f *.elf
	rm -f *.gba

# Rule for how to translate a single c file into an object file.
%.o : %.c
	echo compiling $<
	echo $(CC) $(CFLAGS) -c $<
	$(CC) $(CFLAGS) -E $< > $<.preout
	$(CC) $(CFLAGS) -S $<
	$(CC) $(CFLAGS) -c $<
	echo done compiling $<

# Rule for how to generate the dependencies for the given files.
# -M gcc option generates dependencies.
%.d : %.c
	@set -e; rm -f $@; \
	$(CC) $(COMPLIANCE_FLAGS ) -M $< > $@.$$$$; \
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@; \
	rm -f $@.$$$$
