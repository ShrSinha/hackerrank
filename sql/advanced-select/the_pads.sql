/*
Sample Input :
Name        Occupation
Samantha    Doctor
Julia       Actor
Meera       Singer
Ashley      Professor

Sample Output :
Name(First Letter of Profession)
There are a total of [occupation_count] [occupation]s.

Ashely(P)
Jenny(D)
Julia(A)
Meera(S)
Samantha(D)
There are a total of 2 doctors.
There are a total of 2 singers.
There are a total of 3 actors.
There are a total of 3 professors.

*/

select concat(name,'(', substr(upper(occupation),1,1) ,')') as result
from OCCUPATIONS
order by name asc;

select  concat('There are a total of ',cast(count(Occupation) as char),' ',lower(Occupation),'s.') 
from OCCUPATIONS
group by Occupation
order by count(Occupation) asc, lower(Occupation) asc;