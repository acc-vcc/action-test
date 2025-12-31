cmake_minimum_required(VERSION 3.10)
project(qt_thread_csv_sample LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt5 REQUIRED COMPONENTS Widgets)

set(SRC_FILES
    main.cpp
    MainWindow.cpp
    Worker.cpp
    FileEnumerator.cpp
    CsvParser.cpp
    Logger.cpp
)

set(HDR_FILES
    MainWindow.h
    Worker.h
    FileEnumerator.h
    CsvParser.h
    Logger.h
)

add_executable(${PROJECT_NAME}
    ${SRC_FILES}
    ${HDR_FILES}
)

target_link_libraries(${PROJECT_NAME}
    Qt5::Widgets
)

set_target_properties(${PROJECT_NAME} PROPERTIES
    AUTOMOC ON
)
