# binary tools used in build
MAKE = make
AS = tools/binutils/bin/arm-none-eabi-as
LD = tools/binutils/bin/arm-none-eabi-ld
OBJCOPY = tools/binutils/bin/arm-none-eabi-objcopy
OBJDUMP := tools/binutils/bin/arm-none-eabi-objdump
GBAGFX = tools/gbagfx/gbagfx
SHA1SUM = sha1sum
PY = py
CC = tools/agbcc/bin/agbcc

# project paths
SRCDIR = asm
BIN = bin
CONST = constants
INC = include
CSRCDIR = src/c
CBUILDDIR = build/c

# project files
SFILES = rom.s data.s ewram.s iwram.s vram.s

# C source files compiled with agbcc
C_SRCS = $(wildcard $(CSRCDIR)/*.c)
C_SFILES = $(patsubst $(CSRCDIR)/%.c,$(CBUILDDIR)/%.s,$(C_SRCS))
C_OFILES = $(patsubst $(CSRCDIR)/%.c,$(CBUILDDIR)/%.o,$(C_SRCS))

# to keep track of compressed files and to build decompressed versions into them
# defines rules to build and compress lz files
include lz_assets.mk

OFILES = $(addprefix $(OBJ),$(SFILES:.s=.o))
BUILD_NAME = bn6f
ROM = $(BUILD_NAME).gba
ELF := $(ROM:.gba=.elf)
SYM = $(ROM:.gba=.sym)
NOGBASYM = bn6f_nogba.sym

# build flags
COMPLIANCE_FLAGS = -g -I$(INC)
WFLAGS =
ARCH = -mcpu=arm7tdmi -march=armv4t -mthumb -mthumb-interwork
CDEBUG =
CFLAGS =
ASFLAGS = $(ARCH) $(WFLAGS) $(COMPLIANCE_FLAGS) --agbasm-colonless-labels --agbasm-colon-defined-global-labels --agbasm-local-labels --agbasm-multiline-macros \
	--agbasm-charmap --agbasm-no-gba-thumb-after-label-disasm-fix
CPP = cpp
CPPFLAGS = -I$(CSRCDIR) -undef -nostdinc -Wall -Wno-trigraphs
CCFLAGS = -O2 -mthumb-interwork

ASDEBUGFLAGS = --agbasm-debug $(@:.o=.dump)
LDFLAGS = -Map $(BUILD_NAME).map
LIB =
CLIB = tools/agbcc/lib/libgcc.a

.PHONY: syms decompile orig validate function-symbols track track-build smoke clean-conditional-objs

# TODO: INTEGRATE SCAN INCLUDES

all: clean-conditional-objs $(ROM)
	@$(SHA1SUM) -c $(BUILD_NAME).sha1

# Modified ROM with C decompiled functions (does not match original SHA1).
# Uses ld_script_decompile.ld which adds a .c_code section in the ROM fill area.
# Per-function decompile flags (-D...) are added per below; they're target-
# specific so `make all` rebuilds without them and SHA-matches.
decompile: ASFLAGS += --defsym DECOMP_BYTE_FILL=1
decompile: clean-conditional-objs $(C_OFILES) $(OFILES)
	$(LD) $(LDFLAGS) -o $(ELF) -T ld_script_decompile.ld $(OFILES) $(C_OFILES) $(CLIB) $(LIB)
	$(OBJCOPY) -O binary $(ELF) $(ROM)

# Top-level .o files that pull in (via `.include`) any asm/*.s sub-file
# containing a per-function `.ifndef DECOMP_*` block. These must be
# rebuilt every invocation so the flag set (target-specific ASFLAGS)
# actually takes effect — otherwise a previous build's .o is reused.
# rom.o aggregates all of asm/*.s.
CONDITIONAL_OFILES = rom.o

.PHONY: clean-conditional-objs
clean-conditional-objs:
	@rm -f $(CONDITIONAL_OFILES)

$(ROM): %.elf
	$(OBJCOPY) -O binary $(ELF) $(ROM)

%.elf: $(OFILES)
	$(LD) $(LDFLAGS) -o $(ELF) -T ld_script.ld $(OFILES) $(LIB)

%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@

# C compilation: .c -> .i (cpp) -> .s (agbcc) -> .o (assembler)
$(CBUILDDIR):
	mkdir -p $@

$(CBUILDDIR)/%.i: $(CSRCDIR)/%.c | $(CBUILDDIR)
	$(CPP) $(CPPFLAGS) $< -o $@

$(CBUILDDIR)/%.s: $(CBUILDDIR)/%.i
	$(CC) $(CCFLAGS) $< -o $@

$(CBUILDDIR)/%.o: $(CBUILDDIR)/%.s
	$(AS) $(ARCH) -g -I$(INC) $< -o $@

orig: $(OFILES)
	$(LD) $(LDFLAGS) -o bn6f_orig.elf -T ld_script.ld $(OFILES) $(LIB)
	@echo "Saved bn6f_orig.elf"

validate: bn6f_orig.elf $(ELF)
	$(PY) tools/validate_asm.py bn6f_orig.elf $(ELF)

assets: $(LZ_FILES) $(LZ_BINFILES)
	

checksum:
	@$(SHA1SUM) -c $(BUILD_NAME).sha1

fdiff:
	$(PY) tools/fdiff.py $(BUILD_NAME).ign $(ROM) -s2

tail: $(ROM)
	@# Create tail.bin using the tail location in current elf then compile again
	$(PY) tools/gen_obj_tail.py $(ELF) _$(ROM) bin/tail.bin 'tail'
	@echo "Updated tail.bin!"

clean:
	rm -f *.o
	rm -f *.map
	rm -f *.elf
	rm -rf $(CBUILDDIR)
	# rm -f *.gba
	rm -f $(COMPRESSED_TEXT_ARCHIVES_DIR)/*.lz
	rm -f $(COMPRESSED_TEXT_ARCHIVES_DIR)/*.bin

syms: $(SYM)

$(SYM): $(ELF)
	$(OBJDUMP) -t $< | sort -u | grep -E "^0[23689]" | perl -p -e 's/^(\w{8}) (\w).{6} \S+\t(\w{8}) (\S+)$$/\1 \2 \3 \4/g' > $@

nogbasyms: $(NOGBASYM)

$(NOGBASYM): $(ELF)
	$(OBJDUMP) -t $< | sort -u | grep -E "^0" | perl -p -e 's/^(\w{8}) (\w).{6} \S+\t(\w{8}) (\S+)$$/\1 \4/g' > $@

# ---------------------------------------------------------------------
# Verification harness (Rust + libmgba — see issues/concerns/10)
# ---------------------------------------------------------------------

FN_SYMS = tools/function_symbols.txt

# Extract function-entry symbols from bn6f_orig.elf.
function-symbols: $(FN_SYMS)

$(FN_SYMS): bn6f_orig.elf
	$(OBJDUMP) -t bn6f_orig.elf | awk '/ F .text/ { print "0x" $$1, $$NF }' > $@
	@wc -l $@

# Build the Rust function-tracker binary.
track-build:
	cd tools/bn6f-track && cargo build --release

# Smoke test: load ROM, advance FRAMES, print PC twice (determinism check).
FRAMES ?= 300
smoke: track-build $(ROM)
	tools/bn6f-track/target/release/bn6f-track $(abspath $(ROM)) $(FRAMES)

# Function tracker: run FRAMES of no-input boot, hook every entry in
# the symbol table, dump sorted hit counts. Overridable: FRAMES, TRACK_OUTPUT.
TRACK_OUTPUT ?= tests/fixtures/baseline_test_fill_5s_rust.txt
track: track-build $(FN_SYMS) $(ROM)
	@mkdir -p $(dir $(TRACK_OUTPUT))
	tools/bn6f-track/target/release/bn6f-track \
		$(abspath $(ROM)) $(FRAMES) \
		$(abspath $(FN_SYMS)) $(abspath $(TRACK_OUTPUT))
	@head -6 $(TRACK_OUTPUT)
