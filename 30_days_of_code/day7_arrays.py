"""
Task: 
Given an array of space separated integers, print it's elements in reverse order as a single line of space-separated numbers.
"""
n = int(input().strip())
arr = input().strip().split()[-1::-1]
print(' '.join(arr))