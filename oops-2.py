#INHERITANCE
'''class Animal:   #single inheritance
    def sound(self):
        print("Animal Sound")
class Dog(Animal):
    def bark(self):
        print("Bark")
d=Dog()
d.sound()
d.bark()
class A:    #multiple inheritance
    def methodA(self):
        print("Method A")
class B:
    def methodB(self):
        print("Method B")
class C(A,B):
    pass
c=C()
c.methodA()
c.methodB()
class A:    #multilevel inheritance
    def methodA(self):
        print("A")
class B(A):
    def methodB(self):
        print("B")
class C(B):
    def methodC(self):
        print("C")
c=C()
c.methodA()
c.methodB()
c.methodC()
class Parent:    #heirarchical inheritance
    def show(self):
        print("Parent")
class Child1(Parent):
    pass
class Child2(Parent):
    pass
c1=Child1()
c2=Child2()
c1.show()
c2.show()
class A:    #hybrid inheritance
    def methodA(self):
        print("A")
class B(A):
    def methodB(self):
        print("B")
class C:
    def methodC(self):
        print("C")
class D(B,C):
    pass
d=D()
d.methodA()
d.methodB()
d.methodC()
class Point:   #operator overloading
    def __init__(self,x,y):
        self.x=x
        self.y=y
    def __add__(self,other):
        return Point(self.x+other.x,self.y+other.y)
    def __str__(self):
        return f"({self.x},{self.y})"
p1=Point(1,2)
p2=Point(3,4)
print(p1+p2)'''
class Student:
    def __init__(self,name,roll):
        self.name=name
        self.roll=roll
    def __eq__(self, value):
        return self.roll==value.roll
s1=Student("Anil",100)
s2=Student("Sunil",101)
