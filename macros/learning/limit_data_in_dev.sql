{% macro limit_data_in_dev() %}
  {% if target.name == 'dev' %}
  order by RANDOM()
  limit 5
  {% endif %}
{% endmacro %}