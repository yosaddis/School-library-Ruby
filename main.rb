require './person'
require './student'
require './teacher'
require './capitalize_decorator'
require './trimmer_decorator'

puts person = Person.new(22, 'maximilianus')
puts person.correct_name
puts capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
puts capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
