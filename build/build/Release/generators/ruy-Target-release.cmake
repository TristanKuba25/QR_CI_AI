# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(ruy_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(ruy_FRAMEWORKS_FOUND_RELEASE "${ruy_FRAMEWORKS_RELEASE}" "${ruy_FRAMEWORK_DIRS_RELEASE}")

set(ruy_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET ruy_DEPS_TARGET)
    add_library(ruy_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET ruy_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${ruy_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${ruy_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:cpuinfo::cpuinfo>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### ruy_DEPS_TARGET to all of them
conan_package_library_targets("${ruy_LIBS_RELEASE}"    # libraries
                              "${ruy_LIB_DIRS_RELEASE}" # package_libdir
                              "${ruy_BIN_DIRS_RELEASE}" # package_bindir
                              "${ruy_LIBRARY_TYPE_RELEASE}"
                              "${ruy_IS_HOST_WINDOWS_RELEASE}"
                              ruy_DEPS_TARGET
                              ruy_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "ruy"    # package_name
                              "${ruy_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${ruy_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET ruy::ruy
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${ruy_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${ruy_LIBRARIES_TARGETS}>
                 )

    if("${ruy_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET ruy::ruy
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     ruy_DEPS_TARGET)
    endif()

    set_property(TARGET ruy::ruy
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${ruy_LINKER_FLAGS_RELEASE}>)
    set_property(TARGET ruy::ruy
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${ruy_INCLUDE_DIRS_RELEASE}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET ruy::ruy
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${ruy_LIB_DIRS_RELEASE}>)
    set_property(TARGET ruy::ruy
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${ruy_COMPILE_DEFINITIONS_RELEASE}>)
    set_property(TARGET ruy::ruy
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${ruy_COMPILE_OPTIONS_RELEASE}>)

########## For the modules (FindXXX)
set(ruy_LIBRARIES_RELEASE ruy::ruy)
