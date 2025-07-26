########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(gemmlowp_FIND_QUIETLY)
    set(gemmlowp_MESSAGE_MODE VERBOSE)
else()
    set(gemmlowp_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/gemmlowpTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${gemmlowp_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(gemmlowp_VERSION_STRING "cci.20210928")
set(gemmlowp_INCLUDE_DIRS ${gemmlowp_INCLUDE_DIRS_RELEASE} )
set(gemmlowp_INCLUDE_DIR ${gemmlowp_INCLUDE_DIRS_RELEASE} )
set(gemmlowp_LIBRARIES ${gemmlowp_LIBRARIES_RELEASE} )
set(gemmlowp_DEFINITIONS ${gemmlowp_DEFINITIONS_RELEASE} )


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${gemmlowp_BUILD_MODULES_PATHS_RELEASE} )
    message(${gemmlowp_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


