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
add_executable(tmp tmp.cpp)
