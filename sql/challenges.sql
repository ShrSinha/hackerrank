/*
Write a query to print the hacker_id, name, and the total number of challenges created by each student. 
Sort your results by the total number of challenges in descending order. If more than one student 
created the same number of challenges, then sort the result by hacker_id. If more than one student 
created the same number of challenges and the count is less than the maximum number of challenges 
created, then exclude those students from the result.
*/
with 
cnt as 
(
	select
	h.hacker_id
	,h.name
	,count(c.challenge_id) as challenge_cnt
	from 
	Hackers h
	join
	Challenges c
	on (h.hacker_id = c.hacker_id)
	group by
	h.hacker_id
	,h.name   
)
select
hacker_id
,name
,challenge_cnt
from
(
	select
	hacker_id
	,name
	,challenge_cnt
	,count(hacker_id) over (partition by challenge_cnt) as multiple_hackers_cnt
	,max(challenge_cnt) over () as max_challenge_cnt
	from
	cnt
) T    
where
(
multiple_hackers_cnt = 1
or
challenge_cnt = max_challenge_cnt 
)
order by
challenge_cnt desc
,hacker_id asc
;

