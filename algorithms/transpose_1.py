"""Transpose row to column.

Inputs:
    Space separated row of integers, with each row on a new line.

"""

#!/bin/python3
import sys
matrix = []
while True:
    try:
        matrix.append( list( map(int,input().strip().split()) ) )
    except EOFError:          
        break

len_matrix = len(matrix) 
transposed_matrix =  [ [row[k] for row in matrix] for k in range(len_matrix) ]              
print(transposed_matrix)
