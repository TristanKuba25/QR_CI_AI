########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND gemmlowp_COMPONENT_NAMES gemmlowp::eight_bit_int_gemm)
list(REMOVE_DUPLICATES gemmlowp_COMPONENT_NAMES)
if(DEFINED gemmlowp_FIND_DEPENDENCY_NAMES)
  list(APPEND gemmlowp_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES gemmlowp_FIND_DEPENDENCY_NAMES)
else()
  set(gemmlowp_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(gemmlowp_PACKAGE_FOLDER_RELEASE "/home/builder/.conan2/p/b/gemmlcf92ce9470d95/p")
set(gemmlowp_BUILD_MODULES_PATHS_RELEASE )


set(gemmlowp_INCLUDE_DIRS_RELEASE )
set(gemmlowp_RES_DIRS_RELEASE )
set(gemmlowp_DEFINITIONS_RELEASE )
set(gemmlowp_SHARED_LINK_FLAGS_RELEASE )
set(gemmlowp_EXE_LINK_FLAGS_RELEASE )
set(gemmlowp_OBJECTS_RELEASE )
set(gemmlowp_COMPILE_DEFINITIONS_RELEASE )
set(gemmlowp_COMPILE_OPTIONS_C_RELEASE )
set(gemmlowp_COMPILE_OPTIONS_CXX_RELEASE )
set(gemmlowp_LIB_DIRS_RELEASE "${gemmlowp_PACKAGE_FOLDER_RELEASE}/lib")
set(gemmlowp_BIN_DIRS_RELEASE )
set(gemmlowp_LIBRARY_TYPE_RELEASE STATIC)
set(gemmlowp_IS_HOST_WINDOWS_RELEASE 0)
set(gemmlowp_LIBS_RELEASE eight_bit_int_gemm)
set(gemmlowp_SYSTEM_LIBS_RELEASE pthread)
set(gemmlowp_FRAMEWORK_DIRS_RELEASE )
set(gemmlowp_FRAMEWORKS_RELEASE )
set(gemmlowp_BUILD_DIRS_RELEASE )
set(gemmlowp_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(gemmlowp_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${gemmlowp_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${gemmlowp_COMPILE_OPTIONS_C_RELEASE}>")
set(gemmlowp_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${gemmlowp_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${gemmlowp_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${gemmlowp_EXE_LINK_FLAGS_RELEASE}>")


set(gemmlowp_COMPONENTS_RELEASE gemmlowp::eight_bit_int_gemm)
########### COMPONENT gemmlowp::eight_bit_int_gemm VARIABLES ############################################

set(gemmlowp_gemmlowp_eight_bit_int_gemm_INCLUDE_DIRS_RELEASE )
set(gemmlowp_gemmlowp_eight_bit_int_gemm_LIB_DIRS_RELEASE "${gemmlowp_PACKAGE_FOLDER_RELEASE}/lib")
set(gemmlowp_gemmlowp_eight_bit_int_gemm_BIN_DIRS_RELEASE )
set(gemmlowp_gemmlowp_eight_bit_int_gemm_LIBRARY_TYPE_RELEASE STATIC)
set(gemmlowp_gemmlowp_eight_bit_int_gemm_IS_HOST_WINDOWS_RELEASE 0)
set(gemmlowp_gemmlowp_eight_bit_int_gemm_RES_DIRS_RELEASE )
set(gemmlowp_gemmlowp_eight_bit_int_gemm_DEFINITIONS_RELEASE )
set(gemmlowp_gemmlowp_eight_bit_int_gemm_OBJECTS_RELEASE )
set(gemmlowp_gemmlowp_eight_bit_int_gemm_COMPILE_DEFINITIONS_RELEASE )
set(gemmlowp_gemmlowp_eight_bit_int_gemm_COMPILE_OPTIONS_C_RELEASE "")
set(gemmlowp_gemmlowp_eight_bit_int_gemm_COMPILE_OPTIONS_CXX_RELEASE "")
set(gemmlowp_gemmlowp_eight_bit_int_gemm_LIBS_RELEASE eight_bit_int_gemm)
set(gemmlowp_gemmlowp_eight_bit_int_gemm_SYSTEM_LIBS_RELEASE pthread)
set(gemmlowp_gemmlowp_eight_bit_int_gemm_FRAMEWORK_DIRS_RELEASE )
set(gemmlowp_gemmlowp_eight_bit_int_gemm_FRAMEWORKS_RELEASE )
set(gemmlowp_gemmlowp_eight_bit_int_gemm_DEPENDENCIES_RELEASE )
set(gemmlowp_gemmlowp_eight_bit_int_gemm_SHARED_LINK_FLAGS_RELEASE )
set(gemmlowp_gemmlowp_eight_bit_int_gemm_EXE_LINK_FLAGS_RELEASE )
set(gemmlowp_gemmlowp_eight_bit_int_gemm_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(gemmlowp_gemmlowp_eight_bit_int_gemm_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${gemmlowp_gemmlowp_eight_bit_int_gemm_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${gemmlowp_gemmlowp_eight_bit_int_gemm_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${gemmlowp_gemmlowp_eight_bit_int_gemm_EXE_LINK_FLAGS_RELEASE}>
)
set(gemmlowp_gemmlowp_eight_bit_int_gemm_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${gemmlowp_gemmlowp_eight_bit_int_gemm_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${gemmlowp_gemmlowp_eight_bit_int_gemm_COMPILE_OPTIONS_C_RELEASE}>")