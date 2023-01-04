{##### SETTING VARIABLES ####}

{% set my_str = "hi" %}
{% set my_num =  3 %}
{% set my_list = ['fox','bat','cat'] %}
{% set temp = 45 %}

{#### Printing VARIABLES ####}

{{ my_str }}I want to write jingle for {{ my_num }} years!
{{ my_list[0]}} is the first element in the list

{#### Looping ####}

{% for animal in my_list %}
My favorite anmials is the {{ animal }}!!
{% endfor %}

{#### Conditionals ####}

{% if temp < 65 %}
Time for a late!
{% else %}
Time for a swim!
{% endif %}

{#### Conditionals + loops together ####}

{% set foods = ['carrot', 'hotdog', 'cucumber'] %}
{%- for food in foods -%}
{%- if food == 'hotdog' -%}
{%- set food_type = 'snack' -%}
{%- else -%}
{%- set food_type = 'vegetable' -%}
{%- endif -%}
{{ food }} is a {{ food_type }}
{% endfor %}

{#### Dictionary example ####}
{% set webster_dict = {
  "word": "data",
  "speech_part": "noun",
  "definition": "if you know you know"
} %}

{{ webster_dict['word'] }} ({{ webster_dict['speech_part'] }}): defined as "{{ webster_dict['definition'] }}"
