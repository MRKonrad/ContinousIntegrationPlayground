######################################
### ContinousIntegrationPlayground ###
######################################

cmake_minimum_required (VERSION 2.8)

project (ContinousIntegrationPlayground)

# The version number.
set (ContinousIntegrationPlayground_VERSION_MAJOR 0)
set (ContinousIntegrationPlayground_VERSION_MINOR 1)

# Compiler flags
set (CMAKE_CXX_STANDARD 98)
set (CMAKE_CXX_STANDARD_REQUIRED ON)

# configure a header file to pass some of the CMake settings to the source code
configure_file ("${PROJECT_SOURCE_DIR}/MyCmakeConfig.h.in" "${PROJECT_BINARY_DIR}/MyCmakeConfig.h")
include_directories ("${PROJECT_BINARY_DIR}")

####################
### MAIN PROGRAM ###
####################

# list of source files
file(GLOB_RECURSE APP_FILES app/*.c* app/*.h* app/*.t*)
file(GLOB_RECURSE LIB_FILES lib/*.c* lib/*.h* lib/*.t*)
set(LIB_FILES ${LIB_FILES} "${PROJECT_BINARY_DIR}/MyCmakeConfig.h")

#message("APP_FILES:" ${APP_FILES})
#message("LIB_FILES:" ${LIB_FILES})

include_directories(lib)

add_executable(ContinousIntegrationPlaygroundExe ${APP_FILES} ${LIB_FILES})
add_library(ContinousIntegrationPlaygroundLib ${APP_FILES} ${LIB_FILES})

###########
### ITK ###
###########

set(USE_ITK OFF CACHE BOOL "Do you want to use ITK?")
if(USE_ITK)
    find_package(ITK PATHS ../ITK_install)
    include(${ITK_USE_FILE})
    target_link_libraries(ContinousIntegrationPlaygroundExe ${ITK_LIBRARIES})
endif(USE_ITK)

###############
### TESTING ###
###############

add_subdirectory(tests)

