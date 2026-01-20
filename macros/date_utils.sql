{% macro function1(x) %}

CASE WHEN TO_TIMESTAMP({{x}}) < CURRENT_DATE 
THEN 'PAST'
ELSE 'FUTURE'
END 

{% endmacro %}

{% macro DAY_TYPE (x) %}

CASE 
WHEN DAYNAME(TO_TIMESTAMP({{x}})) in ('Sat','Sun')
THEN 'WEEKEND'
ELSE 'BUSINESSDAY'
END

{% endmacro %}