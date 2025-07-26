########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(farmhash_COMPONENT_NAMES "")
if(DEFINED farmhash_FIND_DEPENDENCY_NAMES)
  list(APPEND farmhash_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES farmhash_FIND_DEPENDENCY_NAMES)
else()
  set(farmhash_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(farmhash_PACKAGE_FOLDER_RELEASE "/home/builder/.conan2/p/b/farmh7617bd53619a0/p")
set(farmhash_BUILD_MODULES_PATHS_RELEASE )


set(farmhash_INCLUDE_DIRS_RELEASE )
set(farmhash_RES_DIRS_RELEASE )
set(farmhash_DEFINITIONS_RELEASE )
set(farmhash_SHARED_LINK_FLAGS_RELEASE )
set(farmhash_EXE_LINK_FLAGS_RELEASE )
set(farmhash_OBJECTS_RELEASE )
set(farmhash_COMPILE_DEFINITIONS_RELEASE )
set(farmhash_COMPILE_OPTIONS_C_RELEASE )
set(farmhash_COMPILE_OPTIONS_CXX_RELEASE )
set(farmhash_LIB_DIRS_RELEASE "${farmhash_PACKAGE_FOLDER_RELEASE}/lib")
set(farmhash_BIN_DIRS_RELEASE )
set(farmhash_LIBRARY_TYPE_RELEASE STATIC)
set(farmhash_IS_HOST_WINDOWS_RELEASE 0)
set(farmhash_LIBS_RELEASE farmhash)
set(farmhash_SYSTEM_LIBS_RELEASE )
set(farmhash_FRAMEWORK_DIRS_RELEASE )
set(farmhash_FRAMEWORKS_RELEASE )
set(farmhash_BUILD_DIRS_RELEASE )
set(farmhash_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(farmhash_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${farmhash_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${farmhash_COMPILE_OPTIONS_C_RELEASE}>")
set(farmhash_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${farmhash_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${farmhash_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${farmhash_EXE_LINK_FLAGS_RELEASE}>")


set(farmhash_COMPONENTS_RELEASE )