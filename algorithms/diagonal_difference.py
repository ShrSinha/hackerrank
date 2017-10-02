"""Calculate the absolute difference between the sums of a square matrix's diagonals.

Inputs:
    Square matrix consisting of integers between -100 to 100.

"""
# Time Complexity: O(n)

import sys


n = int(input().strip())
a = []
for a_i in range(n):
    a_t = [int(a_temp) for a_temp in input().strip().split(' ')]
    a.append(a_t)

total_diagonal_p = 0
total_diagonal_s = 0
for k in range(n):
    total_diagonal_p += a[k][k]
    total_diagonal_s += a[k][-1-k]
print(abs(total_diagonal_p - total_diagonal_s))    