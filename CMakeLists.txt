# Distributed under the MIT License (See accompanying file /LICENSE )

# CMake build : global project

cmake_minimum_required (VERSION 3.3)

project (ContinousIntegrationPlayground)

set (CMAKE_CXX_STANDARD 98)
set (CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(ContinousIntegrationPlayground main.cpp)

#find_package(GTest REQUIRED)
#include_directories(${GTEST_INCLUDE_DIR})

enable_testing ()
