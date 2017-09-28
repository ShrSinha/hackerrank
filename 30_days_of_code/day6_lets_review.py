"""
Task :
Given a string, print its even-indexed and odd-indexed characters as single space-separated strings on a single line.
"""
n = int(input())
for inputs in range(n):
    s = input()
    print( "{} {}".format(s[0::2],s[1::2]))