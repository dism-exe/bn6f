// Snapshot — structured capture of an mGBA core's machine state at a
// function entry or exit boundary.
//
// We deliberately use structured extraction (registers + memory regions)
// rather than mGBA's opaque savestate format because:
//   - The on-disk fixture is interpretable: anyone can dump and diff it.
//   - Diffs are explainable: "r4 differs" / "EWRAM[0x12340..0x12344]
//     differs", not "byte 9472 of a 280 KB opaque blob differs".
//   - Smaller fixtures (skip the IO/timer/DMA state that's incidental
//     to most pure-leaf functions).
//   - Cross-version stable (libmgba savestate format may evolve;
//     structured fields are tied to GBA architecture).
//
// Limitation: we don't capture I/O regs, DMA mid-transfer state, timer
// counters, etc. For functions that depend on them we'd need an
// extended snapshot. Pure-leaf register/memory functions (ByteFill,
// CopyBytes, ...) are fine with this.

use std::fs::File;
use std::io::{Read, Write};
use std::path::Path;

use crate::mgba_sys;

const EWRAM_BASE: u32 = 0x02000000;
const EWRAM_SIZE: usize = 0x40000; // 256 KB
const IWRAM_BASE: u32 = 0x03000000;
const IWRAM_SIZE: usize = 0x8000; // 32 KB

/// 18 ARM-mode-visible registers we capture and compare.
pub const REG_NAMES: [&str; 18] = [
    "r0", "r1", "r2", "r3", "r4", "r5", "r6", "r7", "r8", "r9", "r10",
    "r11", "r12", "r13", "r14", "r15", "cpsr", "spsr",
];

#[derive(Clone)]
pub struct Snapshot {
    pub regs: [u32; 18],
    pub ewram: Vec<u8>,
    pub iwram: Vec<u8>,
    /// Full libmgba savestate bytes. Opaque but comprehensive — captures
    /// the prefetch buffer, scheduled events, DMA state, timer counters
    /// etc. We use this for restore (to keep the emulator state
    /// consistent) and keep the structured fields above for diff
    /// (interpretable, version-stable).
    pub savestate: Vec<u8>,
}

impl Snapshot {
    pub fn capture(core: *mut mgba_sys::mCore) -> Self {
        let mut regs = [0u32; 18];
        for (i, name) in REG_NAMES.iter().enumerate() {
            let c = std::ffi::CString::new(*name).unwrap();
            unsafe {
                let read = (*core).readRegister.unwrap_unchecked();
                let _ = read(
                    core,
                    c.as_ptr(),
                    &mut regs[i] as *mut u32 as *mut std::ffi::c_void,
                );
            }
        }
        let ewram = read_block(core, EWRAM_BASE, EWRAM_SIZE);
        let iwram = read_block(core, IWRAM_BASE, IWRAM_SIZE);
        let savestate = save_state_bytes(core);
        Snapshot { regs, ewram, iwram, savestate }
    }

    /// Two-phase restore:
    ///   1. Load the savestate (bulletproof — gives us most of the
    ///      emulator's internal state including DMA / scheduler /
    ///      timers / banked regs).
    ///   2. Then explicitly write CPSR + each GPR + memory blocks +
    ///      finally PC-as-branch-target. The PC write forces mGBA's
    ///      ARM core to flush the savestate's prefetch buffer (which
    ///      may contain instructions from the SAVESTATE-ORIGINATING
    ///      ROM, wrong if we're replaying on a different ROM build).
    pub fn restore(&self, core: *mut mgba_sys::mCore) -> Result<(), String> {
        load_state_bytes(core, &self.savestate)?;

        // CPSR first (so PC writes are interpreted in the right mode).
        let cpsr = self.regs[16];
        let thumb = (cpsr & (1 << 5)) != 0;
        let pc = self.regs[15];
        // mGBA's writeRegister("r15", X) is a bx-style branch: it
        // INTERPRETS X as a branch target and internally sets gprs[15]
        // = (X & !1) + instr_len (the pipeline-advanced value). So to
        // land back at the captured gprs[15] we have to feed it
        // (captured - instr_len) and let mGBA add it back.
        let instr_len: u32 = if thumb { 2 } else { 4 };
        let target = pc.wrapping_sub(instr_len);
        let pc_for_branch = if thumb { (target & !1) | 1 } else { target & !3 };

        unsafe {
            let write = (*core).writeRegister.unwrap_unchecked();
            let cs = std::ffi::CString::new("cpsr").unwrap();
            write(core, cs.as_ptr(), &cpsr as *const u32 as *const _);

            // Restore GPRs r0..r14 explicitly so mGBA's internal copies
            // (caches, named-register tables) are coherent regardless
            // of whether the savestate restored them.
            for i in 0..15 {
                let c = std::ffi::CString::new(REG_NAMES[i]).unwrap();
                let v = self.regs[i];
                write(core, c.as_ptr(), &v as *const u32 as *const _);
            }

            // Memory regions.
            write_block(core, EWRAM_BASE, &self.ewram);
            write_block(core, IWRAM_BASE, &self.iwram);

            // PC LAST, as a bx-style branch (bit 0 set if Thumb). This
            // forces mGBA to flush its prefetch buffer and refetch the
            // next two instructions from whatever ROM is loaded.
            let ps = std::ffi::CString::new("r15").unwrap();
            write(core, ps.as_ptr(), &pc_for_branch as *const u32 as *const _);
        }
        Ok(())
    }

    /// On-disk format:
    ///   magic "BNSS"     (4 bytes)
    ///   version u32      (2 — bumped from v1 when savestate was added)
    ///   regs[18] u32
    ///   ewram_len u32 + bytes
    ///   iwram_len u32 + bytes
    ///   savestate_len u32 + bytes
    pub fn write_to(&self, path: &Path) -> std::io::Result<()> {
        let mut f = File::create(path)?;
        f.write_all(b"BNSS")?;
        f.write_all(&2u32.to_le_bytes())?;
        for r in &self.regs {
            f.write_all(&r.to_le_bytes())?;
        }
        f.write_all(&(self.ewram.len() as u32).to_le_bytes())?;
        f.write_all(&self.ewram)?;
        f.write_all(&(self.iwram.len() as u32).to_le_bytes())?;
        f.write_all(&self.iwram)?;
        f.write_all(&(self.savestate.len() as u32).to_le_bytes())?;
        f.write_all(&self.savestate)?;
        Ok(())
    }

    pub fn read_from(path: &Path) -> std::io::Result<Self> {
        let mut f = File::open(path)?;
        let mut magic = [0u8; 4];
        f.read_exact(&mut magic)?;
        if &magic != b"BNSS" {
            return Err(std::io::Error::new(
                std::io::ErrorKind::InvalidData,
                "bad magic",
            ));
        }
        let mut buf4 = [0u8; 4];
        f.read_exact(&mut buf4)?;
        let version = u32::from_le_bytes(buf4);
        if version != 2 {
            return Err(std::io::Error::new(
                std::io::ErrorKind::InvalidData,
                format!("unsupported snapshot version {version}"),
            ));
        }

        let mut regs = [0u32; 18];
        for r in regs.iter_mut() {
            f.read_exact(&mut buf4)?;
            *r = u32::from_le_bytes(buf4);
        }
        f.read_exact(&mut buf4)?;
        let elen = u32::from_le_bytes(buf4) as usize;
        let mut ewram = vec![0u8; elen];
        f.read_exact(&mut ewram)?;
        f.read_exact(&mut buf4)?;
        let ilen = u32::from_le_bytes(buf4) as usize;
        let mut iwram = vec![0u8; ilen];
        f.read_exact(&mut iwram)?;
        f.read_exact(&mut buf4)?;
        let slen = u32::from_le_bytes(buf4) as usize;
        let mut savestate = vec![0u8; slen];
        f.read_exact(&mut savestate)?;
        Ok(Snapshot { regs, ewram, iwram, savestate })
    }
}

// ---------------------------------------------------------------------
// libmgba savestate I/O via in-memory VFile (VFileMemChunk grows on
// write).
// ---------------------------------------------------------------------

fn save_state_bytes(core: *mut mgba_sys::mCore) -> Vec<u8> {
    unsafe {
        // VFileMemChunk(NULL, 0) makes an empty growable in-memory file.
        let vf = mgba_sys::VFileMemChunk(std::ptr::null(), 0);
        if vf.is_null() {
            return Vec::new();
        }
        let ok = mgba_sys::mCoreSaveStateNamed(core, vf, 0);
        if !ok {
            if let Some(close) = (*vf).close { close(vf); }
            return Vec::new();
        }
        // Read it all back. Seek to start, then read size bytes.
        let size = if let Some(sz) = (*vf).size {
            sz(vf) as usize
        } else { 0 };
        let mut buf = vec![0u8; size];
        if let Some(seek) = (*vf).seek {
            seek(vf, 0, libc::SEEK_SET);
        }
        if let Some(read) = (*vf).read {
            read(vf, buf.as_mut_ptr() as *mut std::ffi::c_void, size);
        }
        if let Some(close) = (*vf).close { close(vf); }
        buf
    }
}

fn load_state_bytes(core: *mut mgba_sys::mCore, bytes: &[u8]) -> Result<(), String> {
    unsafe {
        // VFileFromMemory wraps a fixed-size buffer that the file
        // reads/writes through. We're only reading so a const cast
        // is safe — libmgba won't write through this path.
        let vf = mgba_sys::VFileFromMemory(
            bytes.as_ptr() as *mut std::ffi::c_void,
            bytes.len(),
        );
        if vf.is_null() {
            return Err("VFileFromMemory returned null".into());
        }
        let ok = mgba_sys::mCoreLoadStateNamed(core, vf, 0);
        if let Some(close) = (*vf).close { close(vf); }
        if !ok {
            return Err("mCoreLoadStateNamed returned false".into());
        }
        Ok(())
    }
}

/// Structured diff between an expected (recorded) exit snapshot and
/// the actual (replayed) exit snapshot.
///
/// `sp_at_exit` is the SP from the recorded snapshot; we use it to skip
/// "dead" stack bytes (memory below SP at the function's exit is no
/// longer live and any non-determinism there is benign).
pub struct DiffSummary {
    pub reg_diffs: Vec<(usize, u32, u32)>, // (idx, expected, actual)
    pub ewram_diff_bytes: usize,
    pub iwram_diff_bytes: usize,
    pub ewram_first_diff: Option<usize>,
    pub iwram_first_diff: Option<usize>,
}

impl DiffSummary {
    pub fn is_clean(&self) -> bool {
        self.reg_diffs.iter().all(|(i, _, _)| !is_must_match(*i))
            && self.ewram_diff_bytes == 0
            && self.iwram_diff_bytes == 0
    }

    pub fn must_match_reg_mismatches(&self) -> impl Iterator<Item = &(usize, u32, u32)> {
        self.reg_diffs.iter().filter(|(i, _, _)| is_must_match(*i))
    }
}

/// APCS callee-saved registers: r4-r11 + SP (r13). The C compiler must
/// preserve these across the call. r0 is the return value — must match
/// for value-returning functions but is scratch for void functions; we
/// don't yet have per-function type info so we treat it as scratch and
/// rely on the memory diff to catch correctness bugs. r1-r3, r12, LR
/// are caller-saved scratch.
pub fn is_must_match(reg_idx: usize) -> bool {
    matches!(reg_idx, 4..=11 | 13)
}

pub fn diff(expected: &Snapshot, actual: &Snapshot, sp_at_exit: u32) -> DiffSummary {
    let mut reg_diffs = Vec::new();
    for i in 0..18 {
        if expected.regs[i] != actual.regs[i] {
            reg_diffs.push((i, expected.regs[i], actual.regs[i]));
        }
    }

    // EWRAM diff: full byte-for-byte compare. SP is typically in IWRAM
    // (system stack at 0x03007F00) so SP-based culling applies to
    // IWRAM. EWRAM gets the full comparison.
    let mut ewram_diff_bytes = 0;
    let mut ewram_first_diff = None;
    for (i, (a, b)) in expected.ewram.iter().zip(actual.ewram.iter()).enumerate() {
        if a != b {
            ewram_diff_bytes += 1;
            ewram_first_diff.get_or_insert(i);
        }
    }

    // IWRAM diff: skip bytes below SP-at-exit (dead stack).
    let mut iwram_diff_bytes = 0;
    let mut iwram_first_diff = None;
    let sp_offset = if (IWRAM_BASE..IWRAM_BASE + IWRAM_SIZE as u32).contains(&sp_at_exit) {
        (sp_at_exit - IWRAM_BASE) as usize
    } else {
        0
    };
    for (i, (a, b)) in expected
        .iwram
        .iter()
        .zip(actual.iwram.iter())
        .enumerate()
        .skip(sp_offset)
    {
        if a != b {
            iwram_diff_bytes += 1;
            iwram_first_diff.get_or_insert(i);
        }
    }

    DiffSummary {
        reg_diffs,
        ewram_diff_bytes,
        iwram_diff_bytes,
        ewram_first_diff,
        iwram_first_diff,
    }
}

// ---------------------------------------------------------------------
// Memory block helpers — read/write guest RAM via libmgba's
// mCoreGetMemoryBlock, which returns a host pointer to the contiguous
// view of guest memory. Faster than busRead/Write per byte.
// ---------------------------------------------------------------------

fn read_block(core: *mut mgba_sys::mCore, start: u32, size: usize) -> Vec<u8> {
    let mut sz: usize = 0;
    let ptr = unsafe { mgba_sys::mCoreGetMemoryBlock(core, start, &mut sz as *mut usize) };
    if ptr.is_null() || sz < size {
        return vec![0u8; size];
    }
    let slice = unsafe { std::slice::from_raw_parts(ptr as *const u8, size) };
    slice.to_vec()
}

fn write_block(core: *mut mgba_sys::mCore, start: u32, data: &[u8]) {
    let mut sz: usize = 0;
    let ptr = unsafe { mgba_sys::mCoreGetMemoryBlock(core, start, &mut sz as *mut usize) };
    if ptr.is_null() || sz < data.len() {
        return;
    }
    let dst = unsafe { std::slice::from_raw_parts_mut(ptr as *mut u8, data.len()) };
    dst.copy_from_slice(data);
}
