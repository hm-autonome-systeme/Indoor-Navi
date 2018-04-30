
set(PROJECT_NAME IndoorNavi)
set(EXEC_NAME IndoorNavi)
set(LIB_NAME indoornavi)

project (${PROJECT_NAME} C)
cmake_minimum_required (VERSION 3.5.1)

# set compilers and compiler flags
set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=gnu99 -Wall -Wextra -g")

# add the actual code
add_subdirectory(include)
add_subdirectory (src)
