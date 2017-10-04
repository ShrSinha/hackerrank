/*
Problem:
Print the hacker_id, name, and total score of the hackers ordered by the descending score. 
If more than one hacker achieved the same total score, then sort the result by 
ascending hacker_id. Exclude all hackers with a total score of  from your result.

*/
select
T.hacker_id
,H.name
,sum(T.max_score) as score
from
(
	select
	hacker_id
	,max(score) as max_score
	from
	Submissions s
	where score > 0
	group by
	hacker_id
	,challenge_id
) T
join
Hackers H
on
T.hacker_id = H.hacker_id
group by
T.hacker_id
,H.name
order by 
score desc
,T.hacker_id asc
;