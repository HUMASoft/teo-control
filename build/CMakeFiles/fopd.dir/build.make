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
include CMakeFiles/fopd.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/fopd.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fopd.dir/flags.make

CMakeFiles/fopd.dir/src/fopd.cpp.o: CMakeFiles/fopd.dir/flags.make
CMakeFiles/fopd.dir/src/fopd.cpp.o: ../src/fopd.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/humanoids/repos/teo-control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fopd.dir/src/fopd.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fopd.dir/src/fopd.cpp.o -c /home/humanoids/repos/teo-control/src/fopd.cpp

CMakeFiles/fopd.dir/src/fopd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fopd.dir/src/fopd.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/humanoids/repos/teo-control/src/fopd.cpp > CMakeFiles/fopd.dir/src/fopd.cpp.i

CMakeFiles/fopd.dir/src/fopd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fopd.dir/src/fopd.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/humanoids/repos/teo-control/src/fopd.cpp -o CMakeFiles/fopd.dir/src/fopd.cpp.s

CMakeFiles/fopd.dir/src/fopd.cpp.o.requires:

.PHONY : CMakeFiles/fopd.dir/src/fopd.cpp.o.requires

CMakeFiles/fopd.dir/src/fopd.cpp.o.provides: CMakeFiles/fopd.dir/src/fopd.cpp.o.requires
	$(MAKE) -f CMakeFiles/fopd.dir/build.make CMakeFiles/fopd.dir/src/fopd.cpp.o.provides.build
.PHONY : CMakeFiles/fopd.dir/src/fopd.cpp.o.provides

CMakeFiles/fopd.dir/src/fopd.cpp.o.provides.build: CMakeFiles/fopd.dir/src/fopd.cpp.o


# Object files for target fopd
fopd_OBJECTS = \
"CMakeFiles/fopd.dir/src/fopd.cpp.o"

# External object files for target fopd
fopd_EXTERNAL_OBJECTS =

fopd: CMakeFiles/fopd.dir/src/fopd.cpp.o
fopd: CMakeFiles/fopd.dir/build.make
fopd: lib/CiA402Device/libCiA402Device.a
fopd: lib/plot/libiplot.so
fopd: /usr/lib/libplotter.so
fopd: CMakeFiles/fopd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/humanoids/repos/teo-control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fopd"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fopd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fopd.dir/build: fopd

.PHONY : CMakeFiles/fopd.dir/build

CMakeFiles/fopd.dir/requires: CMakeFiles/fopd.dir/src/fopd.cpp.o.requires

.PHONY : CMakeFiles/fopd.dir/requires

CMakeFiles/fopd.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fopd.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fopd.dir/clean

CMakeFiles/fopd.dir/depend:
	cd /home/humanoids/repos/teo-control/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/humanoids/repos/teo-control /home/humanoids/repos/teo-control /home/humanoids/repos/teo-control/build /home/humanoids/repos/teo-control/build /home/humanoids/repos/teo-control/build/CMakeFiles/fopd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fopd.dir/depend
