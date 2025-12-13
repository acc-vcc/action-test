TEMPLATE = app
TARGET = testApp
QT += core
CONFIG += c++17 console
SOURCES += testApp.cpp parts.cpp
INCLUDEPATH += .
LIBS += -llog4cpp

# package
package.target = package
package.commands = tar zcvf bin.tar.gz bin
QMAKE_EXTRA_TARGETS += package
