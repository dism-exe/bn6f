# Vendored libmgba 0.11

We pin a libmgba 0.11 build here because:

- It can read savestates from mGBA 0.7 through 0.11 inclusive, which
  covers every BizHawk BK2 we throw at it (mainline Debian/Ubuntu
  still ships 0.10 → savestate v7 only).
- The Rust FFI in `tools/bn6f-track/build.rs` defaults to this
  directory; override with `MGBA_PREFIX=/usr` if you want the
  system copy instead.

## Rebuilding from source

```sh
git clone --depth 1 https://github.com/mgba-emu/mgba.git /tmp/mgba
cd /tmp/mgba && mkdir build && cd build
cmake .. -DBUILD_QT=OFF -DBUILD_SDL=OFF -DBUILD_LIBRETRO=OFF \
         -DBUILD_SHARED=ON -DBUILD_STATIC=OFF \
         -DUSE_FFMPEG=OFF -DUSE_SQLITE3=OFF -DUSE_LIBZIP=OFF \
         -DUSE_LZMA=OFF -DUSE_PNG=OFF -DUSE_LUA=OFF \
         -DUSE_DISCORD_RPC=OFF -DUSE_EPOXY=OFF \
         -DCMAKE_INSTALL_PREFIX=/tmp/mgba-install
make -j"$(nproc)"
make install
cp -r /tmp/mgba-install/include/mgba       ./include/
cp -r /tmp/mgba-install/include/mgba-util  ./include/
cp -P /tmp/mgba-install/lib/libmgba.so*    ./lib/
```

After updating, force a rebuild of bn6f-track:

```sh
( cd ../bn6f-track && cargo clean && cargo build --release )
```

If you update past 0.11 and the savestate version bumps again, the
sniff logic in `tools/bn6f-track/src/snapshot.rs::strip_bizhawk_prefix`
only checks the magic byte layout, so it'll keep working.
