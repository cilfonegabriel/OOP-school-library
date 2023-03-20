require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'
require_relative './classroom'
require_relative './modules/1_list_books'
require_relative './modules/2_list_people'
require_relative './modules/3_add_book'

class App
  include ListBooks
  include ListPeople
  include AddBook

  def initialize
    @books = []
    @rentals = []
    @people = []
  end

  def create_student
    print('Name: ')
    name = gets.chomp
    print('Age: ')
    age = gets.chomp
    print('Has parent permission [Y/N]: ')
    permission = gets.chomp
    permission = permission != ('n' || 'N')
    new_student = Student.new(age, nil, name, parent_permission: permission)
    @people.push(new_student)
    puts 'Student created successfully'
  end

  def create_teacher
    print('Name: ')
    name = gets.chomp
    print('Age: ')
    age = gets.chomp
    print('Specialization: ')
    spec = gets.chomp
    new_teacher = Teacher.new(age, spec, name)
    @people.push(new_teacher)
    puts 'Teacher created successfully'
  end

  def create_rental
    puts 'Select a person from the list by number (not ID)'
    @people.each_with_index do |person, i|
      puts("  #{i}) [#{person.class}] ID: #{person.id} Name: #{person.name} Age: #{person.age}")
    end
    index = gets.chomp.to_i
    person = @people[index]
    puts 'Select a book from the list by number'
    @books.each_with_index { |book, i| puts(" #{i}) | Title: #{book.title} Author: #{book.author} |") }
    index = gets.chomp.to_i
    book = @books[index]
    time = Time.new
    rental = Rental.new(time.strftime('%m/%d/%y'), book, person)
    book.add_rental(rental)
    puts('Book has been rented successfully')
  end

  def list_rentals_per_person_id(id)
    person = @people.select { |psn| psn.id == id }
    return 'No person found' unless person.length.positive?

    person[0].view_rentals
  end
end
