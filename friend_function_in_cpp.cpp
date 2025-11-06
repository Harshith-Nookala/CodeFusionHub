#include <iostream>
using namespace std;

class A {
    int x;
public:
    A(int a) { x = a; }
    friend void show(A obj); // friend function declaration
};

void show(A obj) {
    cout << "Value of x = " << obj.x << endl;
}

int main() {
    A ob(10);
    show(ob);
}

