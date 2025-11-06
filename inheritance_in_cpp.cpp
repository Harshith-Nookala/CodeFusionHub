#include <iostream>
using namespace std;

// Single Inheritance
class Parent {
public:
    void showParent() { cout << "Single Inheritance: Parent class\n"; }
};
class Child : public Parent {
public:
    void showChild() { cout << "Single Inheritance: Child class\n"; }
};

// Multiple Inheritance
class Base1 {
public:
    void display1() { cout << "Multiple Inheritance: Base1\n"; }
};
class Base2 {
public:
    void display2() { cout << "Multiple Inheritance: Base2\n"; }
};
class DerivedMulti : public Base1, public Base2 {
public:
    void display3() { cout << "Multiple Inheritance: Derived\n"; }
};

// Multilevel Inheritance
class A {
public:
    void showA() { cout << "Multilevel: Class A\n"; }
};
class B : public A {
public:
    void showB() { cout << "Multilevel: Class B\n"; }
};
class C : public B {
public:
    void showC() { cout << "Multilevel: Class C\n"; }
};

// Hierarchical Inheritance
class Base {
public:
    void baseShow() { cout << "Hierarchical: Base class\n"; }
};
class Derived1 : public Base {
public:
    void d1Show() { cout << "Hierarchical: Derived1 class\n"; }
};
class Derived2 : public Base {
public:
    void d2Show() { cout << "Hierarchical: Derived2 class\n"; }
};

// Hybrid Inheritance
class M {
public:
    void showM() { cout << "Hybrid: Class M\n"; }
};
class N : public virtual M {
public:
    void showN() { cout << "Hybrid: Class N\n"; }
};
class O : public virtual M {
public:
    void showO() { cout << "Hybrid: Class O\n"; }
};
class P : public N, public O {
public:
    void showP() { cout << "Hybrid: Class P\n"; }
};

int main() {
    Child c;
    c.showParent();
    c.showChild();

    DerivedMulti dm;
    dm.display1();
    dm.display2();
    dm.display3();

    C objC;
    objC.showA();
    objC.showB();
    objC.showC();

    Derived1 d1;
    Derived2 d2;
    d1.baseShow();
    d2.baseShow();

    P p;
    p.showM();
    p.showP();
}

