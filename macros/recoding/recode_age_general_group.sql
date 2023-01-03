{%- macro recode_age_general_group(age) -%}
  CASE
    WHEN (age <= 20.0) THEN ('0-20')
    WHEN (age <= 60.0) THEN ('21-60')
    ELSE ('60+')
  END 
{%- endmacro -%}