# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pwd218/Jussi/Indoor-Navi/IndoorNavi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build

# Include any dependencies generated for this target.
include src/CMakeFiles/indoornavi.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/indoornavi.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/indoornavi.dir/flags.make

src/CMakeFiles/indoornavi.dir/blescan.c.o: src/CMakeFiles/indoornavi.dir/flags.make
src/CMakeFiles/indoornavi.dir/blescan.c.o: ../src/blescan.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/indoornavi.dir/blescan.c.o"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/indoornavi.dir/blescan.c.o   -c /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/blescan.c

src/CMakeFiles/indoornavi.dir/blescan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/indoornavi.dir/blescan.c.i"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/blescan.c > CMakeFiles/indoornavi.dir/blescan.c.i

src/CMakeFiles/indoornavi.dir/blescan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/indoornavi.dir/blescan.c.s"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/blescan.c -o CMakeFiles/indoornavi.dir/blescan.c.s

src/CMakeFiles/indoornavi.dir/blescan.c.o.requires:

.PHONY : src/CMakeFiles/indoornavi.dir/blescan.c.o.requires

src/CMakeFiles/indoornavi.dir/blescan.c.o.provides: src/CMakeFiles/indoornavi.dir/blescan.c.o.requires
	$(MAKE) -f src/CMakeFiles/indoornavi.dir/build.make src/CMakeFiles/indoornavi.dir/blescan.c.o.provides.build
.PHONY : src/CMakeFiles/indoornavi.dir/blescan.c.o.provides

src/CMakeFiles/indoornavi.dir/blescan.c.o.provides.build: src/CMakeFiles/indoornavi.dir/blescan.c.o


src/CMakeFiles/indoornavi.dir/data_connection.c.o: src/CMakeFiles/indoornavi.dir/flags.make
src/CMakeFiles/indoornavi.dir/data_connection.c.o: ../src/data_connection.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/indoornavi.dir/data_connection.c.o"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/indoornavi.dir/data_connection.c.o   -c /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/data_connection.c

src/CMakeFiles/indoornavi.dir/data_connection.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/indoornavi.dir/data_connection.c.i"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/data_connection.c > CMakeFiles/indoornavi.dir/data_connection.c.i

src/CMakeFiles/indoornavi.dir/data_connection.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/indoornavi.dir/data_connection.c.s"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/data_connection.c -o CMakeFiles/indoornavi.dir/data_connection.c.s

src/CMakeFiles/indoornavi.dir/data_connection.c.o.requires:

.PHONY : src/CMakeFiles/indoornavi.dir/data_connection.c.o.requires

src/CMakeFiles/indoornavi.dir/data_connection.c.o.provides: src/CMakeFiles/indoornavi.dir/data_connection.c.o.requires
	$(MAKE) -f src/CMakeFiles/indoornavi.dir/build.make src/CMakeFiles/indoornavi.dir/data_connection.c.o.provides.build
.PHONY : src/CMakeFiles/indoornavi.dir/data_connection.c.o.provides

src/CMakeFiles/indoornavi.dir/data_connection.c.o.provides.build: src/CMakeFiles/indoornavi.dir/data_connection.c.o


src/CMakeFiles/indoornavi.dir/FileHandler.c.o: src/CMakeFiles/indoornavi.dir/flags.make
src/CMakeFiles/indoornavi.dir/FileHandler.c.o: ../src/FileHandler.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/CMakeFiles/indoornavi.dir/FileHandler.c.o"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/indoornavi.dir/FileHandler.c.o   -c /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/FileHandler.c

src/CMakeFiles/indoornavi.dir/FileHandler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/indoornavi.dir/FileHandler.c.i"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/FileHandler.c > CMakeFiles/indoornavi.dir/FileHandler.c.i

src/CMakeFiles/indoornavi.dir/FileHandler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/indoornavi.dir/FileHandler.c.s"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/FileHandler.c -o CMakeFiles/indoornavi.dir/FileHandler.c.s

src/CMakeFiles/indoornavi.dir/FileHandler.c.o.requires:

.PHONY : src/CMakeFiles/indoornavi.dir/FileHandler.c.o.requires

src/CMakeFiles/indoornavi.dir/FileHandler.c.o.provides: src/CMakeFiles/indoornavi.dir/FileHandler.c.o.requires
	$(MAKE) -f src/CMakeFiles/indoornavi.dir/build.make src/CMakeFiles/indoornavi.dir/FileHandler.c.o.provides.build
.PHONY : src/CMakeFiles/indoornavi.dir/FileHandler.c.o.provides

src/CMakeFiles/indoornavi.dir/FileHandler.c.o.provides.build: src/CMakeFiles/indoornavi.dir/FileHandler.c.o


src/CMakeFiles/indoornavi.dir/main.c.o: src/CMakeFiles/indoornavi.dir/flags.make
src/CMakeFiles/indoornavi.dir/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/CMakeFiles/indoornavi.dir/main.c.o"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/indoornavi.dir/main.c.o   -c /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/main.c

src/CMakeFiles/indoornavi.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/indoornavi.dir/main.c.i"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/main.c > CMakeFiles/indoornavi.dir/main.c.i

src/CMakeFiles/indoornavi.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/indoornavi.dir/main.c.s"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/main.c -o CMakeFiles/indoornavi.dir/main.c.s

src/CMakeFiles/indoornavi.dir/main.c.o.requires:

.PHONY : src/CMakeFiles/indoornavi.dir/main.c.o.requires

src/CMakeFiles/indoornavi.dir/main.c.o.provides: src/CMakeFiles/indoornavi.dir/main.c.o.requires
	$(MAKE) -f src/CMakeFiles/indoornavi.dir/build.make src/CMakeFiles/indoornavi.dir/main.c.o.provides.build
.PHONY : src/CMakeFiles/indoornavi.dir/main.c.o.provides

src/CMakeFiles/indoornavi.dir/main.c.o.provides.build: src/CMakeFiles/indoornavi.dir/main.c.o


src/CMakeFiles/indoornavi.dir/Odometrie.h.o: src/CMakeFiles/indoornavi.dir/flags.make
src/CMakeFiles/indoornavi.dir/Odometrie.h.o: ../src/Odometrie.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object src/CMakeFiles/indoornavi.dir/Odometrie.h.o"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/indoornavi.dir/Odometrie.h.o   -c /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/Odometrie.h

src/CMakeFiles/indoornavi.dir/Odometrie.h.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/indoornavi.dir/Odometrie.h.i"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/Odometrie.h > CMakeFiles/indoornavi.dir/Odometrie.h.i

src/CMakeFiles/indoornavi.dir/Odometrie.h.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/indoornavi.dir/Odometrie.h.s"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/Odometrie.h -o CMakeFiles/indoornavi.dir/Odometrie.h.s

src/CMakeFiles/indoornavi.dir/Odometrie.h.o.requires:

.PHONY : src/CMakeFiles/indoornavi.dir/Odometrie.h.o.requires

src/CMakeFiles/indoornavi.dir/Odometrie.h.o.provides: src/CMakeFiles/indoornavi.dir/Odometrie.h.o.requires
	$(MAKE) -f src/CMakeFiles/indoornavi.dir/build.make src/CMakeFiles/indoornavi.dir/Odometrie.h.o.provides.build
.PHONY : src/CMakeFiles/indoornavi.dir/Odometrie.h.o.provides

src/CMakeFiles/indoornavi.dir/Odometrie.h.o.provides.build: src/CMakeFiles/indoornavi.dir/Odometrie.h.o


src/CMakeFiles/indoornavi.dir/ScanHandler.c.o: src/CMakeFiles/indoornavi.dir/flags.make
src/CMakeFiles/indoornavi.dir/ScanHandler.c.o: ../src/ScanHandler.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object src/CMakeFiles/indoornavi.dir/ScanHandler.c.o"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/indoornavi.dir/ScanHandler.c.o   -c /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/ScanHandler.c

src/CMakeFiles/indoornavi.dir/ScanHandler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/indoornavi.dir/ScanHandler.c.i"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/ScanHandler.c > CMakeFiles/indoornavi.dir/ScanHandler.c.i

src/CMakeFiles/indoornavi.dir/ScanHandler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/indoornavi.dir/ScanHandler.c.s"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/ScanHandler.c -o CMakeFiles/indoornavi.dir/ScanHandler.c.s

src/CMakeFiles/indoornavi.dir/ScanHandler.c.o.requires:

.PHONY : src/CMakeFiles/indoornavi.dir/ScanHandler.c.o.requires

src/CMakeFiles/indoornavi.dir/ScanHandler.c.o.provides: src/CMakeFiles/indoornavi.dir/ScanHandler.c.o.requires
	$(MAKE) -f src/CMakeFiles/indoornavi.dir/build.make src/CMakeFiles/indoornavi.dir/ScanHandler.c.o.provides.build
.PHONY : src/CMakeFiles/indoornavi.dir/ScanHandler.c.o.provides

src/CMakeFiles/indoornavi.dir/ScanHandler.c.o.provides.build: src/CMakeFiles/indoornavi.dir/ScanHandler.c.o


src/CMakeFiles/indoornavi.dir/wlanscan.h.o: src/CMakeFiles/indoornavi.dir/flags.make
src/CMakeFiles/indoornavi.dir/wlanscan.h.o: ../src/wlanscan.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object src/CMakeFiles/indoornavi.dir/wlanscan.h.o"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/indoornavi.dir/wlanscan.h.o   -c /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/wlanscan.h

src/CMakeFiles/indoornavi.dir/wlanscan.h.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/indoornavi.dir/wlanscan.h.i"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/wlanscan.h > CMakeFiles/indoornavi.dir/wlanscan.h.i

src/CMakeFiles/indoornavi.dir/wlanscan.h.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/indoornavi.dir/wlanscan.h.s"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/wlanscan.h -o CMakeFiles/indoornavi.dir/wlanscan.h.s

src/CMakeFiles/indoornavi.dir/wlanscan.h.o.requires:

.PHONY : src/CMakeFiles/indoornavi.dir/wlanscan.h.o.requires

src/CMakeFiles/indoornavi.dir/wlanscan.h.o.provides: src/CMakeFiles/indoornavi.dir/wlanscan.h.o.requires
	$(MAKE) -f src/CMakeFiles/indoornavi.dir/build.make src/CMakeFiles/indoornavi.dir/wlanscan.h.o.provides.build
.PHONY : src/CMakeFiles/indoornavi.dir/wlanscan.h.o.provides

src/CMakeFiles/indoornavi.dir/wlanscan.h.o.provides.build: src/CMakeFiles/indoornavi.dir/wlanscan.h.o


src/CMakeFiles/indoornavi.dir/blescan.h.o: src/CMakeFiles/indoornavi.dir/flags.make
src/CMakeFiles/indoornavi.dir/blescan.h.o: ../src/blescan.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object src/CMakeFiles/indoornavi.dir/blescan.h.o"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/indoornavi.dir/blescan.h.o   -c /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/blescan.h

src/CMakeFiles/indoornavi.dir/blescan.h.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/indoornavi.dir/blescan.h.i"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/blescan.h > CMakeFiles/indoornavi.dir/blescan.h.i

src/CMakeFiles/indoornavi.dir/blescan.h.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/indoornavi.dir/blescan.h.s"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/blescan.h -o CMakeFiles/indoornavi.dir/blescan.h.s

src/CMakeFiles/indoornavi.dir/blescan.h.o.requires:

.PHONY : src/CMakeFiles/indoornavi.dir/blescan.h.o.requires

src/CMakeFiles/indoornavi.dir/blescan.h.o.provides: src/CMakeFiles/indoornavi.dir/blescan.h.o.requires
	$(MAKE) -f src/CMakeFiles/indoornavi.dir/build.make src/CMakeFiles/indoornavi.dir/blescan.h.o.provides.build
.PHONY : src/CMakeFiles/indoornavi.dir/blescan.h.o.provides

src/CMakeFiles/indoornavi.dir/blescan.h.o.provides.build: src/CMakeFiles/indoornavi.dir/blescan.h.o


src/CMakeFiles/indoornavi.dir/ConnectionHandler.h.o: src/CMakeFiles/indoornavi.dir/flags.make
src/CMakeFiles/indoornavi.dir/ConnectionHandler.h.o: ../src/ConnectionHandler.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object src/CMakeFiles/indoornavi.dir/ConnectionHandler.h.o"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/indoornavi.dir/ConnectionHandler.h.o   -c /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/ConnectionHandler.h

src/CMakeFiles/indoornavi.dir/ConnectionHandler.h.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/indoornavi.dir/ConnectionHandler.h.i"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/ConnectionHandler.h > CMakeFiles/indoornavi.dir/ConnectionHandler.h.i

src/CMakeFiles/indoornavi.dir/ConnectionHandler.h.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/indoornavi.dir/ConnectionHandler.h.s"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/ConnectionHandler.h -o CMakeFiles/indoornavi.dir/ConnectionHandler.h.s

src/CMakeFiles/indoornavi.dir/ConnectionHandler.h.o.requires:

.PHONY : src/CMakeFiles/indoornavi.dir/ConnectionHandler.h.o.requires

src/CMakeFiles/indoornavi.dir/ConnectionHandler.h.o.provides: src/CMakeFiles/indoornavi.dir/ConnectionHandler.h.o.requires
	$(MAKE) -f src/CMakeFiles/indoornavi.dir/build.make src/CMakeFiles/indoornavi.dir/ConnectionHandler.h.o.provides.build
.PHONY : src/CMakeFiles/indoornavi.dir/ConnectionHandler.h.o.provides

src/CMakeFiles/indoornavi.dir/ConnectionHandler.h.o.provides.build: src/CMakeFiles/indoornavi.dir/ConnectionHandler.h.o


src/CMakeFiles/indoornavi.dir/data_connection.h.o: src/CMakeFiles/indoornavi.dir/flags.make
src/CMakeFiles/indoornavi.dir/data_connection.h.o: ../src/data_connection.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object src/CMakeFiles/indoornavi.dir/data_connection.h.o"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/indoornavi.dir/data_connection.h.o   -c /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/data_connection.h

src/CMakeFiles/indoornavi.dir/data_connection.h.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/indoornavi.dir/data_connection.h.i"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/data_connection.h > CMakeFiles/indoornavi.dir/data_connection.h.i

src/CMakeFiles/indoornavi.dir/data_connection.h.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/indoornavi.dir/data_connection.h.s"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/data_connection.h -o CMakeFiles/indoornavi.dir/data_connection.h.s

src/CMakeFiles/indoornavi.dir/data_connection.h.o.requires:

.PHONY : src/CMakeFiles/indoornavi.dir/data_connection.h.o.requires

src/CMakeFiles/indoornavi.dir/data_connection.h.o.provides: src/CMakeFiles/indoornavi.dir/data_connection.h.o.requires
	$(MAKE) -f src/CMakeFiles/indoornavi.dir/build.make src/CMakeFiles/indoornavi.dir/data_connection.h.o.provides.build
.PHONY : src/CMakeFiles/indoornavi.dir/data_connection.h.o.provides

src/CMakeFiles/indoornavi.dir/data_connection.h.o.provides.build: src/CMakeFiles/indoornavi.dir/data_connection.h.o


src/CMakeFiles/indoornavi.dir/FileHandler.h.o: src/CMakeFiles/indoornavi.dir/flags.make
src/CMakeFiles/indoornavi.dir/FileHandler.h.o: ../src/FileHandler.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object src/CMakeFiles/indoornavi.dir/FileHandler.h.o"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/indoornavi.dir/FileHandler.h.o   -c /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/FileHandler.h

src/CMakeFiles/indoornavi.dir/FileHandler.h.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/indoornavi.dir/FileHandler.h.i"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/FileHandler.h > CMakeFiles/indoornavi.dir/FileHandler.h.i

src/CMakeFiles/indoornavi.dir/FileHandler.h.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/indoornavi.dir/FileHandler.h.s"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/FileHandler.h -o CMakeFiles/indoornavi.dir/FileHandler.h.s

src/CMakeFiles/indoornavi.dir/FileHandler.h.o.requires:

.PHONY : src/CMakeFiles/indoornavi.dir/FileHandler.h.o.requires

src/CMakeFiles/indoornavi.dir/FileHandler.h.o.provides: src/CMakeFiles/indoornavi.dir/FileHandler.h.o.requires
	$(MAKE) -f src/CMakeFiles/indoornavi.dir/build.make src/CMakeFiles/indoornavi.dir/FileHandler.h.o.provides.build
.PHONY : src/CMakeFiles/indoornavi.dir/FileHandler.h.o.provides

src/CMakeFiles/indoornavi.dir/FileHandler.h.o.provides.build: src/CMakeFiles/indoornavi.dir/FileHandler.h.o


src/CMakeFiles/indoornavi.dir/Odometrie.c.o: src/CMakeFiles/indoornavi.dir/flags.make
src/CMakeFiles/indoornavi.dir/Odometrie.c.o: ../src/Odometrie.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object src/CMakeFiles/indoornavi.dir/Odometrie.c.o"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/indoornavi.dir/Odometrie.c.o   -c /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/Odometrie.c

src/CMakeFiles/indoornavi.dir/Odometrie.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/indoornavi.dir/Odometrie.c.i"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/Odometrie.c > CMakeFiles/indoornavi.dir/Odometrie.c.i

src/CMakeFiles/indoornavi.dir/Odometrie.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/indoornavi.dir/Odometrie.c.s"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/Odometrie.c -o CMakeFiles/indoornavi.dir/Odometrie.c.s

src/CMakeFiles/indoornavi.dir/Odometrie.c.o.requires:

.PHONY : src/CMakeFiles/indoornavi.dir/Odometrie.c.o.requires

src/CMakeFiles/indoornavi.dir/Odometrie.c.o.provides: src/CMakeFiles/indoornavi.dir/Odometrie.c.o.requires
	$(MAKE) -f src/CMakeFiles/indoornavi.dir/build.make src/CMakeFiles/indoornavi.dir/Odometrie.c.o.provides.build
.PHONY : src/CMakeFiles/indoornavi.dir/Odometrie.c.o.provides

src/CMakeFiles/indoornavi.dir/Odometrie.c.o.provides.build: src/CMakeFiles/indoornavi.dir/Odometrie.c.o


src/CMakeFiles/indoornavi.dir/point.c.o: src/CMakeFiles/indoornavi.dir/flags.make
src/CMakeFiles/indoornavi.dir/point.c.o: ../src/point.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object src/CMakeFiles/indoornavi.dir/point.c.o"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/indoornavi.dir/point.c.o   -c /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/point.c

src/CMakeFiles/indoornavi.dir/point.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/indoornavi.dir/point.c.i"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/point.c > CMakeFiles/indoornavi.dir/point.c.i

src/CMakeFiles/indoornavi.dir/point.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/indoornavi.dir/point.c.s"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/point.c -o CMakeFiles/indoornavi.dir/point.c.s

src/CMakeFiles/indoornavi.dir/point.c.o.requires:

.PHONY : src/CMakeFiles/indoornavi.dir/point.c.o.requires

src/CMakeFiles/indoornavi.dir/point.c.o.provides: src/CMakeFiles/indoornavi.dir/point.c.o.requires
	$(MAKE) -f src/CMakeFiles/indoornavi.dir/build.make src/CMakeFiles/indoornavi.dir/point.c.o.provides.build
.PHONY : src/CMakeFiles/indoornavi.dir/point.c.o.provides

src/CMakeFiles/indoornavi.dir/point.c.o.provides.build: src/CMakeFiles/indoornavi.dir/point.c.o


src/CMakeFiles/indoornavi.dir/ScanHandler.h.o: src/CMakeFiles/indoornavi.dir/flags.make
src/CMakeFiles/indoornavi.dir/ScanHandler.h.o: ../src/ScanHandler.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object src/CMakeFiles/indoornavi.dir/ScanHandler.h.o"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/indoornavi.dir/ScanHandler.h.o   -c /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/ScanHandler.h

src/CMakeFiles/indoornavi.dir/ScanHandler.h.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/indoornavi.dir/ScanHandler.h.i"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/ScanHandler.h > CMakeFiles/indoornavi.dir/ScanHandler.h.i

src/CMakeFiles/indoornavi.dir/ScanHandler.h.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/indoornavi.dir/ScanHandler.h.s"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/ScanHandler.h -o CMakeFiles/indoornavi.dir/ScanHandler.h.s

src/CMakeFiles/indoornavi.dir/ScanHandler.h.o.requires:

.PHONY : src/CMakeFiles/indoornavi.dir/ScanHandler.h.o.requires

src/CMakeFiles/indoornavi.dir/ScanHandler.h.o.provides: src/CMakeFiles/indoornavi.dir/ScanHandler.h.o.requires
	$(MAKE) -f src/CMakeFiles/indoornavi.dir/build.make src/CMakeFiles/indoornavi.dir/ScanHandler.h.o.provides.build
.PHONY : src/CMakeFiles/indoornavi.dir/ScanHandler.h.o.provides

src/CMakeFiles/indoornavi.dir/ScanHandler.h.o.provides.build: src/CMakeFiles/indoornavi.dir/ScanHandler.h.o


src/CMakeFiles/indoornavi.dir/wlanscan.c.o: src/CMakeFiles/indoornavi.dir/flags.make
src/CMakeFiles/indoornavi.dir/wlanscan.c.o: ../src/wlanscan.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object src/CMakeFiles/indoornavi.dir/wlanscan.c.o"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/indoornavi.dir/wlanscan.c.o   -c /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/wlanscan.c

src/CMakeFiles/indoornavi.dir/wlanscan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/indoornavi.dir/wlanscan.c.i"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/wlanscan.c > CMakeFiles/indoornavi.dir/wlanscan.c.i

src/CMakeFiles/indoornavi.dir/wlanscan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/indoornavi.dir/wlanscan.c.s"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src/wlanscan.c -o CMakeFiles/indoornavi.dir/wlanscan.c.s

src/CMakeFiles/indoornavi.dir/wlanscan.c.o.requires:

.PHONY : src/CMakeFiles/indoornavi.dir/wlanscan.c.o.requires

src/CMakeFiles/indoornavi.dir/wlanscan.c.o.provides: src/CMakeFiles/indoornavi.dir/wlanscan.c.o.requires
	$(MAKE) -f src/CMakeFiles/indoornavi.dir/build.make src/CMakeFiles/indoornavi.dir/wlanscan.c.o.provides.build
.PHONY : src/CMakeFiles/indoornavi.dir/wlanscan.c.o.provides

src/CMakeFiles/indoornavi.dir/wlanscan.c.o.provides.build: src/CMakeFiles/indoornavi.dir/wlanscan.c.o


# Object files for target indoornavi
indoornavi_OBJECTS = \
"CMakeFiles/indoornavi.dir/blescan.c.o" \
"CMakeFiles/indoornavi.dir/data_connection.c.o" \
"CMakeFiles/indoornavi.dir/FileHandler.c.o" \
"CMakeFiles/indoornavi.dir/main.c.o" \
"CMakeFiles/indoornavi.dir/Odometrie.h.o" \
"CMakeFiles/indoornavi.dir/ScanHandler.c.o" \
"CMakeFiles/indoornavi.dir/wlanscan.h.o" \
"CMakeFiles/indoornavi.dir/blescan.h.o" \
"CMakeFiles/indoornavi.dir/ConnectionHandler.h.o" \
"CMakeFiles/indoornavi.dir/data_connection.h.o" \
"CMakeFiles/indoornavi.dir/FileHandler.h.o" \
"CMakeFiles/indoornavi.dir/Odometrie.c.o" \
"CMakeFiles/indoornavi.dir/point.c.o" \
"CMakeFiles/indoornavi.dir/ScanHandler.h.o" \
"CMakeFiles/indoornavi.dir/wlanscan.c.o"

# External object files for target indoornavi
indoornavi_EXTERNAL_OBJECTS =

src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/blescan.c.o
src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/data_connection.c.o
src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/FileHandler.c.o
src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/main.c.o
src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/Odometrie.h.o
src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/ScanHandler.c.o
src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/wlanscan.h.o
src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/blescan.h.o
src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/ConnectionHandler.h.o
src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/data_connection.h.o
src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/FileHandler.h.o
src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/Odometrie.c.o
src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/point.c.o
src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/ScanHandler.h.o
src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/wlanscan.c.o
src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/build.make
src/libindoornavi.a: src/CMakeFiles/indoornavi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking C static library libindoornavi.a"
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && $(CMAKE_COMMAND) -P CMakeFiles/indoornavi.dir/cmake_clean_target.cmake
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/indoornavi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/indoornavi.dir/build: src/libindoornavi.a

.PHONY : src/CMakeFiles/indoornavi.dir/build

src/CMakeFiles/indoornavi.dir/requires: src/CMakeFiles/indoornavi.dir/blescan.c.o.requires
src/CMakeFiles/indoornavi.dir/requires: src/CMakeFiles/indoornavi.dir/data_connection.c.o.requires
src/CMakeFiles/indoornavi.dir/requires: src/CMakeFiles/indoornavi.dir/FileHandler.c.o.requires
src/CMakeFiles/indoornavi.dir/requires: src/CMakeFiles/indoornavi.dir/main.c.o.requires
src/CMakeFiles/indoornavi.dir/requires: src/CMakeFiles/indoornavi.dir/Odometrie.h.o.requires
src/CMakeFiles/indoornavi.dir/requires: src/CMakeFiles/indoornavi.dir/ScanHandler.c.o.requires
src/CMakeFiles/indoornavi.dir/requires: src/CMakeFiles/indoornavi.dir/wlanscan.h.o.requires
src/CMakeFiles/indoornavi.dir/requires: src/CMakeFiles/indoornavi.dir/blescan.h.o.requires
src/CMakeFiles/indoornavi.dir/requires: src/CMakeFiles/indoornavi.dir/ConnectionHandler.h.o.requires
src/CMakeFiles/indoornavi.dir/requires: src/CMakeFiles/indoornavi.dir/data_connection.h.o.requires
src/CMakeFiles/indoornavi.dir/requires: src/CMakeFiles/indoornavi.dir/FileHandler.h.o.requires
src/CMakeFiles/indoornavi.dir/requires: src/CMakeFiles/indoornavi.dir/Odometrie.c.o.requires
src/CMakeFiles/indoornavi.dir/requires: src/CMakeFiles/indoornavi.dir/point.c.o.requires
src/CMakeFiles/indoornavi.dir/requires: src/CMakeFiles/indoornavi.dir/ScanHandler.h.o.requires
src/CMakeFiles/indoornavi.dir/requires: src/CMakeFiles/indoornavi.dir/wlanscan.c.o.requires

.PHONY : src/CMakeFiles/indoornavi.dir/requires

src/CMakeFiles/indoornavi.dir/clean:
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src && $(CMAKE_COMMAND) -P CMakeFiles/indoornavi.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/indoornavi.dir/clean

src/CMakeFiles/indoornavi.dir/depend:
	cd /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pwd218/Jussi/Indoor-Navi/IndoorNavi /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/src /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src /home/pwd218/Jussi/Indoor-Navi/IndoorNavi/build/src/CMakeFiles/indoornavi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/indoornavi.dir/depend

