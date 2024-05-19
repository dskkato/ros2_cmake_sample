cmake_minimum_required(VERSION 3.8)
project(my_lib)

# find dependencies
find_package(ament_cmake_auto REQUIRED)

ament_auto_find_build_dependencies()

ament_auto_add_library(my_lib
  src/greeting.cpp
)

target_include_directories(my_lib PUBLIC
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
  $<INSTALL_INTERFACE:include>
)

if (BUILD_TESTING)
  add_subdirectory(tests)
endif()

ament_auto_package()
