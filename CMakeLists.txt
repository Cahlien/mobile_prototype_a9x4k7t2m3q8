cmake_minimum_required(VERSION 3.16)

project(mobile_prototype_a9x4k7t2m3q8 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appmobile_prototype_a9x4k7t2m3q8
    main.cpp
)

qt_add_qml_module(appmobile_prototype_a9x4k7t2m3q8
    URI mobile_prototype_a9x4k7t2m3q8
    VERSION 1.0
    QML_FILES
        Main.qml
    RESOURCES
        platforms/android/AndroidManifest.xml
        platforms/android/build.gradle
        platforms/android/res/values/libs.xml
        platforms/android/res/xml/qtprovider_paths.xml
        platforms/android/gradle/wrapper/gradle-wrapper.jar
        platforms/android/gradle/wrapper/gradle-wrapper.properties
        platforms/android/gradle.properties platforms/android/gradlew
        platforms/android/gradlew.bat
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appmobile_prototype_a9x4k7t2m3q8 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appmobile_prototype_a9x4k7t2m3q8
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE_INFO_PLIST ${CMAKE_CURRENT_SOURCE_DIR}/platforms/ios/Info.plist
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
    QT_ANDROID_PACKAGE_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/platforms/android
)

target_link_libraries(appmobile_prototype_a9x4k7t2m3q8
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appmobile_prototype_a9x4k7t2m3q8
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
