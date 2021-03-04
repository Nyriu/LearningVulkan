cmake_minimum_required(VERSION 3.0)
set (CMAKE_CXX_STANDARD 17)

project(Vulkan_Tutorial)

#set(CMAKE_CXX_FLAGS "-g")
set(CMAKE_CXX_FLAGS "-O2")

set(CMAKE_EXPORT_COMPILE_COMMANDS 1) # for YCM vim

#include_directories(include)

#file(GLOB SOURCES "src/*.cpp")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "../")

#add_executable(main ${SOURCES})
add_executable(main "./main.cpp")

target_link_libraries(main
  -lglfw
  -lvulkan
  -ldl
  -lpthread
  -lX11
  -lXxf86vm
  -lXrandr
  -lXi
  )
