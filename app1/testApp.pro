TEMPLATE = app
TARGET = testApp
QT += core
CONFIG += c++17 console
# まとめて指定
SOURCES += $$files(src/*.cpp)
INCLUDEPATH += $$files(include/*.h)
LIBS += -llog4cpp

# 出力先ディレクトリを指定
DESTDIR = bin

# package ターゲット
package.target = package
package.commands = tar zcvf bin.tar.gz bin
QMAKE_EXTRA_TARGETS += package
