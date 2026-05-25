// Build script: generate Rust FFI bindings for libmgba and link it.
//
// We vendor libmgba 0.11 under ../libmgba/ so we control the
// savestate-format version — current vendored copy can READ states
// emitted by mGBA 0.7 through 0.11 inclusive, covering the modern
// BizHawk BK2 cores.  Set `MGBA_PREFIX=/usr` at build time to fall
// back to the system libmgba (Debian/Ubuntu ships 0.10).

use std::env;
use std::path::PathBuf;

fn main() {
    let prefix = env::var("MGBA_PREFIX").unwrap_or_else(|_| {
        let manifest = env::var("CARGO_MANIFEST_DIR").unwrap();
        PathBuf::from(&manifest)
            .parent()
            .unwrap()
            .join("libmgba")
            .to_string_lossy()
            .into_owned()
    });
    let mgba_include = format!("{prefix}/include");
    let mgba_lib = format!("{prefix}/lib");

    println!("cargo:rustc-link-search=native={mgba_lib}");
    println!("cargo:rustc-link-lib=dylib=mgba");
    // Embed the lib path so direct ./bn6f-track invocations don't
    // need LD_LIBRARY_PATH.
    println!("cargo:rustc-link-arg=-Wl,-rpath,{mgba_lib}");
    println!("cargo:rerun-if-changed=wrapper.h");
    println!("cargo:rerun-if-env-changed=MGBA_PREFIX");

    // Generate the bindings. The wrapper.h pulls the headers we care
    // about. bindgen follows transitive includes.
    let bindings = bindgen::Builder::default()
        .header("wrapper.h")
        .clang_arg(format!("-I{}", mgba_include))
        // libmgba 0.11 gates a chunk of the public API and struct
        // layout behind these build-time defines (ENABLE_VFS exposes
        // mCoreFind/LoadFile; ENABLE_DIRECTORIES inserts the
        // mDirectorySet field in `struct mCore`; M_CORE_GBA keeps the
        // GBA-specific bits in scope).  The shared library was built
        // with all of these enabled, so we mirror that here for
        // bindgen — a mismatch shifts every field after the gated
        // ones, which silently breaks function-pointer dispatch
        // through the mCore vtable at runtime.
        .clang_arg("-DENABLE_VFS=1")
        .clang_arg("-DENABLE_DIRECTORIES=1")
        .clang_arg("-DM_CORE_GBA=1")
        .clang_arg("-DCOLOR_16_BIT=1")
        .clang_arg("-DCOLOR_5_6_5=1")
        // Only generate bindings for the symbols/types we name explicitly
        // — the full mGBA header set is huge and we don't need all of it.
        .allowlist_function("mCore.*")
        .allowlist_function("mLog.*")
        .allowlist_function("mDebugger.*")
        .allowlist_function("ARMDebugger.*")
        .allowlist_function("VFile.*")
        .allowlist_type("VFile")
        .allowlist_type("mCore")
        .allowlist_type("mPlatform")
        .allowlist_type("mCoreFeature")
        .allowlist_type("mDebugger.*")
        .allowlist_type("mBreakpoint.*")
        .allowlist_type("mWatchpoint.*")
        .allowlist_var("mPLATFORM_.*")
        .allowlist_var("mCHECKSUM_.*")
        .allowlist_var("DEBUGGER_.*")
        .allowlist_var("BREAKPOINT_.*")
        // For consistent layout
        .derive_default(true)
        // Don't recursively pull in every type bindgen sees.
        .layout_tests(false)
        .generate()
        .expect("bindgen: failed to generate libmgba bindings");

    let out_path = PathBuf::from(env::var("OUT_DIR").unwrap());
    bindings
        .write_to_file(out_path.join("mgba_sys.rs"))
        .expect("bindgen: failed to write bindings");
}
