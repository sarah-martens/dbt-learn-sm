{% macro exasol__dateadd(datepart, interval, from_date_or_timestamp) %}
    cast({{ from_date_or_timestamp }} as date) +  ((interval '1' {{ datepart }}) * ({{ interval }}))
{% endmacro %}