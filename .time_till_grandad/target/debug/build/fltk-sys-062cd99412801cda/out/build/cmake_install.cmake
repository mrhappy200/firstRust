# Install script for directory: /workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/lib/libcfltk.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/lib" TYPE STATIC_LIBRARY FILES "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/build/libcfltk.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_box.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_browser.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_button.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_dialog.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_draw.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_enums.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_group.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_image.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_input.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_lock.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_macros.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_menu.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_misc.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_printer.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_surface.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_table.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_text.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_tree.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_utils.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_valuator.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_widget.h;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_widget.hpp;/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk/cfl_window.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/include/cfltk" TYPE FILE FILES
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_box.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_browser.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_button.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_dialog.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_draw.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_enums.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_group.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_image.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_input.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_lock.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_macros.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_menu.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_misc.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_printer.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_surface.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_table.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_text.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_tree.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_utils.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_valuator.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_widget.h"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_widget.hpp"
    "/workspace/.cargo/registry/src/github.com-1ecc6299db9ec823/fltk-sys-1.3.3/cfltk/include/cfl_window.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/share/cmake/cfltk/cfltkConfig.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/share/cmake/cfltk/cfltkConfig.cmake"
         "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/build/CMakeFiles/Export/_workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/share/cmake/cfltk/cfltkConfig.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/share/cmake/cfltk/cfltkConfig-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/share/cmake/cfltk/cfltkConfig.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/share/cmake/cfltk/cfltkConfig.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/share/cmake/cfltk" TYPE FILE FILES "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/build/CMakeFiles/Export/_workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/share/cmake/cfltk/cfltkConfig.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/share/cmake/cfltk/cfltkConfig-release.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/share/cmake/cfltk" TYPE FILE FILES "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/build/CMakeFiles/Export/_workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/share/cmake/cfltk/cfltkConfig-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/share/cmake/cfltk/cfltkConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/share/cmake/cfltk" TYPE FILE FILES "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/build/cfltkConfigVersion.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/build/fltk/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/workspace/firstRust/.time_till_grandad/target/debug/build/fltk-sys-062cd99412801cda/out/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
