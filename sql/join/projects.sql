/*

Write a query to output the start and end dates of projects listed by the number of days it took to complete the project in ascending order. If there is more than one project that have the same number of completion days, then order by the start date of the project.

Sample Input:
task_id	start_date 	end_date
1		2015-10-01	2015-10-02
2		2015-10-02	2015-10-03
3		2015-10-13	2015-10-14	

*/

select
s.start_date
,min(e.end_date)
from
( select start_date from Projects where start_date not in (select end_date from Projects) ) s 
join
( select end_date from Projects where end_date not in (select start_date from Projects) ) e 
on
(s.start_date < e.end_date)
group by
s.start_date
order by 
datediff(min(e.end_date),s.start_date) asc
,s.start_date asc
;