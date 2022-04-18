#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "cfltk::cfltk" for configuration "Release"
set_property(TARGET cfltk::cfltk APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(cfltk::cfltk PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "/workspace/firstRust/time_till_grandad_2/target/release/build/fltk-sys-f646f353d4f8115b/out/lib/libcfltk.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS cfltk::cfltk )
list(APPEND _IMPORT_CHECK_FILES_FOR_cfltk::cfltk "/workspace/firstRust/time_till_grandad_2/target/release/build/fltk-sys-f646f353d4f8115b/out/lib/libcfltk.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
