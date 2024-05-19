find_package(ament_cmake_gtest REQUIRED)

ament_add_gtest(greeting_test greeting_test.cpp)
target_link_libraries(greeting_test my_lib)
