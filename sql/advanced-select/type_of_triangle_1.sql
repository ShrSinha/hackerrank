select 
IF (A + B > C and B + C > A and A + C > B
    ,IF (A = B and B = C,'Equilateral', IF( A = B or B = C or A = C,'Isosceles','Scalene'))  
    ,'Not A Triangle' 
    ) 
from 
TRIANGLES;