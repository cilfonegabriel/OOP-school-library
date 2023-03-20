require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'
require_relative './classroom'
require_relative './modules/1_list_books'
require_relative './modules/2_list_people'
require_relative './modules/3_add_book'
require_relative './modules/4_add_person'
require_relative './modules/5_create_rental'
require_relative './modules/6_list_rental'

class App
  include ListBooks
  include ListPeople
  include AddBook
  include AddPerson
  include CreateRental
  include ListRental

  def initialize
    @books = []
    @rentals = []
    @people = []
  end
end
