"""
Task :
The interquartile range of an array is the difference between its first and third quartiles.

Given an array of integers and an array representing the respective frequencies of elements, construct a data set. Then calculate and print interquartile range, rounded to a scale of 1 decimal place.

"""

def median(v_list):
    length = len(v_list)
    return((v_list[(length-1) // 2] + v_list[length // 2]) / 2)

n = int(input())
numbers = [int(e) for e in input().split()]
frequency = [int(e) for e in input().split()]
num_list = sorted([ n for n,f in zip(numbers,frequency) for k in range(f)])
length = len(num_list)

q1 = median(num_list[ : (length // 2)])
q3 = median(num_list[ -(length//2) : ])

print(q3-q1)