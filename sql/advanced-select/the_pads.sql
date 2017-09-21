select concat(name,'(', substr(upper(occupation),1,1) ,')') as result
from OCCUPATIONS
order by name asc;

select  concat('There are a total of ',cast(count(Occupation) as char),' ',lower(Occupation),'s.') 
from OCCUPATIONS
group by Occupation
order by count(Occupation) asc, lower(Occupation) asc;