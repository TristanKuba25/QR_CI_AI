# Conan automatically generated toolchain file
# DO NOT EDIT MANUALLY, it will be overwritten

# Avoid including toolchain file several times (bad if appending to variables like
#   CMAKE_CXX_FLAGS. See https://github.com/android/ndk/issues/323
include_guard()
message(STATUS "Using Conan toolchain: ${CMAKE_CURRENT_LIST_FILE}")
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeToolchain' generator only works with CMake >= 3.15")
endif()

########## 'user_toolchain' block #############
# Include one or more CMake user toolchain from tools.cmake.cmaketoolchain:user_toolchain



########## 'generic_system' block #############
# Definition of system, platform and toolset





########## 'compilers' block #############



########## 'arch_flags' block #############
# Define C++ flags, C flags and linker flags from 'settings.arch'
message(STATUS "Conan toolchain: Defining architecture flag: -m64")
string(APPEND CONAN_CXX_FLAGS " -m64")
string(APPEND CONAN_C_FLAGS " -m64")
string(APPEND CONAN_SHARED_LINKER_FLAGS " -m64")
string(APPEND CONAN_EXE_LINKER_FLAGS " -m64")


########## 'libcxx' block #############
# Definition of libcxx from 'compiler.libcxx' setting, defining the
# right CXX_FLAGS for that libcxx



########## 'cppstd' block #############
# Define the C++ and C standards from 'compiler.cppstd' and 'compiler.cstd'

function(conan_modify_std_watch variable access value current_list_file stack)
    set(conan_watched_std_variable "17")
    if (${variable} STREQUAL "CMAKE_C_STANDARD")
        set(conan_watched_std_variable "")
    endif()
    if ("${access}" STREQUAL "MODIFIED_ACCESS" AND NOT "${value}" STREQUAL "${conan_watched_std_variable}")
        message(STATUS "Warning: Standard ${variable} value defined in conan_toolchain.cmake to ${conan_watched_std_variable} has been modified to ${value} by ${current_list_file}")
    endif()
    unset(conan_watched_std_variable)
endfunction()

message(STATUS "Conan toolchain: C++ Standard 17 with extensions ON")
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
variable_watch(CMAKE_CXX_STANDARD conan_modify_std_watch)


########## 'extra_flags' block #############
# Include extra C++, C and linker flags from configuration tools.build:<type>flags
# and from CMakeToolchain.extra_<type>_flags

# Conan conf flags start: 
# Conan conf flags end


########## 'cmake_flags_init' block #############
# Define CMAKE_<XXX>_FLAGS from CONAN_<XXX>_FLAGS

foreach(config IN LISTS CMAKE_CONFIGURATION_TYPES)
    string(TOUPPER ${config} config)
    if(DEFINED CONAN_CXX_FLAGS_${config})
      string(APPEND CMAKE_CXX_FLAGS_${config}_INIT " ${CONAN_CXX_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_C_FLAGS_${config})
      string(APPEND CMAKE_C_FLAGS_${config}_INIT " ${CONAN_C_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_SHARED_LINKER_FLAGS_${config})
      string(APPEND CMAKE_SHARED_LINKER_FLAGS_${config}_INIT " ${CONAN_SHARED_LINKER_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_EXE_LINKER_FLAGS_${config})
      string(APPEND CMAKE_EXE_LINKER_FLAGS_${config}_INIT " ${CONAN_EXE_LINKER_FLAGS_${config}}")
    endif()
endforeach()

if(DEFINED CONAN_CXX_FLAGS)
  string(APPEND CMAKE_CXX_FLAGS_INIT " ${CONAN_CXX_FLAGS}")
endif()
if(DEFINED CONAN_C_FLAGS)
  string(APPEND CMAKE_C_FLAGS_INIT " ${CONAN_C_FLAGS}")
endif()
if(DEFINED CONAN_SHARED_LINKER_FLAGS)
  string(APPEND CMAKE_SHARED_LINKER_FLAGS_INIT " ${CONAN_SHARED_LINKER_FLAGS}")
endif()
if(DEFINED CONAN_EXE_LINKER_FLAGS)
  string(APPEND CMAKE_EXE_LINKER_FLAGS_INIT " ${CONAN_EXE_LINKER_FLAGS}")
endif()
if(DEFINED CONAN_OBJCXX_FLAGS)
  string(APPEND CMAKE_OBJCXX_FLAGS_INIT " ${CONAN_OBJCXX_FLAGS}")
endif()
if(DEFINED CONAN_OBJC_FLAGS)
  string(APPEND CMAKE_OBJC_FLAGS_INIT " ${CONAN_OBJC_FLAGS}")
endif()


########## 'extra_variables' block #############
# Definition of extra CMake variables from tools.cmake.cmaketoolchain:extra_variables



########## 'try_compile' block #############
# Blocks after this one will not be added when running CMake try/checks

if(NOT DEFINED CMAKE_TRY_COMPILE_CONFIGURATION)  # to allow user command line override
    set(CMAKE_TRY_COMPILE_CONFIGURATION Release)
endif()
get_property( _CMAKE_IN_TRY_COMPILE GLOBAL PROPERTY IN_TRY_COMPILE )
if(_CMAKE_IN_TRY_COMPILE)
    message(STATUS "Running toolchain IN_TRY_COMPILE")
    return()
endif()


########## 'find_paths' block #############
# Define paths to find packages, programs, libraries, etc.
if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/conan_cmakedeps_paths.cmake")
  message(STATUS "Conan toolchain: Including CMakeDeps generated conan_cmakedeps_paths.cmake")
  include("${CMAKE_CURRENT_LIST_DIR}/conan_cmakedeps_paths.cmake")
else()

set(CMAKE_FIND_PACKAGE_PREFER_CONFIG ON)

# Definition of CMAKE_MODULE_PATH
list(PREPEND CMAKE_MODULE_PATH "/home/builder/.conan2/p/b/proto9cb1f60413c21/p/lib/cmake/protobuf" "/home/builder/.conan2/p/b/openj45e4a81ec400e/p/lib/cmake")
# the generators folder (where conan generates files, like this toolchain)
list(PREPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})

# Definition of CMAKE_PREFIX_PATH, CMAKE_XXXXX_PATH
# The explicitly defined "builddirs" of "host" context dependencies must be in PREFIX_PATH
list(PREPEND CMAKE_PREFIX_PATH "/home/builder/.conan2/p/b/proto9cb1f60413c21/p/lib/cmake/protobuf" "/home/builder/.conan2/p/b/openj45e4a81ec400e/p/lib/cmake")
# The Conan local "generators" folder, where this toolchain is saved.
list(PREPEND CMAKE_PREFIX_PATH ${CMAKE_CURRENT_LIST_DIR} )
list(PREPEND CMAKE_PROGRAM_PATH "/home/builder/.conan2/p/cmakee640aa79d28bd/p/bin" "/home/builder/.conan2/p/ninjae5b5bd2e11aaa/p/bin")
list(PREPEND CMAKE_LIBRARY_PATH "/home/builder/.conan2/p/b/openc0d5311569d9aa/p/lib" "/home/builder/.conan2/p/b/proto9cb1f60413c21/p/lib" "/home/builder/.conan2/p/b/adef8e25680d22e3/p/lib" "/home/builder/.conan2/p/b/xkbco55e866e17adaf/p/lib" "/home/builder/.conan2/p/b/waylad15c3dd2a69b8/p/lib" "/home/builder/.conan2/p/b/libff02055e8384c00/p/lib" "/home/builder/.conan2/p/b/libxm9b451b48429bc/p/lib" "/home/builder/.conan2/p/b/zlibaa59cdc052444/p/lib" "/home/builder/.conan2/p/b/libicc40f1c4c2e409/p/lib" "/home/builder/.conan2/p/b/expat83573d88e615d/p/lib" "/home/builder/.conan2/p/b/openj45e4a81ec400e/p/lib" "/home/builder/.conan2/p/b/libwe8f8b23243013b/p/lib" "/home/builder/.conan2/p/b/zxing8991d86ee8f60/p/lib" "/home/builder/.conan2/p/b/tenso6e46e6c00a811/p/lib" "/home/builder/.conan2/p/b/abseib6e67c131af5c/p/lib" "lib" "/home/builder/.conan2/p/b/farmh7617bd53619a0/p/lib" "/home/builder/.conan2/p/b/fft54bf6cdf4e3fb/p/lib" "/home/builder/.conan2/p/b/flatbd104c7f036569/p/lib" "/home/builder/.conan2/p/b/gemmlcf92ce9470d95/p/lib" "/home/builder/.conan2/p/b/ruyfa7e75c8edbbb/p/lib" "lib" "/home/builder/.conan2/p/b/xnnpaf2e955ecfcb65/p/lib" "/home/builder/.conan2/p/b/cpuin6cd61cde267e3/p/lib" "/home/builder/.conan2/p/b/pthre7d45372d07fb7/p/lib" "lib" "lib" "lib")
list(PREPEND CMAKE_INCLUDE_PATH "/home/builder/.conan2/p/b/openc0d5311569d9aa/p/include" "/home/builder/.conan2/p/b/openc0d5311569d9aa/p/include/opencv4" "/home/builder/.conan2/p/b/proto9cb1f60413c21/p/include" "/home/builder/.conan2/p/b/adef8e25680d22e3/p/include" "/usr/include/gtk-2.0" "/usr/lib/x86_64-linux-gnu/gtk-2.0/include" "/usr/include/pango-1.0" "/usr/include/glib-2.0" "/usr/lib/x86_64-linux-gnu/glib-2.0/include" "/usr/include/harfbuzz" "/usr/include/freetype2" "/usr/include/libpng16" "/usr/include/libmount" "/usr/include/blkid" "/usr/include/fribidi" "/usr/include/cairo" "/usr/include/pixman-1" "/usr/include/gdk-pixbuf-2.0" "/usr/include/x86_64-linux-gnu" "/usr/include/webp" "/usr/include/atk-1.0" "/home/builder/.conan2/p/b/xkbco55e866e17adaf/p/include" "/home/builder/.conan2/p/b/waylad15c3dd2a69b8/p/include" "/home/builder/.conan2/p/b/libff02055e8384c00/p/include" "/home/builder/.conan2/p/b/libxm9b451b48429bc/p/include" "/home/builder/.conan2/p/b/libxm9b451b48429bc/p/include/libxml2" "/home/builder/.conan2/p/b/zlibaa59cdc052444/p/include" "/home/builder/.conan2/p/b/libicc40f1c4c2e409/p/include" "/home/builder/.conan2/p/b/expat83573d88e615d/p/include" "/home/builder/.conan2/p/b/openj45e4a81ec400e/p/include" "/home/builder/.conan2/p/b/openj45e4a81ec400e/p/include/openjpeg-2.5" "/home/builder/.conan2/p/b/libwe8f8b23243013b/p/include" "/home/builder/.conan2/p/b/zxing8991d86ee8f60/p/include" "/home/builder/.conan2/p/b/tenso6e46e6c00a811/p/include" "/home/builder/.conan2/p/b/abseib6e67c131af5c/p/include" "include" "/home/builder/.conan2/p/b/farmh7617bd53619a0/p/include" "/home/builder/.conan2/p/b/fft54bf6cdf4e3fb/p/include" "/home/builder/.conan2/p/b/flatbd104c7f036569/p/include" "/home/builder/.conan2/p/b/gemmlcf92ce9470d95/p/include" "/home/builder/.conan2/p/b/gemmlcf92ce9470d95/p/include/gemmlowp" "/home/builder/.conan2/p/b/ruyfa7e75c8edbbb/p/include" "include" "/home/builder/.conan2/p/b/xnnpaf2e955ecfcb65/p/include" "/home/builder/.conan2/p/b/cpuin6cd61cde267e3/p/include" "/home/builder/.conan2/p/b/pthre7d45372d07fb7/p/include" "include" "include" "include")
set(CONAN_RUNTIME_LIB_DIRS "/home/builder/.conan2/p/b/openc0d5311569d9aa/p/lib" "/home/builder/.conan2/p/b/proto9cb1f60413c21/p/lib" "/home/builder/.conan2/p/b/adef8e25680d22e3/p/lib" "/home/builder/.conan2/p/b/xkbco55e866e17adaf/p/lib" "/home/builder/.conan2/p/b/waylad15c3dd2a69b8/p/lib" "/home/builder/.conan2/p/b/libff02055e8384c00/p/lib" "/home/builder/.conan2/p/b/libxm9b451b48429bc/p/lib" "/home/builder/.conan2/p/b/zlibaa59cdc052444/p/lib" "/home/builder/.conan2/p/b/libicc40f1c4c2e409/p/lib" "/home/builder/.conan2/p/b/expat83573d88e615d/p/lib" "/home/builder/.conan2/p/b/openj45e4a81ec400e/p/lib" "/home/builder/.conan2/p/b/libwe8f8b23243013b/p/lib" "/home/builder/.conan2/p/b/zxing8991d86ee8f60/p/lib" "/home/builder/.conan2/p/b/tenso6e46e6c00a811/p/lib" "/home/builder/.conan2/p/b/abseib6e67c131af5c/p/lib" "lib" "/home/builder/.conan2/p/b/farmh7617bd53619a0/p/lib" "/home/builder/.conan2/p/b/fft54bf6cdf4e3fb/p/lib" "/home/builder/.conan2/p/b/flatbd104c7f036569/p/lib" "/home/builder/.conan2/p/b/gemmlcf92ce9470d95/p/lib" "/home/builder/.conan2/p/b/ruyfa7e75c8edbbb/p/lib" "lib" "/home/builder/.conan2/p/b/xnnpaf2e955ecfcb65/p/lib" "/home/builder/.conan2/p/b/cpuin6cd61cde267e3/p/lib" "/home/builder/.conan2/p/b/pthre7d45372d07fb7/p/lib" "lib" "lib" "lib" )

endif()


########## 'pkg_config' block #############
# Define pkg-config from 'tools.gnu:pkg_config' executable and paths

if (DEFINED ENV{PKG_CONFIG_PATH})
set(ENV{PKG_CONFIG_PATH} "${CMAKE_CURRENT_LIST_DIR}:$ENV{PKG_CONFIG_PATH}")
else()
set(ENV{PKG_CONFIG_PATH} "${CMAKE_CURRENT_LIST_DIR}:")
endif()


########## 'rpath' block #############
# Defining CMAKE_SKIP_RPATH



########## 'output_dirs' block #############
# Definition of CMAKE_INSTALL_XXX folders

set(CMAKE_INSTALL_BINDIR "bin")
set(CMAKE_INSTALL_SBINDIR "bin")
set(CMAKE_INSTALL_LIBEXECDIR "bin")
set(CMAKE_INSTALL_LIBDIR "lib")
set(CMAKE_INSTALL_INCLUDEDIR "include")
set(CMAKE_INSTALL_OLDINCLUDEDIR "include")


########## 'variables' block #############
# Definition of CMake variables from CMakeToolchain.variables values

# Variables
# Variables  per configuration



########## 'preprocessor' block #############
# Preprocessor definitions from CMakeToolchain.preprocessor_definitions values

# Preprocessor definitions per configuration



if(CMAKE_POLICY_DEFAULT_CMP0091)  # Avoid unused and not-initialized warnings
endif()
