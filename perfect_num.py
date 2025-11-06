s=0
n=int(input())
for i in n:
    if(n%i==0):
        s=s+i
if(s==n):
    print('perfect number')
else:
    print("not perfect number")  

