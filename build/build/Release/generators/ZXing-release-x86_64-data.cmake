########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(zxing-cpp_COMPONENT_NAMES "")
if(DEFINED zxing-cpp_FIND_DEPENDENCY_NAMES)
  list(APPEND zxing-cpp_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES zxing-cpp_FIND_DEPENDENCY_NAMES)
else()
  set(zxing-cpp_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(zxing-cpp_PACKAGE_FOLDER_RELEASE "/home/builder/.conan2/p/b/zxing8991d86ee8f60/p")
set(zxing-cpp_BUILD_MODULES_PATHS_RELEASE )


set(zxing-cpp_INCLUDE_DIRS_RELEASE "${zxing-cpp_PACKAGE_FOLDER_RELEASE}/include")
set(zxing-cpp_RES_DIRS_RELEASE )
set(zxing-cpp_DEFINITIONS_RELEASE )
set(zxing-cpp_SHARED_LINK_FLAGS_RELEASE )
set(zxing-cpp_EXE_LINK_FLAGS_RELEASE )
set(zxing-cpp_OBJECTS_RELEASE )
set(zxing-cpp_COMPILE_DEFINITIONS_RELEASE )
set(zxing-cpp_COMPILE_OPTIONS_C_RELEASE )
set(zxing-cpp_COMPILE_OPTIONS_CXX_RELEASE )
set(zxing-cpp_LIB_DIRS_RELEASE "${zxing-cpp_PACKAGE_FOLDER_RELEASE}/lib")
set(zxing-cpp_BIN_DIRS_RELEASE )
set(zxing-cpp_LIBRARY_TYPE_RELEASE STATIC)
set(zxing-cpp_IS_HOST_WINDOWS_RELEASE 0)
set(zxing-cpp_LIBS_RELEASE ZXing)
set(zxing-cpp_SYSTEM_LIBS_RELEASE pthread m)
set(zxing-cpp_FRAMEWORK_DIRS_RELEASE )
set(zxing-cpp_FRAMEWORKS_RELEASE )
set(zxing-cpp_BUILD_DIRS_RELEASE )
set(zxing-cpp_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(zxing-cpp_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${zxing-cpp_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${zxing-cpp_COMPILE_OPTIONS_C_RELEASE}>")
set(zxing-cpp_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${zxing-cpp_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${zxing-cpp_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${zxing-cpp_EXE_LINK_FLAGS_RELEASE}>")


set(zxing-cpp_COMPONENTS_RELEASE )