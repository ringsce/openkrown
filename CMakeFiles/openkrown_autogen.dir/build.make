# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/pedro/Projects/openkrown/openkrown

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/pedro/Projects/openkrown/openkrown

# Utility rule file for openkrown_autogen.

# Include any custom commands dependencies for this target.
include CMakeFiles/openkrown_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/openkrown_autogen.dir/progress.make

CMakeFiles/openkrown_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/pedro/Projects/openkrown/openkrown/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target openkrown"
	/opt/local/bin/cmake -E cmake_autogen /Users/pedro/Projects/openkrown/openkrown/CMakeFiles/openkrown_autogen.dir/AutogenInfo.json ""

openkrown_autogen: CMakeFiles/openkrown_autogen
openkrown_autogen: CMakeFiles/openkrown_autogen.dir/build.make
.PHONY : openkrown_autogen

# Rule to build all files generated by this target.
CMakeFiles/openkrown_autogen.dir/build: openkrown_autogen
.PHONY : CMakeFiles/openkrown_autogen.dir/build

CMakeFiles/openkrown_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/openkrown_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/openkrown_autogen.dir/clean

CMakeFiles/openkrown_autogen.dir/depend:
	cd /Users/pedro/Projects/openkrown/openkrown && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/pedro/Projects/openkrown/openkrown /Users/pedro/Projects/openkrown/openkrown /Users/pedro/Projects/openkrown/openkrown /Users/pedro/Projects/openkrown/openkrown /Users/pedro/Projects/openkrown/openkrown/CMakeFiles/openkrown_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/openkrown_autogen.dir/depend

