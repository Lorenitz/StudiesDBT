{%- set websters_dict = {
    'word'= 'data',
    'speech_part' = 'noun',
    'definition' = 'if you know you know'
}
-%}

{{ websters_dict['word'] }} # The result for this script is going to be data


{{ websters_dict['word'] }} ({{ websters_dict['speech_part'] }}) : defined as "{{websters_dict['definition']}}"
# the result is going to be:
# data (noun): defined as "if you know you know"