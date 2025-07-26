# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(fft_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(fft_FRAMEWORKS_FOUND_RELEASE "${fft_FRAMEWORKS_RELEASE}" "${fft_FRAMEWORK_DIRS_RELEASE}")

set(fft_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET fft_DEPS_TARGET)
    add_library(fft_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET fft_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${fft_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${fft_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### fft_DEPS_TARGET to all of them
conan_package_library_targets("${fft_LIBS_RELEASE}"    # libraries
                              "${fft_LIB_DIRS_RELEASE}" # package_libdir
                              "${fft_BIN_DIRS_RELEASE}" # package_bindir
                              "${fft_LIBRARY_TYPE_RELEASE}"
                              "${fft_IS_HOST_WINDOWS_RELEASE}"
                              fft_DEPS_TARGET
                              fft_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "fft"    # package_name
                              "${fft_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${fft_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET fft::fft
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${fft_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${fft_LIBRARIES_TARGETS}>
                 )

    if("${fft_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET fft::fft
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     fft_DEPS_TARGET)
    endif()

    set_property(TARGET fft::fft
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${fft_LINKER_FLAGS_RELEASE}>)
    set_property(TARGET fft::fft
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${fft_INCLUDE_DIRS_RELEASE}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET fft::fft
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${fft_LIB_DIRS_RELEASE}>)
    set_property(TARGET fft::fft
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${fft_COMPILE_DEFINITIONS_RELEASE}>)
    set_property(TARGET fft::fft
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${fft_COMPILE_OPTIONS_RELEASE}>)

########## For the modules (FindXXX)
set(fft_LIBRARIES_RELEASE fft::fft)
