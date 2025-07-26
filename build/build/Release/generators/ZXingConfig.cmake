########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(ZXing_FIND_QUIETLY)
    set(ZXing_MESSAGE_MODE VERBOSE)
else()
    set(ZXing_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/ZXingTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${zxing-cpp_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(ZXing_VERSION_STRING "2.3.0")
set(ZXing_INCLUDE_DIRS ${zxing-cpp_INCLUDE_DIRS_RELEASE} )
set(ZXing_INCLUDE_DIR ${zxing-cpp_INCLUDE_DIRS_RELEASE} )
set(ZXing_LIBRARIES ${zxing-cpp_LIBRARIES_RELEASE} )
set(ZXing_DEFINITIONS ${zxing-cpp_DEFINITIONS_RELEASE} )


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${zxing-cpp_BUILD_MODULES_PATHS_RELEASE} )
    message(${ZXing_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


