"""
Sample Input :
Welcome to 30 Days of Code!

Sample Output :
Hello, World. 
Welcome to 30 Days of Code!
"""

class PrintOut():    
    def __init__(self,value):
        self.value = value
        
    def print_out(self):
        print('Hello, World.')
        print(self.value)
    
        
p = PrintOut(input().strip()) 
p.print_out()