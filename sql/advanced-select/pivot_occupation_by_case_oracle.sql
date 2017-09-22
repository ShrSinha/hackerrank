/*
Sample Input :
Name        Occupation
Samantha    Doctor
Julia       Actor
Meera       Singer
Ashley      Professor


Sample Output (Names ordered alphabetically):
Doctor   Professor  Singer Actor 
Jenny    Ashley     Meera  Jane
Samantha Christeen  Priya  Julia
NULL     Ketty      NULL   Maria

*/

select 
max(Doctor) as Doctor
,max(Professor) as Professor
,max(Singer) as Singer
,max(Actor) as Actor
from
(
select
case when upper(trim(Occupation)) = 'DOCTOR' then Name end as Doctor
,case when upper(trim(Occupation)) = 'PROFESSOR' then Name end as Professor
,case when upper(trim(Occupation)) = 'SINGER' then Name end as Singer
,case when upper(trim(Occupation)) = 'ACTOR' then Name end as Actor
,row_number() over (partition by Occupation order by Name asc) as row_num
from 
Occupations
) T
group by row_num
order by row_num asc;
