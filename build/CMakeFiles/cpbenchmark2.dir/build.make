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
include CMakeFiles/cpbenchmark2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cpbenchmark2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cpbenchmark2.dir/flags.make

CMakeFiles/cpbenchmark2.dir/p02.cpp.o: CMakeFiles/cpbenchmark2.dir/flags.make
CMakeFiles/cpbenchmark2.dir/p02.cpp.o: ../p02.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nino/Desktop/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cpbenchmark2.dir/p02.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpbenchmark2.dir/p02.cpp.o -c /home/nino/Desktop/benchmark/p02.cpp

CMakeFiles/cpbenchmark2.dir/p02.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpbenchmark2.dir/p02.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nino/Desktop/benchmark/p02.cpp > CMakeFiles/cpbenchmark2.dir/p02.cpp.i

CMakeFiles/cpbenchmark2.dir/p02.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpbenchmark2.dir/p02.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nino/Desktop/benchmark/p02.cpp -o CMakeFiles/cpbenchmark2.dir/p02.cpp.s

CMakeFiles/cpbenchmark2.dir/p02.cpp.o.requires:

.PHONY : CMakeFiles/cpbenchmark2.dir/p02.cpp.o.requires

CMakeFiles/cpbenchmark2.dir/p02.cpp.o.provides: CMakeFiles/cpbenchmark2.dir/p02.cpp.o.requires
	$(MAKE) -f CMakeFiles/cpbenchmark2.dir/build.make CMakeFiles/cpbenchmark2.dir/p02.cpp.o.provides.build
.PHONY : CMakeFiles/cpbenchmark2.dir/p02.cpp.o.provides

CMakeFiles/cpbenchmark2.dir/p02.cpp.o.provides.build: CMakeFiles/cpbenchmark2.dir/p02.cpp.o


# Object files for target cpbenchmark2
cpbenchmark2_OBJECTS = \
"CMakeFiles/cpbenchmark2.dir/p02.cpp.o"

# External object files for target cpbenchmark2
cpbenchmark2_EXTERNAL_OBJECTS =

cpbenchmark2: CMakeFiles/cpbenchmark2.dir/p02.cpp.o
cpbenchmark2: CMakeFiles/cpbenchmark2.dir/build.make
cpbenchmark2: CMakeFiles/cpbenchmark2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nino/Desktop/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cpbenchmark2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpbenchmark2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cpbenchmark2.dir/build: cpbenchmark2

.PHONY : CMakeFiles/cpbenchmark2.dir/build

CMakeFiles/cpbenchmark2.dir/requires: CMakeFiles/cpbenchmark2.dir/p02.cpp.o.requires

.PHONY : CMakeFiles/cpbenchmark2.dir/requires

CMakeFiles/cpbenchmark2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cpbenchmark2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cpbenchmark2.dir/clean

CMakeFiles/cpbenchmark2.dir/depend:
	cd /home/nino/Desktop/benchmark/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nino/Desktop/benchmark /home/nino/Desktop/benchmark /home/nino/Desktop/benchmark/build /home/nino/Desktop/benchmark/build /home/nino/Desktop/benchmark/build/CMakeFiles/cpbenchmark2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cpbenchmark2.dir/depend

