"""
Task 
Write a Person class with an instance variable, , and a constructor that takes an integer, , as a parameter. The constructor must assign  to  after confirming the argument passed as  is not negative; if a negative argument is passed as , the constructor should set  to  and print Age is not valid, setting age to 0. In addition, there are some instance methods.
"""

class Person:
    def __init__(self,initialAge):
        # Add some more code to run some checks on initialAge
        if initialAge >= 0:
            self.initialAge = initialAge
        else :
            self.initialAge = 0
            print('Age is not valid, setting age to 0.')
            
    def amIOld(self):
        # Do some computations in here and print out the correct statement to the console
        if self.initialAge < 13:
            print('You are young.')
        elif 13 <= self.initialAge  < 18:
            print('You are a teenager.')
        else:
            print('You are old.')
            
    def yearPasses(self):
        # Increment the age of the person in here
        self.initialAge += 1        
        