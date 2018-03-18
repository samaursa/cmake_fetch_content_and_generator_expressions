cmake_minimum_required(VERSION 3.11)

set(PROJ_NAME "LibA")
project(${PROJ_NAME})


add_library(${PROJ_NAME} INTERFACE)

target_include_directories(${PROJ_NAME}
  INTERFACE
  $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include/>
  $<INSTALL_INTERFACE:install/>
  )
