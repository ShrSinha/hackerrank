n = int(input())
list_x = [float(e) for e in input().split()]
list_w = [float(e) for e in input().split()]

if not(len(list_x) == len(list_w)):
    print(-1)

total = 0
weight = 0
for x,w in zip(list_x,list_w): 
    total += x*w
    weight += w

weighted_mean = round(total / weight,1)    

print(weighted_mean)