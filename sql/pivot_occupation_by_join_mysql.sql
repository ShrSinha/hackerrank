/*
Sample Input :
Name        Occupation
Samantha    Doctor
Julia       Actor
Meera       Singer
Ashley      Professor


Sample Output (Names ordered alphabetically) :
Doctor   Professor  Singer Actor 
Jenny    Ashley     Meera  Jane
Samantha Christeen  Priya  Julia
NULL     Ketty      NULL   Maria

*/

select
min(T2.Doctor) as Doctor
,min(T2.Professor) as Professor
,min(T2.Singer) as Singer
,min(T2.Actor) as Actor
from
(
    select 
    T1.Doctor
    ,T1.Professor
    ,T1.Singer
    ,T1.Actor
    ,@row_num := IF (T1.Occupation = @prev_occupation,@row_num + 1, 1 ) as row_num
    ,@prev_occupation := T1.Occupation
    from
    (
        select
        distinct main.Occupation, d.Name as Doctor, p.Name as Professor, s.Name as Singer, a.Name as Actor
        from
        Occupations main
        left join Occupations d
        on ( main.Occupation = d.Occupation and upper(trim(main.Occupation)) = 'DOCTOR' )
        left join Occupations p
        on ( main.Occupation = p.Occupation and upper(trim(main.Occupation)) = 'PROFESSOR' )
        left join Occupations s
        on ( main.Occupation = s.Occupation and upper(trim(main.Occupation)) = 'SINGER' )
        left join Occupations a
        on ( main.Occupation = a.Occupation and upper(trim(main.Occupation)) = 'ACTOR' )
        order by d.Name asc, p.Name asc, s.Name asc, a.Name asc
    ) T1
    ,(select @row_num := 0, @prev_occupation := NULL) var
    order by T1.Occupation asc
    ,T1.Doctor asc
    ,T1.Professor asc
    ,T1.Singer asc
    ,T1.Actor asc    
) T2 
group by T2.row_num
;