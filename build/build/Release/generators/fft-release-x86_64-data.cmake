########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(fft_COMPONENT_NAMES "")
if(DEFINED fft_FIND_DEPENDENCY_NAMES)
  list(APPEND fft_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES fft_FIND_DEPENDENCY_NAMES)
else()
  set(fft_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(fft_PACKAGE_FOLDER_RELEASE "/home/builder/.conan2/p/b/fft54bf6cdf4e3fb/p")
set(fft_BUILD_MODULES_PATHS_RELEASE )


set(fft_INCLUDE_DIRS_RELEASE )
set(fft_RES_DIRS_RELEASE )
set(fft_DEFINITIONS_RELEASE )
set(fft_SHARED_LINK_FLAGS_RELEASE )
set(fft_EXE_LINK_FLAGS_RELEASE )
set(fft_OBJECTS_RELEASE )
set(fft_COMPILE_DEFINITIONS_RELEASE )
set(fft_COMPILE_OPTIONS_C_RELEASE )
set(fft_COMPILE_OPTIONS_CXX_RELEASE )
set(fft_LIB_DIRS_RELEASE "${fft_PACKAGE_FOLDER_RELEASE}/lib")
set(fft_BIN_DIRS_RELEASE )
set(fft_LIBRARY_TYPE_RELEASE STATIC)
set(fft_IS_HOST_WINDOWS_RELEASE 0)
set(fft_LIBS_RELEASE fft)
set(fft_SYSTEM_LIBS_RELEASE m)
set(fft_FRAMEWORK_DIRS_RELEASE )
set(fft_FRAMEWORKS_RELEASE )
set(fft_BUILD_DIRS_RELEASE )
set(fft_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(fft_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${fft_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${fft_COMPILE_OPTIONS_C_RELEASE}>")
set(fft_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${fft_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${fft_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${fft_EXE_LINK_FLAGS_RELEASE}>")


set(fft_COMPONENTS_RELEASE )