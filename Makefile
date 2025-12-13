CXX = g++
CXXFLAGS = -std=c++17 -Wall
LIBS = -llog4cpp `pkg-config --cflags --libs Qt5Core`
BIN_DIR = bin

TARGET = testApp
SRC = main.cpp

all: $(BIN_DIR)/$(TARGET)

$(BIN_DIR)/$(TARGET): $(SRC)
    $(CXX) $(CXXFLAGS) -o $(BIN_DIR)/$(TARGET) $(SRC) $(LIBS)

clean:
    rm -f $(BIN_DIR)/$(TARGET) bin.tar.gz

package:
    tar zcvf bin.tar.gz $(BIN_DIR)
