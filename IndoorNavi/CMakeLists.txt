
project (IndoorNavi)
cmake_minimum_required (VERSION 3.5.1)

# set compilers and compiler flags
set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c99 -Wall -Wextra -g")

set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall -Wextra - Werror -Wfatal-errors -pedantic -g")

# add the actual code
add_subdirectory (src)
