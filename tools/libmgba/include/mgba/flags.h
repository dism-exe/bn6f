#ifndef FLAGS_H
#define FLAGS_H

#ifndef MINIMAL_CORE
/* #undef MINIMAL_CORE */
#endif

// BUILD flags

#ifndef BUILD_GL
#define BUILD_GL
#endif

#ifndef BUILD_GLES2
#define BUILD_GLES2
#endif

#ifndef BUILD_GLES3
#define BUILD_GLES3
#endif

// Miscellaneous flags

#ifndef COLOR_16_BIT
/* #undef COLOR_16_BIT */
#endif

#ifndef COLOR_5_6_5
/* #undef COLOR_5_6_5 */
#endif

#ifndef DISABLE_THREADING
/* #undef DISABLE_THREADING */
#endif

#ifndef FIXED_ROM_BUFFER
/* #undef FIXED_ROM_BUFFER */
#endif

// M_CORE flags

#ifndef M_CORE_GBA
#define M_CORE_GBA
#endif

#ifndef M_CORE_GB
#define M_CORE_GB
#endif

// ENABLE flags

#ifndef ENABLE_DEBUGGERS
#define ENABLE_DEBUGGERS
#endif

#ifndef ENABLE_DIRECTORIES
/* #undef ENABLE_DIRECTORIES */
#endif

#ifndef ENABLE_GDB_STUB
#define ENABLE_GDB_STUB
#endif

#ifndef ENABLE_SCRIPTING
#define ENABLE_SCRIPTING
#endif

#ifndef ENABLE_VFS
#define ENABLE_VFS
#endif

#ifndef ENABLE_VFS_FD
/* #undef ENABLE_VFS_FD */
#endif

#ifndef ENABLE_VFS_FILE
/* #undef ENABLE_VFS_FILE */
#endif

// USE flags

#ifndef USE_DISCORD_RPC
/* #undef USE_DISCORD_RPC */
#endif

#ifndef USE_EDITLINE
/* #undef USE_EDITLINE */
#endif

#ifndef USE_ELF
/* #undef USE_ELF */
#endif

#ifndef USE_EPOXY
/* #undef USE_EPOXY */
#endif

#ifndef USE_FFMPEG
/* #undef USE_FFMPEG */
#endif

#ifndef USE_FREETYPE
/* #undef USE_FREETYPE */
#endif

#ifndef USE_JSON_C
/* #undef USE_JSON_C */
#endif

#ifndef USE_LIBAV
/* #undef USE_LIBAV */
#endif

#ifndef USE_LIBAVRESAMPLE
/* #undef USE_LIBAVRESAMPLE */
#endif

#ifndef USE_LIBSWRESAMPLE
/* #undef USE_LIBSWRESAMPLE */
#endif

#ifndef USE_LIBZIP
/* #undef USE_LIBZIP */
#endif

#ifndef USE_LUA
/* #undef USE_LUA */
#endif

#ifndef USE_LZMA
/* #undef USE_LZMA */
#endif

#ifndef USE_MINIZIP
/* #undef USE_MINIZIP */
#endif

#ifndef USE_PNG
/* #undef USE_PNG */
#endif

#ifndef USE_PTHREADS
#define USE_PTHREADS
#endif

#ifndef USE_SQLITE3
/* #undef USE_SQLITE3 */
#endif

#ifndef USE_ZLIB
#define USE_ZLIB
#endif

// HAVE flags

#ifndef HAVE_CRC32
#define HAVE_CRC32
#endif

#ifndef HAVE_LOCALE
/* #undef HAVE_LOCALE */
#endif

#ifndef HAVE_LOCALTIME_R
#define HAVE_LOCALTIME_R
#endif

#ifndef HAVE_POPCOUNT32
/* #undef HAVE_POPCOUNT32 */
#endif

#ifndef HAVE_PTHREAD_NP_H
/* #undef HAVE_PTHREAD_NP_H */
#endif

#ifndef HAVE_PTHREAD_SETNAME_NP
#define HAVE_PTHREAD_SETNAME_NP
#endif

#ifndef HAVE_SNPRINTF_L
/* #undef HAVE_SNPRINTF_L */
#endif

#ifndef HAVE_STRDUP
#define HAVE_STRDUP
#endif

#ifndef HAVE_STRLCPY
#define HAVE_STRLCPY
#endif

#ifndef HAVE_STRDUP
#define HAVE_STRDUP
#endif

#ifndef HAVE_STRTOF_L
/* #undef HAVE_STRTOF_L */
#endif

#ifndef HAVE_XLOCALE
/* #undef HAVE_XLOCALE */
#endif

#endif
