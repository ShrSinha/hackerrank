class PrintOut():    
    def __init__(self,value):
        self.value = value
        
    def print_out(self):
        print('Hello, World.')
        print(self.value)
    
        
p = PrintOut(input().strip()) 
p.print_out()