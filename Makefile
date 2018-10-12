include $(DEVKITARM)/base_tools

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
SFILES = rom.s ewram.s iwram.s
OFILES = $(addprefix $(OBJ),$(notdir $(SFILES:.s=.o)))
ROM = bn6f

# build flags
COMPLIANCE_FLAGS = -g -I$(INC)
WFLAGS = 
ARCH = -mcpu=arm7tdmi -march=armv4t -mthumb -mthumb-interwork
CDEBUG =
CFLAGS = 
ASFLAGS = $(ARCH) $(WFLAGS) $(COMPLIANCE_FLAGS)
LDFLAGS = -g -Map $(ROM).map
LIB =

all: cleanobj rom checksum

rom: $(ROM)
	@# TODO: this tab is needed or ROM is executed weirdly?? oops!

$(ROM): $(OFILES)
	$(LD) $(LDFLAGS) -o $(ROM).elf -T ld_script.ld $(OFILES) $(LIB)
	$(OBJCOPY) -O binary $(ROM).elf $(ROM).gba

%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@

checksum:
	$(SHA1SUM) -b $(ROM).gba
	@echo "0676ecd4d58a976af3346caebb44b9b6489ad099 *Expected"

fdiff:
	$(PY) tools/fdiff.py _$(ROM).gba $(ROM).gba -s2

tail: $(ROM)
	@# Create tail.bin using the tail location in current elf then compile again
	$(PY) tools/gen_obj_tail.py $(ROM).elf _$(ROM).gba bin/tail.bin 'tail'
	@echo "Updated tail.bin!"

# TODO: integrate scan_includes
cleanobj:
	rm -f *.o
	
clean:
	rm -f *.o
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
