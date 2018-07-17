# project (ContinousIntegrationPlayground)

cmake_minimum_required (VERSION 3.3)

project (ContinousIntegrationPlayground)

set (CMAKE_CXX_STANDARD 98)
set (CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(ContinousIntegrationPlayground main.cpp)

### TESTING
add_subdirectory(thirdParty/googletest)

find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIR})

enable_testing ()
add_executable(runUnitTests mytest.cpp)
add_test(NAME that-test-I-made COMMAND runUnitTests)

target_link_libraries (runUnitTests gtest gtest_main)

