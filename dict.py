"""d={}
d[100]="harshith"
d[200]="krishna"   #it is mutable
d[300]="sai"
print(d)
print(d[100])
d1={100: 'harshith', 200: 'krishna', 300: 'sai'}
print(d1)
if 400 in d1:
    print(d1[400])
else:
    print("not found")  
d={}
n=int(input("Enter no.of students:"))
for i in range(n):
    d[input()]=str(input())   
print(d)    """
d1={100: 'harshith', 200: 'krishna', 300: 'sai'}
"""del d1[300]
print(d1)"""
d1.clear()
print(len(d1))
