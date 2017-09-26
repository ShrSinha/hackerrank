/*
 Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.
*/
select
case 
when l/2 then round(sum(lat_n),4)
else round(sum(lat_n)/2,4)
end as median
from
(
    select
    lat_n
    ,(select count(*) from station) as l
    ,@row_num := @row_num + 1 as i
    from station
    ,(select @row_num := 0) var
    order by lat_n asc
) T
where i in 
(floor((l+1)/2) , floor((l+2)/2))
group by lat_n
;