class Rental
  attr_accessor :date, :book, :person, :rental

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end

  def list_rentals(book, person)
    @book = book
    @person = person
    book.rentals.push(self) unless book.rentals.include?(self)
    person.rentals.push(self) unless person.rentals.include?(self)
  end
end
