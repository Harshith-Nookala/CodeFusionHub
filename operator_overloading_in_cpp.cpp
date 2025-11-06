#include <iostream>
using namespace std;

class Complex {
    int r, i;
public:
    Complex(int a=0, int b=0) : r(a), i(b) {}
    Complex operator+(Complex c) { return Complex(r + c.r, i + c.i); }
    Complex operator-() { return Complex(-r, -i); }
    void show() { cout << r << " + " << i << "i" << endl; }
};

int main() {
    Complex c1(3, 4), c2(1, 2), c3;
    c3 = c1 + c2;
    (-c3).show();
}

