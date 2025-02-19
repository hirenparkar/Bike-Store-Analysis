

SELECT * FROM bike_share_yr_0; 


SELECT * FROM bike_share_yr_1; 

CREATE TABLE cost_table (yr SMALLINT, price NUMERIC (4,2), COGS NUMERIC(4,2));
SELECT * FROM cost_table;



with cte as (
SELECT * FROM bike_share_yr_0
UNION ALL
SELECT * FROM bike_share_yr_1)

SELECT
dteday,
season,
a.yr,
weekday,
hr,
rider_type,
riders,
price,
COGS,
riders*price as revenue,
riders*price -COGS as profit

FROM cte a
lEFT JOIN cost_table b
on a.yr = b.yr;
