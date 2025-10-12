cmake_minimum_required(VERSION 3.16)
project(app LANGUAGES C CXX)

find_package(glfw3 REQUIRED)

add_executable(${PROJECT_NAME}
    src/main.cpp
    src/glad.c
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE
        glfw
)

target_include_directories(${PROJECT_NAME}
    PUBLIC
        ${CMAKE_SOURCE_DIR}/include
)
