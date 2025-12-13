# コンパイラとオプション
CXX = g++
CXXFLAGS = -std=c++17 -Wall

# リンクするライブラリ
LIBS = -llog4cpp

# ターゲットとソース
TARGET = testApp
SRC = main.cpp

all: $(TARGET)

$(TARGET): $(SRC)
    $(CXX) $(CXXFLAGS) -o $(TARGET) $(SRC) $(LIBS)

clean:
    rm -f $(TARGET)
