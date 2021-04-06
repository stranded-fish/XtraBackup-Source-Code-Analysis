# The set of languages for which implicit dependencies are needed:
SET(CMAKE_DEPENDS_LANGUAGES
  "C"
  )
# The set of files for implicit dependencies of each language:
SET(CMAKE_DEPENDS_CHECK_C
  "/root/percona-xtrabackup-release-2.4.8/storage/innobase/xtrabackup/src/xbcrypt.c" "/root/percona-xtrabackup-release-2.4.8/storage/innobase/xtrabackup/src/CMakeFiles/xbcrypt.dir/xbcrypt.c.o"
  "/root/percona-xtrabackup-release-2.4.8/storage/innobase/xtrabackup/src/xbcrypt_common.c" "/root/percona-xtrabackup-release-2.4.8/storage/innobase/xtrabackup/src/CMakeFiles/xbcrypt.dir/xbcrypt_common.c.o"
  "/root/percona-xtrabackup-release-2.4.8/storage/innobase/xtrabackup/src/xbcrypt_read.c" "/root/percona-xtrabackup-release-2.4.8/storage/innobase/xtrabackup/src/CMakeFiles/xbcrypt.dir/xbcrypt_read.c.o"
  "/root/percona-xtrabackup-release-2.4.8/storage/innobase/xtrabackup/src/xbcrypt_write.c" "/root/percona-xtrabackup-release-2.4.8/storage/innobase/xtrabackup/src/CMakeFiles/xbcrypt.dir/xbcrypt_write.c.o"
  )
SET(CMAKE_C_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
SET(CMAKE_TARGET_DEFINITIONS
  "COMPILER_HINTS"
  "HAVE_CONFIG_H"
  "HAVE_FALLOC_PUNCH_HOLE_AND_KEEP_SIZE=1"
  "HAVE_IB_ATOMIC_PTHREAD_T_GCC=1"
  "HAVE_IB_GCC_ATOMIC_COMPARE_EXCHANGE=1"
  "HAVE_IB_GCC_ATOMIC_THREAD_FENCE=1"
  "HAVE_IB_GCC_SYNC_SYNCHRONISE=1"
  "HAVE_IB_LINUX_FUTEX=1"
  "HAVE_LZ4=1"
  "HAVE_NANOSLEEP=1"
  "HAVE_SCHED_GETCPU=1"
  "LINUX_NATIVE_AIO=1"
  "MUTEX_EVENT"
  "XTRABACKUP"
  "_FILE_OFFSET_BITS=64"
  "_GNU_SOURCE"
  )

# Targets to which this target links.
SET(CMAKE_TARGET_LINKED_INFO_FILES
  "/root/percona-xtrabackup-release-2.4.8/mysys/CMakeFiles/mysys.dir/DependInfo.cmake"
  "/root/percona-xtrabackup-release-2.4.8/mysys_ssl/CMakeFiles/mysys_ssl.dir/DependInfo.cmake"
  "/root/percona-xtrabackup-release-2.4.8/storage/innobase/xtrabackup/src/crc/CMakeFiles/crc.dir/DependInfo.cmake"
  "/root/percona-xtrabackup-release-2.4.8/dbug/CMakeFiles/dbug.dir/DependInfo.cmake"
  "/root/percona-xtrabackup-release-2.4.8/strings/CMakeFiles/strings.dir/DependInfo.cmake"
  "/root/percona-xtrabackup-release-2.4.8/extra/yassl/CMakeFiles/yassl.dir/DependInfo.cmake"
  "/root/percona-xtrabackup-release-2.4.8/extra/yassl/taocrypt/CMakeFiles/taocrypt.dir/DependInfo.cmake"
  )

# The include file search paths:
SET(CMAKE_C_TARGET_INCLUDE_PATH
  "include"
  "extra/rapidjson/include"
  "libbinlogevents/include"
  "libbinlogevents/export"
  "extra/lz4"
  "storage/innobase/include"
  "storage/innobase/handler"
  "sql"
  "sql/auth"
  "regex"
  "extra/yassl/include"
  "extra/yassl/taocrypt/include"
  "storage/innobase/xtrabackup/src/libarchive/libarchive"
  "storage/innobase/xtrabackup/src/quicklz"
  "storage/innobase/xtrabackup/src/jsmn"
  "storage/innobase/xtrabackup/src/crc"
  "storage/innobase/xtrabackup/src"
  )
SET(CMAKE_CXX_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_Fortran_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_ASM_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
