cmake_minimum_required(VERSION 3.16)

project(qmlRuning VERSION 0.1 LANGUAGES CXX)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appqmlRuning
    main.cpp
)

qt_add_qml_module(appqmlRuning
    URI qmlRuning
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES ClassType.qml
        QML_FILES PBCode.qml
        QML_FILES QtGlobal.qml
        QML_FILES GroupProperties.qml
        RESOURCES resource.qrc
        QML_FILES images.qml
        QML_FILES CButton.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appqmlRuning PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appqmlRuning
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appqmlRuning
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appqmlRuning
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
