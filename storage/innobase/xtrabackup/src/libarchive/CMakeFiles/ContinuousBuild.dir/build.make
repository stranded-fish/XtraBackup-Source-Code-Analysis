# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/percona-xtrabackup-release-2.4.8

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/percona-xtrabackup-release-2.4.8

# Utility rule file for ContinuousBuild.

# Include the progress variables for this target.
include storage/innobase/xtrabackup/src/libarchive/CMakeFiles/ContinuousBuild.dir/progress.make

storage/innobase/xtrabackup/src/libarchive/CMakeFiles/ContinuousBuild:
	cd /root/percona-xtrabackup-release-2.4.8/storage/innobase/xtrabackup/src/libarchive && /usr/bin/ctest -D ContinuousBuild

ContinuousBuild: storage/innobase/xtrabackup/src/libarchive/CMakeFiles/ContinuousBuild
ContinuousBuild: storage/innobase/xtrabackup/src/libarchive/CMakeFiles/ContinuousBuild.dir/build.make
.PHONY : ContinuousBuild

# Rule to build all files generated by this target.
storage/innobase/xtrabackup/src/libarchive/CMakeFiles/ContinuousBuild.dir/build: ContinuousBuild
.PHONY : storage/innobase/xtrabackup/src/libarchive/CMakeFiles/ContinuousBuild.dir/build

storage/innobase/xtrabackup/src/libarchive/CMakeFiles/ContinuousBuild.dir/clean:
	cd /root/percona-xtrabackup-release-2.4.8/storage/innobase/xtrabackup/src/libarchive && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousBuild.dir/cmake_clean.cmake
.PHONY : storage/innobase/xtrabackup/src/libarchive/CMakeFiles/ContinuousBuild.dir/clean

storage/innobase/xtrabackup/src/libarchive/CMakeFiles/ContinuousBuild.dir/depend:
	cd /root/percona-xtrabackup-release-2.4.8 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/percona-xtrabackup-release-2.4.8 /root/percona-xtrabackup-release-2.4.8/storage/innobase/xtrabackup/src/libarchive /root/percona-xtrabackup-release-2.4.8 /root/percona-xtrabackup-release-2.4.8/storage/innobase/xtrabackup/src/libarchive /root/percona-xtrabackup-release-2.4.8/storage/innobase/xtrabackup/src/libarchive/CMakeFiles/ContinuousBuild.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : storage/innobase/xtrabackup/src/libarchive/CMakeFiles/ContinuousBuild.dir/depend

