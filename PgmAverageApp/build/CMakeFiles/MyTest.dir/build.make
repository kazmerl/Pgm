# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.29

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\cmake\bin\cmake.exe

# The command to remove a file.
RM = C:\cmake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Personal_Stuff\Pgm\PgmAverageApp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Personal_Stuff\Pgm\PgmAverageApp\build

# Include any dependencies generated for this target.
include CMakeFiles/MyTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/MyTest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MyTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MyTest.dir/flags.make

CMakeFiles/MyTest.dir/src/model/PgmImageHeader.cpp.obj: CMakeFiles/MyTest.dir/flags.make
CMakeFiles/MyTest.dir/src/model/PgmImageHeader.cpp.obj: C:/Personal_Stuff/Pgm/PgmAverageApp/src/model/PgmImageHeader.cpp
CMakeFiles/MyTest.dir/src/model/PgmImageHeader.cpp.obj: CMakeFiles/MyTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Personal_Stuff\Pgm\PgmAverageApp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MyTest.dir/src/model/PgmImageHeader.cpp.obj"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyTest.dir/src/model/PgmImageHeader.cpp.obj -MF CMakeFiles\MyTest.dir\src\model\PgmImageHeader.cpp.obj.d -o CMakeFiles\MyTest.dir\src\model\PgmImageHeader.cpp.obj -c C:\Personal_Stuff\Pgm\PgmAverageApp\src\model\PgmImageHeader.cpp

CMakeFiles/MyTest.dir/src/model/PgmImageHeader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyTest.dir/src/model/PgmImageHeader.cpp.i"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Personal_Stuff\Pgm\PgmAverageApp\src\model\PgmImageHeader.cpp > CMakeFiles\MyTest.dir\src\model\PgmImageHeader.cpp.i

CMakeFiles/MyTest.dir/src/model/PgmImageHeader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyTest.dir/src/model/PgmImageHeader.cpp.s"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Personal_Stuff\Pgm\PgmAverageApp\src\model\PgmImageHeader.cpp -o CMakeFiles\MyTest.dir\src\model\PgmImageHeader.cpp.s

CMakeFiles/MyTest.dir/src/model/PgmImage.cpp.obj: CMakeFiles/MyTest.dir/flags.make
CMakeFiles/MyTest.dir/src/model/PgmImage.cpp.obj: C:/Personal_Stuff/Pgm/PgmAverageApp/src/model/PgmImage.cpp
CMakeFiles/MyTest.dir/src/model/PgmImage.cpp.obj: CMakeFiles/MyTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Personal_Stuff\Pgm\PgmAverageApp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MyTest.dir/src/model/PgmImage.cpp.obj"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyTest.dir/src/model/PgmImage.cpp.obj -MF CMakeFiles\MyTest.dir\src\model\PgmImage.cpp.obj.d -o CMakeFiles\MyTest.dir\src\model\PgmImage.cpp.obj -c C:\Personal_Stuff\Pgm\PgmAverageApp\src\model\PgmImage.cpp

CMakeFiles/MyTest.dir/src/model/PgmImage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyTest.dir/src/model/PgmImage.cpp.i"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Personal_Stuff\Pgm\PgmAverageApp\src\model\PgmImage.cpp > CMakeFiles\MyTest.dir\src\model\PgmImage.cpp.i

CMakeFiles/MyTest.dir/src/model/PgmImage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyTest.dir/src/model/PgmImage.cpp.s"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Personal_Stuff\Pgm\PgmAverageApp\src\model\PgmImage.cpp -o CMakeFiles\MyTest.dir\src\model\PgmImage.cpp.s

CMakeFiles/MyTest.dir/src/model/PgmAverageImage.cpp.obj: CMakeFiles/MyTest.dir/flags.make
CMakeFiles/MyTest.dir/src/model/PgmAverageImage.cpp.obj: C:/Personal_Stuff/Pgm/PgmAverageApp/src/model/PgmAverageImage.cpp
CMakeFiles/MyTest.dir/src/model/PgmAverageImage.cpp.obj: CMakeFiles/MyTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Personal_Stuff\Pgm\PgmAverageApp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/MyTest.dir/src/model/PgmAverageImage.cpp.obj"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyTest.dir/src/model/PgmAverageImage.cpp.obj -MF CMakeFiles\MyTest.dir\src\model\PgmAverageImage.cpp.obj.d -o CMakeFiles\MyTest.dir\src\model\PgmAverageImage.cpp.obj -c C:\Personal_Stuff\Pgm\PgmAverageApp\src\model\PgmAverageImage.cpp

CMakeFiles/MyTest.dir/src/model/PgmAverageImage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyTest.dir/src/model/PgmAverageImage.cpp.i"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Personal_Stuff\Pgm\PgmAverageApp\src\model\PgmAverageImage.cpp > CMakeFiles\MyTest.dir\src\model\PgmAverageImage.cpp.i

CMakeFiles/MyTest.dir/src/model/PgmAverageImage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyTest.dir/src/model/PgmAverageImage.cpp.s"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Personal_Stuff\Pgm\PgmAverageApp\src\model\PgmAverageImage.cpp -o CMakeFiles\MyTest.dir\src\model\PgmAverageImage.cpp.s

CMakeFiles/MyTest.dir/src/reader/PgmImageReader.cpp.obj: CMakeFiles/MyTest.dir/flags.make
CMakeFiles/MyTest.dir/src/reader/PgmImageReader.cpp.obj: C:/Personal_Stuff/Pgm/PgmAverageApp/src/reader/PgmImageReader.cpp
CMakeFiles/MyTest.dir/src/reader/PgmImageReader.cpp.obj: CMakeFiles/MyTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Personal_Stuff\Pgm\PgmAverageApp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/MyTest.dir/src/reader/PgmImageReader.cpp.obj"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyTest.dir/src/reader/PgmImageReader.cpp.obj -MF CMakeFiles\MyTest.dir\src\reader\PgmImageReader.cpp.obj.d -o CMakeFiles\MyTest.dir\src\reader\PgmImageReader.cpp.obj -c C:\Personal_Stuff\Pgm\PgmAverageApp\src\reader\PgmImageReader.cpp

CMakeFiles/MyTest.dir/src/reader/PgmImageReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyTest.dir/src/reader/PgmImageReader.cpp.i"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Personal_Stuff\Pgm\PgmAverageApp\src\reader\PgmImageReader.cpp > CMakeFiles\MyTest.dir\src\reader\PgmImageReader.cpp.i

CMakeFiles/MyTest.dir/src/reader/PgmImageReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyTest.dir/src/reader/PgmImageReader.cpp.s"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Personal_Stuff\Pgm\PgmAverageApp\src\reader\PgmImageReader.cpp -o CMakeFiles\MyTest.dir\src\reader\PgmImageReader.cpp.s

CMakeFiles/MyTest.dir/src/writer/PgmImageWriter.cpp.obj: CMakeFiles/MyTest.dir/flags.make
CMakeFiles/MyTest.dir/src/writer/PgmImageWriter.cpp.obj: C:/Personal_Stuff/Pgm/PgmAverageApp/src/writer/PgmImageWriter.cpp
CMakeFiles/MyTest.dir/src/writer/PgmImageWriter.cpp.obj: CMakeFiles/MyTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Personal_Stuff\Pgm\PgmAverageApp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/MyTest.dir/src/writer/PgmImageWriter.cpp.obj"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyTest.dir/src/writer/PgmImageWriter.cpp.obj -MF CMakeFiles\MyTest.dir\src\writer\PgmImageWriter.cpp.obj.d -o CMakeFiles\MyTest.dir\src\writer\PgmImageWriter.cpp.obj -c C:\Personal_Stuff\Pgm\PgmAverageApp\src\writer\PgmImageWriter.cpp

CMakeFiles/MyTest.dir/src/writer/PgmImageWriter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyTest.dir/src/writer/PgmImageWriter.cpp.i"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Personal_Stuff\Pgm\PgmAverageApp\src\writer\PgmImageWriter.cpp > CMakeFiles\MyTest.dir\src\writer\PgmImageWriter.cpp.i

CMakeFiles/MyTest.dir/src/writer/PgmImageWriter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyTest.dir/src/writer/PgmImageWriter.cpp.s"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Personal_Stuff\Pgm\PgmAverageApp\src\writer\PgmImageWriter.cpp -o CMakeFiles\MyTest.dir\src\writer\PgmImageWriter.cpp.s

CMakeFiles/MyTest.dir/PgmAverageAppTest.cpp.obj: CMakeFiles/MyTest.dir/flags.make
CMakeFiles/MyTest.dir/PgmAverageAppTest.cpp.obj: C:/Personal_Stuff/Pgm/PgmAverageApp/PgmAverageAppTest.cpp
CMakeFiles/MyTest.dir/PgmAverageAppTest.cpp.obj: CMakeFiles/MyTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Personal_Stuff\Pgm\PgmAverageApp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/MyTest.dir/PgmAverageAppTest.cpp.obj"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyTest.dir/PgmAverageAppTest.cpp.obj -MF CMakeFiles\MyTest.dir\PgmAverageAppTest.cpp.obj.d -o CMakeFiles\MyTest.dir\PgmAverageAppTest.cpp.obj -c C:\Personal_Stuff\Pgm\PgmAverageApp\PgmAverageAppTest.cpp

CMakeFiles/MyTest.dir/PgmAverageAppTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyTest.dir/PgmAverageAppTest.cpp.i"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Personal_Stuff\Pgm\PgmAverageApp\PgmAverageAppTest.cpp > CMakeFiles\MyTest.dir\PgmAverageAppTest.cpp.i

CMakeFiles/MyTest.dir/PgmAverageAppTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyTest.dir/PgmAverageAppTest.cpp.s"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Personal_Stuff\Pgm\PgmAverageApp\PgmAverageAppTest.cpp -o CMakeFiles\MyTest.dir\PgmAverageAppTest.cpp.s

# Object files for target MyTest
MyTest_OBJECTS = \
"CMakeFiles/MyTest.dir/src/model/PgmImageHeader.cpp.obj" \
"CMakeFiles/MyTest.dir/src/model/PgmImage.cpp.obj" \
"CMakeFiles/MyTest.dir/src/model/PgmAverageImage.cpp.obj" \
"CMakeFiles/MyTest.dir/src/reader/PgmImageReader.cpp.obj" \
"CMakeFiles/MyTest.dir/src/writer/PgmImageWriter.cpp.obj" \
"CMakeFiles/MyTest.dir/PgmAverageAppTest.cpp.obj"

# External object files for target MyTest
MyTest_EXTERNAL_OBJECTS =

MyTest.exe: CMakeFiles/MyTest.dir/src/model/PgmImageHeader.cpp.obj
MyTest.exe: CMakeFiles/MyTest.dir/src/model/PgmImage.cpp.obj
MyTest.exe: CMakeFiles/MyTest.dir/src/model/PgmAverageImage.cpp.obj
MyTest.exe: CMakeFiles/MyTest.dir/src/reader/PgmImageReader.cpp.obj
MyTest.exe: CMakeFiles/MyTest.dir/src/writer/PgmImageWriter.cpp.obj
MyTest.exe: CMakeFiles/MyTest.dir/PgmAverageAppTest.cpp.obj
MyTest.exe: CMakeFiles/MyTest.dir/build.make
MyTest.exe: CMakeFiles/MyTest.dir/linkLibs.rsp
MyTest.exe: CMakeFiles/MyTest.dir/objects1.rsp
MyTest.exe: CMakeFiles/MyTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Personal_Stuff\Pgm\PgmAverageApp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable MyTest.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\MyTest.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MyTest.dir/build: MyTest.exe
.PHONY : CMakeFiles/MyTest.dir/build

CMakeFiles/MyTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\MyTest.dir\cmake_clean.cmake
.PHONY : CMakeFiles/MyTest.dir/clean

CMakeFiles/MyTest.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Personal_Stuff\Pgm\PgmAverageApp C:\Personal_Stuff\Pgm\PgmAverageApp C:\Personal_Stuff\Pgm\PgmAverageApp\build C:\Personal_Stuff\Pgm\PgmAverageApp\build C:\Personal_Stuff\Pgm\PgmAverageApp\build\CMakeFiles\MyTest.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/MyTest.dir/depend

