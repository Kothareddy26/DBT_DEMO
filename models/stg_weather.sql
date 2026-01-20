WITH CTE AS (

SELECT 

date(time) as daily_weather,
weather,
temp,
pressure,
humidity,
clouds

FROM {{ source('demo', 'weather') }}


)

select 
*
from CTE