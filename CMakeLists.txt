cmake_minimum_required(VERSION 3.0)
project(cpbenchmark)

if(UNIX)
    message(STATUS "this is unix")
     if(CMAKE_COMPILER_IS_GNUCXX)
         message(STATUS "this is GCC")
         add_definitions(-Wall)
         add_definitions(-Wextra)
         add_definitions(-pedantic)
     endif()
elseif(WINDOWS)
    if(MSVC)
        set(CMAKE_CXX_LINK_FLAGS "${CMAKE_CXX_LINK_FLAGS} /SUBSYSTEM:WINDOWS /W4")
    elseif(CMAKE_COMPILER_IS_GNUCXX)
        #set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mwindows")
        add_definitions(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mwindows")
    else()
        message(ERROR "(Not MSVC or GCC)")
    endif()
    # set_target_properties(name_of_my_project PROPERTIES COMPILER_FLAGS "/EHsc")
    message(STATUS "this is windows")
endif()

add_definitions(-std=c++11)
set(Boost_USE_STATIC_LIBS OFF)
set(Boost_USE_STATIC_RUNTIME OFF)

find_package(Boost 1.45 REQUIRED)

if(Boost_FOUND)
  include_directories(${Boost_INCLUDE_DIRS})

add_executable(cpbenchmark p01.cpp)
target_link_libraries(cpbenchmark ${Boost_LIBRARIES})
set_property(TARGET cpbenchmark PROPERTY CXX_STANDARD 11)
else()
  message(ERROR "No Boost")
endif()

add_executable(cpbenchmark2 p02.cpp)
set_property(TARGET cpbenchmark2 PROPERTY CXX_STANDARD 11)
 


set(CMAKE_AUTOMOC ON)
