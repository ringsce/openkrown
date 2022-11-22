# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/opt/local/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/opt/local/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/pedro/Projects/openkrown/openkrown/CMakeFiles /Users/pedro/Projects/openkrown/openkrown//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/pedro/Projects/openkrown/openkrown/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named openkrown

# Build rule for target.
openkrown: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 openkrown
.PHONY : openkrown

# fast build rule for target.
openkrown/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/openkrown.dir/build.make CMakeFiles/openkrown.dir/build
.PHONY : openkrown/fast

#=============================================================================
# Target rules for targets named openkrown_autogen

# Build rule for target.
openkrown_autogen: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 openkrown_autogen
.PHONY : openkrown_autogen

# fast build rule for target.
openkrown_autogen/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/openkrown_autogen.dir/build.make CMakeFiles/openkrown_autogen.dir/build
.PHONY : openkrown_autogen/fast

main.o: main.cpp.o
.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/openkrown.dir/build.make CMakeFiles/openkrown.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i
.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/openkrown.dir/build.make CMakeFiles/openkrown.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s
.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/openkrown.dir/build.make CMakeFiles/openkrown.dir/main.cpp.s
.PHONY : main.cpp.s

mainwindow.o: mainwindow.cpp.o
.PHONY : mainwindow.o

# target to build an object file
mainwindow.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/openkrown.dir/build.make CMakeFiles/openkrown.dir/mainwindow.cpp.o
.PHONY : mainwindow.cpp.o

mainwindow.i: mainwindow.cpp.i
.PHONY : mainwindow.i

# target to preprocess a source file
mainwindow.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/openkrown.dir/build.make CMakeFiles/openkrown.dir/mainwindow.cpp.i
.PHONY : mainwindow.cpp.i

mainwindow.s: mainwindow.cpp.s
.PHONY : mainwindow.s

# target to generate assembly for a file
mainwindow.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/openkrown.dir/build.make CMakeFiles/openkrown.dir/mainwindow.cpp.s
.PHONY : mainwindow.cpp.s

openkrown_autogen/mocs_compilation.o: openkrown_autogen/mocs_compilation.cpp.o
.PHONY : openkrown_autogen/mocs_compilation.o

# target to build an object file
openkrown_autogen/mocs_compilation.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/openkrown.dir/build.make CMakeFiles/openkrown.dir/openkrown_autogen/mocs_compilation.cpp.o
.PHONY : openkrown_autogen/mocs_compilation.cpp.o

openkrown_autogen/mocs_compilation.i: openkrown_autogen/mocs_compilation.cpp.i
.PHONY : openkrown_autogen/mocs_compilation.i

# target to preprocess a source file
openkrown_autogen/mocs_compilation.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/openkrown.dir/build.make CMakeFiles/openkrown.dir/openkrown_autogen/mocs_compilation.cpp.i
.PHONY : openkrown_autogen/mocs_compilation.cpp.i

openkrown_autogen/mocs_compilation.s: openkrown_autogen/mocs_compilation.cpp.s
.PHONY : openkrown_autogen/mocs_compilation.s

# target to generate assembly for a file
openkrown_autogen/mocs_compilation.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/openkrown.dir/build.make CMakeFiles/openkrown.dir/openkrown_autogen/mocs_compilation.cpp.s
.PHONY : openkrown_autogen/mocs_compilation.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... openkrown_autogen"
	@echo "... openkrown"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... mainwindow.o"
	@echo "... mainwindow.i"
	@echo "... mainwindow.s"
	@echo "... openkrown_autogen/mocs_compilation.o"
	@echo "... openkrown_autogen/mocs_compilation.i"
	@echo "... openkrown_autogen/mocs_compilation.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
