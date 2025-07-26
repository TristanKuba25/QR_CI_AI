########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(ruy_COMPONENT_NAMES "")
if(DEFINED ruy_FIND_DEPENDENCY_NAMES)
  list(APPEND ruy_FIND_DEPENDENCY_NAMES cpuinfo)
  list(REMOVE_DUPLICATES ruy_FIND_DEPENDENCY_NAMES)
else()
  set(ruy_FIND_DEPENDENCY_NAMES cpuinfo)
endif()
set(cpuinfo_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(ruy_PACKAGE_FOLDER_RELEASE "/home/builder/.conan2/p/b/ruyfa7e75c8edbbb/p")
set(ruy_BUILD_MODULES_PATHS_RELEASE )


set(ruy_INCLUDE_DIRS_RELEASE )
set(ruy_RES_DIRS_RELEASE )
set(ruy_DEFINITIONS_RELEASE )
set(ruy_SHARED_LINK_FLAGS_RELEASE )
set(ruy_EXE_LINK_FLAGS_RELEASE )
set(ruy_OBJECTS_RELEASE )
set(ruy_COMPILE_DEFINITIONS_RELEASE )
set(ruy_COMPILE_OPTIONS_C_RELEASE )
set(ruy_COMPILE_OPTIONS_CXX_RELEASE )
set(ruy_LIB_DIRS_RELEASE "${ruy_PACKAGE_FOLDER_RELEASE}/lib")
set(ruy_BIN_DIRS_RELEASE )
set(ruy_LIBRARY_TYPE_RELEASE STATIC)
set(ruy_IS_HOST_WINDOWS_RELEASE 0)
set(ruy_LIBS_RELEASE ruy_frontend ruy_context ruy_trmul ruy_thread_pool ruy_blocking_counter ruy_prepare_packed_matrices ruy_ctx ruy_allocator ruy_prepacked_cache ruy_tune ruy_wait ruy_apply_multiplier ruy_block_map ruy_context_get_ctx ruy_cpuinfo ruy_denormal ruy_have_built_path_for_avx ruy_have_built_path_for_avx2_fma ruy_have_built_path_for_avx512 ruy_kernel_arm ruy_kernel_avx ruy_kernel_avx2_fma ruy_kernel_avx512 ruy_pack_arm ruy_pack_avx ruy_pack_avx2_fma ruy_pack_avx512 ruy_system_aligned_alloc ruy_profiler_instrumentation ruy_profiler_profiler)
set(ruy_SYSTEM_LIBS_RELEASE m pthread)
set(ruy_FRAMEWORK_DIRS_RELEASE )
set(ruy_FRAMEWORKS_RELEASE )
set(ruy_BUILD_DIRS_RELEASE )
set(ruy_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(ruy_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${ruy_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${ruy_COMPILE_OPTIONS_C_RELEASE}>")
set(ruy_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${ruy_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${ruy_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${ruy_EXE_LINK_FLAGS_RELEASE}>")


set(ruy_COMPONENTS_RELEASE )