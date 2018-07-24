# project (ContinousIntegrationPlayground)

cmake_minimum_required (VERSION 3.3)

project (ContinousIntegrationPlayground)

set (CMAKE_CXX_STANDARD 98)
set (CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(ContinousIntegrationPlayground main.cpp)

### TESTING
include(gtest.cmake)
find_package (Threads REQUIRED)
target_link_libraries(gtest ${CMAKE_THREAD_LIBS_INIT})

enable_testing ()

add_executable(runUnitTests mytest.cpp)
add_test(NAME that-test-I-made COMMAND runUnitTests)

target_link_libraries (runUnitTests gtest)

# Coveralls
SET(COVERAGE OFF CACHE BOOL "Coverage")
if (COVERAGE)
    target_compile_options(runUnitTests PRIVATE --coverage)
    target_link_libraries(runUnitTests PRIVATE --coverage)
endif()
