/*
Ollivander's Inventory
*/

SELECT
    T.id
	, T.age
    , T.coins_needed
	, T.power
FROM
(
	SELECT 
    w.id
	, p.age
    , w.coins_needed
	, min(w.coins_needed) over (partition by p.age,w.power) as min_coins_needed
	, w.power 
	FROM 
	WANDS w
	JOIN 
	WANDS_PROPERTY p 
	ON (w.code = p.code and p.is_evil = 0)
) T
WHERE coins_needed = min_coins_needed   
ORDER BY 
T.power DESC
, T.age DESC
;