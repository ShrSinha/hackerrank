/*
Problem - 
Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.
*/
select 
s.hacker_id
,h.name
from
Submissions s
join Challenges c
on (s.challenge_id = c.challenge_id)
join Difficulty d
on (c.difficulty_level = d.difficulty_level and s.score = d.score)
join Hackers h
on (s.hacker_id = h.hacker_id )
group by 
/* Granularity of group by is driven by hacker_id. Even if two hacker have the same name,
grouping will give us two records - one for each hacker_id. 
*/
s.hacker_id
,h.name
having count(s.challenge_id) > 1
order by 
count(s.challenge_id) desc
,s.hacker_id asc;