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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kwerys/Code/ContinousIntegrationPlayground

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kwerys/Code/ContinousIntegrationPlayground/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/runUnitTests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/runUnitTests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/runUnitTests.dir/flags.make

CMakeFiles/runUnitTests.dir/mytest.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/mytest.cpp.o: ../mytest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kwerys/Code/ContinousIntegrationPlayground/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/runUnitTests.dir/mytest.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runUnitTests.dir/mytest.cpp.o -c /Users/kwerys/Code/ContinousIntegrationPlayground/mytest.cpp

CMakeFiles/runUnitTests.dir/mytest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/mytest.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kwerys/Code/ContinousIntegrationPlayground/mytest.cpp > CMakeFiles/runUnitTests.dir/mytest.cpp.i

CMakeFiles/runUnitTests.dir/mytest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/mytest.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kwerys/Code/ContinousIntegrationPlayground/mytest.cpp -o CMakeFiles/runUnitTests.dir/mytest.cpp.s

CMakeFiles/runUnitTests.dir/mytest.cpp.o.requires:

.PHONY : CMakeFiles/runUnitTests.dir/mytest.cpp.o.requires

CMakeFiles/runUnitTests.dir/mytest.cpp.o.provides: CMakeFiles/runUnitTests.dir/mytest.cpp.o.requires
	$(MAKE) -f CMakeFiles/runUnitTests.dir/build.make CMakeFiles/runUnitTests.dir/mytest.cpp.o.provides.build
.PHONY : CMakeFiles/runUnitTests.dir/mytest.cpp.o.provides

CMakeFiles/runUnitTests.dir/mytest.cpp.o.provides.build: CMakeFiles/runUnitTests.dir/mytest.cpp.o


# Object files for target runUnitTests
runUnitTests_OBJECTS = \
"CMakeFiles/runUnitTests.dir/mytest.cpp.o"

# External object files for target runUnitTests
runUnitTests_EXTERNAL_OBJECTS =

runUnitTests: CMakeFiles/runUnitTests.dir/mytest.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/build.make
runUnitTests: libgtest.a
runUnitTests: CMakeFiles/runUnitTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/kwerys/Code/ContinousIntegrationPlayground/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable runUnitTests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/runUnitTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/runUnitTests.dir/build: runUnitTests

.PHONY : CMakeFiles/runUnitTests.dir/build

CMakeFiles/runUnitTests.dir/requires: CMakeFiles/runUnitTests.dir/mytest.cpp.o.requires

.PHONY : CMakeFiles/runUnitTests.dir/requires

CMakeFiles/runUnitTests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/runUnitTests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/runUnitTests.dir/clean

CMakeFiles/runUnitTests.dir/depend:
	cd /Users/kwerys/Code/ContinousIntegrationPlayground/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kwerys/Code/ContinousIntegrationPlayground /Users/kwerys/Code/ContinousIntegrationPlayground /Users/kwerys/Code/ContinousIntegrationPlayground/cmake-build-debug /Users/kwerys/Code/ContinousIntegrationPlayground/cmake-build-debug /Users/kwerys/Code/ContinousIntegrationPlayground/cmake-build-debug/CMakeFiles/runUnitTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/runUnitTests.dir/depend

