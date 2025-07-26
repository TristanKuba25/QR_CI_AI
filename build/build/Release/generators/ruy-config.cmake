########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(ruy_FIND_QUIETLY)
    set(ruy_MESSAGE_MODE VERBOSE)
else()
    set(ruy_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/ruyTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${ruy_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(ruy_VERSION_STRING "cci.20231129")
set(ruy_INCLUDE_DIRS ${ruy_INCLUDE_DIRS_RELEASE} )
set(ruy_INCLUDE_DIR ${ruy_INCLUDE_DIRS_RELEASE} )
set(ruy_LIBRARIES ${ruy_LIBRARIES_RELEASE} )
set(ruy_DEFINITIONS ${ruy_DEFINITIONS_RELEASE} )


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${ruy_BUILD_MODULES_PATHS_RELEASE} )
    message(${ruy_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


