select 
case
when not(A + B > C and B + C > A and A + C > B) then 'Not A Triangle'
when (A = B and B = C) then 'Equilateral'
when ( A = B or B = C or A = C ) then 'Isosceles'
else 'Scalene'
end
from 
TRIANGLES;