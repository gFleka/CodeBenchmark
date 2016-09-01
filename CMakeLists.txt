cmake_minimum_required(VERSION 3.0)
project(cpbenchmark)

add_definitions(-std=c++11)

add_executable(cpbenchmark p01.cpp)
add_executable(cpbenchmark2 p02.cpp)
set_property(TARGET cpbenchmark PROPERTY CXX_STANDARD 11)
set_property(TARGET cpbenchmark2 PROPERTY CXX_STANDARD 11)



set(CMAKE_AUTOMOC ON)
