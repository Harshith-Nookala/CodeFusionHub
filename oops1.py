'''class Student:
    def __init__(self):
        self.name="ravi"
        self.rollno=100
        self.branch="cse"
    def display(self):
        print("name: ",self.name)
        print("rollno: ",self.rollno)   
        print("branch: ",self.branch)
s=Student()
s.display()    
class add:
    def __init__(self):
        self.a=10
        self.b=20
        self.sum=self.a+self.b
    def display(self):
        print("The sum is:",self.sum)
s=add()
s.display()
class Student:
    def __init__(self):
        self.name='Srinu'
        self.age=34
        self.marks=80
    def talk(self):
        print("Hello I am :",self.name)
        print("Myage is:",self.age)
        print("My marks are:",self.marks)
s=Student()
s.talk()
class student:
    def __init__(self,name,age,marks):
        self.name=name
        self.age=age
        self.marks=marks
    def talk(self):
        print("Hello I m :",self.name)
        print("my age is:",self.age)
        print("my marks is:",self.marks)
s=student('harshith',100,456)
s.talk()    
class Test:
    def __init__(self):
        print("Constructor execution...")
    def m1(self):
        print("Method execution...")
t1=Test()
t2=Test()
t3=Test()
t1.m1()
class student:
    def __init__(aff,name,rno,marks):
        aff.name=name
        aff.rno=rno
        aff.marks=marks
        print("Name:",aff.name)
        print("Roll no:",aff.rno)
        print("Marks:",aff.marks)
s1=student('ram',319,98)
s2=student('som',420,99)
s3=student('nom',456,89)
class employee:
    def __init__(self):
        self.eno=100
        self.ename='diki'
        self.esal=101010
e=employee()
print(e.__dict__)
class test:
    def __init__(self):
        self.a=10
        self.b=20
        self.c=30
        self.d=40
    def m1(self):
        del self.d
t=test()
print(t.__dict__)
t.m1()
print(t.__dict__)
del t.c
print(t.__dict__)
class employee:
    def __init__(self,eno,ename,esal):
        self.eno=100
        self.ename='diki'
        self.esal=101010
e=employee('push',101,35000)
del e.esal
print(e.__dict__)
class Test:  #static
    x=10
    def __init__(self):
        self.y=20
t1=Test()
t2=Test()
print('t1:',t1.x,t1.y)
print('t2:',t2.x,t2.y)
Test.x=888
t1.y=999
print('t1:',t1.x,t1.y)
print('t2:',t2.x,t2.y)
class Test:  #local variables
    def m1(self):
        a=1000
        print(a)
    def m2(self):
        #print(a)
        b=1000
        print(b)
t=Test()
t.m1()
t.m2()
class Student:  #instance methods example program
    def __init__(self,name,marks):
        self.name=name
        self.marks=marks
    def display(self):
        print('Hi',self.name)
        print("Your Ma1rks are:",self.marks)
    def grade(self):
        if self.marks>=60:
            print('You got First Grade')
        elif self.marks>=50:
            print("You got Second Grade")
        elif self.marks>=35:
            print('You got Third Grade')
        else:
            print('You are Failed')
n=int(input('Enter number of Students:'))
for i in range(n):
    name=input('Enter Name:')
    marks=int(input('Enter Marks:'))
    s=Student(name,marks)
    s.display()
    s.grade()
print(s)'''