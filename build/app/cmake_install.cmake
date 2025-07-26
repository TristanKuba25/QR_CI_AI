# Install script for directory: /home/builder/QR_CI_AI

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/identique_ratio" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/identique_ratio")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/identique_ratio"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/usr/bin" TYPE EXECUTABLE FILES "/home/builder/QR_CI_AI/build/app/identique_ratio")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/identique_ratio" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/identique_ratio")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/identique_ratio"
         OLD_RPATH "/home/builder/.conan2/p/b/openc0d5311569d9aa/p/lib:/home/builder/.conan2/p/b/zlibaa59cdc052444/p/lib:/home/builder/.conan2/p/b/openj45e4a81ec400e/p/lib:/home/builder/.conan2/p/b/libwe8f8b23243013b/p/lib:/home/builder/.conan2/p/b/xkbco55e866e17adaf/p/lib:/home/builder/.conan2/p/b/waylad15c3dd2a69b8/p/lib:/home/builder/.conan2/p/b/libff02055e8384c00/p/lib:/home/builder/.conan2/p/b/zxing8991d86ee8f60/p/lib:/home/builder/.conan2/p/b/tenso6e46e6c00a811/p/lib:/home/builder/.conan2/p/b/abseib6e67c131af5c/p/lib:/home/builder/.conan2/p/b/farmh7617bd53619a0/p/lib:/home/builder/.conan2/p/b/fft54bf6cdf4e3fb/p/lib:/home/builder/.conan2/p/b/flatbd104c7f036569/p/lib:/home/builder/.conan2/p/b/gemmlcf92ce9470d95/p/lib:/home/builder/.conan2/p/b/ruyfa7e75c8edbbb/p/lib:/home/builder/.conan2/p/b/cpuin6cd61cde267e3/p/lib:/home/builder/.conan2/p/b/xnnpaf2e955ecfcb65/p/lib:/home/builder/.conan2/p/b/pthre7d45372d07fb7/p/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/identique_ratio")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/usr/share/identique-ratio/models" TYPE FILE FILES "/home/builder/QR_CI_AI/models/model.tflite")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/builder/QR_CI_AI/build/app/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
