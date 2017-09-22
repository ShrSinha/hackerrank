/*
Sample Input :
Name        Occupation
Samantha    Doctor
Julia       Actor
Meera       Singer
Ashley      Professor


Sample Output :
Doctor   Professor  Singer Actor 
Jenny    Ashley     Meera  Jane
Samantha Christeen  Priya  Julia
NULL     Ketty      NULL   Maria

*/
select
min(Doctor)
,min(Professor)
,min(Singer)
,min(Actor)
from 
(
    select
    case when upper(trim(Occupation)) = 'DOCTOR' then Name end as Doctor 
    ,case when upper(trim(Occupation)) = 'PROFESSOR' then Name end as Professor 
    ,case when upper(trim(Occupation)) = 'SINGER' then Name end as Singer 
    ,case when upper(trim(Occupation)) = 'ACTOR' then Name end as Actor 
    ,@row_num := IF( @prev_occupation = Occupation, @row_num + 1, 1) as row_num
    ,@prev_occupation := Occupation
    from Occupations,
    (select @row_num := 0, @prev_occupation := NULL) as var
    order by upper(trim(Occupation)) asc, upper(trim(Name))
) T
group by
row_num
;