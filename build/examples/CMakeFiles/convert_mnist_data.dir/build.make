# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zhangyan/icaffe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhangyan/icaffe/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/convert_mnist_data.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/convert_mnist_data.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/convert_mnist_data.dir/flags.make

examples/CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.o: examples/CMakeFiles/convert_mnist_data.dir/flags.make
examples/CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.o: ../examples/mnist/convert_mnist_data.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zhangyan/icaffe/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.o"
	cd /home/zhangyan/icaffe/build/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.o -c /home/zhangyan/icaffe/examples/mnist/convert_mnist_data.cpp

examples/CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.i"
	cd /home/zhangyan/icaffe/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/zhangyan/icaffe/examples/mnist/convert_mnist_data.cpp > CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.i

examples/CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.s"
	cd /home/zhangyan/icaffe/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/zhangyan/icaffe/examples/mnist/convert_mnist_data.cpp -o CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.s

examples/CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.o.requires:
.PHONY : examples/CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.o.requires

examples/CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.o.provides: examples/CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/convert_mnist_data.dir/build.make examples/CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.o.provides.build
.PHONY : examples/CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.o.provides

examples/CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.o.provides.build: examples/CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.o

# Object files for target convert_mnist_data
convert_mnist_data_OBJECTS = \
"CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.o"

# External object files for target convert_mnist_data
convert_mnist_data_EXTERNAL_OBJECTS =

examples/mnist/convert_mnist_data: examples/CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.o
examples/mnist/convert_mnist_data: examples/CMakeFiles/convert_mnist_data.dir/build.make
examples/mnist/convert_mnist_data: lib/libcaffe.so.1.0.0-rc3
examples/mnist/convert_mnist_data: lib/libproto.a
examples/mnist/convert_mnist_data: /usr/lib/x86_64-linux-gnu/libboost_system.so
examples/mnist/convert_mnist_data: /usr/lib/x86_64-linux-gnu/libboost_thread.so
examples/mnist/convert_mnist_data: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
examples/mnist/convert_mnist_data: /usr/lib/x86_64-linux-gnu/libpthread.so
examples/mnist/convert_mnist_data: /usr/lib/x86_64-linux-gnu/libglog.so
examples/mnist/convert_mnist_data: /usr/lib/x86_64-linux-gnu/libgflags.so
examples/mnist/convert_mnist_data: /usr/lib/x86_64-linux-gnu/libprotobuf.so
examples/mnist/convert_mnist_data: /usr/lib/x86_64-linux-gnu/libglog.so
examples/mnist/convert_mnist_data: /usr/lib/x86_64-linux-gnu/libgflags.so
examples/mnist/convert_mnist_data: /usr/lib/x86_64-linux-gnu/libprotobuf.so
examples/mnist/convert_mnist_data: /usr/lib/x86_64-linux-gnu/libhdf5_hl.so
examples/mnist/convert_mnist_data: /usr/lib/x86_64-linux-gnu/libhdf5.so
examples/mnist/convert_mnist_data: /usr/lib/x86_64-linux-gnu/liblmdb.so
examples/mnist/convert_mnist_data: /usr/lib/x86_64-linux-gnu/libleveldb.so
examples/mnist/convert_mnist_data: /usr/lib/libsnappy.so
examples/mnist/convert_mnist_data: /usr/local/cuda/lib64/libcudart.so
examples/mnist/convert_mnist_data: /usr/local/cuda/lib64/libcurand.so
examples/mnist/convert_mnist_data: /usr/local/cuda/lib64/libcublas.so
examples/mnist/convert_mnist_data: /usr/local/cuda/lib64/libcudnn.so
examples/mnist/convert_mnist_data: /usr/local/lib/libopencv_highgui.so.2.4.11
examples/mnist/convert_mnist_data: /usr/local/lib/libopencv_imgproc.so.2.4.11
examples/mnist/convert_mnist_data: /usr/local/lib/libopencv_core.so.2.4.11
examples/mnist/convert_mnist_data: /usr/lib/liblapack_atlas.so
examples/mnist/convert_mnist_data: /usr/lib/libcblas.so
examples/mnist/convert_mnist_data: /usr/lib/libatlas.so
examples/mnist/convert_mnist_data: /usr/lib/x86_64-linux-gnu/libpython2.7.so
examples/mnist/convert_mnist_data: /usr/lib/x86_64-linux-gnu/libboost_python.so
examples/mnist/convert_mnist_data: examples/CMakeFiles/convert_mnist_data.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable mnist/convert_mnist_data"
	cd /home/zhangyan/icaffe/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/convert_mnist_data.dir/link.txt --verbose=$(VERBOSE)
	cd /home/zhangyan/icaffe/build/examples && ln -sf /home/zhangyan/icaffe/build/examples/mnist/convert_mnist_data /home/zhangyan/icaffe/build/examples/mnist/convert_mnist_data.bin

# Rule to build all files generated by this target.
examples/CMakeFiles/convert_mnist_data.dir/build: examples/mnist/convert_mnist_data
.PHONY : examples/CMakeFiles/convert_mnist_data.dir/build

examples/CMakeFiles/convert_mnist_data.dir/requires: examples/CMakeFiles/convert_mnist_data.dir/mnist/convert_mnist_data.cpp.o.requires
.PHONY : examples/CMakeFiles/convert_mnist_data.dir/requires

examples/CMakeFiles/convert_mnist_data.dir/clean:
	cd /home/zhangyan/icaffe/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/convert_mnist_data.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/convert_mnist_data.dir/clean

examples/CMakeFiles/convert_mnist_data.dir/depend:
	cd /home/zhangyan/icaffe/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhangyan/icaffe /home/zhangyan/icaffe/examples /home/zhangyan/icaffe/build /home/zhangyan/icaffe/build/examples /home/zhangyan/icaffe/build/examples/CMakeFiles/convert_mnist_data.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/convert_mnist_data.dir/depend

