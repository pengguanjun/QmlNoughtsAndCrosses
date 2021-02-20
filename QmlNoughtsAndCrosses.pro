TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp \
    noughtsandcroosesview.cpp \
    noughtsandcrossesmodel.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

DESTDIR = .\bin\release
Release:LIBS += -L$$quote(E:\C-work\QmlNoughtsAndCrosses-master\bin\release)
Debug:LIBS += -L$$quote(E:\C-work\QmlNoughtsAndCrosses-master\bin\debug)
release {
TARGET = game       #指定生成的应用程序名
OBJECTS_DIR = ../../obj/game/release #指定目标文件(obj)的存放目录
}
debug {
TARGET = game_d     #指定生成的应用程序名
OBJECTS_DIR = ../../obj/game/debug #指定目标文件(obj)的存放目录
}

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    noughtsandcroosesview.h \
    noughtsandcrossesmodel.h

