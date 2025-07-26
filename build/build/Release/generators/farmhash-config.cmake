########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(farmhash_FIND_QUIETLY)
    set(farmhash_MESSAGE_MODE VERBOSE)
else()
    set(farmhash_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/farmhashTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${farmhash_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(farmhash_VERSION_STRING "cci.20190513")
set(farmhash_INCLUDE_DIRS ${farmhash_INCLUDE_DIRS_RELEASE} )
set(farmhash_INCLUDE_DIR ${farmhash_INCLUDE_DIRS_RELEASE} )
set(farmhash_LIBRARIES ${farmhash_LIBRARIES_RELEASE} )
set(farmhash_DEFINITIONS ${farmhash_DEFINITIONS_RELEASE} )


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${farmhash_BUILD_MODULES_PATHS_RELEASE} )
    message(${farmhash_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


