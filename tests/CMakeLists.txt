###############
### TESTING ###
###############

include(gtest.cmake)

enable_testing ()

# Threads are needed for testing
find_package (Threads REQUIRED)
target_link_libraries(gtest ${CMAKE_THREAD_LIBS_INIT})

# Test executable
file(GLOB_RECURSE TESTS_FILES ${PROJECT_SOURCE_DIR}/tests/*.c* ${PROJECT_SOURCE_DIR}tests/*.h* ${PROJECT_SOURCE_DIR}tests/*.t*)
message("TESTS_FILES:" ${TESTS_FILES})

add_executable(ContinousIntegrationPlaygroundTests ${TESTS_FILES})
target_link_libraries (ContinousIntegrationPlaygroundTests PUBLIC gtest)
add_test(NAME ctest_tests COMMAND ContinousIntegrationPlaygroundTests)

########################
### TESTING COVERAGE ###
########################

# Compiler flags for coveralls, only in linux
if (UNIX)
    set (CMAKE_CXX_FLAGS "-fprofile-arcs -ftest-coverage")
endif(UNIX)

# Coveralls
SET(COVERAGE OFF CACHE BOOL "Coverage")
if (COVERAGE)
    target_compile_options(ContinousIntegrationPlaygroundTests PRIVATE --coverage)
    target_link_libraries(ContinousIntegrationPlaygroundTests PRIVATE --coverage)
endif()