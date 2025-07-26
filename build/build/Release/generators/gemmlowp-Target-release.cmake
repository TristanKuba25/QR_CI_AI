# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(gemmlowp_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(gemmlowp_FRAMEWORKS_FOUND_RELEASE "${gemmlowp_FRAMEWORKS_RELEASE}" "${gemmlowp_FRAMEWORK_DIRS_RELEASE}")

set(gemmlowp_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET gemmlowp_DEPS_TARGET)
    add_library(gemmlowp_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET gemmlowp_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${gemmlowp_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${gemmlowp_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### gemmlowp_DEPS_TARGET to all of them
conan_package_library_targets("${gemmlowp_LIBS_RELEASE}"    # libraries
                              "${gemmlowp_LIB_DIRS_RELEASE}" # package_libdir
                              "${gemmlowp_BIN_DIRS_RELEASE}" # package_bindir
                              "${gemmlowp_LIBRARY_TYPE_RELEASE}"
                              "${gemmlowp_IS_HOST_WINDOWS_RELEASE}"
                              gemmlowp_DEPS_TARGET
                              gemmlowp_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "gemmlowp"    # package_name
                              "${gemmlowp_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${gemmlowp_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Release ########################################

    ########## COMPONENT gemmlowp::eight_bit_int_gemm #############

        set(gemmlowp_gemmlowp_eight_bit_int_gemm_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(gemmlowp_gemmlowp_eight_bit_int_gemm_FRAMEWORKS_FOUND_RELEASE "${gemmlowp_gemmlowp_eight_bit_int_gemm_FRAMEWORKS_RELEASE}" "${gemmlowp_gemmlowp_eight_bit_int_gemm_FRAMEWORK_DIRS_RELEASE}")

        set(gemmlowp_gemmlowp_eight_bit_int_gemm_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET gemmlowp_gemmlowp_eight_bit_int_gemm_DEPS_TARGET)
            add_library(gemmlowp_gemmlowp_eight_bit_int_gemm_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET gemmlowp_gemmlowp_eight_bit_int_gemm_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${gemmlowp_gemmlowp_eight_bit_int_gemm_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${gemmlowp_gemmlowp_eight_bit_int_gemm_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${gemmlowp_gemmlowp_eight_bit_int_gemm_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'gemmlowp_gemmlowp_eight_bit_int_gemm_DEPS_TARGET' to all of them
        conan_package_library_targets("${gemmlowp_gemmlowp_eight_bit_int_gemm_LIBS_RELEASE}"
                              "${gemmlowp_gemmlowp_eight_bit_int_gemm_LIB_DIRS_RELEASE}"
                              "${gemmlowp_gemmlowp_eight_bit_int_gemm_BIN_DIRS_RELEASE}" # package_bindir
                              "${gemmlowp_gemmlowp_eight_bit_int_gemm_LIBRARY_TYPE_RELEASE}"
                              "${gemmlowp_gemmlowp_eight_bit_int_gemm_IS_HOST_WINDOWS_RELEASE}"
                              gemmlowp_gemmlowp_eight_bit_int_gemm_DEPS_TARGET
                              gemmlowp_gemmlowp_eight_bit_int_gemm_LIBRARIES_TARGETS
                              "_RELEASE"
                              "gemmlowp_gemmlowp_eight_bit_int_gemm"
                              "${gemmlowp_gemmlowp_eight_bit_int_gemm_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET gemmlowp::eight_bit_int_gemm
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${gemmlowp_gemmlowp_eight_bit_int_gemm_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${gemmlowp_gemmlowp_eight_bit_int_gemm_LIBRARIES_TARGETS}>
                     )

        if("${gemmlowp_gemmlowp_eight_bit_int_gemm_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET gemmlowp::eight_bit_int_gemm
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         gemmlowp_gemmlowp_eight_bit_int_gemm_DEPS_TARGET)
        endif()

        set_property(TARGET gemmlowp::eight_bit_int_gemm APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${gemmlowp_gemmlowp_eight_bit_int_gemm_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET gemmlowp::eight_bit_int_gemm APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${gemmlowp_gemmlowp_eight_bit_int_gemm_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET gemmlowp::eight_bit_int_gemm APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${gemmlowp_gemmlowp_eight_bit_int_gemm_LIB_DIRS_RELEASE}>)
        set_property(TARGET gemmlowp::eight_bit_int_gemm APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${gemmlowp_gemmlowp_eight_bit_int_gemm_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET gemmlowp::eight_bit_int_gemm APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${gemmlowp_gemmlowp_eight_bit_int_gemm_COMPILE_OPTIONS_RELEASE}>)


    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET gemmlowp::gemmlowp APPEND PROPERTY INTERFACE_LINK_LIBRARIES gemmlowp::eight_bit_int_gemm)

########## For the modules (FindXXX)
set(gemmlowp_LIBRARIES_RELEASE gemmlowp::gemmlowp)
