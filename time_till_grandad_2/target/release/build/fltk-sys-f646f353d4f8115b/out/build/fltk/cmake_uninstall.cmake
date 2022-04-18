if(NOT EXISTS "/workspace/firstRust/time_till_grandad_2/target/release/build/fltk-sys-f646f353d4f8115b/out/build/fltk/install_manifest.txt")
   message(FATAL_ERROR
      "Cannot find install manifest: \"/workspace/firstRust/time_till_grandad_2/target/release/build/fltk-sys-f646f353d4f8115b/out/build/fltk/install_manifest.txt\"")
endif(NOT EXISTS "/workspace/firstRust/time_till_grandad_2/target/release/build/fltk-sys-f646f353d4f8115b/out/build/fltk/install_manifest.txt")

file(READ "/workspace/firstRust/time_till_grandad_2/target/release/build/fltk-sys-f646f353d4f8115b/out/build/fltk/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")

foreach(file ${files})
message(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
   exec_program("/home/linuxbrew/.linuxbrew/Cellar/cmake/3.22.3/bin/cmake"
      ARGS "-E remove -f \"$ENV{DESTDIR}${file}\""
      OUTPUT_VARIABLE rm_out
      RETURN_VALUE rm_retval
   )
   if(NOT "${rm_retval}" STREQUAL 0)
      message(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
   endif(NOT "${rm_retval}" STREQUAL 0)
endforeach(file)
