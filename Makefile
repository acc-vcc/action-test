CXX = g++
CXXFLAGS = -std=c++17 -Wall
LIBS = -llog4cpp `pkg-config --cflags --libs Qt5Core`

TARGET = testApp
SRC = main.cpp

all: $(TARGET)

$(TARGET): $(SRC)
    $(CXX) $(CXXFLAGS) -o $(TARGET) $(SRC) $(LIBS)

clean:
    rm -f $(TARGET)
