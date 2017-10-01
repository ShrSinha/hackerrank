"""Convert integer to binary (base-2). Print integer 
denoting the maximum number of consecutive 1's in n's binary representation.

Args:
    n: positive integer.

Returns:
    Integer denoting the maximum number of consecutive 1's in n's binary representation.

"""
#!/bin/python3
import sys
n = int(input().strip())
binary = []
while n: 
    binary.append(n % 2)
    n = n // 2
#print(''.join( [ str(e) for e in binary[-1::-1] ] ) ) 

total = 0
temp_total = 0

for e in binary:
    if e:
        temp_total += 1
    else:
        temp_total = 0    
    total = max(total,temp_total)    

print(total)            
            






