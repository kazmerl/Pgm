cmake_minimum_required(VERSION 3.24)
project(PgmAverageApp VERSION 0.1.0 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

include(CTest)
enable_testing()

add_executable(${PROJECT_NAME}  
    src/model/PgmImageHeader.cpp
    src/model/PgmImage.cpp
    src/model/PgmAverageImage.cpp
    src/reader/PgmImageReader.cpp 
    src/writer/PgmImageWriter.cpp 
    PgmAverageApp.cpp)
target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include)

# We check if this is the main file
# you don't usually want users of your library to
# execute tests as part of their build
if (${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_CURRENT_SOURCE_DIR})
    add_executable(MyTest src/model/PgmImageHeader.cpp
                        src/model/PgmImage.cpp
                        src/model/PgmAverageImage.cpp
                        src/reader/PgmImageReader.cpp 
                        src/writer/PgmImageWriter.cpp
                        PgmAverageAppTest.cpp)
    add_test(NAME MyTest COMMAND MyTest)
endif ()

enable_testing()

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
