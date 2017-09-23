"""
Task :
Given an array of integers, calculate the respective first quartile (Q1), second quartile (Q2), and third quartile (Q3). It is guaranteed that Q1, Q2, and Q3 are integers.

Sample Input :
9
3 7 8 5 12 14 21 13 18

Sample Output :
6
12
16
"""

length = int(input())
numbers = sorted([int(e) for e in input().split()])

def median(v_list):
    length = len(v_list)
    m = ( v_list[(length -1) // 2] + v_list[length // 2] ) / 2
    return(m)

q1 = median( numbers[:(length//2)] )
q2 = median( numbers )
q3 = median( numbers[-(length//2):] )

print(int(q1))
print(int(q2))
print(int(q3))
