from collections import Counter

n = int(input())

if not n:
    print(0)
    
frequency = Counter([int(e) for e in input().split()])
# Better to sort on fewer elements.
sorted_frequency = sorted(frequency.keys())
len_sorted_frequency = len(sorted_frequency)

#Mean Calculation
mean = sum(sorted_frequency) / len_sorted_frequency
print(mean)

#Median Calculation
median = ( sorted_frequency[len_sorted_frequency // 2] + sorted_frequency[(len_sorted_frequency - 1) // 2] ) / 2
print(median)

#Mode Calculation
max_frequency = 0
for n,f in sorted(frequency.items()):
    if f > max_frequency:
        max_frequency = f
        number = n
mode = number       
print(mode)        
