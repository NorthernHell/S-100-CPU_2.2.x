# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

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
CMAKE_COMMAND = /root/iodk/merk/cmake-3.1.3-Linux-i386/bin/cmake

# The command to remove a file.
RM = /root/iodk/merk/cmake-3.1.3-Linux-i386/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/iodk/merk/iodk3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/iodk/merk/iodk3/FW_IODK3_WFO

# Include any dependencies generated for this target.
include Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/depend.make

# Include the progress variables for this target.
include Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/progress.make

# Include the compile flags for this target's objects.
include Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/flags.make

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.o: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/flags.make
Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.o: ../Drivers/evro_rtus/modbus_rtu_server.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/iodk/merk/iodk3/FW_IODK3_WFO/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.o"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.o -c /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_server.c

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.i"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_server.c > CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.i

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.s"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_server.c -o CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.s

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.o.requires:
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.o.requires

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.o.provides: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.o.requires
	$(MAKE) -f Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/build.make Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.o.provides.build
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.o.provides

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.o.provides.build: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.o

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.o: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/flags.make
Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.o: ../Drivers/evro_rtus/modbus_rtu_coil_i_.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/iodk/merk/iodk3/FW_IODK3_WFO/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.o"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.o -c /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_coil_i_.c

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.i"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_coil_i_.c > CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.i

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.s"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_coil_i_.c -o CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.s

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.o.requires:
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.o.requires

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.o.provides: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.o.requires
	$(MAKE) -f Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/build.make Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.o.provides.build
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.o.provides

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.o.provides.build: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.o

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.o: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/flags.make
Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.o: ../Drivers/evro_rtus/modbus_rtu_coil_o_.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/iodk/merk/iodk3/FW_IODK3_WFO/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.o"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.o -c /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_coil_o_.c

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.i"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_coil_o_.c > CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.i

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.s"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_coil_o_.c -o CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.s

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.o.requires:
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.o.requires

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.o.provides: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.o.requires
	$(MAKE) -f Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/build.make Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.o.provides.build
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.o.provides

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.o.provides.build: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.o

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.o: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/flags.make
Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.o: ../Drivers/evro_rtus/modbus_rtu_holding_i_.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/iodk/merk/iodk3/FW_IODK3_WFO/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.o"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.o -c /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_holding_i_.c

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.i"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_holding_i_.c > CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.i

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.s"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_holding_i_.c -o CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.s

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.o.requires:
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.o.requires

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.o.provides: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.o.requires
	$(MAKE) -f Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/build.make Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.o.provides.build
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.o.provides

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.o.provides.build: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.o

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.o: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/flags.make
Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.o: ../Drivers/evro_rtus/modbus_rtu_holding_o_.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/iodk/merk/iodk3/FW_IODK3_WFO/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.o"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.o -c /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_holding_o_.c

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.i"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_holding_o_.c > CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.i

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.s"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_holding_o_.c -o CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.s

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.o.requires:
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.o.requires

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.o.provides: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.o.requires
	$(MAKE) -f Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/build.make Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.o.provides.build
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.o.provides

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.o.provides.build: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.o

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.o: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/flags.make
Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.o: ../Drivers/evro_rtus/modbus_rtu_inp_bits_.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/iodk/merk/iodk3/FW_IODK3_WFO/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.o"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.o -c /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_inp_bits_.c

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.i"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_inp_bits_.c > CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.i

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.s"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_inp_bits_.c -o CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.s

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.o.requires:
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.o.requires

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.o.provides: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.o.requires
	$(MAKE) -f Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/build.make Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.o.provides.build
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.o.provides

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.o.provides.build: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.o

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.o: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/flags.make
Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.o: ../Drivers/evro_rtus/modbus_rtu_inp_reg_.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/iodk/merk/iodk3/FW_IODK3_WFO/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.o"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.o -c /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_inp_reg_.c

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.i"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_inp_reg_.c > CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.i

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.s"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && /usr/src/mini2440/arm-2008q3/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/iodk/merk/iodk3/Drivers/evro_rtus/modbus_rtu_inp_reg_.c -o CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.s

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.o.requires:
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.o.requires

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.o.provides: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.o.requires
	$(MAKE) -f Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/build.make Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.o.provides.build
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.o.provides

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.o.provides.build: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.o

# Object files for target evro_rtus
evro_rtus_OBJECTS = \
"CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.o" \
"CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.o" \
"CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.o" \
"CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.o" \
"CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.o" \
"CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.o" \
"CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.o"

# External object files for target evro_rtus
evro_rtus_EXTERNAL_OBJECTS =

Drivers/evro_rtus/libevro_rtus.a: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.o
Drivers/evro_rtus/libevro_rtus.a: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.o
Drivers/evro_rtus/libevro_rtus.a: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.o
Drivers/evro_rtus/libevro_rtus.a: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.o
Drivers/evro_rtus/libevro_rtus.a: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.o
Drivers/evro_rtus/libevro_rtus.a: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.o
Drivers/evro_rtus/libevro_rtus.a: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.o
Drivers/evro_rtus/libevro_rtus.a: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/build.make
Drivers/evro_rtus/libevro_rtus.a: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libevro_rtus.a"
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && $(CMAKE_COMMAND) -P CMakeFiles/evro_rtus.dir/cmake_clean_target.cmake
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/evro_rtus.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/build: Drivers/evro_rtus/libevro_rtus.a
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/build

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/requires: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_server.c.o.requires
Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/requires: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_i_.c.o.requires
Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/requires: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_coil_o_.c.o.requires
Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/requires: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_i_.c.o.requires
Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/requires: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_holding_o_.c.o.requires
Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/requires: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_bits_.c.o.requires
Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/requires: Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/modbus_rtu_inp_reg_.c.o.requires
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/requires

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/clean:
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus && $(CMAKE_COMMAND) -P CMakeFiles/evro_rtus.dir/cmake_clean.cmake
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/clean

Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/depend:
	cd /root/iodk/merk/iodk3/FW_IODK3_WFO && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/iodk/merk/iodk3 /root/iodk/merk/iodk3/Drivers/evro_rtus /root/iodk/merk/iodk3/FW_IODK3_WFO /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus /root/iodk/merk/iodk3/FW_IODK3_WFO/Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Drivers/evro_rtus/CMakeFiles/evro_rtus.dir/depend

