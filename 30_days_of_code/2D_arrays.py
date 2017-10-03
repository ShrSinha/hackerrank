"""Calculate maximum hourglass sum in a 2D array.

Args:
    arr: 6 X 6 2D Array with integer values between -9 to 9.

Returns:
    Maximum hourglass sum.

"""
arr = []
for arr_i in range(6):
   arr_t = [int(arr_temp) for arr_temp in input().strip().split(' ')]
   arr.append(arr_t)

total = -(9*6)    
for y in range(6-3+1):
    for x in range(6-3+1):
        tmp_total = arr[x][y] + arr[x][y+1] + arr[x][y+2] + arr[x+1][y+1] + arr[x+2][y] + arr[x+2][y+1] + arr[x+2][y+2]
        #total = sum( [arr[r][c] for r in range(x,x+3) for c in range(y,y+3)] )
        total = max(tmp_total,total)

print(total)    
              