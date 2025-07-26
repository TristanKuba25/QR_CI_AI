########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(fft_FIND_QUIETLY)
    set(fft_MESSAGE_MODE VERBOSE)
else()
    set(fft_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/fftTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${fft_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(fft_VERSION_STRING "cci.20061228")
set(fft_INCLUDE_DIRS ${fft_INCLUDE_DIRS_RELEASE} )
set(fft_INCLUDE_DIR ${fft_INCLUDE_DIRS_RELEASE} )
set(fft_LIBRARIES ${fft_LIBRARIES_RELEASE} )
set(fft_DEFINITIONS ${fft_DEFINITIONS_RELEASE} )


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${fft_BUILD_MODULES_PATHS_RELEASE} )
    message(${fft_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


