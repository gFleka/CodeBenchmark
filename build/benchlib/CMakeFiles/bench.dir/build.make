# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nino/Desktop/benchmark

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nino/Desktop/benchmark/build

# Include any dependencies generated for this target.
include benchlib/CMakeFiles/bench.dir/depend.make

# Include the progress variables for this target.
include benchlib/CMakeFiles/bench.dir/progress.make

# Include the compile flags for this target's objects.
include benchlib/CMakeFiles/bench.dir/flags.make

benchlib/CMakeFiles/bench.dir/bench.cpp.o: benchlib/CMakeFiles/bench.dir/flags.make
benchlib/CMakeFiles/bench.dir/bench.cpp.o: ../benchlib/bench.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nino/Desktop/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object benchlib/CMakeFiles/bench.dir/bench.cpp.o"
	cd /home/nino/Desktop/benchmark/build/benchlib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bench.dir/bench.cpp.o -c /home/nino/Desktop/benchmark/benchlib/bench.cpp

benchlib/CMakeFiles/bench.dir/bench.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bench.dir/bench.cpp.i"
	cd /home/nino/Desktop/benchmark/build/benchlib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nino/Desktop/benchmark/benchlib/bench.cpp > CMakeFiles/bench.dir/bench.cpp.i

benchlib/CMakeFiles/bench.dir/bench.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bench.dir/bench.cpp.s"
	cd /home/nino/Desktop/benchmark/build/benchlib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nino/Desktop/benchmark/benchlib/bench.cpp -o CMakeFiles/bench.dir/bench.cpp.s

benchlib/CMakeFiles/bench.dir/bench.cpp.o.requires:

.PHONY : benchlib/CMakeFiles/bench.dir/bench.cpp.o.requires

benchlib/CMakeFiles/bench.dir/bench.cpp.o.provides: benchlib/CMakeFiles/bench.dir/bench.cpp.o.requires
	$(MAKE) -f benchlib/CMakeFiles/bench.dir/build.make benchlib/CMakeFiles/bench.dir/bench.cpp.o.provides.build
.PHONY : benchlib/CMakeFiles/bench.dir/bench.cpp.o.provides

benchlib/CMakeFiles/bench.dir/bench.cpp.o.provides.build: benchlib/CMakeFiles/bench.dir/bench.cpp.o


# Object files for target bench
bench_OBJECTS = \
"CMakeFiles/bench.dir/bench.cpp.o"

# External object files for target bench
bench_EXTERNAL_OBJECTS =

benchlib/libbench.a: benchlib/CMakeFiles/bench.dir/bench.cpp.o
benchlib/libbench.a: benchlib/CMakeFiles/bench.dir/build.make
benchlib/libbench.a: benchlib/CMakeFiles/bench.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nino/Desktop/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libbench.a"
	cd /home/nino/Desktop/benchmark/build/benchlib && $(CMAKE_COMMAND) -P CMakeFiles/bench.dir/cmake_clean_target.cmake
	cd /home/nino/Desktop/benchmark/build/benchlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bench.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
benchlib/CMakeFiles/bench.dir/build: benchlib/libbench.a

.PHONY : benchlib/CMakeFiles/bench.dir/build

benchlib/CMakeFiles/bench.dir/requires: benchlib/CMakeFiles/bench.dir/bench.cpp.o.requires

.PHONY : benchlib/CMakeFiles/bench.dir/requires

benchlib/CMakeFiles/bench.dir/clean:
	cd /home/nino/Desktop/benchmark/build/benchlib && $(CMAKE_COMMAND) -P CMakeFiles/bench.dir/cmake_clean.cmake
.PHONY : benchlib/CMakeFiles/bench.dir/clean

benchlib/CMakeFiles/bench.dir/depend:
	cd /home/nino/Desktop/benchmark/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nino/Desktop/benchmark /home/nino/Desktop/benchmark/benchlib /home/nino/Desktop/benchmark/build /home/nino/Desktop/benchmark/build/benchlib /home/nino/Desktop/benchmark/build/benchlib/CMakeFiles/bench.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : benchlib/CMakeFiles/bench.dir/depend

