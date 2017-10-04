/*
Problem : Write a query to find the node type of Binary Tree ordered by the value of the node. 

Sample Input :
N    P
1    2
3    2
5    NULL


Sample Output :
1 Leaf
2 Inner
3 Leaf
5 Root
6 Leaf
*/

select
node.n
,case 
when node.p is null then 'Root' 
when node.n = parent.p then 'Inner' 
else 'Leaf'
end as Node_Type
from
BST node
left join BST parent
on (node.n = parent.p)
group by 
node.n
,node.p 
order by 
node.n asc
;