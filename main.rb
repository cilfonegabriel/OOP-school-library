require './library/person'
require './library/student'
require './library/teacher'
require './library/capitalize_decorator'
require './library/trimmer_decorator'

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
p capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
p capitalized_trimmed_person.correct_name
