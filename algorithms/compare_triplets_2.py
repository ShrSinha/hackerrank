"""Find comparison points by comparing a0 with b0, a1 with b1, and a2 with b2.

Args:
    The first line contains 3 space-separated integer triplet for Alice. 
    The second line contains 3 space-separated integer triplet for Bob.

Returns:
    Print two space-separated integers denoting the respective comparison points earned by Alice and Bob.

"""
#Time Complexity = O(n)


alice_ratings = list( map(int,input().strip().split())  )
bob_ratings = list( map(int,input().strip().split()) )

alice_points = 0
bob_points = 0

for a,b in zip(alice_ratings,bob_ratings):
    if a > b:
        alice_points += 1
    if b > a:
        bob_points += 1
        
print(alice_points,bob_points)         
