{% macro country(normalized_phone) %}
    case 
        when left({{ normalized_phone }}, 2) = '62' then 'Indonesia'
        when left({{ normalized_phone }}, 2) = '91' then 'India'
    end
{% endmacro %}