// bn6f-track — verification harness for the MMBN6F decomp.
// Links libmgba directly. See issues/concerns/10-emulator-requirements.md.
//
// Modes:
//   bn6f-track smoke   ROM [FRAMES]
//   bn6f-track track   ROM FRAMES SYMBOLS [OUTPUT]
//   bn6f-track record  ROM FRAMES SYMBOLS SESSION_DIR FN_ADDR [FN_ADDR...]
//   bn6f-track replay  ROM SESSION_DIR
//
// SYMBOLS is the file produced by `make function-symbols` —
// one "0xADDR NAME" per line.

#![allow(non_upper_case_globals)]
#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(dead_code)]

pub(crate) mod mgba_sys {
    include!(concat!(env!("OUT_DIR"), "/mgba_sys.rs"));
}

mod snapshot;

use std::cell::RefCell;
use std::collections::{HashMap, HashSet};
use std::env;
use std::ffi::CString;
use std::fs;
use std::io::Write;
use std::mem::MaybeUninit;
use std::process;
use std::ptr;
use std::time::Instant;

// ---------------------------------------------------------------------
// Logger: silence libmgba's chatty default output
// ---------------------------------------------------------------------

unsafe extern "C" fn silent_log(
    _logger: *mut mgba_sys::mLogger,
    _category: i32,
    _level: mgba_sys::mLogLevel,
    _fmt: *const i8,
    _args: *mut mgba_sys::__va_list_tag,
) {
}

static mut SILENT_LOGGER: mgba_sys::mLogger = mgba_sys::mLogger {
    log: Some(silent_log),
    filter: ptr::null_mut(),
};

fn silence_libmgba_logger() {
    unsafe {
        #[allow(static_mut_refs)]
        mgba_sys::mLogSetDefaultLogger(&mut SILENT_LOGGER);
    }
}

// ---------------------------------------------------------------------
// Core wrapper
// ---------------------------------------------------------------------

struct Core {
    raw: *mut mgba_sys::mCore,
    _video_buf: Vec<u8>,
    /// Boxed mDebugger so it has a stable address — libmgba stores a
    /// raw pointer to it. None until attach_debugger() is called.
    debugger: Option<Box<mgba_sys::mDebugger>>,
}

impl Core {
    fn new(rom_path: &str) -> Result<Self, String> {
        let c_path = CString::new(rom_path).map_err(|e| e.to_string())?;
        let raw = unsafe { mgba_sys::mCoreFind(c_path.as_ptr()) };
        if raw.is_null() {
            return Err(format!("mCoreFind returned null for {rom_path}"));
        }

        unsafe {
            let init = (*raw).init.expect("mCore.init is null");
            if !init(raw) {
                return Err("core.init() returned false".into());
            }
        }

        let mut video_buf = vec![0u8; 256 * 160 * 4];
        unsafe {
            let set_video = (*raw).setVideoBuffer.expect("mCore.setVideoBuffer is null");
            set_video(raw, video_buf.as_mut_ptr() as *mut _, 256);
        }

        let load_ok = unsafe { mgba_sys::mCoreLoadFile(raw, c_path.as_ptr()) };
        if !load_ok {
            return Err(format!("mCoreLoadFile failed for {rom_path}"));
        }

        let port_name = CString::new("bn6f-track").unwrap();
        unsafe {
            mgba_sys::mCoreConfigInit(&mut (*raw).config, port_name.as_ptr());
            mgba_sys::mCoreLoadConfig(raw);
        }

        unsafe {
            let reset = (*raw).reset.expect("mCore.reset is null");
            reset(raw);
        }

        Ok(Core { raw, _video_buf: video_buf, debugger: None })
    }

    /// Attach a custom debugger module in CALLBACK mode. The `custom`
    /// callback fires once per executed instruction; we use it to do
    /// our own O(1) PC dispatch instead of paying libmgba's per-bp
    /// linear scan (which saturates the bloom filter at ~5K hooks and
    /// degrades to 0.4 fps at 13K hooks).
    ///
    /// We deliberately do NOT register breakpoints via libmgba —
    /// `checkBreakpoints` is still called per step but with an empty
    /// list it's a no-op.
    fn attach_debugger(&mut self) {
        let mut dbg: Box<mgba_sys::mDebugger> = unsafe {
            Box::new(MaybeUninit::zeroed().assume_init())
        };
        dbg.type_ = mgba_sys::mDebuggerType_DEBUGGER_CUSTOM;
        dbg.custom = Some(custom_cb);
        // `entered` is unused (no breakpoints fire), but keep a handler
        // installed so libmgba doesn't crash if it ever does dispatch.
        dbg.entered = Some(entered_cb);

        unsafe {
            mgba_sys::mDebuggerAttach(&mut *dbg as *mut _, self.raw);
            // DEBUGGER_CALLBACK = step + check + custom per instruction.
            (*dbg).state = mgba_sys::mDebuggerState_DEBUGGER_CALLBACK;
        }
        self.debugger = Some(dbg);
    }

    /// Register a breakpoint at `address`. Returns the bp id (or -1 on
    /// failure). The id is opaque to us — what we actually use is the
    /// address that fires (info->address) inside the entered callback.
    fn set_breakpoint(&mut self, address: u32) -> isize {
        let dbg = self.debugger.as_mut().expect("attach_debugger() first");
        let bp = mgba_sys::mBreakpoint {
            id: 0,
            address,
            segment: -1,
            type_: mgba_sys::mBreakpointType_BREAKPOINT_HARDWARE,
            condition: ptr::null_mut(),
        };
        unsafe {
            let set = (*dbg.platform)
                .setBreakpoint
                .expect("platform.setBreakpoint is null");
            set(dbg.platform, &bp)
        }
    }

    fn run_frames(&self, n: u32) {
        unsafe {
            let run_frame = (*self.raw).runFrame.expect("mCore.runFrame is null");
            for _ in 0..n {
                run_frame(self.raw);
            }
        }
    }

    /// Drive N frames through the debugger run loop, so breakpoints fire.
    fn run_frames_debugged(&mut self, n: u32) {
        let dbg = self.debugger.as_mut().expect("attach_debugger() first").as_mut();
        for _ in 0..n {
            unsafe { mgba_sys::mDebuggerRunFrame(dbg as *mut _); }
        }
    }

    /// Drive N frames with per-frame joypad input. `inputs[i]` is the
    /// "pressed" bitmask for frame i (1 = held, our convention — not
    /// the GBA hardware's inverted KEYINPUT). If the input log is
    /// shorter than `n`, the remaining frames run with no buttons.
    /// Bits: A=0x1 B=0x2 SEL=0x4 START=0x8 R=0x10 L=0x20 U=0x40 D=0x80
    ///       Rshoulder=0x100 Lshoulder=0x200.
    fn run_frames_debugged_with_input(&mut self, n: u32, inputs: &[u16]) {
        let set_keys = unsafe { (*self.raw).setKeys.expect("mCore.setKeys is null") };
        let raw = self.raw;
        let dbg = self.debugger.as_mut().expect("attach_debugger() first").as_mut();
        for i in 0..n {
            let mask = inputs.get(i as usize).copied().unwrap_or(0) as u32;
            unsafe {
                set_keys(raw, mask);
                mgba_sys::mDebuggerRunFrame(dbg as *mut _);
            }
        }
    }

    fn pc(&self) -> u32 {
        let mut out: u32 = 0;
        let reg = CString::new("r15").unwrap();
        unsafe {
            let read_reg = (*self.raw).readRegister.expect("mCore.readRegister is null");
            read_reg(self.raw, reg.as_ptr(), &mut out as *mut u32 as *mut _);
        }
        out
    }

    fn frame_counter(&self) -> u32 {
        unsafe {
            let fc = (*self.raw).frameCounter.expect("mCore.frameCounter is null");
            fc(self.raw)
        }
    }
}

impl Drop for Core {
    fn drop(&mut self) {
        // Drop debugger first (still references core); then deinit core.
        self.debugger.take();
        unsafe {
            if let Some(deinit) = (*self.raw).deinit {
                deinit(self.raw);
            }
        }
    }
}

// ---------------------------------------------------------------------
// Custom debugger callback
// ---------------------------------------------------------------------
//
// `entered` fires whenever the debugger's run loop detects a breakpoint
// hit. We bump a thread-local counter for the hit PC. Thread-local
// rather than a struct field on mDebugger because Rust closures over
// extern "C" fn aren't possible, and we don't want to extend the C
// struct via #[repr(C)] subclassing here.

thread_local! {
    /// Set of function-entry addresses (for O(1) "is this PC a function?").
    static ENTRIES: RefCell<HashSet<u32>> = RefCell::new(HashSet::new());
    /// Map from function entry to (exclusive) end address — used to tell
    /// whether a branch-to-entry came from OUTSIDE the function (real
    /// call) or from INSIDE (loop iteration like start_copyMemory's
    /// `bne 80001d8 <start_copyMemory>` from within its body). Set to
    /// the next entry's address in sorted order.
    static FN_END: RefCell<HashMap<u32, u32>> = RefCell::new(HashMap::new());
    /// Total branch-into-entry events, matching the BizHawk baseline
    /// (counts loop iterations too).
    static HITS: RefCell<HashMap<u32, u64>> = RefCell::new(HashMap::new());
    /// Call counts: branch-into-entry only when source was outside the
    /// function. This is the "real" call count per function.
    static CALLS: RefCell<HashMap<u32, u64>> = RefCell::new(HashMap::new());
    /// Exit counts (matched returns).
    static EXITS: RefCell<HashMap<u32, u64>> = RefCell::new(HashMap::new());
    /// Pending-return stack: each (return_addr, fn_addr) gets pushed at
    /// a real call site and popped when control returns there. Bounded
    /// to keep pathological flow from leaking unbounded memory.
    static PENDING: RefCell<Vec<(u32, u32)>> = const { RefCell::new(Vec::new()) };
    /// Cached register-name CStrings.
    static PC_REG: CString = CString::new("r15").unwrap();
    static CPSR_REG: CString = CString::new("cpsr").unwrap();
    static LR_REG: CString = CString::new("r14").unwrap();
    /// Previous true_pc (= last executed instruction address). Used to
    /// detect branches and to classify "called from inside vs outside".
    static LAST_TRUE_PC: RefCell<u32> = const { RefCell::new(0) };

    // ----- record-mode state -----
    /// Functions we want to record entry snapshots for. Empty in
    /// `track` mode; populated in `record` mode.
    static RECORD_TARGETS: RefCell<HashSet<u32>> = RefCell::new(HashSet::new());
    /// Each entry snapshot captured during a record run. We don't try
    /// to track natural exits — instead, after the demo we run each
    /// entry to its captured LR with IRQs disabled, isolating the
    /// function's effect from IRQ-driven cycle drift.
    static RECORD_ENTRIES: RefCell<Vec<RecordedEntry>> = RefCell::new(Vec::new());
    /// Cap captures per target so a multi-minute input-driven demo
    /// doesn't OOM (each snapshot is ~288 KB; capping at 50/target
    /// keeps a 100-target run well under a gigabyte). 0 = uncapped.
    static RECORD_PER_TARGET_CAP: RefCell<usize> = const { RefCell::new(50) };
}

const PENDING_MAX: usize = 4096;

struct RecordedEntry {
    fn_addr: u32,
    captured_lr: u32,
    entry: snapshot::Snapshot,
}

unsafe extern "C" fn entered_cb(
    _dbg: *mut mgba_sys::mDebugger,
    _reason: mgba_sys::mDebuggerEntryReason,
    _info: *mut mgba_sys::mDebuggerEntryInfo,
) {
    // No-op. We don't register libmgba breakpoints so this shouldn't
    // fire, but keep an installed handler to avoid NULL-deref crashes
    // if some other code path triggers mDebuggerEnter.
}

/// Per-instruction callback. The performance-critical path.
///
/// Algorithm: after each step, gprs[15] is the prefetch-advanced PC.
/// Recover the address of the just-executed instruction:
///   ARM   (T=0): true_pc = gprs[15] - 8
///   Thumb (T=1): true_pc = gprs[15] - 4
///
/// A function entry counts as a hit only when control TRANSITIONS into
/// it (true_pc is in ENTRIES *and* the previous instruction wasn't its
/// immediate predecessor by instruction-length). This avoids counting
/// every iteration of an internal loop whose body happens to sit one
/// instruction past the entry.
unsafe extern "C" fn custom_cb(dbg: *mut mgba_sys::mDebugger) {
    let core = unsafe { (*dbg).core };
    let read = unsafe { (*core).readRegister.unwrap_unchecked() };

    let mut pc: u32 = 0;
    let mut cpsr: u32 = 0;
    PC_REG.with(|name| {
        let _ = unsafe { read(core, name.as_ptr(), &mut pc as *mut u32 as *mut _) };
    });
    CPSR_REG.with(|name| {
        let _ = unsafe { read(core, name.as_ptr(), &mut cpsr as *mut u32 as *mut _) };
    });

    // libmgba's own checkBreakpoints uses: pc_to_match = gprs[15] - instructionLength.
    // Use the same convention so our hits align with libmgba's bp-fire
    // semantics.
    let thumb = (cpsr & (1 << 5)) != 0;
    let instr_len: u32 = if thumb { 2 } else { 4 };
    let true_pc = pc.wrapping_sub(instr_len);

    let last = LAST_TRUE_PC.with(|c| *c.borrow());
    let is_branch = true_pc != last.wrapping_add(instr_len);
    LAST_TRUE_PC.with(|c| *c.borrow_mut() = true_pc);

    if is_branch {
        // 1. EXIT detection: did this branch land us at the top
        //    pending return address? Pop and credit the exit.
        let popped = PENDING.with(|p| {
            let mut p = p.borrow_mut();
            if let Some(&(ret_addr, _)) = p.last() {
                if ret_addr == true_pc {
                    return p.pop();
                }
            }
            None
        });
        if let Some((_ret_addr, fn_addr)) = popped {
            EXITS.with(|h| {
                *h.borrow_mut().entry(fn_addr).or_insert(0) += 1;
            });
        }


        // 2. ENTRY detection: branch landed on a known function entry.
        let is_entry = ENTRIES.with(|e| e.borrow().contains(&true_pc));
        if is_entry {
            HITS.with(|h| {
                *h.borrow_mut().entry(true_pc).or_insert(0) += 1;
            });

            // Was the source inside this function's body? If so, this
            // is an internal loop iteration (e.g. start_copyMemory's
            // `bne 80001d8`), not a real call — skip CALLS and PENDING.
            let internal = FN_END.with(|e| {
                e.borrow()
                    .get(&true_pc)
                    .map(|&end| last >= true_pc && last < end)
                    .unwrap_or(false)
            });

            if !internal {
                CALLS.with(|h| {
                    *h.borrow_mut().entry(true_pc).or_insert(0) += 1;
                });

                // Inspect the source instruction at `last` to decide
                // whether to push onto PENDING. Only true calls (BL /
                // Thumb BL Lo half / BLX) update LR with a useful
                // return address. Plain `b` / `bx Rn` tail-calls leave
                // LR unchanged and shouldn't enter the stack — pushing
                // them leaks (the callee returns to the *original*
                // caller, leaving the tail-caller's pending entry
                // stale forever).
                let bl_call = if thumb {
                    // Thumb BL is a 16-bit pair. The 2nd half (the one
                    // that actually performs the branch + updates LR)
                    // has top 5 bits == 0b11111.
                    let read16 = unsafe { (*core).busRead16.unwrap_unchecked() };
                    let val = unsafe { read16(core, last) } as u16;
                    (val >> 11) == 0x1F
                } else {
                    // ARM BL: bits[27:24] = 0b1011. (Distinguishes BL
                    // from B which has 0b1010.) Pure BX (register) has
                    // a different encoding; we treat it as non-call.
                    let read32 = unsafe { (*core).busRead32.unwrap_unchecked() };
                    let val = unsafe { read32(core, last) };
                    ((val >> 24) & 0xF) == 0xB
                };

                if bl_call {
                    let mut lr: u32 = 0;
                    LR_REG.with(|name| {
                        let _ = unsafe {
                            read(core, name.as_ptr(), &mut lr as *mut u32 as *mut _)
                        };
                    });
                    let ret_addr = lr & !1u32;
                    PENDING.with(|p| {
                        let mut p = p.borrow_mut();
                        if p.len() < PENDING_MAX {
                            p.push((ret_addr, true_pc));
                        }
                    });

                    // Record-mode: snapshot entry state if this fn is
                    // in the target set. We capture the snapshot AND
                    // the captured LR; the actual "expected exit" is
                    // computed later by an isolated (IRQ-disabled)
                    // re-run of each captured entry.
                    let is_target =
                        RECORD_TARGETS.with(|t| t.borrow().contains(&true_pc));
                    if is_target {
                        // Cap captures per target. ~288 KB per snapshot
                        // (EWRAM + IWRAM); with a few hundred targets and
                        // a multi-minute demo, unbounded retention OOMs.
                        let cap = RECORD_PER_TARGET_CAP.with(|c| *c.borrow());
                        let already = RECORD_ENTRIES.with(|s| {
                            s.borrow().iter().filter(|e| e.fn_addr == true_pc).count()
                        });
                        if cap == 0 || already < cap {
                            let snap = snapshot::Snapshot::capture(core);
                            RECORD_ENTRIES.with(|s| {
                                s.borrow_mut().push(RecordedEntry {
                                    fn_addr: true_pc,
                                    captured_lr: ret_addr,
                                    entry: snap,
                                });
                            });
                        }
                    }
                }
            }
        }
    }
}

// ---------------------------------------------------------------------
// Symbol table I/O
// ---------------------------------------------------------------------

/// Parse "0xADDR NAME" lines into a Vec<(addr, name)>.
fn read_symbols(path: &str) -> Result<Vec<(u32, String)>, String> {
    let text = fs::read_to_string(path).map_err(|e| format!("read {path}: {e}"))?;
    let mut out = Vec::new();
    for line in text.lines() {
        let line = line.trim();
        if line.is_empty() || line.starts_with('#') {
            continue;
        }
        let mut parts = line.splitn(2, char::is_whitespace);
        let addr_s = parts.next().ok_or("empty line")?;
        let name = parts.next().ok_or("missing name")?.trim().to_string();
        let addr_s = addr_s.strip_prefix("0x").unwrap_or(addr_s);
        let addr = u32::from_str_radix(addr_s, 16)
            .map_err(|e| format!("bad addr {addr_s:?}: {e}"))?;
        out.push((addr, name));
    }
    Ok(out)
}

// ---------------------------------------------------------------------
// Modes
// ---------------------------------------------------------------------

fn smoke_test(rom: &str, frames: u32) {
    println!("=== bn6f-track smoke test ===");
    println!("rom: {rom}");
    println!("frames: {frames}");

    for pass in 1..=2 {
        let t0 = Instant::now();
        let core = Core::new(rom).unwrap_or_else(|e| {
            eprintln!("Core::new failed: {e}");
            process::exit(1);
        });
        core.run_frames(frames);
        let elapsed = t0.elapsed();
        let pc = core.pc();
        let frame = core.frame_counter();
        let fps = frames as f64 / elapsed.as_secs_f64();
        println!(
            "pass {pass}: after {frame} frames, PC = 0x{pc:08X}, wall = {:.3}s ({fps:.0} fps)",
            elapsed.as_secs_f64()
        );
    }
}

fn track(rom: &str, frames: u32, symbols_path: &str, output: Option<&str>) {
    eprintln!("=== bn6f-track function tracker ===");
    eprintln!("rom: {rom}");
    eprintln!("frames: {frames}");
    eprintln!("symbols: {symbols_path}");

    let symbols = read_symbols(symbols_path).unwrap_or_else(|e| {
        eprintln!("read_symbols: {e}");
        process::exit(1);
    });
    let names: HashMap<u32, String> = symbols.iter().cloned().collect();
    eprintln!("loaded {} unique function symbols", names.len());

    HITS.with(|h| h.borrow_mut().clear());
    CALLS.with(|h| h.borrow_mut().clear());
    EXITS.with(|h| h.borrow_mut().clear());
    PENDING.with(|p| p.borrow_mut().clear());
    LAST_TRUE_PC.with(|c| *c.borrow_mut() = 0);
    ENTRIES.with(|e| {
        let mut e = e.borrow_mut();
        e.clear();
        for &(addr, _) in &symbols {
            e.insert(addr);
        }
    });
    // Build FN_END: for each entry, the address of the next entry in
    // sorted order. Body = [entry, next_entry).
    FN_END.with(|m| {
        let mut m = m.borrow_mut();
        m.clear();
        let mut sorted: Vec<u32> = symbols.iter().map(|(a, _)| *a).collect();
        sorted.sort();
        sorted.dedup();
        for window in sorted.windows(2) {
            m.insert(window[0], window[1]);
        }
        if let Some(&last) = sorted.last() {
            m.insert(last, u32::MAX);
        }
    });

    let mut core = Core::new(rom).unwrap_or_else(|e| {
        eprintln!("Core::new failed: {e}");
        process::exit(1);
    });
    core.attach_debugger();
    let armed = symbols.len();
    eprintln!("armed {} hooks via O(1) PC dispatcher", armed);

    let t0 = Instant::now();
    core.run_frames_debugged(frames);
    let elapsed = t0.elapsed();
    let final_frame = core.frame_counter();
    let fps = frames as f64 / elapsed.as_secs_f64();
    eprintln!(
        "emulated {final_frame} frames in {:.3}s ({fps:.1} fps)",
        elapsed.as_secs_f64()
    );

    // Collect + sort hits, gather calls/exits alongside.
    let calls_map: HashMap<u32, u64> = CALLS.with(|h| h.borrow().clone());
    let exits_map: HashMap<u32, u64> = EXITS.with(|h| h.borrow().clone());
    let mut hits_vec: Vec<(u32, u64, u64, u64)> = HITS.with(|h| {
        h.borrow()
            .iter()
            .map(|(&a, &c)| {
                let calls = calls_map.get(&a).copied().unwrap_or(0);
                let exits = exits_map.get(&a).copied().unwrap_or(0);
                (a, c, calls, exits)
            })
            .collect()
    });
    hits_vec.sort_by(|a, b| b.1.cmp(&a.1).then(a.0.cmp(&b.0)));
    let total_hits: u64 = hits_vec.iter().map(|t| t.1).sum();
    let total_calls: u64 = hits_vec.iter().map(|t| t.2).sum();
    let total_exits: u64 = hits_vec.iter().map(|t| t.3).sum();
    let cleanly_paired = hits_vec.iter().filter(|t| t.2 == t.3).count();
    let pending_remaining = PENDING.with(|p| p.borrow().len());

    let mut sink: Box<dyn Write> = match output {
        Some(p) => Box::new(fs::File::create(p).unwrap_or_else(|e| {
            eprintln!("create {p}: {e}");
            process::exit(1);
        })),
        None => Box::new(std::io::stdout()),
    };

    writeln!(sink, "# bn6f-track function tracker: {rom}").unwrap();
    writeln!(sink, "# Frames: {frames}  (no input)").unwrap();
    writeln!(
        sink,
        "# Functions hooked: {armed}  Functions fired: {}",
        hits_vec.len()
    )
    .unwrap();
    writeln!(
        sink,
        "# Total hits: {total_hits}  calls: {total_calls}  exits: {total_exits}"
    )
    .unwrap();
    writeln!(
        sink,
        "# Cleanly paired (calls == exits): {} of {}  pending leftover: {}",
        cleanly_paired,
        hits_vec.len(),
        pending_remaining
    )
    .unwrap();
    writeln!(
        sink,
        "# Replay wall time: {:.3} sec ({:.1} fps)",
        elapsed.as_secs_f64(),
        fps
    )
    .unwrap();
    writeln!(
        sink,
        "# --- hits ---  addr        hits    calls    exits  name"
    )
    .unwrap();
    for (addr, hits, calls, exits) in &hits_vec {
        let name = names
            .get(addr)
            .map(String::as_str)
            .unwrap_or("<unknown>");
        writeln!(
            sink,
            "0x{addr:08X}  {hits:>8} {calls:>8} {exits:>8}  {name}"
        )
        .unwrap();
    }

    if let Some(p) = output {
        eprintln!("wrote {p}");
    }
}

// ---------------------------------------------------------------------
// record — run a session and capture (entry, exit) snapshot pairs for
// a specified set of target functions. Output layout:
//   <session_dir>/<fn_name>/N.entry.bin
//   <session_dir>/<fn_name>/N.exit.bin
// ---------------------------------------------------------------------

fn record(
    rom: &str,
    frames: u32,
    symbols_path: &str,
    session_dir: &str,
    target_hex: &[String],
    input_path: Option<&str>,
) {
    eprintln!("=== bn6f-track record ===");
    eprintln!("rom: {rom}  frames: {frames}");
    eprintln!("session: {session_dir}");
    let inputs: Vec<u16> = if let Some(p) = input_path {
        let bytes = fs::read(p).unwrap_or_else(|e| {
            eprintln!("read input {p}: {e}");
            process::exit(1);
        });
        if bytes.len() % 2 != 0 {
            eprintln!("input file {p} has odd byte count {}", bytes.len());
            process::exit(1);
        }
        let v: Vec<u16> = bytes
            .chunks_exact(2)
            .map(|c| u16::from_le_bytes([c[0], c[1]]))
            .collect();
        eprintln!("input: {p}  {} frames of joypad masks", v.len());
        v
    } else {
        Vec::new()
    };

    let symbols = read_symbols(symbols_path).unwrap_or_else(|e| {
        eprintln!("read_symbols: {e}");
        process::exit(1);
    });
    let names: HashMap<u32, String> = symbols.iter().cloned().collect();

    // Parse target addresses (hex strings with optional 0x).
    let targets: Vec<u32> = target_hex
        .iter()
        .map(|s| {
            let s = s.trim().strip_prefix("0x").unwrap_or(s);
            u32::from_str_radix(s, 16).unwrap_or_else(|e| {
                eprintln!("bad target addr {s}: {e}");
                process::exit(1);
            })
        })
        .collect();
    eprintln!("targets: {}", targets.len());
    for t in &targets {
        let name = names.get(t).map(String::as_str).unwrap_or("<unknown>");
        eprintln!("  0x{t:08X}  {name}");
    }

    // Reset tracker state.
    HITS.with(|h| h.borrow_mut().clear());
    CALLS.with(|h| h.borrow_mut().clear());
    EXITS.with(|h| h.borrow_mut().clear());
    PENDING.with(|p| p.borrow_mut().clear());
    LAST_TRUE_PC.with(|c| *c.borrow_mut() = 0);
    RECORD_ENTRIES.with(|s| s.borrow_mut().clear());
    ENTRIES.with(|e| {
        let mut e = e.borrow_mut();
        e.clear();
        for &(addr, _) in &symbols {
            e.insert(addr);
        }
    });
    FN_END.with(|m| {
        let mut m = m.borrow_mut();
        m.clear();
        let mut sorted: Vec<u32> = symbols.iter().map(|(a, _)| *a).collect();
        sorted.sort();
        sorted.dedup();
        for window in sorted.windows(2) {
            m.insert(window[0], window[1]);
        }
        if let Some(&last) = sorted.last() {
            m.insert(last, u32::MAX);
        }
    });
    RECORD_TARGETS.with(|t| {
        let mut t = t.borrow_mut();
        t.clear();
        for &a in &targets {
            t.insert(a);
        }
    });

    let mut core = Core::new(rom).unwrap_or_else(|e| {
        eprintln!("Core::new failed: {e}");
        process::exit(1);
    });
    core.attach_debugger();

    let t0 = Instant::now();
    if inputs.is_empty() {
        core.run_frames_debugged(frames);
    } else {
        core.run_frames_debugged_with_input(frames, &inputs);
    }
    let elapsed = t0.elapsed();
    eprintln!(
        "emulated {} frames in {:.3}s ({:.1} fps)",
        core.frame_counter(),
        elapsed.as_secs_f64(),
        frames as f64 / elapsed.as_secs_f64()
    );

    // Phase B: for each captured entry, do an isolated run on this
    // same ROM (the "oracle") to compute the expected exit state. We
    // disable IRQs during the run to remove cycle-drift-driven IRQ
    // interleaving — the C reimpl will execute in the same isolated
    // mode during replay, so the diff is clean.
    let entries = RECORD_ENTRIES.with(|s| std::mem::take(&mut *s.borrow_mut()));
    eprintln!("captured {} target entries; computing expected exits...", entries.len());
    drop(core); // release the demo core; we'll spin a fresh one per entry

    fs::create_dir_all(session_dir).unwrap();
    let mut per_fn_counter: HashMap<u32, usize> = HashMap::new();
    let mut wrote = 0usize;
    let mut failed = 0usize;
    for rec in entries {
        let name = names
            .get(&rec.fn_addr)
            .map(String::as_str)
            .unwrap_or("<unknown>");
        let seq = *per_fn_counter
            .entry(rec.fn_addr)
            .and_modify(|c| *c += 1)
            .or_insert(0);
        let fn_dir = format!("{session_dir}/{name}");
        fs::create_dir_all(&fn_dir).unwrap();

        match isolated_run_to(rom, &rec.entry, rec.captured_lr) {
            Ok(exit) => {
                let entry_path = format!("{fn_dir}/{seq:04}.entry.bin");
                let exit_path = format!("{fn_dir}/{seq:04}.exit.delta.bin");
                rec.entry
                    .write_to(std::path::Path::new(&entry_path))
                    .unwrap();
                let delta = snapshot::ExitDelta::from_pair(&rec.entry, &exit);
                delta
                    .write_to(std::path::Path::new(&exit_path))
                    .unwrap();
                wrote += 1;
            }
            Err(e) => {
                failed += 1;
                eprintln!("  {name} #{seq:04} isolated run failed: {e}");
            }
        }
    }
    eprintln!("wrote {wrote} pairs to {session_dir} ({failed} entries failed isolated run)");
}

// ---------------------------------------------------------------------
// isolated_run_to — load an entry snapshot into a fresh core, mask
// IRQs (CPSR.I = 1), single-step until PC reaches `target`, capture
// and return the exit snapshot. Used by both record (to compute the
// expected exit on the oracle ROM) and replay (to compute the actual
// exit on the candidate ROM).
//
// We mask IRQs so the comparison is unaffected by cycle-drift between
// the ASM and C versions of the function — IRQ handlers would
// otherwise mutate memory/registers differently between the two.
// ---------------------------------------------------------------------

fn isolated_run_to(
    rom: &str,
    entry: &snapshot::Snapshot,
    target: u32,
) -> Result<snapshot::Snapshot, String> {
    let core = Core::new(rom).map_err(|e| format!("Core::new: {e}"))?;
    entry.restore(core.raw)?;

    // Mask IRQ at the CPU level (CPSR.I = bit 7) so cycle drift
    // between ASM and C versions can't show up as different IRQ
    // interleavings.
    let cpsr_name = CString::new("cpsr").unwrap();
    let pc_name = CString::new("r15").unwrap();
    unsafe {
        let read = (*core.raw).readRegister.unwrap_unchecked();
        let write = (*core.raw).writeRegister.unwrap_unchecked();
        let mut cpsr: u32 = 0;
        read(core.raw, cpsr_name.as_ptr(), &mut cpsr as *mut u32 as *mut _);
        cpsr |= 0x80;
        write(core.raw, cpsr_name.as_ptr(), &cpsr as *const u32 as *const _);
    }

    const MAX_STEPS: usize = 1_000_000;
    let mut steps = 0usize;
    unsafe {
        let step_fn = (*core.raw).step.expect("core.step is null");
        let read = (*core.raw).readRegister.expect("readRegister is null");
        loop {
            if steps >= MAX_STEPS {
                return Err(format!(
                    "didn't reach LR 0x{target:08X} in {MAX_STEPS} steps"
                ));
            }
            step_fn(core.raw);
            steps += 1;
            let mut pc: u32 = 0;
            let mut cpsr: u32 = 0;
            read(core.raw, pc_name.as_ptr(), &mut pc as *mut u32 as *mut _);
            read(core.raw, cpsr_name.as_ptr(), &mut cpsr as *mut u32 as *mut _);
            let instr_len = if (cpsr & (1 << 5)) != 0 { 2 } else { 4 };
            let true_pc = pc.wrapping_sub(instr_len);
            if true_pc == target {
                break;
            }
        }
    }
    Ok(snapshot::Snapshot::capture(core.raw))
}

// ---------------------------------------------------------------------
// replay — for each fixture in the session dir, load the entry
// snapshot into a freshly-loaded ROM, step until PC reaches the
// captured LR, snapshot the exit, diff against the recorded exit.
// ---------------------------------------------------------------------

fn replay(rom: &str, session_dir: &str) {
    eprintln!("=== bn6f-track replay ===");
    eprintln!("rom: {rom}  session: {session_dir}");

    // Walk session_dir/<fn_name>/N.{entry,exit}.bin
    let mut by_fn: HashMap<String, Vec<usize>> = HashMap::new();
    let session = std::path::Path::new(session_dir);
    let entries = fs::read_dir(session).unwrap_or_else(|e| {
        eprintln!("can't read {session_dir}: {e}");
        process::exit(1);
    });
    for entry in entries.flatten() {
        let path = entry.path();
        if !path.is_dir() {
            continue;
        }
        let fn_name = path.file_name().unwrap().to_string_lossy().to_string();
        let mut seqs: Vec<usize> = Vec::new();
        for sub in fs::read_dir(&path).unwrap().flatten() {
            let fname = sub.file_name().to_string_lossy().to_string();
            if let Some(seq_str) = fname.strip_suffix(".entry.bin") {
                if let Ok(seq) = seq_str.parse::<usize>() {
                    seqs.push(seq);
                }
            }
        }
        seqs.sort();
        by_fn.insert(fn_name, seqs);
    }

    use rayon::prelude::*;

    let mut total_pairs = 0usize;
    let mut total_pass = 0usize;
    let mut total_fail = 0usize;

    // Each fixture's replay is independent — Core::new spawns its own
    // libmgba instance, no shared mutable state. Parallelize.
    for (fn_name, seqs) in &by_fn {
        let results: Vec<(usize, Result<String, String>)> = seqs
            .par_iter()
            .map(|&seq| {
                let entry_path =
                    session.join(fn_name).join(format!("{seq:04}.entry.bin"));
                let exit_path =
                    session.join(fn_name).join(format!("{seq:04}.exit.delta.bin"));
                let expected_entry =
                    snapshot::Snapshot::read_from(&entry_path).map_err(|e| e.to_string())?;
                let expected_delta =
                    snapshot::ExitDelta::read_from(&exit_path).map_err(|e| e.to_string())?;
                let actual_exit =
                    replay_single(rom, &expected_entry, &expected_delta)?;
                let diff = snapshot::diff_delta(
                    &expected_delta,
                    &expected_entry,
                    &actual_exit,
                );
                if diff.is_clean() {
                    Ok(String::new())
                } else {
                    Err(describe_diff(&diff))
                }
            })
            .enumerate()
            .map(|(i, r)| (seqs[i], r))
            .collect();

        let mut pass = 0usize;
        let mut fail = 0usize;
        let mut first_fail_msg = String::new();
        for (_, r) in &results {
            total_pairs += 1;
            match r {
                Ok(_) => pass += 1,
                Err(e) => {
                    fail += 1;
                    if first_fail_msg.is_empty() {
                        first_fail_msg = e.clone();
                    }
                }
            }
        }
        total_pass += pass;
        total_fail += fail;
        let tag = if fail == 0 { "PASS" } else { "FAIL" };
        println!("[{tag}] {fn_name}: {pass}/{} pairs", pass + fail);
        if !first_fail_msg.is_empty() {
            println!("       first failure: {first_fail_msg}");
        }
    }
    println!(
        "\nTotal: {total_pass}/{total_pairs} pairs passed ({total_fail} failed)"
    );
    if total_fail > 0 {
        process::exit(1);
    }
}

fn replay_single(
    rom: &str,
    entry: &snapshot::Snapshot,
    expected_delta: &snapshot::ExitDelta,
) -> Result<snapshot::Snapshot, String> {
    let _ = expected_delta;
    // Captured LR in r14 is the function's return address (Thumb bit
    // possibly set).
    let target = entry.regs[14] & !1u32;
    isolated_run_to(rom, entry, target)
}

fn describe_diff(d: &snapshot::DiffSummary) -> String {
    if let Some((i, exp, act)) = d.must_match_reg_mismatches().next() {
        return format!(
            "{} mismatch: expected 0x{exp:08X}, got 0x{act:08X}",
            snapshot::REG_NAMES[*i]
        );
    }
    if d.ewram_diff_bytes > 0 {
        let first = d.ewram_first_diff.unwrap_or(0);
        return format!(
            "EWRAM diff: {} bytes (first at 0x0200{:04X})",
            d.ewram_diff_bytes,
            first
        );
    }
    if d.iwram_diff_bytes > 0 {
        let first = d.iwram_first_diff.unwrap_or(0);
        return format!(
            "IWRAM diff: {} bytes (first at 0x0300{:04X})",
            d.iwram_diff_bytes,
            first
        );
    }
    String::new()
}

fn usage(prog: &str) -> ! {
    eprintln!(
        "usage:\n  {prog} smoke  ROM [FRAMES]\n  {prog} track  ROM FRAMES SYMBOLS [OUTPUT]\n  {prog} record ROM FRAMES SYMBOLS SESSION_DIR FN_ADDR [FN_ADDR...]\n  {prog} replay ROM SESSION_DIR\n\nLegacy positional form (deprecated):\n  {prog} ROM FRAMES SYMBOLS [OUTPUT]   (= track)\n  {prog} ROM [FRAMES]                  (= smoke)"
    );
    process::exit(2);
}

fn main() {
    silence_libmgba_logger();

    let args: Vec<String> = env::args().collect();
    if args.len() < 2 {
        usage(&args[0]);
    }

    // Subcommand dispatch with legacy fallback to keep `make track` working.
    match args[1].as_str() {
        "smoke" => {
            let rom = args.get(2).unwrap_or_else(|| usage(&args[0]));
            let frames: u32 = args.get(3).and_then(|s| s.parse().ok()).unwrap_or(60);
            smoke_test(rom, frames);
        }
        "track" => {
            let rom = args.get(2).unwrap_or_else(|| usage(&args[0]));
            let frames: u32 = args.get(3).and_then(|s| s.parse().ok()).unwrap_or(300);
            let symbols = args.get(4).unwrap_or_else(|| usage(&args[0]));
            track(rom, frames, symbols, args.get(5).map(String::as_str));
        }
        "record" => {
            // record <rom> <frames> <symbols> <session_dir> [--input <path>] <targets...>
            let rom = args.get(2).unwrap_or_else(|| usage(&args[0]));
            let frames: u32 =
                args.get(3).and_then(|s| s.parse().ok()).unwrap_or_else(|| usage(&args[0]));
            let symbols = args.get(4).unwrap_or_else(|| usage(&args[0]));
            let session_dir = args.get(5).unwrap_or_else(|| usage(&args[0]));
            let mut rest = &args[6..];
            let mut input_path: Option<String> = None;
            if rest.first().map(String::as_str) == Some("--input") {
                input_path = rest.get(1).cloned();
                if input_path.is_none() {
                    eprintln!("--input needs a path");
                    usage(&args[0]);
                }
                rest = &rest[2..];
            }
            if rest.is_empty() {
                usage(&args[0]);
            }
            let targets: Vec<String> = rest.to_vec();
            record(rom, frames, symbols, session_dir, &targets, input_path.as_deref());
        }
        "replay" => {
            let rom = args.get(2).unwrap_or_else(|| usage(&args[0]));
            let session_dir = args.get(3).unwrap_or_else(|| usage(&args[0]));
            replay(rom, session_dir);
        }
        // Legacy positional form: first positional is the ROM. We keep
        // this so existing Makefile targets and scripts continue to work.
        _ => {
            let rom = &args[1];
            let frames: u32 = args.get(2).and_then(|s| s.parse().ok()).unwrap_or(60);
            match args.get(3) {
                Some(symbols) => track(rom, frames, symbols, args.get(4).map(String::as_str)),
                None => smoke_test(rom, frames),
            }
        }
    }
}
