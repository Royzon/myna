# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /home/pi/stone/software-install/clion-2017.3.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/pi/stone/software-install/clion-2017.3.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/stone/c++/myna/fc_vec

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/stone/c++/myna/fc_vec/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/fc_vec.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/fc_vec.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fc_vec.dir/flags.make

CMakeFiles/fc_vec.dir/main.cpp.o: CMakeFiles/fc_vec.dir/flags.make
CMakeFiles/fc_vec.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/stone/c++/myna/fc_vec/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fc_vec.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fc_vec.dir/main.cpp.o -c /home/pi/stone/c++/myna/fc_vec/main.cpp

CMakeFiles/fc_vec.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fc_vec.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/stone/c++/myna/fc_vec/main.cpp > CMakeFiles/fc_vec.dir/main.cpp.i

CMakeFiles/fc_vec.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fc_vec.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/stone/c++/myna/fc_vec/main.cpp -o CMakeFiles/fc_vec.dir/main.cpp.s

CMakeFiles/fc_vec.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/fc_vec.dir/main.cpp.o.requires

CMakeFiles/fc_vec.dir/main.cpp.o.provides: CMakeFiles/fc_vec.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/fc_vec.dir/build.make CMakeFiles/fc_vec.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/fc_vec.dir/main.cpp.o.provides

CMakeFiles/fc_vec.dir/main.cpp.o.provides.build: CMakeFiles/fc_vec.dir/main.cpp.o


CMakeFiles/fc_vec.dir/mat/mat.cpp.o: CMakeFiles/fc_vec.dir/flags.make
CMakeFiles/fc_vec.dir/mat/mat.cpp.o: ../mat/mat.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/stone/c++/myna/fc_vec/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/fc_vec.dir/mat/mat.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fc_vec.dir/mat/mat.cpp.o -c /home/pi/stone/c++/myna/fc_vec/mat/mat.cpp

CMakeFiles/fc_vec.dir/mat/mat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fc_vec.dir/mat/mat.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/stone/c++/myna/fc_vec/mat/mat.cpp > CMakeFiles/fc_vec.dir/mat/mat.cpp.i

CMakeFiles/fc_vec.dir/mat/mat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fc_vec.dir/mat/mat.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/stone/c++/myna/fc_vec/mat/mat.cpp -o CMakeFiles/fc_vec.dir/mat/mat.cpp.s

CMakeFiles/fc_vec.dir/mat/mat.cpp.o.requires:

.PHONY : CMakeFiles/fc_vec.dir/mat/mat.cpp.o.requires

CMakeFiles/fc_vec.dir/mat/mat.cpp.o.provides: CMakeFiles/fc_vec.dir/mat/mat.cpp.o.requires
	$(MAKE) -f CMakeFiles/fc_vec.dir/build.make CMakeFiles/fc_vec.dir/mat/mat.cpp.o.provides.build
.PHONY : CMakeFiles/fc_vec.dir/mat/mat.cpp.o.provides

CMakeFiles/fc_vec.dir/mat/mat.cpp.o.provides.build: CMakeFiles/fc_vec.dir/mat/mat.cpp.o


CMakeFiles/fc_vec.dir/mat/test_mat.cpp.o: CMakeFiles/fc_vec.dir/flags.make
CMakeFiles/fc_vec.dir/mat/test_mat.cpp.o: ../mat/test_mat.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/stone/c++/myna/fc_vec/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/fc_vec.dir/mat/test_mat.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fc_vec.dir/mat/test_mat.cpp.o -c /home/pi/stone/c++/myna/fc_vec/mat/test_mat.cpp

CMakeFiles/fc_vec.dir/mat/test_mat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fc_vec.dir/mat/test_mat.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/stone/c++/myna/fc_vec/mat/test_mat.cpp > CMakeFiles/fc_vec.dir/mat/test_mat.cpp.i

CMakeFiles/fc_vec.dir/mat/test_mat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fc_vec.dir/mat/test_mat.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/stone/c++/myna/fc_vec/mat/test_mat.cpp -o CMakeFiles/fc_vec.dir/mat/test_mat.cpp.s

CMakeFiles/fc_vec.dir/mat/test_mat.cpp.o.requires:

.PHONY : CMakeFiles/fc_vec.dir/mat/test_mat.cpp.o.requires

CMakeFiles/fc_vec.dir/mat/test_mat.cpp.o.provides: CMakeFiles/fc_vec.dir/mat/test_mat.cpp.o.requires
	$(MAKE) -f CMakeFiles/fc_vec.dir/build.make CMakeFiles/fc_vec.dir/mat/test_mat.cpp.o.provides.build
.PHONY : CMakeFiles/fc_vec.dir/mat/test_mat.cpp.o.provides

CMakeFiles/fc_vec.dir/mat/test_mat.cpp.o.provides.build: CMakeFiles/fc_vec.dir/mat/test_mat.cpp.o


# Object files for target fc_vec
fc_vec_OBJECTS = \
"CMakeFiles/fc_vec.dir/main.cpp.o" \
"CMakeFiles/fc_vec.dir/mat/mat.cpp.o" \
"CMakeFiles/fc_vec.dir/mat/test_mat.cpp.o"

# External object files for target fc_vec
fc_vec_EXTERNAL_OBJECTS =

fc_vec: CMakeFiles/fc_vec.dir/main.cpp.o
fc_vec: CMakeFiles/fc_vec.dir/mat/mat.cpp.o
fc_vec: CMakeFiles/fc_vec.dir/mat/test_mat.cpp.o
fc_vec: CMakeFiles/fc_vec.dir/build.make
fc_vec: CMakeFiles/fc_vec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/stone/c++/myna/fc_vec/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable fc_vec"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fc_vec.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fc_vec.dir/build: fc_vec

.PHONY : CMakeFiles/fc_vec.dir/build

CMakeFiles/fc_vec.dir/requires: CMakeFiles/fc_vec.dir/main.cpp.o.requires
CMakeFiles/fc_vec.dir/requires: CMakeFiles/fc_vec.dir/mat/mat.cpp.o.requires
CMakeFiles/fc_vec.dir/requires: CMakeFiles/fc_vec.dir/mat/test_mat.cpp.o.requires

.PHONY : CMakeFiles/fc_vec.dir/requires

CMakeFiles/fc_vec.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fc_vec.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fc_vec.dir/clean

CMakeFiles/fc_vec.dir/depend:
	cd /home/pi/stone/c++/myna/fc_vec/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/stone/c++/myna/fc_vec /home/pi/stone/c++/myna/fc_vec /home/pi/stone/c++/myna/fc_vec/cmake-build-debug /home/pi/stone/c++/myna/fc_vec/cmake-build-debug /home/pi/stone/c++/myna/fc_vec/cmake-build-debug/CMakeFiles/fc_vec.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fc_vec.dir/depend

