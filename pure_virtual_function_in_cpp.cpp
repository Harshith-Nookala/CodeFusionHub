#include <iostream>
using namespace std;

class Shape {
public:
    virtual void area() = 0; // pure virtual function
};

class Circle : public Shape {
    int r;
public:
    Circle(int x) { r = x; }
    void area() { cout << "Area of Circle = " << 3.14 * r * r << endl; }
};

class Rectangle : public Shape {
    int l, b;
public:
    Rectangle(int x, int y) { l = x; b = y; }
    void area() { cout << "Area of Rectangle = " << l * b << endl; }
};

int main() {
    Circle c(5);
    Rectangle r(4, 6);
    c.area();
    r.area();
}

