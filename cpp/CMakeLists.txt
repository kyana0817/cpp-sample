cmake_minimum_required(VERSION 3.28)
project(CPPSample VERSION 0.0.2)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

# set(CMAKE_CXX_COMPILER "/usr/bin/clang++")
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(src)

# branch debug
if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    add_subdirectory(test)
endif()
