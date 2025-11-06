#include <iostream>
using namespace std;

template <class T>
class Demo {
    T a, b;
public:
    Demo(T x, T y) { a = x; b = y; }
    void show() { cout << "Sum = " << a + b << endl; }
};

int main() {
    Demo<int> d1(3, 4);
    Demo<float> d2(2.5, 4.1);
    d1.show();
    d2.show();
}

