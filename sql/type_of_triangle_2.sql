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
case
when not(A + B > C and B + C > A and A + C > B) then 'Not A Triangle'
when (A = B and B = C) then 'Equilateral'
when ( A = B or B = C or A = C ) then 'Isosceles'
else 'Scalene'
end
from 
TRIANGLES;