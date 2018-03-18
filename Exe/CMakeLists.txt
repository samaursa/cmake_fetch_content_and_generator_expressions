foreach(DIR ${LibA_INCLUDE_DIRECTORIES})
  message(STATUS "LibA Include Dir: ${DIR}")
endforeach()

add_executable(${PROJ_NAME} main.cpp)
