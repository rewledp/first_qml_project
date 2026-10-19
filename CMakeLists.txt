cmake_minimum_required(VERSION 3.16)
project(qml_second VERSION 0.0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

add_subdirectory(hello)
add_subdirectory(second_mod)

qt_add_executable(
	qml_second
	src/main.cpp
)

target_link_libraries(qml_second PRIVATE Qt6::Quick MyQmlModuleplugin SecondModplugin)
