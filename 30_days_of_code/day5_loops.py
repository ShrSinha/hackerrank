"""
Task : 
Given an integer,print its first 10 multiples. Each multiple  (where ) should be printed on a new line in the form: n x i = result.
"""
n = int(input().strip())
for k in range(1,11): 
    print("{} x {} = {}".format(n,k,n*k)) 
