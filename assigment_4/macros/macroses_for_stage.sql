{% macro lowercase(column) %}
  LOWER({{ column }})
{% endmacro %}

{% macro replace_null(column, default_value) %}
  COALESCE({{ column }}, {{ default_value }})
{% endmacro %}


{% macro calculate_discount(price, discount_rate) %}
  {{ price }} * (1 - {{ discount_rate }})
{% endmacro %}


{% macro remove_duplicates(table, unique_column) %}
  SELECT *
  FROM (
      SELECT *, ROW_NUMBER() OVER (PARTITION BY {{ unique_column }} ORDER BY {{ unique_column }}) AS row_num
      FROM {{ table }}
  ) AS deduped
  WHERE row_num = 1
{% endmacro %}


{% macro format_date(column, format="YYYY-MM-DD") %}
  CAST({{ column }} AS DATE)
{% endmacro %}


