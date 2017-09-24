"""
Task :
Given an integer, , perform the following conditional actions:

If  is odd, print Weird
If  is even and in the inclusive range of  to , print Not Weird
If  is even and in the inclusive range of  to , print Weird
If  is even and greater than , print Not Weird
"""

number = int(input().strip())

if (6 <= number <= 20) or (number%2):
    print('Weird')
else:    
    print('Not Weird')