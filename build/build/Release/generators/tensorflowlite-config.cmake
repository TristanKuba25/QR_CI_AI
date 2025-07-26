########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(tensorflowlite_FIND_QUIETLY)
    set(tensorflowlite_MESSAGE_MODE VERBOSE)
else()
    set(tensorflowlite_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/tensorflowliteTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${tensorflow-lite_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(tensorflowlite_VERSION_STRING "2.15.0")
set(tensorflowlite_INCLUDE_DIRS ${tensorflow-lite_INCLUDE_DIRS_RELEASE} )
set(tensorflowlite_INCLUDE_DIR ${tensorflow-lite_INCLUDE_DIRS_RELEASE} )
set(tensorflowlite_LIBRARIES ${tensorflow-lite_LIBRARIES_RELEASE} )
set(tensorflowlite_DEFINITIONS ${tensorflow-lite_DEFINITIONS_RELEASE} )


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${tensorflow-lite_BUILD_MODULES_PATHS_RELEASE} )
    message(${tensorflowlite_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


