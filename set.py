#set is a data structure which doesn't allow duplicates and it has no index
l=[10,20,30,40,10,20,10]
s=set(l)
print(s)
s=set(range(5))
print(s)
s1={10,20,30}
s1.add(40)#40,10,20,30
print(s1)
print(s1.pop())  #40
print(s1.pop())  #10
print(s.discard(50))
