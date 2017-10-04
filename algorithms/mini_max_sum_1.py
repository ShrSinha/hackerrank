"""Minimum and maximum values that can be calculated by summing exactly four of the five integers.

"""
# Time Complexity = O(n)
import sys
arr = list(map(int, input().strip().split(' ')))
total_all = sum(arr)
max_total = -sys.maxsize
min_total = sys.maxsize
for k in arr:
    total = total_all - k
    if total < min_total:
        min_total = total
    if total > max_total:
        max_total = total

print(min_total,max_total)