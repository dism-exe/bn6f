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
CPPFLAGS = -I$(CSRCDIR) -Iconstants/headers -undef -nostdinc -Wall -Wno-trigraphs
CCFLAGS = -O2 -mthumb-interwork

ASDEBUGFLAGS = --agbasm-debug $(@:.o=.dump)
LDFLAGS = -Map $(BUILD_NAME).map
LIB =
CLIB = tools/agbcc/lib/libgcc.a

.PHONY: setup-toolchain syms decompile orig validate function-symbols track track-build smoke verify verify-spam verify-state verify-bk2 list-demos clean-conditional-objs

# One-time toolchain install. Builds the agbcc submodule + gbagfx and
# installs arm-none-eabi-{as,ld,objcopy,objdump} into tools/binutils/bin/
# and agbcc into tools/agbcc/bin/. Idempotent — sub-builds no-op on
# rerun. Not wired into the normal build graph on purpose; see INSTALL.md.
AGBCC_SRC := tools/agbcc-src
setup-toolchain:
	@if [ -x tools/binutils/bin/arm-none-eabi-as ] && [ -x tools/agbcc/bin/agbcc ]; then \
		echo "[setup-toolchain] agbcc/binutils already present."; \
	else \
		if [ ! -f $(AGBCC_SRC)/Makefile ]; then \
			echo "[setup-toolchain] fetching agbcc submodule..."; \
			git submodule update --init --recursive $(AGBCC_SRC); \
		fi; \
		echo "[setup-toolchain] building agbcc (this takes several minutes)..."; \
		$(MAKE) -C $(AGBCC_SRC) || exit $$?; \
		echo "[setup-toolchain] installing into $(CURDIR)/tools..."; \
		$(MAKE) -C $(AGBCC_SRC) install prefix=$(CURDIR) || exit $$?; \
		test -x tools/binutils/bin/arm-none-eabi-as || { echo "setup-toolchain: install finished but tools/binutils/bin/arm-none-eabi-as is missing" >&2; exit 1; }; \
	fi
	@echo "[setup-toolchain] building gbagfx..."
	@$(MAKE) -C tools/gbagfx
	@test -x $(GBAGFX) || { echo "setup-toolchain: gbagfx build did not produce $(GBAGFX)" >&2; exit 1; }
	@echo "[setup-toolchain] done."

# TODO: INTEGRATE SCAN INCLUDES

all: clean-conditional-objs $(ROM)
	@$(SHA1SUM) -c $(BUILD_NAME).sha1

# Modified ROM with C decompiled functions (does not match original SHA1).
# Uses ld_script_decompile.ld which adds a .c_code section in the ROM fill area.
# Conversion list lives in tools/decomp_manifest.txt — one ASM symbol per
# line. For each symbol we generate `--defsym DECOMP_<sym>=1`, which gates
# the `.ifndef DECOMP_<sym>` block in asm/*.s. `make all` builds without
# these flags, so the original ROM still SHA-matches.
DECOMP_MANIFEST = tools/decomp_manifest.txt
DECOMP_SYMS = $(shell awk '!/^[[:space:]]*#/ && NF>0 {print $$1}' $(DECOMP_MANIFEST))
DECOMP_DEFSYMS = $(foreach s,$(DECOMP_SYMS),--defsym DECOMP_$(s)=1)

# Sink the long --defsym chain into a response file. `arm-none-eabi-as`
# accepts `@FILE` and reads whitespace-separated args from it, so the
# (growing-with-manifest) flag list never appears on the command line.
# Cuts ~5KB per assembler invocation out of `make` output.
DECOMP_FLAGS_FILE = build/decomp_flags.txt

$(DECOMP_FLAGS_FILE): $(DECOMP_MANIFEST) | build
	@printf '%s\n' $(DECOMP_DEFSYMS) > $@

build:
	@mkdir -p $@

# Same trick for the linker side — C_OFILES is a similarly long list
# that bloats `make decompile` output. ld also accepts @FILE.
C_OFILES_LIST = build/c_ofiles.txt

$(C_OFILES_LIST): $(C_OFILES) | build
	@printf '%s\n' $(C_OFILES) > $@

decompile: ASFLAGS += @$(DECOMP_FLAGS_FILE)
decompile: clean-conditional-objs $(DECOMP_FLAGS_FILE) $(C_OFILES) $(C_OFILES_LIST) $(OFILES)
	$(LD) $(LDFLAGS) -o $(ELF) -T ld_script_decompile.ld $(OFILES) @$(C_OFILES_LIST) $(CLIB) $(LIB)
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

$(ROM): $(ELF)
	$(OBJCOPY) -O binary $(ELF) $(ROM)

# Explicit ELF rules so each ELF lands at its own path (the old pattern
# rule `%.elf: $(OFILES)` hard-coded `-o $(ELF)` regardless of target,
# producing the wrong filename when building bn6f_orig.elf).
$(ELF): clean-conditional-objs $(OFILES)
	$(LD) $(LDFLAGS) -o $@ -T ld_script.ld $(OFILES) $(LIB)

bn6f_orig.elf: clean-conditional-objs $(OFILES)
	$(LD) $(LDFLAGS) -o $@ -T ld_script.ld $(OFILES) $(LIB)

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

orig: bn6f_orig.elf
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

# Verify decompiled functions match the ASM oracle via per-call
# (entry, exit) state diff. See issues/concerns/10 §"Implementation
# notes (Rust function tracker)".
#
# Workflow:
#   1. Build original ROM and run a 300-frame demo, capturing entry
#      snapshots for every DECOMP_FN_ADDR. Compute "expected exits" via
#      isolated (IRQ-disabled) re-runs on the original.
#   2. Build decompile ROM and replay each captured entry — also via
#      isolated runs — capturing the "actual exit". Diff vs expected.
#   3. Report pass/fail per function; exit nonzero on any mismatch.
#
# As more functions are converted, append their entry addresses to
# DECOMP_FN_ADDRS.
SESSION_DIR ?= tests/fixtures/calls/boot_idle

# Verbosity for verify-*. Default quiet:
#   - record skips its per-target name dump (just prints the count)
#   - replay only prints FAIL lines, not PASS lines
#   - inner `make all` / `make decompile` run with -s (no recipe echo,
#     errors still surface to stderr)
# VERIFY_VERBOSE=1 restores all of the above.
VERIFY_VERBOSE ?= 0
REPLAY_FLAGS = $(if $(filter-out 0,$(VERIFY_VERBOSE)),--verbose,)
VERBOSE_FLAG = $(if $(filter-out 0,$(VERIFY_VERBOSE)),--verbose,)
# Pass `-s` to sub-makes when quiet, so the assembler doesn't echo
# every `arm-none-eabi-as foo.s -o foo.o` line during verify's inner builds.
SUBMAKE_QUIET = $(if $(filter-out 0,$(VERIFY_VERBOSE)),,-s)

# Hash-dedup of identical entry snapshots per target. Default on:
# verify-spam in particular runs the same per-frame poll thousands of
# times with identical state, all of which would test the same code
# path. Set VERIFY_DEDUP=0 to keep every occurrence.
VERIFY_DEDUP ?= 1

# Frame-progress heartbeat during the emulation phase of record. 0
# disables. Heartbeat prints `i/n frames` to stderr every N frames.
VERIFY_PROGRESS_EVERY ?= 3000

RECORD_FLAGS = \
	$(if $(filter 0,$(VERIFY_DEDUP)),--no-dedup,) \
	$(if $(filter-out 0,$(VERIFY_PROGRESS_EVERY)),--progress $(VERIFY_PROGRESS_EVERY),) \
	$(VERBOSE_FLAG)

# Resolve manifest symbols to addresses via the function symbol table.
# (function-symbols depends on bn6f_orig.elf, which `verify` builds first.)
DECOMP_FN_ADDRS = $(shell awk 'NR==FNR { if ($$1 !~ /^[[:space:]]*#/ && NF>0) want[$$1]=1; next } want[$$2] { print $$1 }' $(DECOMP_MANIFEST) $(FN_SYMS) 2>/dev/null)

verify: track-build $(FN_SYMS)
	@echo "[verify] building original ROM and recording fixtures..."
	@$(MAKE) $(SUBMAKE_QUIET) --no-print-directory all
	@rm -rf $(SESSION_DIR)
	@mkdir -p $(SESSION_DIR)
	@tools/bn6f-track/target/release/bn6f-track record \
		$(abspath $(ROM)) 300 $(abspath $(FN_SYMS)) \
		$(abspath $(SESSION_DIR)) $(RECORD_FLAGS) $(DECOMP_FN_ADDRS)
	@echo
	@echo "[verify] building decompile ROM and replaying..."
	@$(MAKE) $(SUBMAKE_QUIET) --no-print-directory decompile
	tools/bn6f-track/target/release/bn6f-track replay \
		$(abspath $(ROM)) $(abspath $(SESSION_DIR)) $(REPLAY_FLAGS)

# Longer demo with scripted input. Records up to 50 entries per target
# (cap is in bn6f-track to keep snapshot memory bounded), so cumulative
# pair count is at most ~5000 here even with 100+ converted functions.
SPAM_SESSION_DIR ?= tests/fixtures/calls/spam_start10s_b5m
SPAM_INPUT_FILE  ?= tests/fixtures/input/spam_start10s_b5m.input

verify-spam: track-build $(FN_SYMS)
	@echo "[verify-spam] building original ROM and recording fixtures with input..."
	@$(MAKE) $(SUBMAKE_QUIET) --no-print-directory all
	@rm -rf $(SPAM_SESSION_DIR)
	@mkdir -p $(SPAM_SESSION_DIR)
	@tools/bn6f-track/target/release/bn6f-track record \
		$(abspath $(ROM)) 18600 $(abspath $(FN_SYMS)) \
		$(abspath $(SPAM_SESSION_DIR)) \
		--input $(abspath $(SPAM_INPUT_FILE)) $(RECORD_FLAGS) \
		$(DECOMP_FN_ADDRS)
	@echo
	@echo "[verify-spam] building decompile ROM and replaying..."
	@$(MAKE) $(SUBMAKE_QUIET) --no-print-directory decompile
	tools/bn6f-track/target/release/bn6f-track replay \
		$(abspath $(ROM)) $(abspath $(SPAM_SESSION_DIR)) $(REPLAY_FLAGS)

# Verify against a scene captured as an mGBA savestate (with optional
# input replay). Used to extend coverage past boot_idle.
#
# Layout under tests/fixtures/demos/:
#   <category>/<name>.ss         flat, basename-matched (preferred)
#   <category>/<name>.input      same basename → same test
#   <category>/<name>.md         freeform notes
#   <category>/<name>/state.ss   folder graduation — used when a test
#   <category>/<name>/inputs.*   outgrows the single-file form
#
# Usage:
#   make verify-state STATE_NAME=battle/megaman-vs-virus [STATE_FRAMES=600]
# Override STATE_FILE / STATE_INPUT explicitly if you need to bypass
# the auto-resolver (e.g. for one-off ad-hoc demos outside the tree).
STATE_NAME    ?=
STATE_FRAMES  ?= 600
DEMOS_ROOT     = tests/fixtures/demos
STATE_SESSION  = tests/fixtures/calls/$(STATE_NAME)

# Auto-resolve STATE_FILE: folder mode first (test has its own dir),
# then flat (test is named <category>/<name>.ss alongside its
# siblings). `wildcard` lets `.ss`, `.ss1`, `.ss2` all match — mGBA's
# GUI writes `.ss1` by default. Pick the first hit.
ifndef STATE_FILE
STATE_FILE := $(firstword \
    $(wildcard $(DEMOS_ROOT)/$(STATE_NAME)/state.ss*) \
    $(wildcard $(DEMOS_ROOT)/$(STATE_NAME).ss*))
endif
# Same dance for STATE_INPUT (optional — empty if no match).
ifndef STATE_INPUT
STATE_INPUT := $(firstword \
    $(wildcard $(DEMOS_ROOT)/$(STATE_NAME)/inputs.input) \
    $(wildcard $(DEMOS_ROOT)/$(STATE_NAME).input))
endif

verify-state: track-build $(FN_SYMS)
ifeq ($(strip $(STATE_NAME)),)
	$(error STATE_NAME not set — e.g. make verify-state STATE_NAME=battle/megaman-vs-virus)
endif
ifeq ($(strip $(STATE_FILE)),)
	$(error no savestate found for "$(STATE_NAME)" — looked for $(DEMOS_ROOT)/$(STATE_NAME)/state.ss* and $(DEMOS_ROOT)/$(STATE_NAME).ss*)
endif
	@echo "[verify-state $(STATE_NAME)] state=$(STATE_FILE) input=$(or $(STATE_INPUT),<none>)"
	@$(MAKE) $(SUBMAKE_QUIET) --no-print-directory all
	@rm -rf $(STATE_SESSION)
	@mkdir -p $(STATE_SESSION)
	@tools/bn6f-track/target/release/bn6f-track record \
		$(abspath $(ROM)) $(STATE_FRAMES) $(abspath $(FN_SYMS)) \
		$(abspath $(STATE_SESSION)) \
		--state $(abspath $(STATE_FILE)) \
		$(if $(STATE_INPUT),--input $(abspath $(STATE_INPUT)),) \
		$(RECORD_FLAGS) $(DECOMP_FN_ADDRS)
	@echo
	@echo "[verify-state $(STATE_NAME)] building decompile ROM and replaying..."
	@$(MAKE) $(SUBMAKE_QUIET) --no-print-directory decompile
	tools/bn6f-track/target/release/bn6f-track replay \
		$(abspath $(ROM)) $(abspath $(STATE_SESSION)) $(REPLAY_FLAGS)

# Convenience: list every test that's been authored under demos/.
list-demos:
	@find $(DEMOS_ROOT) \( -name '*.ss*' -o -name 'state.ss*' \) \
		| sed -E 's|$(DEMOS_ROOT)/||; s|\.ss[0-9]*$$||; s|/state$$||' \
		| sort -u

# BK2 demos under tests/fixtures/demos/bk2/.  Each .bk2 ships with a
# pre-extracted .ss + .input pair (run tools/bk2_extract.py to refresh
# from the .bk2), and `verify-state` already auto-resolves them via
# STATE_NAME=bk2/<stem>.  This convenience target loops over every
# bk2/*.bk2 and plays it through to the END of the recording — the
# frame count is read from the .input file size (one u16 packed as
# 4 bytes per frame).
verify-bk2: track-build $(FN_SYMS)
	@set -e; \
	for bk2 in $(DEMOS_ROOT)/bk2/*.bk2; do \
		stem=$$(basename $$bk2 .bk2); \
		input=$(DEMOS_ROOT)/bk2/$$stem.input; \
		if [ ! -f $$input ]; then \
			echo "verify-bk2: missing $$input (run tools/bk2_extract.py first)" >&2; \
			exit 1; \
		fi; \
		frames=$$(( $$(stat -c %s $$input) / 4 )); \
		echo; echo "=== verify-bk2 bk2/$$stem  ($$frames frames) ==="; \
		$(MAKE) --no-print-directory verify-state \
			STATE_NAME=bk2/$$stem STATE_FRAMES=$$frames; \
	done
