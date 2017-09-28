"""
Task :
Given  names and phone numbers, assemble a phone book that maps friends' names to their 
respective phone numbers. You will then be given an unknown number of names to query your 
phone book for. For each queried, print the associated entry from your phone book on a new 
line in the form name=phoneNumber; if an entry for  is not found, print Not found instead.
"""
n = int(input())
phone_book = {}
for _ in range(n):
    name,number = input().strip().split()
    phone_book[name] = number

while True:
    try:
        s = input().strip()
        if phone_book.get(s):
            print("{}={}".format(s,phone_book[s]))
        else:
            print("Not found")      
    except EOFError:
         break     
