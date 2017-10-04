/*
Sample Input :
A    B    C
20   20   23
20   20   20
20   21   22
13   14   30 

Sample Output :
Isosceles
Equilateral
Scalene
Not A Triangle
*/
select 
IF (A + B > C and B + C > A and A + C > B
    ,IF (A = B and B = C,'Equilateral', IF( A = B or B = C or A = C,'Isosceles','Scalene'))  
    ,'Not A Triangle' 
    ) 
from 
TRIANGLES;