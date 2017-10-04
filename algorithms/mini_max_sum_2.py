"""Minimum and maximum values that can be calculated by summing exactly four of the five integers.

"""
# Time Complexity = O(n)
import sys
arr = list(map(int, input().strip().split(' ')))
total = 0
max_value = -sys.maxsize
min_value = sys.maxsize
for k in arr:
    total += k
    if k > max_value:
        max_value = k
    if k < min_value:
        min_value = k

print(total-max_value,total-min_value) 