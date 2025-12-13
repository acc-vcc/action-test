TEMPLATE = app
TARGET = testApp
QT += core
CONFIG += c++17 console
SOURCES += testApp.cpp parts.cpp
INCLUDEPATH += .
LIBS += -llog4cpp
