/*
Ollivander's Inventory
*/

SELECT
w.id
,T.*
FROM 
WANDS w
JOIN 
WANDS_PROPERTY p 
ON (w.code = p.code and p.is_evil = 0)
JOIN
(
	SELECT 
	p.age
	, min(w.coins_needed) as min_coins_needed
	, w.power 
	FROM 
	WANDS w
	JOIN 
	WANDS_PROPERTY p 
	ON (w.code = p.code and p.is_evil = 0)
	GROUP BY  
	p.age 
	,w.power 
) T
ON ( p.age = T.age AND w.coins_needed = T.min_coins_needed and w.power = T.power  )
ORDER BY 
w.power DESC
, p.age DESC
;