cmake_minimum_required(VERSION 3.11)

set(PROJ_NAME "Exe")
project(${PROJ_NAME})


include(FetchContent)
find_package(LibA QUIET) # tries to see if LibA is already built/installed somewhere

if (NOT LibA_FOUND)
  message(STATUS "LibA NOT FOUND. Source now being downloaded...")

  FetchContent_Declare(
    LibA_EXT
    GIT_REPOSITORY "${CMAKE_SOURCE_DIR}/LibA"
    GIT_TAG "master"
    )

  FetchContent_GetProperties(LibA_EXT)
  if (NOT LibA_EXT_POPULATED)
    FetchContent_Populate(LibA_EXT)
    add_subdirectory(${liba_ext_SOURCE_DIR} ${liba_ext_BINARY_DIR})
  endif()

endif()

# -----------------------------------------------------------------------------

get_target_property(LibA_INCLUDE_DIRECTORIES LibA
  INTERFACE_INCLUDE_DIRECTORIES
  )

# -----------------------------------------------------------------------------

add_subdirectory(Exe)
