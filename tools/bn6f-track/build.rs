// Build script: generate Rust FFI bindings for libmgba from the system
// headers under /usr/include/mgba, and emit linker directives to pull
// in libmgba.so.

use std::env;
use std::path::PathBuf;

fn main() {
    let mgba_include = "/usr/include";

    // Tell cargo where libmgba lives and what to link.
    println!("cargo:rustc-link-lib=dylib=mgba");
    println!("cargo:rerun-if-changed=wrapper.h");

    // Generate the bindings. The wrapper.h pulls the headers we care
    // about. bindgen follows transitive includes.
    let bindings = bindgen::Builder::default()
        .header("wrapper.h")
        .clang_arg(format!("-I{}", mgba_include))
        // Only generate bindings for the symbols/types we name explicitly
        // — the full mGBA header set is huge and we don't need all of it.
        .allowlist_function("mCore.*")
        .allowlist_function("mLog.*")
        .allowlist_function("mDebugger.*")
        .allowlist_function("ARMDebugger.*")
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
