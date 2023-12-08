cmake_minimum_required(VERSION 3.14)

project(qt6-dockerised-development LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Gui Qml Quick REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Gui Qml Quick REQUIRED)
qt_standard_project_setup(REQUIRES 6.5)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

qt_add_executable(qt6-dockerised-development
    main.cpp
)

qt_add_qml_module(qt6-dockerised-development
    URI hello
    QML_FILES
        qml/hello/main.qml
        qml/hello/FramedImage.qml
    RESOURCES
        resources/img/world.png
)

target_compile_definitions(qt6-dockerised-development
    PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(qt6-dockerised-development
    PRIVATE Qt${QT_VERSION_MAJOR}::Core Qt${QT_VERSION_MAJOR}::Gui Qt${QT_VERSION_MAJOR}::Qml  Qt${QT_VERSION_MAJOR}::Quick )
