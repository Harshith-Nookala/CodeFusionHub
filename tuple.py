"""tuple1=(1,2,3,4,5)    #tuple is a date structure 
print(tuple1)
print(type(tuple1))

t=(10,20,30,40,50,60)
#print(type(t))#we can access tuple elements as same as list
#print(t[2:5:8])
#t[0]=68   it is immutable,means it don't replaces
print(t)
print(len(t))
print(t.count(20))
print(t.index(40))
print(sorted(t))
t=eval(input("Enter Tuple of Numbers:"))
l=len(t)
sum=0
for x in t:
    sum=sum+x
print("The Sum=",sum)
print("The Average=",sum/l)"""
t1=10,20,30,40
print(type(t1))    
print(t1)
