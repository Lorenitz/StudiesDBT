{% set my_animal = ['lemur', 'wolf', 'panther', 'tardigrade'] %}

{{ my_animals[0]}}

{% for anymal in my_animals %}

    My favorite animal is the {{animal}}

{% endfor %}


#The print is going to be something like:
#
# My favorite animal is the lemur
# My favorite animal is the wolf
# My favorite animal is the panther
# My favorite animal is the tardigrade
#
#