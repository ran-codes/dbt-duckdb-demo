{% macro df_recoded() %}

{% set result %}
SELECT 
  cyl, CASE
WHEN (cyl < 5.0) THEN ('1')
ELSE ('0')
END AS greater_than_five
FROM mtcars
{% endset %}

{{ return(result) }}

{% endmacro %}