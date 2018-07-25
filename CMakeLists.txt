######################################
### ContinousIntegrationPlayground ###
######################################

cmake_minimum_required (VERSION 2.8)

project (ContinousIntegrationPlayground)
include(gtest.cmake)

# Compiler flags
set (CMAKE_CXX_STANDARD 98)
set (CMAKE_CXX_STANDARD_REQUIRED ON)

# Compiler flags for coveralls
if (UNIX)
    set (CMAKE_CXX_FLAGS "-fprofile-arcs -ftest-coverage")
endif(UNIX)

####################
### MAIN PROGRAM ###
####################

add_executable(ContinousIntegrationPlayground main.cpp)

###############
### TESTING ###
###############

enable_testing ()

# Threads are needed for testing
find_package (Threads REQUIRED)
target_link_libraries(gtest ${CMAKE_THREAD_LIBS_INIT})

# Test executable
add_executable(runUnitTests mytest.cpp)
target_link_libraries (runUnitTests PUBLIC gtest)
add_test(NAME ctest_tests COMMAND runUnitTests)

########################
### TESTING COVERAGE ###
########################

# Coveralls
SET(COVERAGE OFF CACHE BOOL "Coverage")
if (COVERAGE)
    target_compile_options(runUnitTests PRIVATE --coverage)
    target_link_libraries(runUnitTests PRIVATE --coverage)
endif()
