# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/humanoids/repos/teo-control

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/humanoids/repos/teo-control/build

# Include any dependencies generated for this target.
include CMakeFiles/Limb.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Limb.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Limb.dir/flags.make

CMakeFiles/Limb.dir/src/Limb.cpp.o: CMakeFiles/Limb.dir/flags.make
CMakeFiles/Limb.dir/src/Limb.cpp.o: ../src/Limb.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/humanoids/repos/teo-control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Limb.dir/src/Limb.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Limb.dir/src/Limb.cpp.o -c /home/humanoids/repos/teo-control/src/Limb.cpp

CMakeFiles/Limb.dir/src/Limb.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Limb.dir/src/Limb.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/humanoids/repos/teo-control/src/Limb.cpp > CMakeFiles/Limb.dir/src/Limb.cpp.i

CMakeFiles/Limb.dir/src/Limb.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Limb.dir/src/Limb.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/humanoids/repos/teo-control/src/Limb.cpp -o CMakeFiles/Limb.dir/src/Limb.cpp.s

CMakeFiles/Limb.dir/src/Limb.cpp.o.requires:

.PHONY : CMakeFiles/Limb.dir/src/Limb.cpp.o.requires

CMakeFiles/Limb.dir/src/Limb.cpp.o.provides: CMakeFiles/Limb.dir/src/Limb.cpp.o.requires
	$(MAKE) -f CMakeFiles/Limb.dir/build.make CMakeFiles/Limb.dir/src/Limb.cpp.o.provides.build
.PHONY : CMakeFiles/Limb.dir/src/Limb.cpp.o.provides

CMakeFiles/Limb.dir/src/Limb.cpp.o.provides.build: CMakeFiles/Limb.dir/src/Limb.cpp.o


# Object files for target Limb
Limb_OBJECTS = \
"CMakeFiles/Limb.dir/src/Limb.cpp.o"

# External object files for target Limb
Limb_EXTERNAL_OBJECTS =

Limb: CMakeFiles/Limb.dir/src/Limb.cpp.o
Limb: CMakeFiles/Limb.dir/build.make
Limb: lib/CiA402Device/libCiA402Device.a
Limb: lib/plot/libiplot.so
Limb: /usr/lib/libplotter.so
Limb: CMakeFiles/Limb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/humanoids/repos/teo-control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Limb"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Limb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Limb.dir/build: Limb

.PHONY : CMakeFiles/Limb.dir/build

CMakeFiles/Limb.dir/requires: CMakeFiles/Limb.dir/src/Limb.cpp.o.requires

.PHONY : CMakeFiles/Limb.dir/requires

CMakeFiles/Limb.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Limb.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Limb.dir/clean

CMakeFiles/Limb.dir/depend:
	cd /home/humanoids/repos/teo-control/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/humanoids/repos/teo-control /home/humanoids/repos/teo-control /home/humanoids/repos/teo-control/build /home/humanoids/repos/teo-control/build /home/humanoids/repos/teo-control/build/CMakeFiles/Limb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Limb.dir/depend

