require './library/person'
require './library/student'
require './library/teacher'
require './library/capitalize_decorator'
require './library/trimmer_decorator'
require './library/classroom'
require './library/book'
require './library/rental'

student = Student.new(22, 'Math', 'maximilianus')
classroom = Classroom.new('Math')

classroom.add_student(student)
p classroom.students
p student.classroom
print("\n========================\n\n")

person = Person.new(23, 'Maria')
book = Book.new('Harry Potter', 'J. K. Rowling')
rental = Rental.new('3/8/2023', book, person)
person.add_rental(rental)

p person.rentals
puts("\n")
p book.rentals