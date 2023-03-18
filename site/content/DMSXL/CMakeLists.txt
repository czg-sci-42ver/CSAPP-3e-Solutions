cmake_minimum_required(VERSION 3.15...3.25)

project(MyProject
  VERSION
    1.0
  DESCRIPTION
    "Very nice project"
  LANGUAGES
    CXX
)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
add_compile_options(-g3 -Wall)
add_executable(26 26.cpp)
