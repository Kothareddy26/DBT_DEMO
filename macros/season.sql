{% macro get_season(y) %}

CASE WHEN MONTH(TO_TIMESTAMP({{y}})) in (12,1,2)
    THEN 'WINTER'
    WHEN MONTH(TO_TIMESTAMP({{y}})) in (3,4,5)
    THEN 'SPRING'
    WHEN MONTH(TO_TIMESTAMP({{y}})) in (6,7,8)
    THEN 'SUMMER'
    ELSE 'AUTUMN' 
    END

{% endmacro %}