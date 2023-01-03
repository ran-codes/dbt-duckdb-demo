{% macro limit_data_in_dev(x = 5) %}
  {% if target.name == 'dev' %}
  order by RANDOM()
  limit {{x}}
  {% endif %}
{% endmacro %}