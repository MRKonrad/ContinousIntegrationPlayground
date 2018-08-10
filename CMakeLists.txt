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

###########
### VNL ###
###########

set (VXL_INSTALL_DIR $ENV{VXL_INSTALL_DIR})

if(NOT VXL_INSTALL_DIR)
    set(VXL_INSTALL_DIR ~/Code/todelete/vxl_install)
endif()

find_package(VXL PATHS ${VXL_INSTALL_DIR})
if (VXL_FOUND)
    include_directories("${VXL_CORE_INCLUDE_DIR}")
    include_directories("${VXL_VCL_INCLUDE_DIR}")
    link_libraries(${VXL_LIBRARY_DIR}/libvnl.a)
else(VXL_FOUND)
    include_directories("${VXL_INSTALL_DIR}/include/vxl/vcl}")
    include_directories("${VXL_INSTALL_DIR}/include/vxl/core}")
    link_libraries(${VXL_INSTALL_DIR}/lib/libvnl.a)
endif(VXL_FOUND)


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

###############
### TESTING ###
###############

add_subdirectory(tests)

#############################
### DISPLAY ALL VARIABLES ###
#############################

#get_cmake_property(_variableNames VARIABLES)
#list (SORT _variableNames)
#foreach (_variableName ${_variableNames})
#    message(STATUS "${_variableName}=${${_variableName}}")
#endforeach()

