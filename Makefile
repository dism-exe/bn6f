include $(DEVKITARM)/base_tools

# binary tools used in build
# (the arm-none-eabi toolchain should be in the path)
MAKE = make
CC = arm-none-eabi-gcc
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
SFILES = rom.s ewram.s iwram.s
OFILES = $(addprefix $(OBJ),$(notdir $(SFILES:.s=.o)))
ROM = bn6f

# build flags
COMPLIANCE_FLAGS = -O0 -g3 -I$(INC)
WFLAGS =
ARCH = -march=armv4t -mtune=arm7tdmi -mabi=aapcs -mthumb -mthumb-interwork
CDEBUG =
CFLAGS = $(ARCH) $(WFLAGS) $(COMPLIANCE_FLAGS) $(CDEBUG)
ASFLAGS =
LDFLAGS = -g -Map $(ROM).map
LIB =

all:

rom: $(ROM)
	@# TODO: this tab is needed or ROM is executed weirdly?? oops!

$(ROM):
	$(CC) $(CFLAGS) -c $(SFILES)
	$(LD) $(LDFLAGS) -o $(ROM).elf -T ld_script.ld $(OFILES) $(LIB)
	$(OBJCOPY) -O binary $(ROM).elf $(ROM).gba

checksum:
	$(SHA1SUM) -b $(ROM).gba
	@echo "0676ecd4d58a976af3346caebb44b9b6489ad099 *Expected"


fdiff:
	$(PY) tools/fdiff.py _$(ROM).gba $(ROM).gba -s2

tail: $(ROM)
	@# Create tail.bin using the tail location in current elf then compile again
	$(PY) tools/gen_obj_tail.py $(ROM).elf _$(ROM).gba bin/tail.bin 'tail'
	@echo "Updated tail.bin!"

clean:
	rm -f *.preout
	rm -f *.o
	rm -f *.out
	rm -f *.d
	rm -f *.map
	rm -f *.elf

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
