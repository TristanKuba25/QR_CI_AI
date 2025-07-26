########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(tensorflow-lite_COMPONENT_NAMES "")
if(DEFINED tensorflow-lite_FIND_DEPENDENCY_NAMES)
  list(APPEND tensorflow-lite_FIND_DEPENDENCY_NAMES absl farmhash fft flatbuffers gemmlowp ruy xnnpack pthreadpool)
  list(REMOVE_DUPLICATES tensorflow-lite_FIND_DEPENDENCY_NAMES)
else()
  set(tensorflow-lite_FIND_DEPENDENCY_NAMES absl farmhash fft flatbuffers gemmlowp ruy xnnpack pthreadpool)
endif()
set(absl_FIND_MODE "NO_MODULE")
set(farmhash_FIND_MODE "NO_MODULE")
set(fft_FIND_MODE "NO_MODULE")
set(flatbuffers_FIND_MODE "NO_MODULE")
set(gemmlowp_FIND_MODE "NO_MODULE")
set(ruy_FIND_MODE "NO_MODULE")
set(xnnpack_FIND_MODE "NO_MODULE")
set(pthreadpool_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(tensorflow-lite_PACKAGE_FOLDER_RELEASE "/home/builder/.conan2/p/b/tenso6e46e6c00a811/p")
set(tensorflow-lite_BUILD_MODULES_PATHS_RELEASE )


set(tensorflow-lite_INCLUDE_DIRS_RELEASE "${tensorflow-lite_PACKAGE_FOLDER_RELEASE}/include")
set(tensorflow-lite_RES_DIRS_RELEASE )
set(tensorflow-lite_DEFINITIONS_RELEASE "-DTFL_STATIC_LIBRARY_BUILD")
set(tensorflow-lite_SHARED_LINK_FLAGS_RELEASE )
set(tensorflow-lite_EXE_LINK_FLAGS_RELEASE )
set(tensorflow-lite_OBJECTS_RELEASE )
set(tensorflow-lite_COMPILE_DEFINITIONS_RELEASE "TFL_STATIC_LIBRARY_BUILD")
set(tensorflow-lite_COMPILE_OPTIONS_C_RELEASE )
set(tensorflow-lite_COMPILE_OPTIONS_CXX_RELEASE )
set(tensorflow-lite_LIB_DIRS_RELEASE "${tensorflow-lite_PACKAGE_FOLDER_RELEASE}/lib")
set(tensorflow-lite_BIN_DIRS_RELEASE )
set(tensorflow-lite_LIBRARY_TYPE_RELEASE STATIC)
set(tensorflow-lite_IS_HOST_WINDOWS_RELEASE 0)
set(tensorflow-lite_LIBS_RELEASE tensorflow-lite)
set(tensorflow-lite_SYSTEM_LIBS_RELEASE dl)
set(tensorflow-lite_FRAMEWORK_DIRS_RELEASE )
set(tensorflow-lite_FRAMEWORKS_RELEASE )
set(tensorflow-lite_BUILD_DIRS_RELEASE )
set(tensorflow-lite_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(tensorflow-lite_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${tensorflow-lite_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${tensorflow-lite_COMPILE_OPTIONS_C_RELEASE}>")
set(tensorflow-lite_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${tensorflow-lite_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${tensorflow-lite_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${tensorflow-lite_EXE_LINK_FLAGS_RELEASE}>")


set(tensorflow-lite_COMPONENTS_RELEASE )