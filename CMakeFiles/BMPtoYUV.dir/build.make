# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.5/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV"

# Include any dependencies generated for this target.
include CMakeFiles/BMPtoYUV.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/BMPtoYUV.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/BMPtoYUV.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BMPtoYUV.dir/flags.make

CMakeFiles/BMPtoYUV.dir/main.cpp.o: CMakeFiles/BMPtoYUV.dir/flags.make
CMakeFiles/BMPtoYUV.dir/main.cpp.o: main.cpp
CMakeFiles/BMPtoYUV.dir/main.cpp.o: CMakeFiles/BMPtoYUV.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BMPtoYUV.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BMPtoYUV.dir/main.cpp.o -MF CMakeFiles/BMPtoYUV.dir/main.cpp.o.d -o CMakeFiles/BMPtoYUV.dir/main.cpp.o -c "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV/main.cpp"

CMakeFiles/BMPtoYUV.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/BMPtoYUV.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV/main.cpp" > CMakeFiles/BMPtoYUV.dir/main.cpp.i

CMakeFiles/BMPtoYUV.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/BMPtoYUV.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV/main.cpp" -o CMakeFiles/BMPtoYUV.dir/main.cpp.s

CMakeFiles/BMPtoYUV.dir/bmp.cpp.o: CMakeFiles/BMPtoYUV.dir/flags.make
CMakeFiles/BMPtoYUV.dir/bmp.cpp.o: bmp.cpp
CMakeFiles/BMPtoYUV.dir/bmp.cpp.o: CMakeFiles/BMPtoYUV.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/BMPtoYUV.dir/bmp.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BMPtoYUV.dir/bmp.cpp.o -MF CMakeFiles/BMPtoYUV.dir/bmp.cpp.o.d -o CMakeFiles/BMPtoYUV.dir/bmp.cpp.o -c "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV/bmp.cpp"

CMakeFiles/BMPtoYUV.dir/bmp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/BMPtoYUV.dir/bmp.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV/bmp.cpp" > CMakeFiles/BMPtoYUV.dir/bmp.cpp.i

CMakeFiles/BMPtoYUV.dir/bmp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/BMPtoYUV.dir/bmp.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV/bmp.cpp" -o CMakeFiles/BMPtoYUV.dir/bmp.cpp.s

CMakeFiles/BMPtoYUV.dir/yuv.cpp.o: CMakeFiles/BMPtoYUV.dir/flags.make
CMakeFiles/BMPtoYUV.dir/yuv.cpp.o: yuv.cpp
CMakeFiles/BMPtoYUV.dir/yuv.cpp.o: CMakeFiles/BMPtoYUV.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/BMPtoYUV.dir/yuv.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BMPtoYUV.dir/yuv.cpp.o -MF CMakeFiles/BMPtoYUV.dir/yuv.cpp.o.d -o CMakeFiles/BMPtoYUV.dir/yuv.cpp.o -c "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV/yuv.cpp"

CMakeFiles/BMPtoYUV.dir/yuv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/BMPtoYUV.dir/yuv.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV/yuv.cpp" > CMakeFiles/BMPtoYUV.dir/yuv.cpp.i

CMakeFiles/BMPtoYUV.dir/yuv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/BMPtoYUV.dir/yuv.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV/yuv.cpp" -o CMakeFiles/BMPtoYUV.dir/yuv.cpp.s

# Object files for target BMPtoYUV
BMPtoYUV_OBJECTS = \
"CMakeFiles/BMPtoYUV.dir/main.cpp.o" \
"CMakeFiles/BMPtoYUV.dir/bmp.cpp.o" \
"CMakeFiles/BMPtoYUV.dir/yuv.cpp.o"

# External object files for target BMPtoYUV
BMPtoYUV_EXTERNAL_OBJECTS =

BMPtoYUV: CMakeFiles/BMPtoYUV.dir/main.cpp.o
BMPtoYUV: CMakeFiles/BMPtoYUV.dir/bmp.cpp.o
BMPtoYUV: CMakeFiles/BMPtoYUV.dir/yuv.cpp.o
BMPtoYUV: CMakeFiles/BMPtoYUV.dir/build.make
BMPtoYUV: CMakeFiles/BMPtoYUV.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable BMPtoYUV"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BMPtoYUV.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BMPtoYUV.dir/build: BMPtoYUV
.PHONY : CMakeFiles/BMPtoYUV.dir/build

CMakeFiles/BMPtoYUV.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BMPtoYUV.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BMPtoYUV.dir/clean

CMakeFiles/BMPtoYUV.dir/depend:
	cd "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV" "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV" "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV" "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV" "/Users/vuhoanganh/Desktop/thực tập/BMPtoYUV/CMakeFiles/BMPtoYUV.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/BMPtoYUV.dir/depend

