#include <cassert>
#define TEST_MAIN
#include "main.cpp"  // 簡易的に直接インクルード

int main() {
    assert(add(2, 3) == 5);
    assert(add(-1, 1) == 0);
    return 0;
}
