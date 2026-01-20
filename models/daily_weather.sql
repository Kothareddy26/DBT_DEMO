WITH daily_weather AS(

SELECT 
*
FROM {{ ref('stg_weather') }}

),
daily_weather_agg as(
    select 
    daily_weather,
    weather,
    round(avg(temp),2),
    round(avg(pressure),2),
    round(avg(humidity),2),
    round(avg(clouds),2)
    from daily_weather
    group by daily_weather, weather

    qualify row_number() over (partition by daily_weather order by count(weather) desc) = 1

)
SELECT
* 
FROM daily_weather_agg